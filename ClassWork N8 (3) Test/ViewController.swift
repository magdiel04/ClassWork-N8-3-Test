//
//  ViewController.swift
//  ClassWork N8 (3) Test
//
//  Created by Magdiel Altynbekov on 12/12/22.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var zametki:[String] = []
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.register(UI
      
        
        
//        
        title = "Заметки"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(rightBarButtonTap))
    }
    
    @objc func rightBarButtonTap(){
        let alert = UIAlertController(title: "Новая заметка", message: "", preferredStyle: .alert)
        
        present(alert, animated: true)
        
        var text = UITextField()
        alert.addTextField { textF in
            text = textF
            
        }
        
        
        let noAction = UIAlertAction(title: "No", style: .destructive){ action in
    ()
            
        }
        let okAction = UIAlertAction(title: "Yes", style: .cancel) { action in
            notesArray.append(Notes(note: text.text!, photo: "square", status: false))
            self.tableView.reloadData()
        }
        
        alert.addAction(noAction)
        alert.addAction(okAction)
    }
//    func o(){
//        if TableViewCell.imagecell.image == UIImage(systemName: "checkmark.square"){
//            zametki.insert(text.text ?? "", at: 0)
//        }
//    }
    
    
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "adress_cell", for: indexPath) as! TableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "adress_cell", for: indexPath) as! TableViewCell
               cell.textcell.text = notesArray[indexPath.row].note
               cell.imagecell.image = UIImage(systemName: "\(notesArray[indexPath.row].photo)")
               
        cell.textLabel?.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
//        cell.textcell.text = zametki[indexPath.row]
//        cell.imagecell.image = UIImage(systemName: "square")
        
        return cell
    }
    
    
}
    
    
    

