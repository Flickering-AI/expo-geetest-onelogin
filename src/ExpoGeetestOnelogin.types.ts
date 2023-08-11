import { ColorValue } from "react-native";

export type ChangeEventPayload<T> = {
  type?: string;
  callbackId?: string;
  result?: T;
};

export type ExpoGeetestOneloginViewProps = {
  name: string;
};

export type AndroidOneLoginResponse = {
  /**
   * 极验后台配置唯一id android only
   */
  app_id: string;
  /**
   * 客户端，1 表示 Android
   */
  clienttype: string;
  /**
   * @see https://docs.geetest.com/onelogin/deploy/Returncode
   * 错误码
   */
  errorCode: string;
  metadata: {
    error_data: string;
  };
  model: string;
  /**
   * 运营商返回的状态信息
   */
  msg: string;
  /**
   * 客户端获取的运营商
   */
  operator: string;
  /**
   * 流水号(有效期10分钟) android only
   */
  process_id: string;
  release: string;
  sdk: string;
  /**
   * 状态码，状态码为 200
   */
  status: number;
  /**
   * 电信运营商返回的authcode, 非必需
   */
  authcode: string;
  token: string;
};

export type IOSOneLoginResponse = {
  /**
   * 极验后台配置唯一id ios only
   */
  appID: string;
  /**
   * 电信运营商返回的authcode, 非必需
   */
  authcode: string;
  /**
   * @see https://docs.geetest.com/onelogin/deploy/Returncode
   * 错误码
   */
  errorCode: string;
  expire_time: number;
  gwAuth: string;
  model: string;
  /**
   * 运营商返回的状态信息
   */
  msg: string;
  number: string;
  /**
   * 运营商类型。0：未知 1：中国移动 2：中国联通 3：中国电信
   */
  operatorType: string;
  preGetTokenSuccessedTime: number;
  pre_token_time: string;
  /**
   * 流水号(有效期10分钟) ios only
   */
  processID: string;
  release: string;
  /**
   * 状态码，状态码为 200
   */
  status: number;
  token: string;
};

export type AndroidOneLoginUIConfig = {
  statusBar?: {
    statusBarColor: ColorValue;
    statusBarStyle:
      | "UserInterfaceStyle.UNSPECIFIED"
      | "UserInterfaceStyle.LIGHT"
      | "UserInterfaceStyle.DARK";
    bgLayoutInStatusBar: boolean;
  };
  navigationBar?: {
    navigationBarColor: ColorValue;
    navigationBarStyle:
      | "UserInterfaceStyle.UNSPECIFIED"
      | "UserInterfaceStyle.LIGHT"
      | "UserInterfaceStyle.DARK";
    bgLayoutInNavigationBar: boolean;
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
    navTextColor: ColorValue;
    navTextSize: number;
    navWebTextNormal: boolean;
    navWebText: string;
    navWebTextColor: ColorValue;
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
    numberColor: ColorValue;
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
    switchColor: ColorValue;
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
  customViews?: {
    x: number;
    y: number;
    maxWidth: number;
    maxHeight: number;
    imageResourceName: string;
    margin?:
      | {
          left: number;
          top: number;
          right: number;
          bottom: number;
        }
      | undefined;
  }[];
};

export type IOSOneLoginUIConfig = {
  /**
 状态栏样式。 默认 `UIStatusBarStyleDefault`。
 */
  statusBarStyle?:
    | "UIStatusBarStyle.darkContent"
    | "UIStatusBarStyle.lightContent"
    | "UIStatusBarStyle.default"; // UIStatusBarStyle

  // Navigation/导航

  /**
  导航栏标题距离屏幕左右两边的间距。默认为36，隐私条款导航栏保持一致。
  */
  navTextMargin?: number;
  /**
  授权页导航的标题。默认为空字符串。
  */
  naviTitle?: RNOLAuthViewModelNSAttributedString;

  /**
  授权页导航的背景颜色。默认白色。
  */
  naviBgColor?: ColorValue;

  /**
  授权页导航左边的返回按钮的图片。默认黑色系统样式返回图片。
  */
  naviBackImage?: RNUImage;
  /**
  导航栏隐藏。默认不隐藏。
  */
  naviHidden?: boolean;

  /**
  返回按钮位置及大小，返回按钮最大size为CGSizeMake(40, 40)。
  */
  backButtonRect?: RNOLAuthViewModelOLRect;

  /**
  返回按钮隐藏。默认不隐藏。
  */
  backButtonHidden?: boolean;

  /**
 授权页面上展示的图标。默认为 "OneLogin" 图标。
 */
  appLogo?: RNUImage;

  /**
 Logo 位置及大小。
 */
  logoRect?: RNOLAuthViewModelOLRect;

  /**
 Logo 图片隐藏。默认不隐藏。
 */
  logoHidden?: boolean;

  /**
  logo圆角，默认为0。
  */
  logoCornerRadius?: number;

  // Phone Number Preview/手机号预览

  /**
  号码预览文字的颜色。默认黑色。
  */
  phoneNumColor?: ColorValue;

  /**
  号码预览文字的字体。默认粗体，24pt。
  */
  phoneNumFont?: RNOLAuthViewModelUIFont;

  /**
  号码预览 位置及大小
  */
  phoneNumRect?: RNOLAuthViewModelOLRect;

  /**
  号码富文本，默认为空。
 */
  attrPhone?: RNOLAuthViewModelNSAttributedString;

  // Switch Button/切换按钮

  /**
  授权页切换账号按钮的文案。默认为“切换账号”。
  */
  switchButtonText?: String;

  /**
  授权页切换账号按钮的颜色。默认蓝色。
  */
  switchButtonColor?: ColorValue;

  /**
  授权页切换账号按钮背景颜色。默认为 nil。
  */
  switchButtonBackgroundColor?: ColorValue;

  /**
  授权页切换账号的字体。默认字体，15pt。
  */
  switchButtonFont?: RNOLAuthViewModelUIFont;

  /**
  授权页切换账号按钮 位置及大小。
  */
  switchButtonRect?: RNOLAuthViewModelOLRect;

  /**
  隐藏切换账号按钮。默认不隐藏。
  */
  switchButtonHidden?: boolean;

  /**
   * 点击授权页面切换账号按钮的回调
   */
  clickSwitchButtonBlock?: RNFunction;

  // Authorization Button/认证按钮

  /**
  授权页认证按钮的背景图片, @[正常状态的背景图片, 不可用状态的背景图片, 高亮状态的背景图片]。默认正常状态为蓝色纯色, 不可用状态的背景图片时为灰色, 高亮状态为灰蓝色。
  */
  authButtonImages?: Array<RNUImage>;

  /**
  授权按钮文案。默认白色的"一键登录"。
  */
  authButtonTitle?: RNOLAuthViewModelNSAttributedString;

  /**
  授权按钮 位置及大小。
  */
  authButtonRect?: RNOLAuthViewModelOLRect;

  /**
  授权按钮圆角，默认为0。
  */
  authButtonCornerRadius?: number;

  /**
   * 点击授权页面授权按钮的回调，用于监听授权页面登录按钮的点击
   */
  clickAuthButtonBlock?: RNFunction;

  /**
   * 未勾选隐私条款时点击授权页面登录按钮的回调, 可用于自定义授权弹窗. 当返回 YES 时, 可以在 block 中添加自定义操作
   */
  //    @property (nullable, nonatomic, copy) OLCustomDisabledAuthActionBlock customDisabledAuthActionBlock;

  /**
   * 自定义授权页面登录按钮点击事件，用于完全接管授权页面点击事件，当返回 YES 时，可以在 block 中添加自定义操作
   */
  //    @property (nullable, nonatomic, copy) OLCustomAuthActionBlock customAuthActionBlock;

  // Slogan/口号标语

  /**
  Slogan 文案。
  */
  sloganText?: String;

  /**
  Slogan 位置及大小。
  */
  sloganRect?: RNOLAuthViewModelOLRect;

  /**
  Slogan 文字颜色。默认灰色。
  */
  sloganTextColor?: ColorValue;

  /**
  Slogan字体。默认字体, 12pt。
  */
  sloganTextFont?: RNOLAuthViewModelUIFont;

  // CheckBox & Privacy Terms/隐私条款勾选框及隐私条款

  /**
  授权页面上条款勾选框初始状态。默认 NO。
  */
  defaultCheckBoxState?: boolean;

  /**
  授权页面上勾选框勾选的图标。默认为蓝色图标。推荐尺寸为12x12。
  */
  checkedImage?: RNUImage;

  /**
  授权页面上勾选框未勾选的图标。默认为白色图标。推荐尺寸为12x12。
  */
  uncheckedImage?: RNUImage;

  /**
  授权页面上条款勾选框大小及位置，请不要设置勾选框的横向偏移，整体隐私条款的横向偏移，请通过 termsRect 设置
  */
  checkBoxRect?: RNOLAuthViewModelOLRect;

  /**
  隐私条款文字属性。默认基础文字灰色, 条款蓝色高亮, 12pt。
  */
  privacyTermsAttributes?: RNNSAttributedStringKey;

  /**
  额外的条款。默认为空。
  */
  additionalPrivacyTerms?: RNOLPrivacyTermItem[];

  /**
  服务条款普通文字的颜色。默认灰色。
  */
  termTextColor?: ColorValue;

  /**
  隐私条款 位置及大小，隐私条款，宽需大于50，高需大于20，才会生效。
  */
  termsRect?: RNOLAuthViewModelOLRect;

  /**
  除隐私条款外的其他文案，数组大小必须 >= 4，元素依次为：条款前的文案、条款一和条款二连接符、条款二和条款三连接符、条款三和条款四连接符、……，条款后的文案。
  默认为@[@"登录即同意", @"和", @"、", @"并使用本机号码登录"]
  */
  auxiliaryPrivacyWords?: Array<String>;

  /**
   * 点击授权页面隐私协议前勾选框的回调
   */
  //    @property (nullable, nonatomic, copy) OLClickCheckboxBlock clickCheckboxBlock;

  /**
   * 服务条款文案对齐方式，默认为NSTextAlignmentLeft
   */
  termsAlignment?: String;

  /**
   * 点击授权页面运营商隐私协议的回调
   */
  //    @property (nullable, nonatomic, copy) OLViewPrivacyTermItemBlock carrierTermItemBlock;

  /**
   * 是否在运营商协议名称上加书名号《》
   */
  hasQuotationMarkOnCarrierProtocol?: boolean;

  /**
   * 未勾选勾选框时，是否禁止一键登录按钮的点击
   */
  disableAuthButtonWhenUnchecked?: boolean;

  /**
   * 未勾选授权页面隐私协议前勾选框时，点击授权页面登录按钮时提示 block
   */
  //    @property (nonatomic, copy) OLNotCheckProtocolHintBlock hintBlock;

  /**
   * 未勾选授权页面隐私协议前勾选框时，点击授权页面登录按钮时勾选框与协议的抖动样式,默认不抖动
   */
  shakeStyle?: String;

  /**
   * 勾选框与服务条款文案之间的间距。默认为 2
   */
  spaceBetweenCheckboxAndTermsText?: number;

  // 授权页文案多语言配置
  /**
   * 多语言配置，支持中文简体，中文繁体，英文
   */
  languageType?: String;

  // Custom Area/自定义区域

  /**
  自定义区域视图的处理block

  @discussion
  提供的视图容器使用NSLayoutConstraint与相关的视图进行布局约束。
  如果导航栏没有隐藏, 顶部与导航栏底部对齐, 左边与屏幕左边对齐, 右边与屏幕右边对齐, 底部与屏幕底部对齐。
  如果导航栏隐藏, 顶部与状态栏底部对齐, 左边与屏幕左边对齐, 右边与屏幕右边对齐, 底部与屏幕底部对齐。
  */
  //    @property (nullable, nonatomic, copy) OLCustomUIHandler customUIHandler;

  /**
   * 授权页面旋转时的回调，可在该回调中修改自定义视图的frame，以适应新的布局
   */
  //    @property (nullable, nonatomic, copy) OLAuthVCTransitionBlock authVCTransitionBlock;

  // Background Image/授权页面背景图片

  /**
  授权页背景颜色。默认白色。
  */
  backgroundColor?: ColorValue;

  /**
  授权页面背景图片
  */
  backgroundImage?: RNUImage;

  /**
  横屏模式授权页面背景图片
  */
  landscapeBackgroundImage?: String;

  // Background Gif/授权页面背景 gif
  /**
  授权页面背景Gif路径，与背景图片、视频，三者只有一个有效，视频优先级最高，背景图其次，gif 最后
  */
  backgroundGifPath?: String;
  // Background Video/授权页面背景视频
  /**
  授权页面背景视频路径，可支持本地和网络视频，与背景图片、gif，三者只有一个有效，视频优先级最高，背景图其次，gif 最后
  */
  backgroundVideoPath?: String;

  // Autolayout

  /**
   * 授权页面视图控件自动布局回调
   */
  //    @property (nullable, nonatomic, copy) OLAuthVCAutoLayoutBlock autolayoutBlock;

  // orientation

  /**
   * 授权页面支持的横竖屏方向
   */
  supportedInterfaceOrientations?: String;

  // Popup

  /**
   * 是否为弹窗模式
   */
  isPopup?: boolean;

  /**
  弹窗 位置及大小。弹窗模式时，x轴偏移只支持portraitLeftXOffset和landscapeLeftXOffset。
  */
  popupRect?: RNOLAuthViewModelOLRect;

  /**
  弹窗圆角，默认为6。
  */
  popupCornerRadius?: number;

  /**
  当只需要设置弹窗的部分圆角时，通过popupCornerRadius设置圆角大小，通过popupRectCorners设置需要设置圆角的位置。
  popupRectCorners数组元素不超过四个，超过四个时，只取前四个。比如，要设置左上和右上为圆角，则传值：@[@(UIRectCornerTopLeft), @(UIRectCornerTopRight)]
  */
  popupRectCorners?: number[];

  /**
   * 弹窗动画类型，当popupAnimationStyle为OLAuthPopupAnimationStyleStyleCustom时，动画为用户自定义，用户需要传一个CATransition对象来设置动画
   */
  popupAnimationStyle?: String;

  /**
   * 弹窗自定义动画
   */
  popupTransitionAnimation?: String;

  /**
  弹窗关闭按钮图片，弹窗关闭按钮的尺寸跟图片尺寸保持一致。
  弹窗关闭按钮位于弹窗右上角，目前只支持设置其距顶部偏移和距右边偏移。
  */
  closePopupImage?: String;

  /**
  弹窗关闭按钮距弹窗顶部偏移。
  */
  closePopupTopOffset?: number;

  /**
  弹窗关闭按钮距弹窗右边偏移。
  */
  closePopupRightOffset?: number;

  /**
 是否需要通过点击弹窗的背景区域以关闭授权页面。
 */
  canClosePopupFromTapGesture?: boolean;

  /**
   * 点击授权页面弹窗背景的回调
   */
  //    @property (nonatomic, copy, nullable) OLTapAuthBackgroundBlock tapAuthBackgroundBlock;

  /**
   * 弹窗蒙板视图
   */
  //    popupMaskView: UIView;

  // Auth Dialog/授权弹窗

  /**
   * 未勾选同意协议时是否弹出授权弹窗
   */
  willAuthDialogDisplay?: boolean;

  /**
   * 点击授权弹窗外是否关闭授权弹窗
   */
  canCloseAuthDialogFromTapGesture?: boolean;

  /**
   * 授权弹窗宽、高、起始点位置
   */
  authDialogRect?: RNOLAuthViewModelOLRect;

  /**
   * 授权弹窗是否显示在屏幕下方
   */
  isAuthDialogBottom?: boolean;

  /**
   * 授权弹窗背景颜色
   */
  authDialogBgColor?: ColorValue;

  /**
   * 授权弹窗标题文字
   */
  authDialogTitleText?: String;

  /**
   * 授权弹窗标题颜色
   */
  authDialogTitleColor?: ColorValue;

  /**
   * 授权弹窗字体样式及大小
   */
  authDialogTitleFont?: RNOLAuthViewModelUIFont;

  /**
   * 授权弹窗富文本字体样式及大小
   */
  authDialogContentFont?: RNOLAuthViewModelUIFont;

  /**
   * 授权弹窗不同意按钮文字
   */
  authDialogDisagreeBtnText?: String;

  /**
   * 授权弹窗不同意按钮样式及大小
   */
  authDialogDisagreeBtnFont?: RNOLAuthViewModelUIFont;

  /**
   * 授权弹窗不同意按钮文字颜色
   */
  authDialogDisagreeBtnColor?: ColorValue;

  /**
   * 授权弹窗不同意按钮的背景图片, @[正常状态的背景图片, 高亮状态的背景图片]。默认正常状态为灰色, 高亮状态为深灰色。
   */
  authDialogDisagreeBtnImages?: Array<String>;

  /**
   * 授权弹窗同意按钮文字
   */
  authDialogAgreeBtnText?: String;

  /**
   * 授权弹窗同意按钮样式及大小
   */
  authDialogAgreeBtnFont?: RNOLAuthViewModelUIFont;

  /**
   * 授权弹窗同意按钮文字颜色
   */
  authDialogAgreeBtnColor?: ColorValue;

  /**
   * 授权弹窗同意按钮的背景图片, @[正常状态的背景图片, 高亮状态的背景图片]。默认正常状态为蓝色纯色, 高亮状态为灰蓝色。
   */
  authDialogAgreeBtnImages?: ColorValue;

  /**
   * 授权弹窗圆角，默认为10。
   */
  authDialogCornerRadius?: number;

  /**
   * 当只需要设置授权弹窗的部分圆角时，通过 authDialogCornerRadius 设置圆角大小，通过 authDialogRectCorners 设置需要设置圆角的位置。
   * authDialogRectCorners 数组元素不超过四个，超过四个时，只取前四个。比如，要设置左上和右上为圆角，则传值：@[@(UIRectCornerTopLeft), @(UIRectCornerTopRight)]
   */
  authDialogRectCorners?: Array<number>;

  /**
   * 授权弹窗动画类型，当authDialogAnimationStyle为OLAuthDialogAnimationStyleCustom时，动画为用户自定义，用户需要传一个CATransition对象来设置动画
   */
  authDialogAnimationStyle?: String;

  /**
   * 授权弹窗自定义动画
   */
  authDialogTransitionAnimation?: String;

  /**
 服务条款页面导航栏隐藏。默认不隐藏。
 */
  webNaviHidden?: boolean;

  /**
 服务条款页面导航栏的标题，默认与协议名称保持一致，粗体、17pt。
 设置后，自定义协议的文案、颜色、字体都与设置的值保持一致，
 运营商协议的颜色、字体与设置的值保持一致，文案不变，与运营商协议名称保持一致。
 */
  webNaviTitle?: RNOLAuthViewModelNSAttributedString;

  /**
 服务条款页面导航的背景颜色。默认白色。
 */
  webNaviBgColor?: ColorValue;

  // Hint

  /**
 未勾选服务条款复选框时，点击登录按钮的提示。默认为"请同意服务条款"。
 */
  notCheckProtocolHint?: String;

  // OLAuthViewLifeCycleBlock

  /**
 授权页面视图生命周期回调。
 */
  //    @property (nullable, nonatomic, copy) OLAuthViewLifeCycleBlock viewLifeCycleBlock;

  // UIModalPresentationStyle

  /**
 present授权页面时的样式，默认为UIModalPresentationFullScreen
 */
  modalPresentationStyle?: String;

  /**
   * present授权页面时的自定义动画
   */
  modalPresentationAnimation?: String;

  /**
   * dismiss授权页面时的自定义动画
   */
  modalDismissAnimation?: String;

  // OLPullAuthVCStyle

  /**
   * @abstract 进入授权页面的方式，默认为 modal 方式，即 present 到授权页面，从授权页面进入服务条款页面的方式与此保持一致
   */
  pullAuthVCStyle?: String;

  // UIUserInterfaceStyle

  /**
   * @abstract 授权页面 UIUserInterfaceStyle，iOS 12 及以上系统，默认为 UIUserInterfaceStyleLight
   *
   * UIUserInterfaceStyle
   * UIUserInterfaceStyleUnspecified - 不指定样式，跟随系统设置进行展示
   * UIUserInterfaceStyleLight       - 明亮
   * UIUserInterfaceStyleDark        - 暗黑 仅对 iOS 13+ 系统有效
   */
  userInterfaceStyle?: String;

  backgroundImageView?: RNUIImageView;
  floatGoBackImageViewButton?: RNUIImageView;
  customViews?: RNUIImageView[];
};

export type RNUIImageView = {
  frame: { x: number; y: number; width: number; height: number };
  uiImage: RNUImage;
  callbackId?: number;
  onClick?: () => void;
};

export type RNFunction = {
  callbackId?: number;
  onClick?: () => void;
};

export type RNOLAuthViewModelNSAttributedString = {
  backgroundColor: String;
  string: String;
};

export type RNUImage = {
  named?: String;
};

export type RNOLAuthViewModelUIFontDescriptor = {
  textStyle: String;
  size: number;
};

export type RNOLAuthViewModelUIFont = {
  name: string;
  size: number;
  fontAttributes?: RNOLAuthViewModelUIFontDescriptor;
};

export type RNOLPrivacyTermItem = {
  title: string;
  /**
   * 带协议的URL
   */
  linkURL: string;
};
export type RNNSAttributedStringKey = {
  foregroundColor: ColorValue;
  backgroundColor: ColorValue;
};

export type CGSize = { width: number; height: number };

export type RNOLAuthViewModelOLRect = {
  /**
     竖屏时
     导航栏隐藏时，为控件顶部到状态栏的距离；导航栏显示时，为控件顶部到导航栏底部的距离
     弹窗时
     为控件顶部到弹窗顶部的距离
     */
  portraitTopYOffset: number;

  /**
      竖屏时
      控件的x轴中点到屏幕x轴中点的距离，默认为0
      弹窗时
      控件的x轴中点到弹窗x轴中点的距离，默认为0
      */
  portraitCenterXOffset: number;

  /**
      竖屏时
      控件的左边缘到屏幕左边缘的距离，默认为0
      弹窗时
      控件的左边缘到屏幕左边缘的距离，默认为0

      portraitLeftXOffset与portraitCenterXOffset设置一个即可，portraitLeftXOffset优先级大于portraitCenterXOffset，
      设置此属性时，portraitCenterXOffset属性失效
      */
  portraitLeftXOffset: number;

  /**
      横屏时
      导航栏隐藏时，为控件顶部到屏幕顶部的距离；导航栏显示时，为控件顶部到导航栏底部的距离
      弹窗时
      为控件顶部到弹窗顶部的距离
      */
  landscapeTopYOffset: number;

  /**
      横屏时
      控件的x轴中点到屏幕x轴中点的距离，默认为0
      弹窗时
      控件的x轴中点到弹窗x轴中点的距离，默认为0
      */
  landscapeCenterXOffset: number;

  /**
      横屏时
      控件的左边缘到屏幕左边缘的距离，默认为0
      弹窗时
      控件的左边缘到屏幕左边缘的距离，默认为0

      landscapeLeftXOffset与landscapeCenterXOffset设置一个即可，landscapeLeftXOffset优先级大于landscapeCenterXOffset，
      设置此属性时，landscapeCenterXOffset属性失效
      */
  landscapeLeftXOffset: number;

  /**
      控件大小，只有宽度、高度同时大于0，设置的size才会生效，否则为控件默认的size
      */
  size: CGSize;
};
