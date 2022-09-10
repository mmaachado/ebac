import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	
	var window: UIWindow?
	let dataController = DataController(modelName: "AppNoticias")
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		
		dataController.loadData()
		let loginViewController = window?.rootViewController as! LoginViewController
		loginViewController.dataController = dataController
		
		guard let _ = (scene as? UIWindowScene) else { return }
	}
	
	func sceneDidDisconnect(_ scene: UIScene) {
		saveViewContext()
	}
	
	func sceneDidBecomeActive(_ scene: UIScene) {
	}
	
	func sceneWillResignActive(_ scene: UIScene) {
	}
	
	func sceneWillEnterForeground(_ scene: UIScene) {
	}
	
	func sceneDidEnterBackground(_ scene: UIScene) {
		saveViewContext()
	}
	
	func saveViewContext() {
		try? dataController.viewContext.save()
	}
}

