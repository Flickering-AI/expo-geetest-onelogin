import ExpoModulesCore

public class ExpoGeetestOneloginModule: Module {
  // Each module class must implement the definition function. The definition consists of components
  // that describes the module's functionality and behavior.
  // See https://docs.expo.dev/modules/module-api for more details about available components.
  public func definition() -> ModuleDefinition {
    // Sets the name of the module that JavaScript code will use to refer to the module. Takes a string as an argument.
    // Can be inferred from module's class name, but it's recommended to set it explicitly for clarity.
    // The module will be accessible from `requireNativeModule('ExpoGeetestOnelogin')` in JavaScript.
    Name("ExpoGeetestOnelogin")

    // Sets constant properties on the module. Can take a dictionary or a closure that returns a dictionary.
    Constants([
      "PI": Double.pi
    ])

    // Defines event names that the module can send to JavaScript.
    Events("onChange")

    // Defines a JavaScript synchronous function that runs the native code on the JavaScript thread.
    Function("hello") {
      return "Hello world! 👋"
    }

    // Defines a JavaScript function that always returns a Promise and whose native code
    // is by default dispatched on the different thread than the JavaScript runtime runs on.
    AsyncFunction("setValueAsync") { (value: String) in
      // Send an event to JavaScript.
      self.sendEvent("onChange", [
        "value": value
      ])
    }
      
    Function("setLogEnable") { (isLogEnable: Bool) in
        OneLoginPro.setLogEnabled(isLogEnable)
    }
    Function("setRequestTimeout") { (preGetTokenTimeout: Int, requestTokenTimeout: Int) in
      OneLoginPro.setRequestTimeout(TimeInterval(preGetTokenTimeout),requestTokenTimeout: TimeInterval(requestTokenTimeout))
    }

    Function("register") { (appId: String) in
      return OneLoginPro.register(withAppID: appId)
    }
    
    Function("isPreGetTokenResultValidate") { () in
      return OneLoginPro.isPreGetTokenResultValidate()
    }
    
    Function("requestTokenWithViewController") { (viewModelRN: RNOLAuthViewModel, callbackId: Int) in
      DispatchQueue.main.async {
        // Find the nearest view controller
        var controller = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController;
        var presentedController = controller?.presentedViewController;
        while (presentedController != nil && !presentedController!.isBeingDismissed) {
          controller = presentedController;
          presentedController = controller?.presentedViewController;
        }
        
        let viewModel = OLAuthViewModel()
        if (viewModelRN.statusBarStyle != nil) {
          switch viewModelRN.statusBarStyle {
            case "UIStatusBarStyle.darkContent":
              if #available(iOS 13.0, *) {
                  viewModel.statusBarStyle = UIStatusBarStyle.darkContent
              }
            case "UIStatusBarStyle.lightContent":
              viewModel.statusBarStyle = UIStatusBarStyle.lightContent
            default:
              viewModel.statusBarStyle = UIStatusBarStyle.default
          }
        }
          if (viewModelRN.backgroundVideoPath != nil) {
              viewModel.backgroundVideoPath = viewModelRN.backgroundVideoPath;
          }
        if (viewModelRN.navTextMargin != nil) {
          viewModel.navTextMargin = viewModelRN.navTextMargin!
        }
        if (viewModelRN.naviTitle != nil) {
          viewModel.naviTitle = viewModelRN.naviTitle!.build()
        }
        if (viewModelRN.naviBgColor != nil) {
          viewModel.naviBgColor = viewModelRN.naviBgColor
        }
        if (viewModelRN.naviBackImage != nil) {
          viewModel.naviBackImage = viewModelRN.naviBackImage!.build()
        }
        if (viewModelRN.naviRightControl != nil) {
  //        viewModel.naviRightControl = viewModelRN.naviRightControl!.build()
        }
        if (viewModelRN.naviHidden != nil) {
          viewModel.naviHidden = viewModelRN.naviHidden!
        }
        if (viewModelRN.backButtonRect != nil) {
          viewModel.backButtonRect = viewModelRN.backButtonRect!.build()
        }
        if (viewModelRN.backButtonHidden != nil) {
          viewModel.backButtonHidden = viewModelRN.backButtonHidden!
        }
        if (viewModelRN.backgroundColor != nil) {
          viewModel.backgroundColor = viewModelRN.backgroundColor!
        }
        if (viewModelRN.logoHidden != nil) {
          viewModel.logoHidden = viewModelRN.logoHidden!
        }
        if (viewModelRN.phoneNumFont != nil) {
          viewModel.phoneNumFont = viewModelRN.phoneNumFont!.build()
        }
        if (viewModelRN.phoneNumColor != nil) {
          viewModel.phoneNumColor = viewModelRN.phoneNumColor!
        }
        if (viewModelRN.backgroundImage != nil) {
          let contentView = OneLoginPro.currentAuthViewController()?.view
          viewModel.backgroundImage = viewModelRN.backgroundImage!.build()
        }
        if (viewModelRN.auxiliaryPrivacyWords != nil) {
          viewModel.auxiliaryPrivacyWords = viewModelRN.auxiliaryPrivacyWords
        }
        if (viewModelRN.notCheckProtocolHint != nil) {
          viewModel.notCheckProtocolHint = viewModelRN.notCheckProtocolHint!
        }
        if (viewModelRN.additionalPrivacyTerms != nil) {
          viewModel.additionalPrivacyTerms = viewModelRN.additionalPrivacyTerms!.map({ e in
            return e.build()
          })
        }
        if (viewModelRN.termTextColor != nil) {
          viewModel.termTextColor = viewModelRN.termTextColor!
        }
        if (viewModelRN.defaultCheckBoxState != nil) {
          viewModel.defaultCheckBoxState = viewModelRN.defaultCheckBoxState!
        }
        if (viewModelRN.termsRect != nil) {
          viewModel.termsRect = viewModelRN.termsRect!.build()
        }
        if (viewModelRN.privacyTermsAttributes != nil) {
          viewModel.privacyTermsAttributes =  viewModelRN.privacyTermsAttributes!.build()
        }
        if (viewModelRN.switchButtonText != nil) {
          viewModel.switchButtonText =  viewModelRN.switchButtonText!
        }
        if (viewModelRN.switchButtonFont != nil) {
          viewModel.switchButtonFont =  viewModelRN.switchButtonFont!.build()
        }
        if (viewModelRN.switchButtonColor != nil) {
          viewModel.switchButtonColor =  viewModelRN.switchButtonColor!
        }
        if (viewModelRN.switchButtonRect != nil) {
          viewModel.switchButtonRect =  viewModelRN.switchButtonRect!.build()
        }
        if (viewModelRN.sloganTextColor != nil) {
          viewModel.sloganTextColor =  viewModelRN.sloganTextColor!
        }
        if (viewModelRN.switchButtonRect != nil) {
          viewModel.sloganTextFont =  viewModelRN.sloganTextFont!.build()
        }
        if (viewModelRN.checkedImage != nil) {
          viewModel.checkedImage =  viewModelRN.checkedImage!.build()
        }
        if (viewModelRN.uncheckedImage != nil) {
          viewModel.uncheckedImage =  viewModelRN.uncheckedImage!.build()
        }
        if (viewModelRN.checkBoxRect != nil) {
          viewModel.checkBoxRect =  viewModelRN.checkBoxRect!.build()
        }
        if (viewModelRN.authButtonImages != nil) {
          viewModel.authButtonImages =  viewModelRN.authButtonImages!.map({ e in
            return e.build()
          })
        }
        if (viewModelRN.authButtonTitle != nil) {
          viewModel.authButtonTitle =  viewModelRN.authButtonTitle!.build()
        }
        if (viewModelRN.authButtonRect != nil) {
          viewModel.authButtonRect =  viewModelRN.authButtonRect!.build()
        }
        if (viewModelRN.naviBackImage != nil) {
          viewModel.naviBackImage =  viewModelRN.naviBackImage!.build()
        }
        if (viewModelRN.naviBackImage != nil) {
          viewModel.naviBackImage =  viewModelRN.naviBackImage!.build()
        }
        if (viewModelRN.logoRect != nil) {
          viewModel.logoRect =  viewModelRN.logoRect!.build()
        }
        if (viewModelRN.logoCornerRadius != nil) {
          viewModel.logoCornerRadius =  viewModelRN.logoCornerRadius!
        }
        if (viewModelRN.appLogo != nil) {
          viewModel.appLogo =  viewModelRN.appLogo!.build()
        }
        if (viewModelRN.switchButtonRect != nil) {
          viewModel.switchButtonRect =  viewModelRN.switchButtonRect!.build()
        }
        if (viewModelRN.switchButtonRect != nil) {
          viewModel.switchButtonRect =  viewModelRN.switchButtonRect!.build()
        }
        if (viewModelRN.sloganRect != nil) {
          viewModel.sloganRect =  viewModelRN.sloganRect!.build()
        }
        if (viewModelRN.phoneNumRect != nil) {
          viewModel.phoneNumRect =  viewModelRN.phoneNumRect!.build()
        }
        if (viewModelRN.webNaviTitle != nil) {
          viewModel.webNaviTitle =  viewModelRN.webNaviTitle!.build()
        }
        if (viewModelRN.webNaviHidden != nil) {
          viewModel.webNaviHidden =  viewModelRN.webNaviHidden!
        }
        if (viewModelRN.webNaviBgColor != nil) {
          viewModel.webNaviBgColor =  viewModelRN.webNaviBgColor!
        }
        if (viewModelRN.hasQuotationMarkOnCarrierProtocol != nil) {
          viewModel.hasQuotationMarkOnCarrierProtocol =  viewModelRN.hasQuotationMarkOnCarrierProtocol!
        }
        if (viewModelRN.disableAuthButtonWhenUnchecked != nil) {
          viewModel.disableAuthButtonWhenUnchecked =  viewModelRN.disableAuthButtonWhenUnchecked!
        }
        viewModel.customUIHandler = { (customAreaView: UIView) in
          if (viewModelRN.backgroundImageView != nil) {
//            let backgroundImage = UIImageView.init(frame: CGRectMake(0, -40, 418, 359 * 418 / 375))
//            backgroundImage.image = UIImage.init(named: "onelogin_bg");
//            customAreaView.addSubview(backgroundImage)
            
            let backgroundImage = viewModelRN.backgroundImageView!.build()
            customAreaView.addSubview(backgroundImage)
          }
//          if (viewModelRN.naviHidden != nil && viewModelRN.naviHidden == true && viewModelRN.backButtonHidden != nil && viewModelRN.backButtonHidden == false) {
//
//          }
          if (viewModelRN.floatGoBackImageViewButton != nil) {
            let imageButton = viewModelRN.floatGoBackImageViewButton!.build()
            if (viewModelRN.floatGoBackImageViewButton!.callbackId != nil) {
              imageButton.addTarget(self, action: #selector(self.onClicked), for: UIControl.Event.touchDown)
            }
            customAreaView.addSubview(imageButton)
          }
          if (viewModelRN.customViews != nil) {
            viewModelRN.customViews?.forEach({ e in
              let button = e.build()
              if (e.callbackId != nil) {
                button.addTarget(self, action: #selector(self.onClicked), for: UIControl.Event.touchDown)
              }
              customAreaView.addSubview(button)
            })
            
          }
        }
        if (viewModelRN.clickSwitchButtonBlock != nil) {
          viewModel.clickSwitchButtonBlock = {
            self.callback(callbackId: viewModelRN.clickSwitchButtonBlock!.callbackId, params: nil)
          }
        }
        if (viewModelRN.clickAuthButtonBlock != nil) {
          viewModel.clickAuthButtonBlock = {
            self.callback(callbackId: viewModelRN.clickAuthButtonBlock!.callbackId, params: nil)
          }
        }
//        viewModel.autolayoutBlock = { [weak self] (authView: UIView, authContentView: UIView, authBackgroundImageView: UIView?, authNavigationView: UIView, authNavigationContainerView: UIView, authBackButton: UIView, authNavigationTitleView: UIView, authLogoView: UIView, authPhoneView: UIView, authSwitchButton: UIView, authLoginButton: UIView, authSloganView: UIView, authAgreementView: UIView, authCheckbox: UIView, authProtocolView: UIView, authClosePopupButton: UIView?) in
          // background
//          authBackgroundImageView?.bounds.size.width = 0
//          authBackgroundImageView?.bounds.size.height = 0
//          let subviews = authBackgroundImageView?.subviews
//          let imageView = authContentView.subviews.first { e in
//            return e is UIImageView
//          }
//          imageView?.bounds.size = CGSize(width: 100, height: 100)
//          authNavigationView.layer.zPosition = 2
//        }
        viewModel.viewLifeCycleBlock = { (viewLifeCycle: String, animated: Bool) in
          self.sendEvent("onChange", [viewLifeCycle: viewLifeCycle])
        }
        // -------------- 授权页面点击登录按钮之后的loading设置 -------------------
        let mask = UIView(frame: CGRect(x: 0, y: 0, width: controller!.view.bounds.width, height: controller!.view.bounds.height))
        mask.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
          let indicatorView: UIActivityIndicatorView?
          if #available(iOS 13.0, *) {
              indicatorView = UIActivityIndicatorView.init(style: UIActivityIndicatorView.Style.large)
          } else {
              indicatorView = UIActivityIndicatorView.init(style: UIActivityIndicatorView.Style.whiteLarge)
          }
        indicatorView!.color = UIColor.white
        let loadingContainer = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        loadingContainer.center = CGPoint.init(x: mask.bounds.size.width/2, y: mask.bounds.size.height/2)
        loadingContainer.layer.cornerRadius = 15
        loadingContainer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.9)
        loadingContainer.addSubview(indicatorView!)
        mask.addSubview(loadingContainer)
        viewModel.loadingViewBlock = { (containerView: UIView) in
            if OneLogin.isProtocolCheckboxChecked() {
              containerView.addSubview(mask)
              indicatorView!.center = CGPoint.init(x: loadingContainer.bounds.size.width/2, y: loadingContainer.bounds.size.height/2)
                indicatorView!.startAnimating()
            }
        }
            
        viewModel.stopLoadingViewBlock = { (containerView: UIView) in
            for subview in containerView.subviews {
                if subview == mask {
                    subview.removeFromSuperview()
                    break
                }
            }
        }
        
        if (controller != nil) {
          OneLoginPro.requestToken(with: controller!, viewModel: viewModel, completion: { result in
            self.callback(callbackId: callbackId, params: ["result": result])
          })
        }
      }
    }
    
    AsyncFunction("dismissAuthViewController") { (animated: Bool, promise: Promise) in
      OneLoginPro.dismissAuthViewController(animated, completion: {
        promise.resolve(true)
      })
    }
    Function("stopLoading") { () in
      OneLoginPro.stopLoading()
    }
    Function("renewPreGetToken") { () in
      OneLoginPro.renewPreGetToken()
    }

    // Enables the module to be used as a native view. Definition components that are accepted as part of the
    // view definition: Prop, Events.
    View(ExpoGeetestOneloginView.self) {
      // Defines a setter for the `name` prop.
      Prop("name") { (view: ExpoGeetestOneloginView, prop: String) in
        print(prop)
      }
    }
  }
  
  @objc func onClicked(sender: UIButton) {
    self.callback(callbackId: sender.tag, params: ["type": "callback"])
  }
  func callback(callbackId: Int) {
    self.callback(callbackId: callbackId, params: nil)
  }
  func callback(callbackId: Int, params: Dictionary<String, Any>?) {
    self.sendEvent("onChange", ["callbackId": callbackId, "type": "callback"].merging(params ?? [:], uniquingKeysWith: { (_, new) in new }))
  }
}
