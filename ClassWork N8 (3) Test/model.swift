//
//  model.swift
//  ClassWork N8 (3) Test
//
//  Created by Magdiel Altynbekov on 15/12/22.
//

import Foundation
class Notes{
    var note:String
    var photo:String
    var status:Bool = false
    init(note: String, photo: String, status:Bool) {
        self.note = note
        self.photo = photo
        self.status = status
    }
    
}
var notesArray = [Notes]()
