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
      OneLoginPro.register(withAppID: appId)
    }
    AsyncFunction("requestTokenWithViewController") { (oneLoginThemeConfig: RNOLAuthViewModel, promise: Promise) in
      let viewModel = OLAuthViewModel()
//      viewModel.viewLifeCycleBlock = { (viewLifeCycle: String, animated: Bool) in
//        self.sendEvent("onChange", [viewLifeCycle: viewLifeCycle])
//      }
//      if ((oneLoginThemeConfig.statusBar) != nil) {
//        switch oneLoginThemeConfig.statusBar?.statusBarStyle {
//          case "UserInterfaceStyle.LIGHT":
//            viewModel.statusBarStyle = UIStatusBarStyle.lightContent
//          case "UserInterfaceStyle.DARK":
//            viewModel.statusBarStyle = UIStatusBarStyle.darkContent
//          default:
//            viewModel.statusBarStyle = UIStatusBarStyle.default
//        }
//      }
      
      
      
      
      // Find the nearest view controller
      var controller = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController;
      var presentedController = controller?.presentedViewController;
      while (presentedController != nil && !presentedController!.isBeingDismissed) {
        controller = presentedController;
        presentedController = controller?.presentedViewController;
      }
      if (controller != nil) {
        OneLoginPro.requestToken(with: controller!, viewModel: viewModel, completion: {_ in
          promise.resolve(true)
        })
      }
    }
    
    AsyncFunction("dismissAuthViewController") { (animated: Bool, promise: Promise) in
      OneLoginPro.dismissAuthViewController(animated, completion: {
        promise.resolve(true)
      })
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
}
