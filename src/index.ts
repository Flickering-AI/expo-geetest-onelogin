import { ColorValue } from 'react-native';
import { NativeModulesProxy, EventEmitter, Subscription } from 'expo-modules-core';

// Import the native module. On web, it will be resolved to ExpoGeetestOnelogin.web.ts
// and on native platforms to ExpoGeetestOnelogin.ts
import ExpoGeetestOneloginModule from './ExpoGeetestOneloginModule';
import ExpoGeetestOneloginView from './ExpoGeetestOneloginView';
import { ChangeEventPayload, ExpoGeetestOneloginViewProps } from './ExpoGeetestOnelogin.types';

// Get the native constant value.
export const PI = ExpoGeetestOneloginModule.PI;

export async function setValueAsync(value: string) {
  return await ExpoGeetestOneloginModule.setValueAsync(value);
}

const emitter = new EventEmitter(ExpoGeetestOneloginModule ?? NativeModulesProxy.ExpoGeetestOnelogin);

export function addChangeListener(listener: (event: ChangeEventPayload) => void): Subscription {
  return emitter.addListener<ChangeEventPayload>('onChange', listener);
}

export { ExpoGeetestOneloginView, ExpoGeetestOneloginViewProps, ChangeEventPayload };

/**
 * 
 * @param appId appId	String	极验后台配置唯一产品APPID，请在官网申请, 注意与服务端保持一致
 */
export function init(appId: string) {
  return ExpoGeetestOneloginModule.init(appId);
}

/**
 * 
 * @param appId 极验后台配置唯一产品APPID，请在官网申请, 如init接口传了 appId 此处可传空值
 */
export function register(appId: string) {
  return ExpoGeetestOneloginModule.register(appId);
}

export async function requestToken(oneLoginThemeConfig?: {
  statusBar?: {
    statusBarColor: ColorValue; 
    navigationBarStyle: "UserInterfaceStyle.UNSPECIFIED" | "UserInterfaceStyle.LIGHT" | "UserInterfaceStyle.DARK",
    bgLayoutInStatusBar: boolean
  };
  authBGImgPath?: string;
  dialogTheme?: {
    isDialogTheme: boolean;
    dialogWidth: number;
    dialogHeight: number;
    dialogX: number;
    dialogY: number;
    isDialogBottom: boolean;
    isWebViewDialogTheme: boolean;
  };
  authNavLayout?: {
    navColor: ColorValue;
    authNavHeight: number;
    authNavTransparent: boolean;
    authNavGone: boolean;
  };
  authNavTextView?: {
    navText: string;
    navTextColor: number;
    navTextSize: number;
    navWebTextNormal:boolean;
    navWebText: string;
    navWebTextColor: number;
    navWebTextSize: number;
  };
  switchViewLayout?: {
    switchImgPath: string;
    switchWidth: number;
    switchHeight: number;
  };
  logBtnTextView?: {
    logBtnText: string;
    logBtnColor: ColorValue;
    logBtnTextSize: number;
  };
  logBtnLoadingView?: {
    loadingView: string;
    loadingViewWidth: number;
    loadingViewHeight: number;
    loadingViewOffsetRight: number;
  };
  privacyUnCheckedToastText?: string;
  privacyClauseText?: {
    clauseNameOne: string;
    clauseUrlOne: string;
    clauseNameTwo: string;
    clauseUrlTwo: string;
    clauseNameThree: string;
    clauseUrlThre: string;
  };
  privacyTextGravity?: "Gravity.CENTER_HORIZONTAL" | number; // android.view.Gravity
  privacyClauseView?: {
    baseClauseColor: ColorValue;
    clauseColor: ColorValue;
    privacyClauseTextSize: number;
  };
  privacyTextView?: {
    privacyTextViewTv1: string;
    privacyTextViewTv2: string;
    privacyTextViewTv3: string;
    privacyTextViewTv4: string;
  };
  authNavTextViewTypeface?: {
    navTextTypeface: string;
    navWebTextTypeface: string;
  };
  numberViewTypeface?: string;
  switchViewTypeface?: string;
  logBtnTextViewTypeface?: string;
  logoImgView?: {
    logoImgPath: string;
    logoWidth: number;
    logoHeight: number;
    logoHidden: boolean;
    logoOffsetY: number;
    logoOffsetY_B: number;
    logoOffsetX: number;
  };
  authNavReturnImgView?: {
    returnImgPath: string;
    returnImgWidth: number;
    returnImgHeight: number;
    returnImgHidden: boolean;
    returnImgOffsetX: number;
  };
  numberView?: {
    numberColor: number;
    numberSize: number;
    numberOffsetY: number;
    numberOffsetY_B: number;
    numberOffsetX: number;
  };
  sloganView?: {
    sloganColor: ColorValue;
    sloganSize: number;
    sloganOffsetY: number;
    sloganOffsetY_B: number;
    sloganOffsetX: number;
  };
  logBtnLayout?: {
    logBtnImgPath: string;
    logBtnUncheckedImgPath: string;
    logBtnWidth: number;
    logBtnHeight: number;
    logBtnOffsetY: number;
    logBtnOffsetY_B: number;
    logBtnOffsetX: number;
  };
  switchView?: {
    switchText: string;
    switchColor: number;
    switchSize: number;
    switchHidden: boolean;
    switchOffsetY: number;
    switchOffsetY_B: number;
    switchOffsetX: number;
  };
  privacyCheckBox?: {
    unCheckedImgPath: string;
    checkedImgPath: string;
    privacyState: boolean;
    privacyCheckBoxWidth: number;
    privacyCheckBoxHeight: number;
    privacyCheckBoxOffsetY: number;
    privacyCheckBoxMarginRight: number;
  };
  privacyLayout?: {
    privacyLayoutWidth: number;
    privacyOffsetY: number;
    privacyOffsetY_B: number;
    privacyOffsetX: number;
    isUseNormalWebActivity: boolean;
  };
  sloganViewTypeface?: string;
  privacyClauseViewTypeface?: {
    privacyClauseBaseTypeface: string;
    privacyClauseTypeface: string;
  };
}) {
  if (oneLoginThemeConfig?.privacyTextGravity) {
    switch(oneLoginThemeConfig?.privacyTextGravity) {
      case "Gravity.CENTER_HORIZONTAL": oneLoginThemeConfig["privacyTextGravity"] = 1 << 0; break;
    }
  }
  return ExpoGeetestOneloginModule.requestToken(oneLoginThemeConfig);
}

export function dismissAuthActivity(): string {
  return ExpoGeetestOneloginModule.dismissAuthActivity();
}

/**
 * 超时时间，单位:ms，取值范围:1000~15000，默认8000。传递该参数会统一设置预取号超时时间和取号超时时间为设定值，分别设置请使用不带timeout的方法并参考setRequestTimeout。
 * @param preGetTokenTimeout 预取号超时时间
 * @param requestTokenTimeout 取号超时时间
 */
export function setRequestTimeout(preGetTokenTimeout: number = 8000, requestTokenTimeout: number = 8000) {
  return ExpoGeetestOneloginModule.setRequestTimeout(preGetTokenTimeout, requestTokenTimeout);
}