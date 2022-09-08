//
//  AppDelegate.swift
//  ExercicioModulo20
//
//  Created by Marcelo Machado on 07/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		firstLaunch()
		return true
	}

	// MARK: UISceneSession Lifecycle

	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

		return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
	}

	func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

	}
	
	func firstLaunch() {
		if UserDefaults.standard.bool(forKey: "JaFoiIniciado") {
			print("O app já foi iniciado anteriormente")
		}else{
			print("O app está iniciando pela primeira vez")
			UserDefaults.standard.set(true, forKey: "JaFoiIniciado")
			UserDefaults.standard.set(false, forKey: "modoNoturno")
		}
	}
}

