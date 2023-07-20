//
//  DTO.swift
//  ExpoGeetestOnelogin
//
//  Created by xxxxp on 7/19/23.
//

import ExpoModulesCore

struct RNOneLoginThemeConfigStatusBar : Record {
  @Field
    var statusBarColor: UIColor = UIColor.clear
  @Field
  var statusBarStyle: String = "UserInterfaceStyle.UNSPECIFIED"
  @Field
  var bgLayoutInStatusBar: Bool = false
}

struct RNOneLoginThemeConfigDialogTheme : Record {
  @Field
  var isDialogTheme: Bool = false
  @Field
  var dialogWidth: Int = 0
  @Field
  var dialogHeight: Int = 0
  @Field
  var dialogX: Int = 0
  @Field
  var dialogY: Int = 0
  @Field
  var isDialogBottom: Bool = false
  @Field
  var isWebViewDialogTheme: Bool = false
}

struct RNOneLoginThemeConfigAuthNavLayout : Record {
  @Field
  var navColor: UIColor = UIColor.clear
  @Field
  var authNavHeight: Int = 0
  @Field
  var authNavTransparent: Bool = false
  @Field
  var authNavGone: Bool = false
}

struct RNOneLoginThemeConfigAuthNavTextView : Record {
  @Field
  var navText: String = ""
  @Field
  var navTextColor: UIColor = UIColor.clear
  @Field
  var navTextSize: Int = 0
  @Field
  var navWebTextNormal: Bool = false
  @Field
  var navWebText: String = ""
  @Field
  var navWebTextColor: UIColor = UIColor.clear
  @Field
  var navWebTextSize: Int = 0
  @Field
  var navTextMargin: Int = 0
}

struct RNOneLoginThemeConfigSwitchViewLayout : Record {
  @Field
  var switchImgPath: String = ""
  @Field
  var switchWidth: Int = 0
  @Field
  var switchHeight: Int = 0
}

struct RNOneLoginThemeConfigLogBtnTextView : Record {
  @Field
  var logBtnText: String = ""
  @Field
  var logBtnColor: UIColor = UIColor.clear
  @Field
  var logBtnTextSize: Int = 0
}

struct RNOneLoginThemeConfigLogBtnLoadingView : Record {
  @Field
  var loadingView: String = ""
  @Field
  var loadingViewWidth: Int = 0
  @Field
  var loadingViewHeight: Int = 0
  @Field
  var loadingViewOffsetRight: Int = 0
}

struct RNOneLoginThemeConfigPrivacyClauseText : Record {
  @Field
  var clauseNameOne: String = ""
  @Field
  var clauseUrlOne: String = ""
  @Field
  var clauseNameTwo: String = ""
  @Field
  var clauseUrlTwo: String = ""
  @Field
  var clauseNameThree: String = ""
  @Field
  var clauseUrlThree: String = ""
}

struct RNOneLoginThemeConfigPrivacyClauseView: Record {
  @Field
  var baseClauseColor: UIColor = UIColor.clear
  @Field
  var clauseColor: UIColor = UIColor.clear
  @Field
  var privacyClauseTextSize: Int = 0
}

struct RNOneLoginThemeConfigPrivacyTextView: Record {
  @Field
  var privacyTextViewTv1: String = ""
  @Field
  var privacyTextViewTv2: String = ""
  @Field
  var privacyTextViewTv3: String = ""
  @Field
  var privacyTextViewTv4: String = ""
}

struct RNOneLoginThemeConfigAuthNavTextViewTypeface: Record {
  @Field
  var navTextTypeface: String = ""
  @Field
  var navWebTextTypeface: String = ""
}

struct RNOneLoginThemeConfigLogoImgView: Record {
  @Field
  var logoImgPath: String = ""
  @Field
  var logoWidth: Int = 0
  @Field
  var logoHeight: Int = 0
  @Field
  var logoHidden: Bool = false
  @Field
  var logoOffsetY: Int = 0
  @Field
  var logoOffsetY_B: Int = 0
  @Field
  var logoOffsetX: Int = 0
}

struct RNOneLoginThemeConfigAuthNavReturnImgView: Record {
  @Field
  var returnImgPath: String = ""
  @Field
  var returnImgWidth: Int = 0
  @Field
  var returnImgHeight: Int = 0
  @Field
  var returnImgHidden: Bool = false
  @Field
  var returnImgOffsetX: Int = 0
}

struct RNOneLoginThemeConfigNumberView: Record {
  @Field
  var numberColor: UIColor = UIColor.clear
  @Field
  var numberSize: Int = 0
  @Field
  var numberOffsetY: Int = 0
  @Field
  var numberOffsetY_B: Int = 0
  @Field
  var numberOffsetX: Int = 0
}

struct RNOneLoginThemeConfigSloganView: Record {
  @Field
  var sloganColor: UIColor = UIColor.clear
  @Field
  var sloganSize: Int = 0
  @Field
  var sloganOffsetY: Int = 0
  @Field
  var sloganOffsetY_B: Int = 0
  @Field
  var sloganOffsetX: Int = 0
}

struct RNOneLoginThemeConfigLogBtnLayout: Record {
  @Field
  var logBtnImgPath: String = ""
  @Field
  var logBtnUncheckedImgPath: String = ""
  @Field
  var logBtnWidth: Int = 0
  @Field
  var logBtnHeight: Int = 0
  @Field
  var logBtnOffsetY: Int = 0
  @Field
  var logBtnOffsetY_B: Int = 0
  @Field
  var logBtnOffsetX: Int = 0
}

struct RNOneLoginThemeConfigSwitchView: Record {
  @Field
  var switchText: String = ""
  @Field
    var switchColor: UIColor = UIColor.clear
  @Field
  var switchSize: Int = 0
  @Field
  var switchHidden: Bool = false
  @Field
  var switchOffsetY: Int = 0
  @Field
  var switchOffsetY_B: Int = 0
  @Field
  var switchOffsetX: Int = 0
}

struct RNOneLoginThemeConfigPrivacyCheckBox: Record {
  @Field
  var unCheckedImgPath: String = ""
  @Field
  var checkedImgPath: String = ""
  @Field
  var privacyState: Bool = false
  @Field
  var privacyCheckBoxWidth: Int = 0
  @Field
  var privacyCheckBoxHeight: Int = 0
  @Field
  var privacyCheckBoxOffsetY: Int = 0
  @Field
  var privacyCheckBoxMarginRight: Int = 0
}

struct RNOneLoginThemeConfigPrivacyLayout: Record {
  @Field
  var isUseNormalWebActivity: Bool = false
  @Field
  var privacyLayoutWidth: Int = 0
  @Field
  var privacyOffsetY: Int = 0
  @Field
  var privacyOffsetY_B: Int = 0
  @Field
  var privacyOffsetX: Int = 0
  @Field
  var gravity: Int = 0
}

struct RNOneLoginThemeConfigPrivacyClauseViewTypeface: Record {
  @Field
  var privacyClauseBaseTypeface: String = ""
  @Field
  var privacyClauseTypeface: String = ""
}

struct RNOLAuthViewModelNSAttributedString: Record {
    @Field var backgroundColor: String;
}

struct RNOLAuthViewModelOLRect: Record {
    /**
     竖屏时
     导航栏隐藏时，为控件顶部到状态栏的距离；导航栏显示时，为控件顶部到导航栏底部的距离
     弹窗时
     为控件顶部到弹窗顶部的距离
     */
    @Field
    var portraitTopYOffset: CGFloat = 0
    
    /**
     竖屏时
     控件的x轴中点到屏幕x轴中点的距离，默认为0
     弹窗时
     控件的x轴中点到弹窗x轴中点的距离，默认为0
     */
    @Field
    var portraitCenterXOffset: CGFloat = 0
    
    /**
     竖屏时
     控件的左边缘到屏幕左边缘的距离，默认为0
     弹窗时
     控件的左边缘到屏幕左边缘的距离，默认为0
     
     portraitLeftXOffset与portraitCenterXOffset设置一个即可，portraitLeftXOffset优先级大于portraitCenterXOffset，
     设置此属性时，portraitCenterXOffset属性失效
     */
    @Field
    var portraitLeftXOffset: CGFloat = 0;
    
    /**
     横屏时
     导航栏隐藏时，为控件顶部到屏幕顶部的距离；导航栏显示时，为控件顶部到导航栏底部的距离
     弹窗时
     为控件顶部到弹窗顶部的距离
     */
    var landscapeTopYOffset: CGFloat = 0;
    
    /**
     横屏时
     控件的x轴中点到屏幕x轴中点的距离，默认为0
     弹窗时
     控件的x轴中点到弹窗x轴中点的距离，默认为0
     */
    var landscapeCenterXOffset: CGFloat = 0;
    
    /**
     横屏时
     控件的左边缘到屏幕左边缘的距离，默认为0
     弹窗时
     控件的左边缘到屏幕左边缘的距离，默认为0
     
     landscapeLeftXOffset与landscapeCenterXOffset设置一个即可，landscapeLeftXOffset优先级大于landscapeCenterXOffset，
     设置此属性时，landscapeCenterXOffset属性失效
     */
    @Field var landscapeLeftXOffset: CGFloat = 0;
    
    /**
     控件大小，只有宽度、高度同时大于0，设置的size才会生效，否则为控件默认的size
     */
    @Field var size: CGSize = CGSize.zero;
}
struct RNOLAuthViewModelUIFontDescriptor {
    @Field var textStyle: String = ""
    @Field var size: CGFloat = 24
}
struct RNOLAuthViewModelUIFont {
    @Field var name: String = ""
    @Field var size: CGFloat = 24
    @Field var fontAttributes: RNOLAuthViewModelUIFontDescriptor? = nil
}

struct RNOLAuthViewModel: Record {
    // Status Bar/状态栏

    /**
     状态栏样式。 默认 `UIStatusBarStyleDefault`。
     */
    @Field var statusBarStyle: String; // UIStatusBarStyle 

    // Navigation/导航

    /**
     导航栏标题距离屏幕左右两边的间距。默认为36，隐私条款导航栏保持一致。
     */
    @Field var navTextMargin: Double = 0;
    /**
     授权页导航的标题。默认为空字符串。
     */
    @Field var naviTitle: RNOLAuthViewModelNSAttributedString? = nil;

    /**
     授权页导航的背景颜色。默认白色。
     */
    @Field var naviBgColor: UIColor? = nil;

    /**
     授权页导航左边的返回按钮的图片。默认黑色系统样式返回图片。
     */
    @Field var naviBackImage: String = "";

    /**
     授权页导航右边的自定义控件。
     */
    @Field var naviRightControl: String = "";

    /**
     导航栏隐藏。默认不隐藏。
     */
    @Field var naviHidden: Bool = false;

    /**
     返回按钮位置及大小，返回按钮最大size为CGSizeMake(40, 40)。
     */
    @Field var backButtonRect: RNOLAuthViewModelOLRect;

    /**
     返回按钮隐藏。默认不隐藏。
     */
    @Field var backButtonHidden: Bool;

    /**
     * 点击授权页面返回按钮的回调
     */
//    @Field var clickBackButtonBlock: OLClickBackButtonBlock;

    // Logo/图标

    /**
     授权页面上展示的图标。默认为 "OneLogin" 图标。
     */
    @Field var appLogo: String = "";

    /**
     Logo 位置及大小。
     */
    @Field var logoRect: RNOLAuthViewModelOLRect?;

    /**
     Logo 图片隐藏。默认不隐藏。
     */
    @Field var logoHidden: Bool = false;

    /**
     logo圆角，默认为0。
     */
    @Field var logoCornerRadius: CGFloat = 0;

    // Phone Number Preview/手机号预览

    /**
     号码预览文字的颜色。默认黑色。
     */
    @Field var phoneNumColor: UIColor = UIKit.UIColor.clear;

    /**
     号码预览文字的字体。默认粗体，24pt。
     */
    @Field var phoneNumFont: RNOLAuthViewModelUIFont? = nil

    /**
     号码预览 位置及大小
     */
    @Field var phoneNumRect: RNOLAuthViewModelOLRect? = nil;

    /**
     号码富文本，默认为空。
    */
    @Field var attrPhone: RNOLAuthViewModelNSAttributedString? = nil;

    // Switch Button/切换按钮

    /**
     授权页切换账号按钮的文案。默认为“切换账号”。
     */
    @Field var switchButtonText: String = "切换账号";

    /**
     授权页切换账号按钮的颜色。默认蓝色。
     */
    @Field var switchButtonColor: UIColor = UIKit.UIColor.clear

    /**
     授权页切换账号按钮背景颜色。默认为 nil。
     */
    @Field var switchButtonBackgroundColor: UIColor? = nil;

    /**
     授权页切换账号的字体。默认字体，15pt。
     */
    @Field var switchButtonFont: RNOLAuthViewModelUIFont?;

    /**
     授权页切换账号按钮 位置及大小。
     */
    @Field var switchButtonRect: RNOLAuthViewModelOLRect;

    /**
     隐藏切换账号按钮。默认不隐藏。
     */
    @Field var switchButtonHidden: Bool;

    /**
     * 点击授权页面切换账号按钮的回调
     */
//    @property (nullable, nonatomic, copy) OLClickSwitchButtonBlock clickSwitchButtonBlock;

    // Authorization Button/认证按钮

    /**
     授权页认证按钮的背景图片, @[正常状态的背景图片, 不可用状态的背景图片, 高亮状态的背景图片]。默认正常状态为蓝色纯色, 不可用状态的背景图片时为灰色, 高亮状态为灰蓝色。
     */
    @Field var authButtonImages: Array<String>;

    /**
     授权按钮文案。默认白色的"一键登录"。
     */
    @Field var authButtonTitle: RNOLAuthViewModelNSAttributedString?;

    /**
     授权按钮 位置及大小。
     */
    @Field var authButtonRect: RNOLAuthViewModelOLRect?;

    /**
     授权按钮圆角，默认为0。
     */
    @Field var authButtonCornerRadius: CGFloat = 0;

    /**
     * 点击授权页面授权按钮的回调，用于监听授权页面登录按钮的点击
     */
//    @property (nullable, nonatomic, copy) OLClickAuthButtonBlock clickAuthButtonBlock;

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
    @Field var sloganText: String;

    /**
     Slogan 位置及大小。
     */
    @Field var sloganRect: OLRect?;

    /**
     Slogan 文字颜色。默认灰色。
     */
    @Field var sloganTextColor: UIColor?;

    /**
     Slogan字体。默认字体, 12pt。
     */
    @Field var sloganTextFont: RNOLAuthViewModelUIFont?;

    // CheckBox & Privacy Terms/隐私条款勾选框及隐私条款

    /**
     授权页面上条款勾选框初始状态。默认 NO。
     */
    @Field var defaultCheckBoxState: Bool;

    /**
     授权页面上勾选框勾选的图标。默认为蓝色图标。推荐尺寸为12x12。
     */
    @Field var checkedImage: String;

    /**
     授权页面上勾选框未勾选的图标。默认为白色图标。推荐尺寸为12x12。
     */
    @Field var uncheckedImage: String;

    /**
     授权页面上条款勾选框大小及位置，请不要设置勾选框的横向偏移，整体隐私条款的横向偏移，请通过 termsRect 设置
     */
    @Field var checkBoxRect: RNOLAuthViewModelOLRect?;

    /**
     隐私条款文字属性。默认基础文字灰色, 条款蓝色高亮, 12pt。
     */
    @Field var privacyTermsAttributes: String?;

    /**
     额外的条款。默认为空。
     */
    @Field var additionalPrivacyTerms: String?;

    /**
     服务条款普通文字的颜色。默认灰色。
     */
    @Field var termTextColor: UIColor?;

    /**
     隐私条款 位置及大小，隐私条款，宽需大于50，高需大于20，才会生效。
     */
    @Field var termsRect: RNOLAuthViewModelOLRect;

    /**
     除隐私条款外的其他文案，数组大小必须 >= 4，元素依次为：条款前的文案、条款一和条款二连接符、条款二和条款三连接符、条款三和条款四连接符、……，条款后的文案。
     默认为@[@"登录即同意", @"和", @"、", @"并使用本机号码登录"]
     */
    @Field var auxiliaryPrivacyWords: Array<String>?;

    /**
     * 点击授权页面隐私协议前勾选框的回调
     */
//    @property (nullable, nonatomic, copy) OLClickCheckboxBlock clickCheckboxBlock;

    /**
     * 服务条款文案对齐方式，默认为NSTextAlignmentLeft
     */
    @Field var termsAlignment: String;

    /**
     * 点击授权页面运营商隐私协议的回调
     */
//    @property (nullable, nonatomic, copy) OLViewPrivacyTermItemBlock carrierTermItemBlock;

    /**
     * 是否在运营商协议名称上加书名号《》
     */
    @Field var hasQuotationMarkOnCarrierProtocol: Bool;

    /**
     * 未勾选勾选框时，是否禁止一键登录按钮的点击
     */
    @Field var disableAuthButtonWhenUnchecked: Bool;

    /**
     * 未勾选授权页面隐私协议前勾选框时，点击授权页面登录按钮时提示 block
     */
//    @property (nonatomic, copy) OLNotCheckProtocolHintBlock hintBlock;

    /**
     * 未勾选授权页面隐私协议前勾选框时，点击授权页面登录按钮时勾选框与协议的抖动样式,默认不抖动
     */
    @Field var shakeStyle: String;

    /**
     * 勾选框与服务条款文案之间的间距。默认为 2
     */
    @Field var spaceBetweenCheckboxAndTermsText: CGFloat = 2

    // 授权页文案多语言配置
    /**
     * 多语言配置，支持中文简体，中文繁体，英文
     */
    @Field var languageType: String;

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
    @Field var backgroundColor: UIColor?;

    /**
     授权页面背景图片
     */
    @Field var backgroundImage: String;

    /**
     横屏模式授权页面背景图片
     */
    @Field var landscapeBackgroundImage: String;

    // Background Gif/授权页面背景 gif
    /**
     授权页面背景Gif路径，与背景图片、视频，三者只有一个有效，视频优先级最高，背景图其次，gif 最后
     */
    @Field var backgroundGifPath: String;
    // Background Video/授权页面背景视频
    /**
     授权页面背景视频路径，可支持本地和网络视频，与背景图片、gif，三者只有一个有效，视频优先级最高，背景图其次，gif 最后
     */
    @Field var backgroundVideoPath: String;

    // Autolayout

    /**
     * 授权页面视图控件自动布局回调
     */
//    @property (nullable, nonatomic, copy) OLAuthVCAutoLayoutBlock autolayoutBlock;

    // orientation

    /**
     * 授权页面支持的横竖屏方向
     */
    @Field var supportedInterfaceOrientations: String;


    // Popup

    /**
     * 是否为弹窗模式
     */
    @Field var isPopup: Bool

    /**
     弹窗 位置及大小。弹窗模式时，x轴偏移只支持portraitLeftXOffset和landscapeLeftXOffset。
     */
    @Field var popupRect: RNOLAuthViewModelOLRect;

    /**
     弹窗圆角，默认为6。
     */
    @Field var popupCornerRadius: CGFloat = 6;

    /**
     当只需要设置弹窗的部分圆角时，通过popupCornerRadius设置圆角大小，通过popupRectCorners设置需要设置圆角的位置。
     popupRectCorners数组元素不超过四个，超过四个时，只取前四个。比如，要设置左上和右上为圆角，则传值：@[@(UIRectCornerTopLeft), @(UIRectCornerTopRight)]
     */
    @Field var popupRectCorners: Array<NSNumber>?;

    /**
     * 弹窗动画类型，当popupAnimationStyle为OLAuthPopupAnimationStyleStyleCustom时，动画为用户自定义，用户需要传一个CATransition对象来设置动画
     */
    @Field var popupAnimationStyle: String;

    /**
     * 弹窗自定义动画
     */
    @Field var popupTransitionAnimation: String;

    /**
     弹窗关闭按钮图片，弹窗关闭按钮的尺寸跟图片尺寸保持一致。
     弹窗关闭按钮位于弹窗右上角，目前只支持设置其距顶部偏移和距右边偏移。
     */
    @Field var closePopupImage: String;

    /**
     弹窗关闭按钮距弹窗顶部偏移。
     */
    @Field var closePopupTopOffset: NSNumber = 0;

    /**
     弹窗关闭按钮距弹窗右边偏移。
     */
    @Field var closePopupRightOffset: NSNumber = 0

    /**
    是否需要通过点击弹窗的背景区域以关闭授权页面。
    */
    @Field var canClosePopupFromTapGesture: Bool = false;

    /**
     * 点击授权页面弹窗背景的回调
     */
//    @property (nonatomic, copy, nullable) OLTapAuthBackgroundBlock tapAuthBackgroundBlock;

    /**
     * 弹窗蒙板视图
     */
//    @Field var popupMaskView: UIView;

    // Auth Dialog/授权弹窗

    /**
     * 未勾选同意协议时是否弹出授权弹窗
     */
    @Field var willAuthDialogDisplay: Bool;

    /**
     * 点击授权弹窗外是否关闭授权弹窗
     */
    @Field var canCloseAuthDialogFromTapGesture: Bool;

    /**
     * 授权弹窗宽、高、起始点位置
     */
    @Field var authDialogRect: RNOLAuthViewModelOLRect;

    /**
     * 授权弹窗是否显示在屏幕下方
     */
    @Field var isAuthDialogBottom: Bool;

    /**
     * 授权弹窗背景颜色
     */
    @Field var authDialogBgColor: UIColor?;

    /**
     * 授权弹窗标题文字
     */
    @Field var authDialogTitleText: String;

    /**
     * 授权弹窗标题颜色
     */
    @Field var authDialogTitleColor: UIColor?;

    /**
     * 授权弹窗字体样式及大小
     */
    @Field var authDialogTitleFont: RNOLAuthViewModelUIFont?;

    /**
     * 授权弹窗富文本字体样式及大小
     */
    @Field var authDialogContentFont: RNOLAuthViewModelUIFont?;

    /**
     * 授权弹窗不同意按钮文字
     */
    @Field var authDialogDisagreeBtnText: String;

    /**
     * 授权弹窗不同意按钮样式及大小
     */
    @Field var authDialogDisagreeBtnFont: RNOLAuthViewModelUIFont?;

    /**
     * 授权弹窗不同意按钮文字颜色
     */
    @Field var authDialogDisagreeBtnColor: UIColor?;

    /**
     * 授权弹窗不同意按钮的背景图片, @[正常状态的背景图片, 高亮状态的背景图片]。默认正常状态为灰色, 高亮状态为深灰色。
     */
    @Field var authDialogDisagreeBtnImages: Array<String>;

    /**
     * 授权弹窗同意按钮文字
     */
    @Field var authDialogAgreeBtnText: String;

    /**
     * 授权弹窗同意按钮样式及大小
     */
    @Field var authDialogAgreeBtnFont: RNOLAuthViewModelUIFont?;

    /**
     * 授权弹窗同意按钮文字颜色
     */
    @Field var authDialogAgreeBtnColor: UIColor?;

    /**
     * 授权弹窗同意按钮的背景图片, @[正常状态的背景图片, 高亮状态的背景图片]。默认正常状态为蓝色纯色, 高亮状态为灰蓝色。
     */
    @Field var authDialogAgreeBtnImages: Array<String>?;

    /**
     * 授权弹窗圆角，默认为10。
     */
    @Field var authDialogCornerRadius: CGFloat = 10;

    /**
     * 当只需要设置授权弹窗的部分圆角时，通过 authDialogCornerRadius 设置圆角大小，通过 authDialogRectCorners 设置需要设置圆角的位置。
     * authDialogRectCorners 数组元素不超过四个，超过四个时，只取前四个。比如，要设置左上和右上为圆角，则传值：@[@(UIRectCornerTopLeft), @(UIRectCornerTopRight)]
     */
    @Field var authDialogRectCorners: Array<NSNumber>?;

    /**
     * 授权弹窗动画类型，当authDialogAnimationStyle为OLAuthDialogAnimationStyleCustom时，动画为用户自定义，用户需要传一个CATransition对象来设置动画
     */
    @Field var authDialogAnimationStyle: String;

    /**
     * 授权弹窗自定义动画
     */
    @Field var authDialogTransitionAnimation: String;

    /**
     * 点击授权弹窗背景关闭授权弹窗时的回调
     */
//    @Field (nullable, nonatomic, copy) OLTapAuthDialogBackgroundBlock tapAuthDialogBackgroundBlock;

    /**
     * 点击授权弹窗不同意按钮时的回调
     */
//    @property (nullable, nonatomic, copy) OLClickAuthDialogDisagreeBtnBlock clickAuthDialogDisagreeBtnBlock;

    // Loading

    /**
     * 授权页面，自定义加载进度条，点击登录按钮之后的回调
     */
//    @property (nonatomic, copy, nullable) OLLoadingViewBlock loadingViewBlock;

    /**
     * 授权页面，停止自定义加载进度条，调用[OneLogin stopLoading]之后的回调
     */
//    @property (nonatomic, copy, nullable) OLStopLoadingViewBlock stopLoadingViewBlock;

    // WebViewController Navigation/服务条款页面导航栏

    /**
     服务条款页面导航栏隐藏。默认不隐藏。
     */
    @Field var webNaviHidden: Bool;

    /**
     服务条款页面导航栏的标题，默认与协议名称保持一致，粗体、17pt。
     设置后，自定义协议的文案、颜色、字体都与设置的值保持一致，
     运营商协议的颜色、字体与设置的值保持一致，文案不变，与运营商协议名称保持一致。
     */
    @Field var webNaviTitle: RNOLAuthViewModelNSAttributedString?;

    /**
     服务条款页面导航的背景颜色。默认白色。
     */
    @Field var webNaviBgColor: UIColor?;

    // Hint

    /**
     未勾选服务条款复选框时，点击登录按钮的提示。默认为"请同意服务条款"。
     */
    @Field var notCheckProtocolHint: String;

    // OLAuthViewLifeCycleBlock

    /**
     授权页面视图生命周期回调。
     */
//    @property (nullable, nonatomic, copy) OLAuthViewLifeCycleBlock viewLifeCycleBlock;

    // UIModalPresentationStyle

    /**
     present授权页面时的样式，默认为UIModalPresentationFullScreen
     */
    @Field var modalPresentationStyle: String;

    /**
     * present授权页面时的自定义动画
     */
    @Field var modalPresentationAnimation: String;

    /**
     * dismiss授权页面时的自定义动画
     */
    @Field var modalDismissAnimation: String;

    // OLPullAuthVCStyle

    /**
     * @abstract 进入授权页面的方式，默认为 modal 方式，即 present 到授权页面，从授权页面进入服务条款页面的方式与此保持一致
     */
    @Field var pullAuthVCStyle: String;

    // UIUserInterfaceStyle

    /**
     * @abstract 授权页面 UIUserInterfaceStyle，iOS 12 及以上系统，默认为 UIUserInterfaceStyleLight
     *
     * UIUserInterfaceStyle
     * UIUserInterfaceStyleUnspecified - 不指定样式，跟随系统设置进行展示
     * UIUserInterfaceStyleLight       - 明亮
     * UIUserInterfaceStyleDark        - 暗黑 仅对 iOS 13+ 系统有效
     */
    @Field var userInterfaceStyle: String;
}
