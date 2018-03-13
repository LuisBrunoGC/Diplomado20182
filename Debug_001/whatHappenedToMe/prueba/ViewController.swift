//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var Textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func keyboardReturnkey(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }

    @IBAction func regresa(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    @IBAction func switchActivated(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on")
        }
        else{
            print("The switch is off")
        }
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        print(sender.value)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = Textfield.text
    }
    
    
}

