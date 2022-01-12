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
        
        switch person.house {
            case "Lannister":
                houseLabel.textColor = UIColor(named: "LannisterColor")
            case "Tully":
                houseLabel.textColor = UIColor(named: "TullyColor")
            case "Tyrell":
                houseLabel.textColor = UIColor(named: "TyrellColor")
            case "Stark":
                houseLabel.textColor = UIColor(named: "StarkColor")
            case "Baratheon":
                houseLabel.textColor = UIColor(named: "BaratheonColor")
            default:
                houseLabel.textColor = UIColor.label
            
        }
    }
    
    var person: Person?
    
    

}
