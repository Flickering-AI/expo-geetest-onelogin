import { NativeModulesProxy, EventEmitter, Subscription } from 'expo-modules-core';

// Import the native module. On web, it will be resolved to ExpoGeetestOnelogin.web.ts
// and on native platforms to ExpoGeetestOnelogin.ts
import ExpoGeetestOneloginModule from './ExpoGeetestOneloginModule';
import ExpoGeetestOneloginView from './ExpoGeetestOneloginView';
import { ChangeEventPayload, ExpoGeetestOneloginViewProps } from './ExpoGeetestOnelogin.types';

// Get the native constant value.
export const PI = ExpoGeetestOneloginModule.PI;

export function hello(): string {
  return ExpoGeetestOneloginModule.hello();
}

export async function setValueAsync(value: string) {
  return await ExpoGeetestOneloginModule.setValueAsync(value);
}

const emitter = new EventEmitter(ExpoGeetestOneloginModule ?? NativeModulesProxy.ExpoGeetestOnelogin);

export function addChangeListener(listener: (event: ChangeEventPayload) => void): Subscription {
  return emitter.addListener<ChangeEventPayload>('onChange', listener);
}

export { ExpoGeetestOneloginView, ExpoGeetestOneloginViewProps, ChangeEventPayload };
