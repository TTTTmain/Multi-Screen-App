//
//  HouseViewController.swift
//  Multi-Screen App
//
//  Created by Timothy Tan on 11/1/2022.
//

import UIKit

class HouseViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        guard let person = person else {
            return
        }
        
        nameLabel.text = "Name: \(person.name)"
        ageLabel.text = "Age: \(person.age)"
        houseLabel.text = "House: \(person.house)"
    }
    
    var person: Person?
    
    

}
