//
//  SceneDelegate.swift
//  ExercicioModulo20
//
//  Created by Marcelo Machado on 07/09/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		SandBoxFile()
		guard let _ = (scene as? UIWindowScene) else { return }
	}

	func sceneDidDisconnect(_ scene: UIScene) {

	}

	func sceneDidBecomeActive(_ scene: UIScene) {
		
	}

	func sceneWillResignActive(_ scene: UIScene) {
		
	}

	func sceneWillEnterForeground(_ scene: UIScene) {
		
	}

	func sceneDidEnterBackground(_ scene: UIScene) {
		
	}
	
	func SandBoxFile() {
		let fileManager = FileManager.default
		let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
		let url = urls.last?.appendingPathComponent("file.txt")
		
		do {
			try "Hello World!".write(to: url!, atomically: true, encoding: .utf8)
		} catch {
			print("Erro!")
		}
		
		do {
			let content = try String(contentsOf: url!, encoding: String.Encoding.utf8)
			
			if content == "Hello World!" {
				print("Escrito com sucesso!")
				
			} else {
				print("Não escrito!")
			}
		} catch {
			print("Ocorreu um erro ao tentar modificar o arquivo!")
		}
	
	}


}

