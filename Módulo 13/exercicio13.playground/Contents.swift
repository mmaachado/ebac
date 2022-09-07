// 1) Crie uma TableView embedando para dentro de uma ViewController.
// Use UITableViewDelegate e UITableViewDataSource.
// Crie Label como mostramos na aula e uma interação com o clique da celula.
// Crie uma lista ao qual a TableView irá iterar sobre.

import PlaygroundSupport
import UIKit


class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
// 1) Crie uma TableView embedando para dentro de uma ViewController.
    
    var tableView: UITableView!
    let items = ["EBAC", "Curso", "iOS", "Mobile", "Developer"]
    // Crie uma lista ao qual a TableView irá iterar sobre.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.frame = CGRect(x: 0, y: 0, width: 220, height: 380)
        
        self.tableView = UITableView(frame: self.view.frame)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    // MARK: - UITableViewDataSource
    // Use UITableViewDelegate e UITableViewDataSource.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "\(self.items[indexPath.row])"
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    // Use UITableViewDelegate e UITableViewDataSource.
    
    // Crie Label como mostramos na aula e uma interação com o clique da celula.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Did Select", message: "Row at index path \(indexPath)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
        
    }
}

var mainView = MainViewController()
PlaygroundPage.current.liveView = mainView.view
