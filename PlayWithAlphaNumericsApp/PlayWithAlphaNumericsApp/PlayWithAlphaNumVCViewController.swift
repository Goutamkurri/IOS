//
//  PlayWithAlphaNumVCViewController.swift
//  PlayWithAlphaNumericsApp
//
//  Created by Goutham on 9/13/23.
//

import UIKit

class PlayWithAlphaNumVCViewController: UIViewController {

    @IBOutlet weak var headerLBL: UILabel!
    
    @IBOutlet weak var firstNumLBL: UILabel!

    @IBOutlet weak var secondNumLBL: UILabel!
    
    @IBOutlet weak var numberSWCH: UISwitch!
    
    @IBOutlet weak var stringSWCH: UISwitch!
    
    @IBOutlet weak var firstStrTF: UITextField!
    
    @IBOutlet weak var firstNumStepper: UIStepper!
    
    @IBOutlet weak var secondNumStepper: UIStepper!
    
    @IBOutlet weak var secondStrTF: UITextField!
    
    @IBOutlet weak var manipulateStrings: UIButton!
    
    @IBOutlet weak var generatePattern: UIButton!
    
    @IBOutlet weak var onReset: UIButton!
    
    @IBAction func numberSWCH(_ sender: UISwitch) {
        let isEnabled = sender.isOn
        firstNumStepper.isEnabled = isEnabled
        secondNumStepper.isEnabled = isEnabled
        generatePattern.isEnabled = isEnabled
        messageTV.text = ""
        firstNumLBL.text = "0"
        firstNumStepper.value = firstNumStepper.minimumValue
        secondNumStepper.value = secondNumStepper.minimumValue
        secondNumLBL.text = "0"
        firstStrTF.isEnabled = false
        secondStrTF.isEnabled = false
        manipulateStrings.isEnabled = false
        firstStrTF.text = ""
        secondStrTF.text = ""
        stringSWCH.setOn(false, animated: true)
    }
    
    @IBAction func stringSWCH(_ sender: UISwitch) {
        let isEnabled = sender.isOn
        firstStrTF.isEnabled = isEnabled
        secondStrTF.isEnabled = isEnabled
        manipulateStrings.isEnabled = isEnabled
        firstStrTF.text = ""
        secondStrTF.text = ""
        messageTV.text = ""
        firstNumStepper.isEnabled = false
        secondNumStepper.isEnabled = false
        generatePattern.isEnabled = false
        firstNumLBL.text = "0"
        secondNumLBL.text = "0"
        firstNumStepper.value = firstNumStepper.minimumValue
        secondNumStepper.value = secondNumStepper.minimumValue
        numberSWCH.setOn(false, animated: true)
    }
    
    @IBAction func firstNumStepper(_ sender: UIStepper) {
        let firstNumValue = Int(sender.value)
        firstNumLBL.text = "\(firstNumValue)"
    }
    
    @IBAction func secondNumStepper(_ sender: UIStepper) {
        let secondNumValue = Int(sender.value)
        secondNumLBL.text = "\(secondNumValue)"
    }
    
    @IBOutlet weak var messageTV: UITextView!
    
    @IBAction func generatePattern(_ sender: UIButton) {
        if let firstNumText = firstNumLBL.text, let secondNumText = secondNumLBL.text,
           let firstNumValue = Int(firstNumText), let secondNumValue = Int(secondNumText) {
            
            if firstNumValue == 0  {
                messageTV.text = "First number is invalid. Please provide a value greater than zero."
                return
            }
            else if secondNumValue == 0 {
                messageTV.text = "Second number is invalid. Please provide a value greater than zero."
                return
            }
            else {
                var pattern = ""
                    
                    for row in 1...secondNumValue {
                        for col in 1...firstNumValue {
                            if row == 1 || row == secondNumValue || col == 1 || col == firstNumValue {
                                pattern += "❄️"
                            } else if (row + col) % 2 == 0 {
                                pattern += "🎅🏽"
                            } else {
                                pattern += "🎄"
                            }
                        }
                        pattern += "\n"
                    }
                    
                messageTV.text = pattern

                                    
            }
        }
    }
    
    @IBAction func manipulateStrings(_ sender: UIButton) {
        if let firstString = firstStrTF.text, let secondString = secondStrTF.text {
            
            if firstString.isEmpty  {
                messageTV.text = "First string value is invalid. Please provide at least one character."
                return
            }
            else if secondString.isEmpty {
                messageTV.text = "Second string value is invalid. Please provide at least one character."
                return
            }
            else {
                let concatenatedString = firstString + secondString
                let vowels : Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
                var vowelCount = 0
                var consonantCount = 0
                var uniqueCharacters = Set<Character>()
                for char in concatenatedString {
                        uniqueCharacters.insert(char)
                    }
                var uniqueCount = uniqueCharacters.count
                let reversedCharacters = concatenatedString.reversed()
                    let reversedString = String(reversedCharacters)
                
                for char in concatenatedString {
                        if vowels.contains(char) {
                            vowelCount += 1
                        }
                    else {
                        consonantCount += 1
                    }
                    }
                
                messageTV.text = "Concatenation of two strings results in \"\(concatenatedString)\".\nNumber of vowels in \"\(concatenatedString)\" is \(vowelCount).\nNumber of consonants in \"\(concatenatedString)\" is \(consonantCount).\nNumber of unique characters in \"\(concatenatedString)\" is \(uniqueCount).\nThe reversal of \"\(concatenatedString)\" results in \"\(reversedString)\"."
            }
        }
    }
    
    @IBAction func onReset(_ sender: UIButton) {
        firstNumStepper.isEnabled = false
        secondNumStepper.isEnabled = false
        firstStrTF.isEnabled = false
        secondStrTF.isEnabled = false
        generatePattern.isEnabled = false
        manipulateStrings.isEnabled = false
        firstNumLBL.text = "0"
        secondNumLBL.text = "0"
        firstStrTF.text = ""
        secondStrTF.text = ""
        messageTV.text = ""
        numberSWCH.setOn(false, animated: true)
        stringSWCH.setOn(false, animated: true)
        firstNumStepper.value = firstNumStepper.minimumValue
        secondNumStepper.value = secondNumStepper.minimumValue
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.headerLBL.text = String(format: "%@\n%@","\u{0c38}\u{0c4d}\u{0c35}\u{0c3e}\u{0c17}\u{0c24}\u{0c02}","Play with AlphaNumerics™️")
        
        firstNumStepper.isEnabled = false
        firstNumStepper.minimumValue = 0
        firstNumStepper.maximumValue = 15
        
        secondNumStepper.isEnabled = false
        secondNumStepper.minimumValue = 0
        secondNumStepper.maximumValue = 15
        
        firstStrTF.isEnabled = false
        
        secondStrTF.isEnabled = false
        
        generatePattern.isEnabled = false
        
        manipulateStrings.isEnabled = false
        
        onReset.isEnabled = true
        
        numberSWCH.isEnabled = true
        
        stringSWCH.isEnabled = true
        
        messageTV.text = ""

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
