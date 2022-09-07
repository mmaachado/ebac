//
//  ViewController.swift
//  ExercicioModulo20
//
//  Created by Marcelo Machado on 07/09/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var `switch`: UISwitch!
	
	let defaults = UserDefaults.standard
	let keys:String = "modoNoturno"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if let modoNoite = defaults.value(forKey: "modoNoturno") {
			if modoNoite as! Bool {
				
			}
		}
	}

	@IBAction func switchClicado(_ sender: Any) {
		if `switch`.isOn {
			switchNoite()
			defaults.set(true, forKey: keys)
		}else{
			switchDia()
			defaults.set(false, forKey: keys)
		}
	}
	
	func switchNoite() {
		`switch`.setOn(true, animated: false)
		overrideUserInterfaceStyle = .dark
	}
	
	func switchDia() {
		`switch`.setOn(false, animated: false)
		overrideUserInterfaceStyle = .light
		
	}
}

