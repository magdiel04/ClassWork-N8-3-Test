//
//  TableViewCell.swift
//  ClassWork N8 (3) Test
//
//  Created by Magdiel Altynbekov on 12/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var textcell: UILabel!
    
    
    @IBOutlet weak var imagecell: UIImageView!
    
    var isTapped: Bool = false
    
    
    override func layoutSubviews() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(taptap))
        imagecell.addGestureRecognizer(tap)
    }
    
    @objc func taptap(){
        let tableView = superview as? UITableView
        var index0 : Int? = nil
        for (index,item) in notesArray.enumerated(){
            if textcell.text! == item.note{
                index0 = index
            }
        }
        if index0 != nil{
            if !notesArray[index0!].status{
                notesArray.remove(at: index0!)
                notesArray.insert(Notes(note: textcell.text!, photo: "checkmark.square", status: true), at: 0)
                tableView?.reloadData()
                
            }else{
                
                notesArray.remove(at: index0!)
                notesArray.append(Notes(note: textcell.text!, photo: "square", status: false))
                tableView?.reloadData()
                
            }
        }
    }
}
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        let tap = UITapGestureRecognizer(target: self, action: #selector(taptap))
//        imagecell.addGestureRecognizer(tap)
//    }
//    @objc func taptap(){
//        if isTapped == false{
//            imagecell.image = UIImage(systemName: "square")
//            isTapped = true
//        }else{
//            imagecell.image = UIImage(systemName: "checkmark.square")
//            isTapped = false
//        }
//
//    }
//
//    }
        // Initialization code
    

    
