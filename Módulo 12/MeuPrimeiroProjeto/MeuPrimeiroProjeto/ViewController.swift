//
//  AppDelegate.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcelo Machado on 19/01/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    @IBAction func unwindToFist(segue: UIStoryboardSegue) { }

}
