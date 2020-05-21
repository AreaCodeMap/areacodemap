import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?

  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    NSLog("\nHello, World!")

    let flutterViewController : String = "my test string"

    NSLog("\nValue of hello = %@", flutterViewController)

    let task = Process()

    // let envVarString : NSString = @(getenv("GOOGLE_MAPS_API_KEY"));

    // NSLog("\nValue of env var = %@", flutterViewController2)

    let gkey : String = "GOOGLE_MAPS_API_KEY";
    let env : [String : String] = ProcessInfo.processInfo.environment;
    NSLog("\nValue of env = %@", env)

    //NSString *gkey = @"GOOGLE_MAPS_API_KEY";
    //NSDictionary *env = [[NSProcessInfo processInfo] environment];
    //NSString *overrideURL = [env valueForKey:@"gkey"];

    //NSLog("\nValue of hello = %@", *overrideURL)

    // let batteryLevel : Int = self.getBatteryLevel();

    // NSLog(NSLog("\n" + ProcessInfo.processInfo.environment["GOOGLE_MAPS_API_KEY"])

    // TODO: Add your API key
    GMSServices.provideAPIKey("GOOGLE_MAPS_API_KEY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}