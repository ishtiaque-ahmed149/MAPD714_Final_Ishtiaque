//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/16/21.
//  Final Exam, MAPD714 (iOS development)
//  Changes Made: First UI attemp (Dec 15th), Changed looks of the UI from the first attempt, added launchscreen (Dec 16th), completed first screen with getting proper results switching mertic/emperial (Dec 16th), Made cells functional to print weight, bmi and current date (dec 17th)
//  Description: This is a BMI Calculator with 2 screens and database capabilities.
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

