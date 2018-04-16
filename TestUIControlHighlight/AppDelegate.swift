
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let controller = ViewController()
        let nav = UINavigationController(rootViewController: controller)
        
        window = UIWindow()
        window!.rootViewController = nav
        window!.makeKeyAndVisible()
        
        return true
    }
}
