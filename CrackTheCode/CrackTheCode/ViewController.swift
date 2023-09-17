//
//  ViewController.swift
//  CrackTheCode
//
//  Created by Goutham on 9/16/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Digit1Guess1: UITextField!
    
    @IBOutlet weak var Digit2Guess1: UITextField!
    
    @IBOutlet weak var Digit3Guess1: UITextField!
    
    @IBOutlet weak var Digit4Guess1: UITextField!
    
    @IBOutlet weak var Digit1Guess2: UITextField!
    
    @IBOutlet weak var Digit2Guess2: UITextField!
    
    @IBOutlet weak var Digit3Guess2: UITextField!
    
    @IBOutlet weak var Digit4Guess2: UITextField!
    
    @IBOutlet weak var Digit1Guess3: UITextField!
    
    @IBOutlet weak var Digit2Guess3: UITextField!
    
    @IBOutlet weak var Digit3Guess3: UITextField!
    
    @IBOutlet weak var Digit4Guess3: UITextField!
    
    @IBOutlet weak var Digit1Guess4: UITextField!
    
    @IBOutlet weak var Digit2Guess4: UITextField!
    
    @IBOutlet weak var Digit3Guess4: UITextField!
    
    @IBOutlet weak var Digit4Guess4: UITextField!
    
    @IBOutlet weak var Digit1Guess5: UITextField!
    
    @IBOutlet weak var Digit2Guess5: UITextField!
    
    @IBOutlet weak var Digit3Guess5: UITextField!
    
    @IBOutlet weak var Digit4Guess5: UITextField!
    
    @IBOutlet weak var Result0: UILabel!
    
    @IBOutlet weak var Result1: UILabel!
    
    @IBOutlet weak var Result2: UILabel!
    
    @IBOutlet weak var Result3: UILabel!
    
    @IBOutlet weak var Result4: UILabel!
    
    @IBOutlet weak var Result5: UILabel!
    
    @IBOutlet weak var Result6: UILabel!
    
    @IBOutlet weak var Result7: UILabel!
    
    @IBOutlet weak var Result8: UILabel!
    
    @IBOutlet weak var Result9: UILabel!
    
    @IBOutlet weak var Guess: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var GuessBTN: UIButton!
    
    var guessDigit1: Int?
    var guessDigit2: Int?
    var guessDigit3: Int?
    var guessDigit4: Int?
    
    var digit1 = arc4random_uniform(10)
    var digit2 = arc4random_uniform(10)
    var digit3 = arc4random_uniform(10)
    var digit4 = arc4random_uniform(10)
    
    var resultCounter0 = 0
    var resultCounter1 = 0
    var resultCounter2 = 0
    var resultCounter3 = 0
    var resultCounter4 = 0
    var resultCounter5 = 0
    var resultCounter6 = 0
    var resultCounter7 = 0
    var resultCounter8 = 0
    var resultCounter9 = 0
    
    var guessCounter = 1
    
    let greyColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1.0)
    let greenColor = UIColor(red: 1/255, green: 154/255, blue: 1/255, alpha: 1.0)
    let yellowColor = UIColor(red: 253/255, green: 218/255, blue: 13/255, alpha: 1.0)
    let defaultColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Guess.delegate = self
        
        Digit1Guess1.isUserInteractionEnabled = false
        Digit2Guess1.isUserInteractionEnabled = false
        Digit3Guess1.isUserInteractionEnabled = false
        Digit4Guess1.isUserInteractionEnabled = false
        Digit1Guess2.isUserInteractionEnabled = false
        Digit2Guess2.isUserInteractionEnabled = false
        Digit3Guess2.isUserInteractionEnabled = false
        Digit4Guess2.isUserInteractionEnabled = false
        Digit1Guess3.isUserInteractionEnabled = false
        Digit2Guess3.isUserInteractionEnabled = false
        Digit3Guess3.isUserInteractionEnabled = false
        Digit4Guess3.isUserInteractionEnabled = false
        Digit1Guess4.isUserInteractionEnabled = false
        Digit2Guess4.isUserInteractionEnabled = false
        Digit3Guess4.isUserInteractionEnabled = false
        Digit4Guess4.isUserInteractionEnabled = false
        Digit1Guess5.isUserInteractionEnabled = false
        Digit2Guess5.isUserInteractionEnabled = false
        Digit3Guess5.isUserInteractionEnabled = false
        Digit4Guess5.isUserInteractionEnabled = false
        
        GuessBTN.isEnabled = false
        
        
        
        //message.text =  "\(digit1)\(digit2)\(digit3)\(digit4)"
        
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        Digit1Guess1.backgroundColor = defaultColor
        Digit2Guess1.backgroundColor = defaultColor
        Digit3Guess1.backgroundColor = defaultColor
        Digit4Guess1.backgroundColor = defaultColor
        Digit1Guess2.backgroundColor = defaultColor
        Digit2Guess2.backgroundColor = defaultColor
        Digit3Guess2.backgroundColor = defaultColor
        Digit4Guess2.backgroundColor = defaultColor
        Digit1Guess3.backgroundColor = defaultColor
        Digit2Guess3.backgroundColor = defaultColor
        Digit3Guess3.backgroundColor = defaultColor
        Digit4Guess3.backgroundColor = defaultColor
        Digit1Guess4.backgroundColor = defaultColor
        Digit2Guess4.backgroundColor = defaultColor
        Digit3Guess4.backgroundColor = defaultColor
        Digit4Guess4.backgroundColor = defaultColor
        Digit1Guess5.backgroundColor = defaultColor
        Digit2Guess5.backgroundColor = defaultColor
        Digit3Guess5.backgroundColor = defaultColor
        Digit4Guess5.backgroundColor = defaultColor
        Digit1Guess1.text = ""
        Digit2Guess1.text = ""
        Digit3Guess1.text = ""
        Digit4Guess1.text = ""
        Digit1Guess2.text = ""
        Digit2Guess2.text = ""
        Digit3Guess2.text = ""
        Digit4Guess2.text = ""
        Digit1Guess3.text = ""
        Digit2Guess3.text = ""
        Digit3Guess3.text = ""
        Digit4Guess3.text = ""
        Digit1Guess4.text = ""
        Digit2Guess4.text = ""
        Digit3Guess4.text = ""
        Digit4Guess4.text = ""
        Digit1Guess5.text = ""
        Digit2Guess5.text = ""
        Digit3Guess5.text = ""
        Digit4Guess5.text = ""
        Result0.backgroundColor = defaultColor
        Result1.backgroundColor = defaultColor
        Result2.backgroundColor = defaultColor
        Result3.backgroundColor = defaultColor
        Result4.backgroundColor = defaultColor
        Result5.backgroundColor = defaultColor
        Result6.backgroundColor = defaultColor
        Result7.backgroundColor = defaultColor
        Result8.backgroundColor = defaultColor
        Result9.backgroundColor = defaultColor
        
        guessCounter = 1
        Guess.text = ""
        message.text = "Try Your Luck"
        GuessBTN.isEnabled = false
        digit1 = arc4random_uniform(10)
        digit2 = arc4random_uniform(10)
        digit3 = arc4random_uniform(10)
        digit4 = arc4random_uniform(10)
        

        
        
        
        
        
        
    }
    @IBAction func GuessBTN(_ sender: UIButton) {
        
        var guess = Int(Guess.text!)
        
        guessDigit4 = guess!%10
        guess = guess!/10
        guessDigit3 = guess!%10
        guess = guess!/10
        guessDigit2 = guess!%10
        guess = guess!/10
        guessDigit1 = guess!%10
        
        switch guessCounter {
        case 1 :
            Digit1Guess1.text = String(guessDigit1 ?? 0)
            Digit2Guess1.text = String(guessDigit2 ?? 0)
            Digit3Guess1.text = String(guessDigit3 ?? 0)
            Digit4Guess1.text = String(guessDigit4 ?? 0)
            
            if(guessDigit1! == digit1) {
                Digit1Guess1.backgroundColor = greenColor
                switch guessDigit1 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit1! == digit2 || guessDigit1! == digit3 || guessDigit1! == digit4) {
                Digit1Guess1.backgroundColor = yellowColor
                switch guessDigit1 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit1Guess1.backgroundColor = greyColor
                switch guessDigit1 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit2! == digit2) {
                Digit2Guess1.backgroundColor = greenColor
                switch guessDigit2 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit2! == digit1 || guessDigit2! == digit3 || guessDigit2! == digit4) {
                Digit2Guess1.backgroundColor = yellowColor
                switch guessDigit2 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit2Guess1.backgroundColor = greyColor
                switch guessDigit2 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit3! == digit3) {
                Digit3Guess1.backgroundColor = greenColor
                switch guessDigit3 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit3! == digit2 || guessDigit3! == digit1 || guessDigit3! == digit4) {
                Digit3Guess1.backgroundColor = yellowColor
                switch guessDigit3 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit3Guess1.backgroundColor = greyColor
                switch guessDigit3 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit4! == digit4) {
                Digit4Guess1.backgroundColor = greenColor
                switch guessDigit4 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit4! == digit2 || guessDigit4! == digit3 || guessDigit4! == digit1) {
                Digit4Guess1.backgroundColor = yellowColor
                switch guessDigit4 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit4Guess1.backgroundColor = greyColor
                switch guessDigit4 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            Guess.text = ""
            guessCounter = 2
            GuessBTN.isEnabled = false
            
            
            
        case 2:
            Digit1Guess2.text = String(guessDigit1 ?? 0)
            Digit2Guess2.text = String(guessDigit2 ?? 0)
            Digit3Guess2.text = String(guessDigit3 ?? 0)
            Digit4Guess2.text = String(guessDigit4 ?? 0)
            
            if(guessDigit1! == digit1) {
                Digit1Guess2.backgroundColor = greenColor
                switch guessDigit1 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
                
            }
            else if(guessDigit1! == digit2 || guessDigit1! == digit3 || guessDigit1! == digit4) {
                Digit1Guess2.backgroundColor = yellowColor
                switch guessDigit1 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit1Guess2.backgroundColor = greyColor
                switch guessDigit1 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit2! == digit2) {
                Digit2Guess2.backgroundColor = greenColor
                switch guessDigit2 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit2! == digit1 || guessDigit2! == digit3 || guessDigit2! == digit4) {
                Digit2Guess2.backgroundColor = yellowColor
                switch guessDigit2{
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit2Guess2.backgroundColor = greyColor
                switch guessDigit2 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit3! == digit3) {
                Digit3Guess2.backgroundColor = greenColor
                switch guessDigit3 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit3! == digit2 || guessDigit3! == digit1 || guessDigit3! == digit4) {
                Digit3Guess2.backgroundColor = yellowColor
                switch guessDigit3 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit3Guess2.backgroundColor = greyColor
                switch guessDigit3 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit4! == digit4) {
                Digit4Guess2.backgroundColor = greenColor
                switch guessDigit4 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit4! == digit2 || guessDigit4! == digit3 || guessDigit4! == digit1) {
                Digit4Guess2.backgroundColor = yellowColor
                switch guessDigit4 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit4Guess2.backgroundColor = greyColor
                switch guessDigit4 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            Guess.text = ""
            guessCounter = 3
            GuessBTN.isEnabled = false
            
        case 3:
            Digit1Guess3.text = String(guessDigit1 ?? 0)
            Digit2Guess3.text = String(guessDigit2 ?? 0)
            Digit3Guess3.text = String(guessDigit3 ?? 0)
            Digit4Guess3.text = String(guessDigit4 ?? 0)
            
            if(guessDigit1! == digit1) {
                Digit1Guess3.backgroundColor = greenColor
                switch guessDigit1 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit1! == digit2 || guessDigit1! == digit3 || guessDigit1! == digit4) {
                Digit1Guess3.backgroundColor = yellowColor
                switch guessDigit1 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit1Guess3.backgroundColor = greyColor
                switch guessDigit1 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit2! == digit2) {
                Digit2Guess3.backgroundColor = greenColor
                switch guessDigit2 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit2! == digit1 || guessDigit2! == digit3 || guessDigit2! == digit4) {
                Digit2Guess3.backgroundColor = yellowColor
                switch guessDigit2{
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit2Guess3.backgroundColor = greyColor
                switch guessDigit2 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit3! == digit3) {
                Digit3Guess3.backgroundColor = greenColor
                switch guessDigit3 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit3! == digit2 || guessDigit3! == digit1 || guessDigit3! == digit4) {
                Digit3Guess3.backgroundColor = yellowColor
                switch guessDigit3 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit3Guess3.backgroundColor = greyColor
                switch guessDigit3 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit4! == digit4) {
                Digit4Guess3.backgroundColor = greenColor
                switch guessDigit4 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit4! == digit2 || guessDigit4! == digit3 || guessDigit4! == digit1) {
                Digit4Guess3.backgroundColor = yellowColor
                switch guessDigit4 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit4Guess3.backgroundColor = greyColor
                switch guessDigit4 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            Guess.text = ""
            guessCounter = 4
            GuessBTN.isEnabled = false
        case 4:
            Digit1Guess4.text = String(guessDigit1 ?? 0)
            Digit2Guess4.text = String(guessDigit2 ?? 0)
            Digit3Guess4.text = String(guessDigit3 ?? 0)
            Digit4Guess4.text = String(guessDigit4 ?? 0)
            
            if(guessDigit1! == digit1) {
                Digit1Guess4.backgroundColor = greenColor
                switch guessDigit1 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit1! == digit2 || guessDigit1! == digit3 || guessDigit1! == digit4) {
                Digit1Guess4.backgroundColor = yellowColor
                switch guessDigit1 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit1Guess4.backgroundColor = greyColor
                switch guessDigit1 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit2! == digit2) {
                Digit2Guess4.backgroundColor = greenColor
                switch guessDigit2 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit2! == digit1 || guessDigit2! == digit3 || guessDigit2! == digit4) {
                Digit2Guess4.backgroundColor = yellowColor
                switch guessDigit2 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit2Guess4.backgroundColor = greyColor
                switch guessDigit2 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit3! == digit3) {
                Digit3Guess4.backgroundColor = greenColor
                switch guessDigit3 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit3! == digit2 || guessDigit3! == digit1 || guessDigit3! == digit4) {
                Digit3Guess4.backgroundColor = yellowColor
                switch guessDigit3 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit3Guess4.backgroundColor = greyColor
                switch guessDigit3 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit4! == digit4) {
                Digit4Guess4.backgroundColor = greenColor
                switch guessDigit4 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit4! == digit2 || guessDigit4! == digit3 || guessDigit4! == digit1) {
                Digit4Guess4.backgroundColor = yellowColor
                switch guessDigit4 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit4Guess4.backgroundColor = greyColor
                switch guessDigit4 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            Guess.text = ""
            guessCounter = 5
            GuessBTN.isEnabled = false
        case 5:
            Digit1Guess5.text = String(guessDigit1 ?? 0)
            Digit2Guess5.text = String(guessDigit2 ?? 0)
            Digit3Guess5.text = String(guessDigit3 ?? 0)
            Digit4Guess5.text = String(guessDigit4 ?? 0)
            
            if(guessDigit1! == digit1) {
                Digit1Guess5.backgroundColor = greenColor
                switch guessDigit1 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit1! == digit2 || guessDigit1! == digit3 || guessDigit1! == digit4) {
                Digit1Guess5.backgroundColor = yellowColor
                switch guessDigit1{
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit1Guess5.backgroundColor = greyColor
                switch guessDigit1 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit2! == digit2) {
                Digit2Guess5.backgroundColor = greenColor
                switch guessDigit2 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit2! == digit1 || guessDigit2! == digit3 || guessDigit2! == digit4) {
                Digit2Guess5.backgroundColor = yellowColor
                switch guessDigit2 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit2Guess5.backgroundColor = greyColor
                switch guessDigit2 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit3! == digit3) {
                Digit3Guess5.backgroundColor = greenColor
                switch guessDigit3 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit3! == digit2 || guessDigit3! == digit1 || guessDigit3! == digit4) {
                Digit3Guess5.backgroundColor = yellowColor
                switch guessDigit3 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit3Guess5.backgroundColor = greyColor
                switch guessDigit3 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            
            if(guessDigit4! == digit4) {
                Digit4Guess5.backgroundColor = greenColor
                switch guessDigit4 {
                    case 0 :
                        Result0.backgroundColor = greenColor
                        resultCounter0 = 2
                    case 1 :
                        Result1.backgroundColor = greenColor
                        resultCounter1 = 2
                    case 2 :
                        Result2.backgroundColor = greenColor
                        resultCounter2 = 2
                    case 3 :
                        Result3.backgroundColor = greenColor
                        resultCounter3 = 2
                    case 4 :
                        Result4.backgroundColor = greenColor
                        resultCounter4 = 2
                    case 5 :
                        Result5.backgroundColor = greenColor
                        resultCounter5 = 2
                    case 6 :
                        Result6.backgroundColor = greenColor
                        resultCounter6 = 2
                    case 7 :
                        Result7.backgroundColor = greenColor
                        resultCounter7 = 2
                    case 8 :
                        Result8.backgroundColor = greenColor
                        resultCounter8 = 2
                    case 9 :
                        Result9.backgroundColor = greenColor
                        resultCounter9 = 2
                    default:
                    message.text = ""
                }
            }
            else if(guessDigit4! == digit2 || guessDigit4! == digit3 || guessDigit4! == digit1) {
                Digit4Guess5.backgroundColor = yellowColor
                switch guessDigit4 {
                    case 0 :
                        if(resultCounter0 < 2) {
                            Result0.backgroundColor = yellowColor
                        }
                    case 1 :
                    if(resultCounter1 < 2) {
                        Result1.backgroundColor = yellowColor
                    }
                    case 2 :
                    if(resultCounter2 < 2) {
                        Result2.backgroundColor = yellowColor
                    }
                    case 3 :
                    if(resultCounter3 < 2) {
                        Result3.backgroundColor = yellowColor
                    }
                    case 4 :
                    if(resultCounter4 < 2) {
                        Result4.backgroundColor = yellowColor
                    }
                    case 5 :
                    if(resultCounter5 < 2) {
                        Result5.backgroundColor = yellowColor
                    }
                    case 6 :
                    if(resultCounter6 < 2) {
                        Result6.backgroundColor = yellowColor
                    }
                    case 7 :
                    if(resultCounter7 < 2) {
                        Result7.backgroundColor = yellowColor
                    }
                    case 8 :
                    if(resultCounter8 < 2) {
                        Result8.backgroundColor = yellowColor
                    }
                    case 9 :
                    if(resultCounter9 < 2) {
                        Result9.backgroundColor = yellowColor
                    }
                    default:
                    message.text = ""
                }
            }
            else {
                Digit4Guess5.backgroundColor = greyColor
                switch guessDigit4 {
                    case 0 :
                    if(resultCounter0 < 1) {
                        Result0.backgroundColor = greyColor
                    }
                    case 1 :
                    if(resultCounter1 < 1) {
                        Result1.backgroundColor = greyColor
                    }
                    case 2 :
                    if(resultCounter2 < 1) {
                        Result2.backgroundColor = greyColor
                    }
                    case 3 :
                    if(resultCounter3 < 1) {
                        Result3.backgroundColor = greyColor
                    }
                    case 4 :
                    if(resultCounter4 < 1) {
                        Result4.backgroundColor = greyColor
                    }
                    case 5 :
                    if(resultCounter5 < 1) {
                        Result5.backgroundColor = greyColor
                    }
                    case 6 :
                    if(resultCounter6 < 1) {
                        Result6.backgroundColor = greyColor
                    }
                    case 7 :
                    if(resultCounter7 < 1) {
                        Result7.backgroundColor = greyColor
                    }
                    case 8 :
                    if(resultCounter8 < 1) {
                        Result8.backgroundColor = greyColor
                    }
                    case 9 :
                    if(resultCounter9 < 1) {
                        Result9.backgroundColor = greyColor
                    }
                    default:
                    message.text = ""
                }
            }
            Guess.text = ""
            guessCounter = 6
            GuessBTN.isEnabled = false
            message.text = "Game Over"
            Guess.isEnabled = false
            GuessBTN.isEnabled = false
        default:
            message.text = "Game Over1"
            
        
        }
        
        

        
            
        
        
        

    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Allow only digits (0-9) and limit the length to 4 characters
            let allowedCharacters = CharacterSet.decimalDigits
            let characterSet = CharacterSet(charactersIn: string)
            let newLength = textField.text!.count + string.count

            if allowedCharacters.isSuperset(of: characterSet) && newLength <= 4 {
                // Enable the button if 4 digits are entered
                GuessBTN.isEnabled = newLength == 4
                return true
            } else {
                // Disable the button if non-numeric input or more than 4 characters
                return false
            }
    }

    


}

