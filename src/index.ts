import { Platform, processColor } from "react-native";
import {
  NativeModulesProxy,
  EventEmitter,
  Subscription,
  requireNativeModule,
} from "expo-modules-core";

// Import the native module. On web, it will be resolved to ExpoGeetestOnelogin.web.ts
// and on native platforms to ExpoGeetestOnelogin.ts
import ExpoGeetestOneloginModule from "./ExpoGeetestOneloginModule";
import ExpoGeetestOneloginView from "./ExpoGeetestOneloginView";
import {
  AndroidOneLoginResponse,
  AndroidOneLoginUIConfig,
  ChangeEventPayload,
  ExpoGeetestOneloginViewProps,
  IOSOneLoginResponse,
  IOSOneLoginUIConfig,
} from "./ExpoGeetestOnelogin.types";

const emitter = new EventEmitter(
  ExpoGeetestOneloginModule ?? NativeModulesProxy.ExpoGeetestOnelogin
);

let callbackId = 0;
let callbackMap = {};

export function addChangeListener<T>(
  listener: (event: ChangeEventPayload<T>) => void
): Subscription {
  return emitter.addListener("onChange", listener);
}

export async function setValueAsync(value: string) {
  return await ExpoGeetestOneloginModule.setValueAsync(value);
}

export {
  ExpoGeetestOneloginView,
  ExpoGeetestOneloginViewProps,
  ChangeEventPayload,
};

/**
 * 初始化。iOS不需要这这个Api，如果调用的话什么都不会发生
 * @param appId appId	String	极验后台配置唯一产品APPID，请在官网申请, 注意与服务端保持一致
 */
export function init(appId: string) {
  if (Platform.OS === "android") {
    return ExpoGeetestOneloginModule.init(appId);
  }
}

/**
 * 判断预取号结果是否有效
 *
 * @param appId 极验后台配置唯一产品APPID，请在官网申请, 如init接口传了 appId 此处可传空值
 */
export function register(appId: string) {
  return ExpoGeetestOneloginModule.register(appId);
}

/**
 * @return true: 预取号结果有效，可直接拉起授权页面 false: 预取号结果无效，需加载进度条，等待预取号完成之后拉起授权页面
 */
export function isPreGetTokenResultValidate(): boolean {
  return ExpoGeetestOneloginModule.isPreGetTokenResultValidate();
}

export async function requestToken(
  oneLoginThemeConfig: AndroidOneLoginUIConfig,
  callback: (response: AndroidOneLoginResponse) => void
) {
  if (Platform.OS !== "android") {
    return;
  }
  if (oneLoginThemeConfig?.privacyTextGravity) {
    switch (oneLoginThemeConfig?.privacyTextGravity) {
      case "Gravity.CENTER_HORIZONTAL":
        oneLoginThemeConfig["privacyTextGravity"] = 1 << 0;
        break;
    }
  }
  function process(obj) {
    Object.keys(obj).map((key) => {
      if (typeof obj[key] === "object") {
        return process(obj[key]);
      }
      if (typeof obj[key] === "string" && obj[key].length > 0) {
        const colorInt = processColor(obj[key]);
        if (colorInt === 0) {
          obj[key] = colorInt;
        } else {
          obj[key] = colorInt || obj[key];
        }
      }
      if (typeof obj[key] === "function") {
        obj[key] = {
          callbackId: functionToCallbackId(obj[key]),
        };
      }
    });
    return obj;
  }
  process(oneLoginThemeConfig);
  return ExpoGeetestOneloginModule.requestToken(
    oneLoginThemeConfig,
    functionToCallbackId(callback)
  );
}

/**
 * 注意：
 * 1、在成功进入授权页面时，不会立即收到 completion 回调，在授权页面点击一键登录、切换账号或者返回按钮时，才会收到 completion 回调；
 * 2、若不能成功进入授权页面，则会立即收到 completion 回调
 * @param viewModel
 * @returns
 */
export function requestTokenWithViewController(
  viewModel?: IOSOneLoginUIConfig,
  callback?: (response: IOSOneLoginResponse) => void
) {
  if (Platform.OS === "ios") {
    function processParams(map) {
      Object.keys(map).forEach((key) => {
        if (typeof map[key] === "function") {
          map.callbackId = functionToCallbackId(map[key]);
          return;
        }
        if (typeof map[key] === "object") {
          processParams(map[key]);
          return;
        }
      });
    }
    processParams(viewModel);
    return ExpoGeetestOneloginModule.requestTokenWithViewController(
      viewModel,
      callback ? functionToCallbackId(callback) : undefined
    );
  }
}

function functionToCallbackId(callback: Function): number {
  if (!callback) {
    return -1;
  }
  const newCallbackId = ++callbackId;
  callbackMap[newCallbackId] = callback;
  return newCallbackId;
}

addChangeListener((data) => {
  if (data.type === "callback") {
    if (callbackMap[data.callbackId!]?.(data?.result)) {
      // delete callbackMap[data.callbackId!];
    }
  }
});

export async function dismiss(animated?: boolean) {
  if (Platform.OS === "android") {
    return ExpoGeetestOneloginModule.dismissAuthActivity();
  }
  if (Platform.OS === "ios") {
    return ExpoGeetestOneloginModule.dismissAuthViewController(true);
  }
}

/**
 * 超时时间，单位:ms，取值范围:1000~15000，默认8000。
 * @param preGetTokenTimeout 预取号超时时间
 * @param requestTokenTimeout 取号超时时间
 */
export function setRequestTimeout(
  preGetTokenTimeout: number = 8000,
  requestTokenTimeout: number = 8000
) {
  return ExpoGeetestOneloginModule.setRequestTimeout(
    preGetTokenTimeout,
    requestTokenTimeout
  );
}

export function stopLoading() {
  return ExpoGeetestOneloginModule.stopLoading();
}

/**
 * ios: 为保证用户在退出登录之后，能快速拉起授权页面，请在用户退出登录时，调用此方法
 * android: 登录成功后 SDK 内部不再维护预取号的有效性，如果用户退出登录后，为了方便下次重新登录能快速拉起授权页，也可以重新调用register进行预取号。
 */
export function renewPreGetToken(appId: string) {
  if (Platform.OS === "android") {
    return ExpoGeetestOneloginModule.register(appId);
  }
  ExpoGeetestOneloginModule.renewPreGetToken();
}
