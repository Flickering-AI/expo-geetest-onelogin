package expo.modules.geetestonelogin

import android.app.Activity
import android.app.ProgressDialog
import android.graphics.Typeface
import android.util.Log
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.widget.CheckBox
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.RelativeLayout
import android.widget.TextView
import androidx.core.view.children
import com.geetest.onelogin.OneLoginHelper
import com.geetest.onelogin.config.AuthRegisterViewConfig
import com.geetest.onelogin.config.OneLoginThemeConfig
import com.geetest.onelogin.config.UserInterfaceStyle
import com.geetest.onelogin.listener.AbstractOneLoginListener
import com.geetest.onelogin.view.GTContainerWithLifecycle
import com.geetest.onelogin.view.GTGifView
import com.geetest.onelogin.view.GTVideoView
import com.geetest.onelogin.view.LoadingImageView
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition
import org.json.JSONObject
import java.lang.ref.WeakReference


const val EVENT_NAME = "onChange"

class ExpoGeetestOneloginModule : Module() {
  // Each module class must implement the definition function. The definition consists of components
  // that describes the module's functionality and behavior.
  // See https://docs.expo.dev/modules/module-api for more details about available components.
  override fun definition() = ModuleDefinition {
    // Sets the name of the module that JavaScript code will use to refer to the module. Takes a string as an argument.
    // Can be inferred from module's class name, but it's recommended to set it explicitly for clarity.
    // The module will be accessible from `requireNativeModule('ExpoGeetestOnelogin')` in JavaScript.
    Name("ExpoGeetestOnelogin")

    // Sets constant properties on the module. Can take a dictionary or a closure that returns a dictionary.
    Constants(
      "PI" to Math.PI
    )

    // Defines event names that the module can send to JavaScript.
    Events(EVENT_NAME)

    Function("setLogEnable") { isLogEnable: Boolean ->
      OneLoginHelper
        .with()
        //开启 SDK 日志打印功能
        .setLogEnable(isLogEnable)
    }

    Function("init") { appId: String ->
      OneLoginHelper
        .with()
        //开启 SDK 日志打印功能
//              .setLogEnable(true)
//              .setRequestTimeout(8000, 8000)
        //第一个参数为当前 Application 或 Activity 的 Context
        //第二个参数为所需要配置的 APPID, 注意与服务端保持一致
        .init(context, appId)
    }

    Function("setRequestTimeout") { preGetTokenTimeout: Int, requestTokenTimeout: Int ->
      OneLoginHelper
        .with()
        .setRequestTimeout(preGetTokenTimeout, requestTokenTimeout)
    }

    Function("register") { appId: String ->
      OneLoginHelper
        .with()
        //第二个参数为所需要配置的 APPID, 注意与服务端保持一致
        .register(appId)
    }

    Function("isPreGetTokenResultValidate") {
      return@Function OneLoginHelper
        .with().isPreGetTokenResultValidate
    }

    Function("stopLoading") {
      OneLoginHelper
        .with().stopLoading()
    }

    Function("dismissAuthActivity") {
      OneLoginHelper
        .with().dismissAuthActivity()
    }

    AsyncFunction("requestToken") { oneLoginThemeConfig: RNOneLoginThemeConfig?, callbackId: Int? ->
      val themeBuilder = OneLoginThemeConfig.Builder()
      if (oneLoginThemeConfig?.statusBar != null) {
        themeBuilder.setStatusBar(oneLoginThemeConfig.statusBar.statusBarColor, when (oneLoginThemeConfig.statusBar.statusBarStyle) {
          "UserInterfaceStyle.LIGHT" -> UserInterfaceStyle.LIGHT
          "UserInterfaceStyle.DARK" -> UserInterfaceStyle.DARK
          else -> UserInterfaceStyle.UNSPECIFIED
        }, oneLoginThemeConfig.statusBar.bgLayoutInStatusBar)
      }
      if (oneLoginThemeConfig?.authBgVideoUri != null) {
        themeBuilder.setAuthBgVideoUri("android.resource://${context.packageName}/" + appContext.currentActivity!!.resources.getIdentifier(oneLoginThemeConfig.authBgVideoUri, "raw", context.packageName))
      }
      if (oneLoginThemeConfig?.navigationBar != null) {
        themeBuilder.setNavigationBar(oneLoginThemeConfig.navigationBar.navigationBarColor, when (oneLoginThemeConfig.navigationBar.navigationBarStyle) {
          "UserInterfaceStyle.LIGHT" -> UserInterfaceStyle.LIGHT
          "UserInterfaceStyle.DARK" -> UserInterfaceStyle.DARK
          else -> UserInterfaceStyle.UNSPECIFIED
        }, oneLoginThemeConfig.navigationBar.bgLayoutInNavigationBar)
      }
      if (oneLoginThemeConfig?.authBGImgPath != null) {
        themeBuilder.setAuthBGImgPath(oneLoginThemeConfig.authBGImgPath)
      }
      if (oneLoginThemeConfig?.dialogTheme != null) {
        val dialogTheme = oneLoginThemeConfig.dialogTheme
        themeBuilder.setDialogTheme(dialogTheme.isDialogTheme,
                dialogTheme.dialogWidth,
                dialogTheme.dialogHeight,
                dialogTheme.dialogX,
                dialogTheme.dialogY,
                dialogTheme.isDialogBottom,
                dialogTheme.isWebViewDialogTheme)
      }
      if (oneLoginThemeConfig?.authNavLayout != null) {
        val map = oneLoginThemeConfig.authNavLayout
        themeBuilder.setAuthNavLayout(map.navColor,
                map.authNavHeight,
                map.authNavTransparent,
                map.authNavGone)
      }
      if (oneLoginThemeConfig?.authNavTextView != null) {
        val map = oneLoginThemeConfig.authNavTextView
        themeBuilder.setAuthNavTextView(map.navText,
                map.navTextColor,
                map.navTextSize,
                map.navWebTextNormal,
                map.navWebText,
                map.navWebTextColor,
                map.navWebTextSize,
                map.navTextMargin)
      }
      if (oneLoginThemeConfig?.switchViewLayout != null) {
        val map = oneLoginThemeConfig.switchViewLayout
        themeBuilder.setSwitchViewLayout(map.switchImgPath,
                map.switchWidth,
                map.switchHeight)
      }
      if (oneLoginThemeConfig?.logBtnTextView != null) {
        val map = oneLoginThemeConfig.logBtnTextView
        themeBuilder.setLogBtnTextView(map.logBtnText,
                map.logBtnColor,
                map.logBtnTextSize)
      }
      if (oneLoginThemeConfig?.logBtnLoadingView != null) {
        val map = oneLoginThemeConfig.logBtnLoadingView
        themeBuilder.setLogBtnLoadingView(map.loadingView,
                map.loadingViewWidth,
                map.loadingViewHeight,
                map.loadingViewOffsetRight)
      }
      if (oneLoginThemeConfig?.privacyUnCheckedToastText != null) {
        themeBuilder.setPrivacyUnCheckedToastText(oneLoginThemeConfig.privacyUnCheckedToastText)
      }
      if (oneLoginThemeConfig?.privacyClauseText != null) {
        val map = oneLoginThemeConfig.privacyClauseText
        themeBuilder.setPrivacyClauseText(map.clauseNameOne,
                map.clauseUrlOne,map.clauseNameTwo,
                map.clauseUrlTwo,map.clauseNameThree,
                map.clauseUrlThree)
      }
      if (oneLoginThemeConfig?.privacyTextGravity != null) {
        themeBuilder.setPrivacyTextGravity(oneLoginThemeConfig.privacyTextGravity)
      }
      if (oneLoginThemeConfig?.privacyClauseView != null) {
        val map = oneLoginThemeConfig.privacyClauseView
        themeBuilder.setPrivacyClauseView(map.baseClauseColor,
                map.clauseColor,map.privacyClauseTextSize)
      }
      if (oneLoginThemeConfig?.privacyTextView != null) {
        val map = oneLoginThemeConfig.privacyTextView
        themeBuilder.setPrivacyTextView(map.privacyTextViewTv1,
                map.privacyTextViewTv2,map.privacyTextViewTv3,map.privacyTextViewTv4)
      }
      if (oneLoginThemeConfig?.authNavTextViewTypeface != null) {
        val map = oneLoginThemeConfig.authNavTextViewTypeface
        themeBuilder.setAuthNavTextViewTypeface(Typeface.createFromAsset(context.assets, map.navTextTypeface),Typeface.createFromAsset(context.assets, map.navWebTextTypeface))
      }
      if (oneLoginThemeConfig?.numberViewTypeface != null) {
        themeBuilder.setNumberViewTypeface(Typeface.createFromAsset(context.assets, oneLoginThemeConfig.numberViewTypeface))
      }
      if (oneLoginThemeConfig?.switchViewTypeface != null) {
        themeBuilder.setSwitchViewTypeface(Typeface.createFromAsset(context.assets, oneLoginThemeConfig.switchViewTypeface))
      }
      if (oneLoginThemeConfig?.logBtnTextViewTypeface != null) {
        themeBuilder.setLogBtnTextViewTypeface(Typeface.createFromAsset(context.assets, oneLoginThemeConfig.logBtnTextViewTypeface))
      }
      if (oneLoginThemeConfig?.logoImgView != null) {
        val map = oneLoginThemeConfig.logoImgView
        themeBuilder.setLogoImgView(map.logoImgPath,
                map.logoWidth,map.logoHeight,map.logoHidden,map.logoOffsetY,map.logoOffsetY_B,map.logoOffsetX)
      }
      if (oneLoginThemeConfig?.authNavReturnImgView != null) {
        val map = oneLoginThemeConfig.authNavReturnImgView
        themeBuilder.setAuthNavReturnImgView(map.returnImgPath,
                map.returnImgWidth,map.returnImgHeight,map.returnImgHidden,map.returnImgOffsetX)
      }
      if (oneLoginThemeConfig?.numberView != null) {
        val map = oneLoginThemeConfig.numberView
        themeBuilder.setNumberView(map.numberColor,
                map.numberSize,map.numberOffsetY,map.numberOffsetY_B,map.numberOffsetX)
      }
      if (oneLoginThemeConfig?.sloganView != null) {
        val map = oneLoginThemeConfig.sloganView
        themeBuilder.setSloganView(map.sloganColor,
                map.sloganSize,map.sloganOffsetY,map.sloganOffsetY_B,map.sloganOffsetX)
      }
      if (oneLoginThemeConfig?.logBtnLayout != null) {
        val map = oneLoginThemeConfig.logBtnLayout
        themeBuilder.setLogBtnLayout(map.logBtnImgPath,map.logBtnUncheckedImgPath,map.logBtnWidth,
                map.logBtnHeight,map.logBtnOffsetY,map.logBtnOffsetY_B,map.logBtnOffsetX)
      }
      if (oneLoginThemeConfig?.switchView != null) {
        val map = oneLoginThemeConfig.switchView
        themeBuilder.setSwitchView(map.switchText,map.switchColor,map.switchSize,
                map.switchHidden,map.switchOffsetY,map.switchOffsetY_B,map.switchOffsetX)
      }
      if (oneLoginThemeConfig?.privacyCheckBox != null) {
        val map = oneLoginThemeConfig.privacyCheckBox
        themeBuilder.setPrivacyCheckBox(map.unCheckedImgPath,map.checkedImgPath,map.privacyState,
                map.privacyCheckBoxWidth,map.privacyCheckBoxHeight,map.privacyCheckBoxOffsetY,map.privacyCheckBoxMarginRight)
      }
      if (oneLoginThemeConfig?.privacyLayout != null) {
        val map = oneLoginThemeConfig.privacyLayout
        themeBuilder.setPrivacyLayout(map.privacyLayoutWidth,map.privacyOffsetY,map.privacyOffsetY_B,
                map.privacyOffsetX,map.isUseNormalWebActivity,map.gravity)
      }
      if (oneLoginThemeConfig?.privacyClauseViewTypeface != null) {
        val map = oneLoginThemeConfig.privacyClauseViewTypeface
        themeBuilder.setPrivacyClauseViewTypeface(Typeface.createFromAsset(context.assets, map.privacyClauseBaseTypeface),Typeface.createFromAsset(context.assets, map.privacyClauseTypeface))
      }
      if (oneLoginThemeConfig?.sloganViewTypeface != null) {
        themeBuilder.setSloganViewTypeface(Typeface.createFromAsset(context.assets, oneLoginThemeConfig.sloganViewTypeface))
      }
      if (oneLoginThemeConfig?.customViews != null) {

        val authRegisterViewConfigBuilder = AuthRegisterViewConfig.Builder()
        val frameLayout = FrameLayout(context)
        frameLayout.isClickable = false
        frameLayout.isFocusable = false
        frameLayout.tag = "customViews"
        frameLayout.layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        oneLoginThemeConfig.customViews.forEach { frameLayout.addView(it.build(appContext.reactContext!!, onClickFun = { a, b -> callback(a, b) })) }
        authRegisterViewConfigBuilder.setView(frameLayout)
        authRegisterViewConfigBuilder.setRootViewId(AuthRegisterViewConfig.RootViewId.ROOT_VIEW_ID_BODY)
        OneLoginHelper.with().addOneLoginRegisterViewConfig("custom_views", authRegisterViewConfigBuilder.build())
      }
      OneLoginHelper
        .with().requestToken(appContext.currentActivity, themeBuilder.build(), object : AbstractOneLoginListener() {
          private var authActivityWeakReference: WeakReference<Activity>? = null
          private var loadingDialog: ProgressDialog? = null
          override fun onResult(p0: JSONObject?) {
            if (callbackId != null) {
              p0?.toMap()?.let { callback(callbackId, it) }
            }
          }
          override fun onLoginLoading() {
            super.onLoginLoading()
            loadingDialog = ProgressDialog.show(authActivityWeakReference!!.get(), "", "请稍候...")
          }
          override fun onAuthActivityCreate(activity: Activity?) {
            super.onAuthActivityCreate(activity)
            authActivityWeakReference = WeakReference(activity)
            val view = activity!!.window.decorView
            val contentView = view.findViewById<View>(android.R.id.content)
            checkTag((contentView as FrameLayout).children)
          }

          fun checkTag(views: Sequence<View>?) {
            views?.forEach {
              if (it.tag == "customViews") {
                it.isClickable = false
                it.isFocusable = false
                (it.parent as View).isClickable = false
                (it.parent as View).isFocusable = false
              } else if (it is ViewGroup) {
                checkTag(it.children)
              }
            }
          }
        })
    }
  }

  private val context
    get() = requireNotNull(appContext.reactContext)

  fun callback(callbackId: Int) {
    this.callback(callbackId, null)
  }
  fun callback(callbackId: Int, params: Map<String, Any?>?) {
    sendEvent(EVENT_NAME, mapOf("callbackId" to callbackId, "type" to "callback", "result" to params))
  }
}