//
//  ViewController.swift
//  Prework
//
//  Created by Bernard Sheng on 12/17/23.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var FirstName: UITextField!
  
  @IBOutlet weak var LastName: UITextField!
  
  
  @IBOutlet weak var School: UITextField!
  
  @IBOutlet weak var PetsLabel: UILabel!
  
  
  @IBOutlet weak var YearSegControl: UISegmentedControl!
  
  
  @IBOutlet weak var Stepper: UIStepper!
  
  @IBOutlet weak var MorePetsSwitch: UISwitch!
  
  
  @IBAction func stepperDidChange(_ sender: UIStepper) {
    PetsLabel.text = "\(Int(sender.value))"
  }
  
  
  
  @IBAction func introduce(_sender: UIButton) {
    let year = YearSegControl.titleForSegment(at: YearSegControl.selectedSegmentIndex)
    let introduction = "My name is \(FirstName.text!) \(LastName.text!) and I attend \(School.text!). I am currently in my \(year!) year and I own \(PetsLabel.text!) dogs. It is \(MorePetsSwitch.isOn) that I want more pets."

     
    let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

    // A way to dismiss the box once it pops up
    let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

    // Passing this action to the alert controller so it can be dismissed
    alertController.addAction(action)

    present(alertController, animated: true, completion: nil)
    
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  


}

