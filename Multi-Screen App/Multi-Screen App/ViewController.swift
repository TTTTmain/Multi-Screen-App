//
//  ViewController.swift
//  Multi-Screen App
//
//  Created by Timothy Tan on 11/1/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var houseSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createHouseSegue" {
            let name = nameTextField.text ?? ""
            let house = houseSegmentedControl.titleForSegment(at: houseSegmentedControl.selectedSegmentIndex) ?? ""
            let age = Int(ageTextField.text ?? "") ?? 0
            
            let newPerson = Person(name: name, house: house, age: age)
            
            let destination = segue.destination as! HouseViewController
            
            destination.person = newPerson
        }
    }


}

