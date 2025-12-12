package expo.modules.geetestonelogin

import android.content.Context
import android.graphics.Color
import android.graphics.Typeface
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.RelativeLayout
import android.widget.TextView
import androidx.annotation.ColorInt
import androidx.annotation.Nullable
import expo.modules.kotlin.records.Field
import expo.modules.kotlin.records.Record
import org.json.JSONArray
import org.json.JSONObject

fun JSONObject.toMap(): Map<String, *> = keys().asSequence().associateWith {
  when (val value = this[it]) {
    is JSONArray -> {
      val map = (0 until value.length()).associate { Pair(it.toString(), value[it]) }
      JSONObject(map).toMap().values.toList()
    }

    is JSONObject -> value.toMap()
    JSONObject.NULL -> null
    else -> value
  }
}

class RNOneLoginThemeConfigStatusBar : Record {
  @Field @ColorInt
  val statusBarColor: Int = 0
  @Field
  val statusBarStyle: String = "UserInterfaceStyle.UNSPECIFIED"
  @Field
  val bgLayoutInStatusBar: Boolean = false
}

class RNOneLoginThemeConfigNavigationBar : Record {
  @Field @ColorInt
  val navigationBarColor: Int = 0
  @Field
  val navigationBarStyle: String = "UserInterfaceStyle.UNSPECIFIED"
  @Field
  val bgLayoutInNavigationBar: Boolean = false
}

class RNOneLoginThemeConfigDialogTheme : Record {
  @Field
  val isDialogTheme: Boolean = false
  @Field
  val dialogWidth: Int = 0
  @Field
  val dialogHeight: Int = 0
  @Field
  val dialogX: Int = 0
  @Field
  val dialogY: Int = 0
  @Field
  val isDialogBottom: Boolean = false
  @Field
  val isWebViewDialogTheme: Boolean = false
}

class RNOneLoginThemeConfigAuthNavLayout : Record {
  @Field @ColorInt
  val navColor: Int = 0
  @Field
  val authNavHeight: Int = 0
  @Field
  val authNavTransparent: Boolean = false
  @Field
  val authNavGone: Boolean = false
}

class RNOneLoginThemeConfigAuthNavTextView : Record {
  @Field
  val navText: String = ""
  @Field @ColorInt
  val navTextColor: Int = 0
  @Field
  val navTextSize: Int = 0
  @Field
  val navWebTextNormal: Boolean = false
  @Field
  val navWebText: String = ""
  @Field @ColorInt
  val navWebTextColor: Int = 0
  @Field
  val navWebTextSize: Int = 0
  @Field
  val navTextMargin: Int = 0
}

class RNOneLoginThemeConfigSwitchViewLayout : Record {
  @Field
  val switchImgPath: String = ""
  @Field
  val switchWidth: Int = 0
  @Field
  val switchHeight: Int = 0
}

class RNOneLoginThemeConfigLogBtnTextView : Record {
  @Field
  val logBtnText: String = ""
  @Field @ColorInt
  val logBtnColor: Int = 0
  @Field
  val logBtnTextSize: Int = 0
}

class RNOneLoginThemeConfigLogBtnLoadingView : Record {
  @Field
  val loadingView: String = ""
  @Field
  val loadingViewWidth: Int = 0
  @Field
  val loadingViewHeight: Int = 0
  @Field
  val loadingViewOffsetRight: Int = 0
}

class RNOneLoginThemeConfigPrivacyClauseText : Record {
  @Field
  val clauseNameOne: String = ""
  @Field
  val clauseUrlOne: String = ""
  @Field
  val clauseNameTwo: String = ""
  @Field
  val clauseUrlTwo: String = ""
  @Field
  val clauseNameThree: String = ""
  @Field
  val clauseUrlThree: String = ""
}

class RNOneLoginThemeConfigPrivacyClauseView: Record {
  @Field @ColorInt
  val baseClauseColor: Int = 0
  @Field @ColorInt
  val clauseColor: Int = 0
  @Field
  val privacyClauseTextSize: Int = 0
}

class RNOneLoginThemeConfigPrivacyTextView: Record {
  @Field
  val privacyTextViewTv1: String = ""
  @Field
  val privacyTextViewTv2: String = ""
  @Field
  val privacyTextViewTv3: String = ""
  @Field
  val privacyTextViewTv4: String = ""
}

class RNOneLoginThemeConfigAuthNavTextViewTypeface: Record {
  @Field
  val navTextTypeface: String = ""
  @Field
  val navWebTextTypeface: String = ""
}

class RNOneLoginThemeConfigLogoImgView: Record {
  @Field
  val logoImgPath: String = ""
  @Field
  val logoWidth: Int = 0
  @Field
  val logoHeight: Int = 0
  @Field
  val logoHidden: Boolean = false
  @Field
  val logoOffsetY: Int = 0
  @Field
  val logoOffsetY_B: Int = 0
  @Field
  val logoOffsetX: Int = 0
}

class RNOneLoginThemeConfigAuthNavReturnImgView: Record {
  @Field
  val returnImgPath: String = ""
  @Field
  val returnImgWidth: Int = 0
  @Field
  val returnImgHeight: Int = 0
  @Field
  val returnImgHidden: Boolean = false
  @Field
  val returnImgOffsetX: Int = 0
}

class RNOneLoginThemeConfigNumberView: Record {
  @Field @ColorInt
  val numberColor: Int = 0
  @Field
  val numberSize: Int = 0
  @Field
  val numberOffsetY: Int = 0
  @Field
  val numberOffsetY_B: Int = 0
  @Field
  val numberOffsetX: Int = 0
}

class RNOneLoginThemeConfigSloganView: Record {
  @Field @ColorInt
  val sloganColor: Int = 0
  @Field
  val sloganSize: Int = 0
  @Field
  val sloganOffsetY: Int = 0
  @Field
  val sloganOffsetY_B: Int = 0
  @Field
  val sloganOffsetX: Int = 0
}

class RNOneLoginThemeConfigLogBtnLayout: Record {
  @Field
  val logBtnImgPath: String = ""
  @Field
  val logBtnUncheckedImgPath: String = ""
  @Field
  val logBtnWidth: Int = 0
  @Field
  val logBtnHeight: Int = 0
  @Field
  val logBtnOffsetY: Int = 0
  @Field
  val logBtnOffsetY_B: Int = 0
  @Field
  val logBtnOffsetX: Int = 0
}

class RNOneLoginThemeConfigSwitchView: Record {
  @Field
  val switchText: String = ""
  @Field @ColorInt
  val switchColor: Int = 0
  @Field
  val switchSize: Int = 0
  @Field
  val switchHidden: Boolean = false
  @Field
  val switchOffsetY: Int = 0
  @Field
  val switchOffsetY_B: Int = 0
  @Field
  val switchOffsetX: Int = 0
}

class RNOneLoginThemeConfigPrivacyCheckBox: Record {
  @Field
  val unCheckedImgPath: String = ""
  @Field
  val checkedImgPath: String = ""
  @Field
  val privacyState: Boolean = false
  @Field
  val privacyCheckBoxWidth: Int = 0
  @Field
  val privacyCheckBoxHeight: Int = 0
  @Field
  val privacyCheckBoxOffsetY: Int = 0
  @Field
  val privacyCheckBoxMarginRight: Int = 0
}

class RNOneLoginThemeConfigPrivacyLayout: Record {
  @Field
  val isUseNormalWebActivity: Boolean = false
  @Field
  val privacyLayoutWidth: Int = 0
  @Field
  val privacyOffsetY: Int = 0
  @Field
  val privacyOffsetY_B: Int = 0
  @Field
  val privacyOffsetX: Int = 0
  @Field
  val gravity: Int = 0
}

class RNOneLoginThemeConfigPrivacyClauseViewTypeface: Record {
  @Field
  val privacyClauseBaseTypeface: String = ""
  @Field
  val privacyClauseTypeface: String = ""
}
class RNMargin: Record {
  @Field
  val left: Int = 0
  @Field
  val top: Int = 0
  @Field
  val right: Int = 0
  @Field
  val bottom: Int = 0
}
class RNFunction: Record {
  @Field
  val callbackId: Int = 0
  @Field
  val params: Map<String, Any> = mapOf()
}
class RNCustomView: Record {
  @Field
  val x: Float = 0f
  @Field
  val y: Float = 0f
  @Field
  val width: Int = 0
  @Field
  val height: Int = 0
  @Field
  val imageResourceName: String = ""
  @Field
  val text: String = ""
  @Field @ColorInt
  val color: Int = 0
  @Field
  val textSize: Float = 16f
  @Field
  val typeface: String = ""
  @Field
  val margin: RNMargin? = null
  @Field
  val padding: RNMargin? = null
  @Field
  val onClick: RNFunction? = null
  fun build(context: Context, onClickFun: (Int, Map<String, Any?>?) -> Unit): View {
    val view: View?
    if (text.isNotEmpty()) {
      view = TextView(context)
      view.text = text
      view.setTextColor(color)
      if (typeface.isNotEmpty()) {
        view.typeface = Typeface.createFromAsset(context.assets, typeface)
      }
      view.textSize = textSize
    } else {
      view = ImageView(context)
      view.setImageResource(context.resources.getIdentifier(imageResourceName, "drawable", context.packageName))
    }
    if (width != 0 && height != 0) {
      view.layoutParams = FrameLayout.LayoutParams(width, height)
    }

    view.x = x
    view.y = y
    if (view.layoutParams == null) {
      view.layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT)
    }
    if (margin != null) {
      (view.layoutParams as FrameLayout.LayoutParams).setMargins(margin.left, margin.top, margin.right, margin.bottom)
    }
    if (padding != null) {
      view.setPadding(padding.left, padding.top, padding.right, padding.bottom)
    }

    if (onClick != null) {
      view.setOnClickListener { onClickFun(onClick.callbackId, mapOf()) }
    }
    return view
  }
}

class RNOneLoginThemeConfig : Record {
  @Field
  val statusBar: RNOneLoginThemeConfigStatusBar? = null
  @Field
  val navigationBar: RNOneLoginThemeConfigNavigationBar? = null
  @Field
  val authBGImgPath: String? = null
  @Field
  val authBgVideoUri: String? = null
  @Field
  val dialogTheme: RNOneLoginThemeConfigDialogTheme? = null
  @Field
  val authNavLayout: RNOneLoginThemeConfigAuthNavLayout? = null
  @Field
  val authNavTextView: RNOneLoginThemeConfigAuthNavTextView? = null
  @Field
  val switchViewLayout: RNOneLoginThemeConfigSwitchViewLayout? = null
  @Field
  val logBtnTextView: RNOneLoginThemeConfigLogBtnTextView? = null
  @Field
  val logBtnLoadingView: RNOneLoginThemeConfigLogBtnLoadingView? = null
  @Field
  val privacyUnCheckedToastText: String? = null
  @Field
  val privacyClauseText: RNOneLoginThemeConfigPrivacyClauseText? = null
  @Field
  val privacyTextGravity: Int? = null
  @Field
  val privacyClauseView: RNOneLoginThemeConfigPrivacyClauseView? = null
  @Field
  val privacyTextView: RNOneLoginThemeConfigPrivacyTextView? = null
  @Field
  val authNavTextViewTypeface: RNOneLoginThemeConfigAuthNavTextViewTypeface? = null
  @Field
  val numberViewTypeface: String? = null
  @Field
  val switchViewTypeface: String? = null
  @Field
  val logBtnTextViewTypeface: String? = null
  @Field
  val logoImgView: RNOneLoginThemeConfigLogoImgView? = null
  @Field
  val authNavReturnImgView: RNOneLoginThemeConfigAuthNavReturnImgView? = null
  @Field
  val numberView: RNOneLoginThemeConfigNumberView? = null
  @Field
  val sloganView: RNOneLoginThemeConfigSloganView? = null
  @Field
  val logBtnLayout: RNOneLoginThemeConfigLogBtnLayout? = null
  @Field
  val switchView: RNOneLoginThemeConfigSwitchView? = null
  @Field
  val privacyCheckBox: RNOneLoginThemeConfigPrivacyCheckBox? = null
  @Field
  val privacyLayout: RNOneLoginThemeConfigPrivacyLayout? = null
  @Field
  val privacyClauseViewTypeface: RNOneLoginThemeConfigPrivacyClauseViewTypeface? = null
  @Field
  val sloganViewTypeface: String? = null
  @Field
  val customViews: Array<RNCustomView>? = null
}