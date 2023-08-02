import { requireNativeViewManager } from 'expo-modules-core';
import * as React from 'react';

import { ExpoGeetestOneloginViewProps } from './ExpoGeetestOnelogin.types';

const NativeView: React.ComponentType<ExpoGeetestOneloginViewProps> =
  requireNativeViewManager('ExpoGeetestOnelogin');

export default function ExpoGeetestOneloginView(props: ExpoGeetestOneloginViewProps) {
  return <NativeView {...props} />;
}
