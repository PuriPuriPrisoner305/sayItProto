//
//  ThirdViewController.swift
//  SayIt-Proto1
//
//  Created by Ardyansyah Wijaya on 27/04/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var SomethingBtn: UIButton!
    
    
    var topicType: String = ""
    var resultName: String = ""
    var resultTopic: String = ""
    var resultEnemy: String = ""
    var resultDo: String = ""
    
    @IBAction func backToMainButton(_ sender: Any) {
        performSegue(withIdentifier: "backToMain", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (topicType == "type1") {
            resultTextView.text = "Hello, my name is \(resultName), i am  \(resultTopic) years old, i am from \(resultEnemy), and i am a \(resultDo)"
        } else if (topicType == "type2") {
            resultTextView.text = "i would like to tell you about \(resultName), that happened \(resultTopic), its \(resultEnemy) and i feel \(resultDo)"
        } else if (topicType == "type3") {
            resultTextView.text = "Excuse me, regarding \(resultName), would you : a. Explain regarding \(resultTopic). b. Tell me regarding \(resultEnemy), i didnt quite catch what you said. c. Give your opinion about \(resultEnemy)."
        } else if (topicType == "type4") {
            resultTextView.text = "In my opinion, regarding \(resultName), I \(resultTopic) because \(resultEnemy) as explained on \(resultDo)"
        } else if (topicType == "type5") {
            resultTextView.text = "I am sorry \(resultName), i was wrong when i \(resultTopic), i wont do it again, and i will make it up by \(resultEnemy), will \(resultName) forgive me?"
        }
    }
    
    


}

extension NSMutableAttributedString {
    
    var fontSize:CGFloat { return 14 }
    var boldFont:UIFont { return UIFont(name: "System-Bold", size: fontSize) ?? UIFont.boldSystemFont(ofSize: fontSize) }
    
    func bold(_ value:String) -> NSMutableAttributedString {
        
        let attributes:[NSAttributedString.Key : Any] = [
            .font : boldFont
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
}
