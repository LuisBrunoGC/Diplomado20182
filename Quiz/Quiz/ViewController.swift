//
//  ViewController.swift
//  Quiz
//
//  Created by Luis Bruno Garduño Castro on 2/21/18.
//  Copyright © 2018 Luis Bruno Garduño Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
 
    
    // The @IBOutlet keyword tells Xcode that you will connect these outlets to label objects using Interface Builder
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    // The model
    
    let questions: [String] = [
    "What is 7+7?",
    "What is the capital of Vermont?",
    "what is cognac made from?"
    ]
    let answers: [String] = [
    "14",
    "Montpeliper",
    "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    // This lines are about executing code when the buttons are pressed
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "????"
    }
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    // Change the "???" for the first question
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
}

