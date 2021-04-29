//
//  SecondViewController.swift
//  SayIt-Proto1
//
//  Created by Ardyansyah Wijaya on 27/04/21.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var yourNameLabel: UILabel!
    @IBOutlet weak var yourTopicLabel: UILabel!
    @IBOutlet weak var yourEnemyLabel: UILabel!
    @IBOutlet weak var doLabel: UILabel!
    @IBOutlet weak var hereLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var topicTextField: UITextField!
    @IBOutlet weak var enemyTextField: UITextField!
    @IBOutlet weak var doTextfield: UITextField!
    @IBOutlet weak var hereTextField: UITextField!
    
    @IBOutlet weak var resultButton: UIButton!
    
    var selectedOption: String = ""
    var selectedTopic: String = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        topicTextField.delegate = self
        enemyTextField.delegate = self
        doTextfield.delegate = self
        hereTextField.delegate = self
//        resultButton.isEnabled = false
//        resultButton.alpha = 0.5
        self.navigationController?.navigationBar.tintColor = UIColor.white
//        nameTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
//        topicTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
//        enemyTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
//        doTextfield.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
//        hereTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        
        
        
//        if (nameTextField.text?.isEmpty == true || topicTextField.text?.isEmpty == true || enemyTextField.text?.isEmpty == true) {
//            resultButton.isUserInteractionEnabled = false
//        } else {
//            resultButton.isUserInteractionEnabled = true
//        }
        
        if (selectedOption == "0") {
            selectedTopic = "type1"
            yourNameLabel.text = "Whats your name?"
            yourTopicLabel.text = "How old are you?"
            yourEnemyLabel.text = "Where are you from?"
            doLabel.text = "What is your occupation?"
            hereLabel.text = "not used"
        } else if (selectedOption == "1") {
            selectedTopic = "type2"
            yourNameLabel.text = "What would you like to describe? (an event, a remark, an object, a topic)"
            yourTopicLabel.text = "When did the thing you’d like to describe happen? (just now, a while ago, some time ago)"
            yourEnemyLabel.text = "How can you describe it?"
            doLabel.text = "How do you feel about it?"
            hereLabel.text = "not used"
        } else if (selectedOption == "2") {
            selectedTopic = "type3"
            yourNameLabel.text = "What is the topic in question?"
            yourTopicLabel.text = "What would you like to know about it? (something about the topic, a detail or something missed, an opinion)"
            yourEnemyLabel.text = "Is there anything specific? (Sub-Topic)"
            doLabel.text = "not used"
            hereLabel.text = "not used"
        } else if (selectedOption == "3") {
            selectedTopic = "type4"
            yourNameLabel.text = "What would you like to give an opinion / idea about?"
            yourTopicLabel.text = "Do you agree with it? (yes/no)"
            yourEnemyLabel.text = "Why so? (Explain why you think the way you do)"
            doLabel.text = "Is there anything to support your claim"
            hereLabel.text = "not used"
        } else if (selectedOption == "4") {
            selectedTopic = "type5"
            yourNameLabel.text = "Who are you apologizing to?"
            yourTopicLabel.text = "What are you apologizing about?"
            yourEnemyLabel.text = "How do you intend to make it right?"
            doLabel.text = "not used"
            hereLabel.text = "not used"
        }
        
        
        
    }

    
//    @objc func textChanged(_ textField: UITextField) {
//          resultButton.isEnabled = [nameTextField, topicTextField, enemyTextField, doTextfield, hereTextField].contains { $0.text!.isEmpty }
//    }
 
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
////
//    let nameText = (nameTextField.text! as NSString).replacingCharacters(in: range, with: string)
//
//        if (nameText.isEmpty) {
//             resultButton.isEnabled = false
//             resultButton.alpha = 0.5
//        } else {
//             resultButton.isEnabled = true
//             resultButton.alpha = 1.0
//        }
//      return true
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showResult") {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.topicType = selectedTopic
            thirdVC.resultName = nameTextField.text!
            thirdVC.resultTopic = topicTextField.text!
            thirdVC.resultEnemy = enemyTextField.text!
            thirdVC.resultDo = doTextfield.text!
            

        }
    }
            
    



}
