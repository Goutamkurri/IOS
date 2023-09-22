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
    
    @IBOutlet weak var Reset: UIButton!
    
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
    
    var progressCounter = 0
    
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

        UIView.transition(with: Digit1Guess1, duration: 0.5, options: .transitionFlipFromBottom, animations: { [self] in
            self.Digit1Guess1.text = ""
            Digit1Guess1.backgroundColor = defaultColor
                }, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    UIView.transition(with: self.Digit2Guess1, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit2Guess1.text = ""
                        self.Digit2Guess1.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    UIView.transition(with: self.Digit3Guess1, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit3Guess1.text = ""
                        self.Digit3Guess1.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    UIView.transition(with: self.Digit4Guess1, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit4Guess1.text = ""
                        self.Digit4Guess1.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                    UIView.transition(with: self.Digit1Guess2, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit1Guess2.text = ""
                        self.Digit1Guess2.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
                    UIView.transition(with: self.Digit2Guess2, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit2Guess2.text = ""
                        self.Digit2Guess2.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    UIView.transition(with: self.Digit3Guess2, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit3Guess2.text = ""
                        self.Digit3Guess2.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    UIView.transition(with: self.Digit4Guess2, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit4Guess2.text = ""
                        self.Digit4Guess2.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                    UIView.transition(with: self.Digit1Guess3, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit1Guess3.text = ""
                        self.Digit1Guess3.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.9) {
                    UIView.transition(with: self.Digit2Guess3, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit2Guess3.text = ""
                        self.Digit2Guess3.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                    UIView.transition(with: self.Digit3Guess3, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit3Guess3.text = ""
                        self.Digit3Guess3.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    UIView.transition(with: self.Digit4Guess3, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit4Guess3.text = ""
                        self.Digit4Guess3.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
                    UIView.transition(with: self.Digit1Guess4, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit1Guess4.text = ""
                        self.Digit1Guess4.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) {
                    UIView.transition(with: self.Digit2Guess4, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit2Guess4.text = ""
                        self.Digit2Guess4.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                    UIView.transition(with: self.Digit3Guess4, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit3Guess4.text = ""
                        self.Digit3Guess4.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                    UIView.transition(with: self.Digit4Guess4, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit4Guess4.text = ""
                        self.Digit4Guess4.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    UIView.transition(with: self.Digit1Guess5, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit1Guess5.text = ""
                        self.Digit1Guess5.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                    UIView.transition(with: self.Digit2Guess5, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit2Guess5.text = ""
                        self.Digit2Guess5.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    UIView.transition(with: self.Digit3Guess5, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit3Guess5.text = ""
                        self.Digit3Guess5.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                    UIView.transition(with: self.Digit4Guess5, duration: 0.5, options: .transitionFlipFromBottom, animations: {
                        self.Digit4Guess5.text = ""
                        self.Digit4Guess5.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    UIView.transition(with: self.Result0, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result0.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.1) {
                    UIView.transition(with: self.Result1, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result1.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                    UIView.transition(with: self.Result2, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result2.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
                    UIView.transition(with: self.Result3, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result3.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.4) {
                    UIView.transition(with: self.Result4, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result4.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    UIView.transition(with: self.Result5, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result5.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.6) {
                    UIView.transition(with: self.Result6, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result6.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.7) {
                    UIView.transition(with: self.Result7, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result7.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.8) {
                    UIView.transition(with: self.Result8, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result8.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.9) {
                    UIView.transition(with: self.Result9, duration: 0.5, options: .transitionCurlDown, animations: {
                        self.Result9.backgroundColor = self.defaultColor
                    }, completion: nil)
                }
        
        progressCounter = 0
        guessCounter = 1
        
        Guess.text = ""
        message.text = "Malli Modhalettu scratch nunchi"
        
        GuessBTN.isEnabled = false
        Guess.isEnabled = true
        
        digit1 = arc4random_uniform(10)
        digit2 = arc4random_uniform(10)
        digit3 = arc4random_uniform(10)
        digit4 = arc4random_uniform(10)
    }
    
    @IBAction func GuessBTN(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, animations: {
                    self.GuessBTN.transform = CGAffineTransform(scaleX: 0.9, y: 0.9) // Scale down the button
                    self.GuessBTN.alpha = 0.7 // Reduce opacity
                }) { (completed) in
                    UIView.animate(withDuration: 0.2, animations: {
                        self.GuessBTN.transform = CGAffineTransform.identity // Reset the scale
                        self.GuessBTN.alpha = 1.0 // Restore opacity
                    })
                }
        
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
            UIView.transition(with: Digit1Guess1, duration: 0.5, options: .transitionFlipFromTop, animations: { [self] in
                    self.Digit1Guess1.text = String(self.guessDigit1 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit2Guess1, duration: 1, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit2Guess1.text = String(self.guessDigit2 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit3Guess1, duration: 1.5, options: .transitionFlipFromTop, animations: { [self] in
                    self.Digit3Guess1.text = String(self.guessDigit3 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit4Guess1, duration: 2, options: .transitionFlipFromTop, animations: { [self] in
                    self.Digit4Guess1.text = String(self.guessDigit4 ?? 0)
                    }, completion: nil)
            
            
            
            
            if(guessDigit1! == digit1) {
                Digit1Guess1.backgroundColor = greenColor
                progressCounter+=1
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
                progressCounter+=1

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
                        Result0.backgroundColor = greyColor                    }
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
                progressCounter+=1
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
                progressCounter+=1
                switch guessDigit4 {
                    case 0 :
                    self.Result0.backgroundColor = self.greenColor
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
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // Re-enable the button after a 2-second delay
                        self.GuessBTN.isEnabled = false
                    }
            
            //GuessBTN.isEnabled = false
            switch progressCounter{
            case 0:
                message.text = "Try hard!"
            case 1:
                message.text = "Boni kottav ra Buddoda!"
            case 2:
                message.text = "Half way there"
            case 3:
                message.text = "Almost there"
            case 4:
                message.text = "You did it!!"
            default:
                message.text = ""

            }
            progressCounter = 0
        
            
            
        case 2:
            UIView.transition(with: Digit1Guess2, duration: 0.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit1Guess2.text = String(guessDigit1 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit2Guess2, duration: 1, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit2Guess2.text = String(guessDigit2 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit3Guess2, duration: 1.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit3Guess2.text = String(guessDigit3 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit4Guess2, duration: 2, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit4Guess2.text = String(guessDigit4 ?? 0)
                    }, completion: nil)
            
            if(guessDigit1! == digit1) {
                Digit1Guess2.backgroundColor = greenColor
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1
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
                progressCounter+=1
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // Re-enable the button after a 2-second delay
                        self.GuessBTN.isEnabled = false
                    }
            switch progressCounter{
            case 0:
                message.text = "Try hard!"
            case 1:
                message.text = "Boni kottav ra Buddoda!"
            case 2:
                message.text = "Half way there"
            case 3:
                message.text = "Almost there"
            case 4:
                message.text = "You did it!!"
            default:
                message.text = ""

            }
            progressCounter = 0
            
        case 3:
            UIView.transition(with: Digit1Guess3, duration: 0.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit1Guess3.text = String(guessDigit1 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit2Guess3, duration: 1, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit2Guess3.text = String(guessDigit2 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit3Guess3, duration: 1.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit3Guess3.text = String(guessDigit3 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit4Guess3, duration: 2, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit4Guess3.text = String(guessDigit4 ?? 0)
                    }, completion: nil)
            
            if(guessDigit1! == digit1) {
                Digit1Guess3.backgroundColor = greenColor
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // Re-enable the button after a 2-second delay
                        self.GuessBTN.isEnabled = false
                    }
            
            switch progressCounter{
            case 0:
                message.text = "Try hard!"
            case 1:
                message.text = "Boni kottav ra Buddoda!"
            case 2:
                message.text = "Half way there"
            case 3:
                message.text = "Almost there"
            case 4:
                message.text = "You did it!!"
            default:
                message.text = ""

            }
            progressCounter = 0
        case 4:
            UIView.transition(with: Digit1Guess4, duration: 0.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit1Guess4.text = String(guessDigit1 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit2Guess4, duration: 1, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit2Guess4.text = String(guessDigit2 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit3Guess4, duration: 1.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit3Guess4.text = String(guessDigit3 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit4Guess4, duration: 2, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit4Guess4.text = String(guessDigit4 ?? 0)
                    }, completion: nil)
            
            if(guessDigit1! == digit1) {
                Digit1Guess4.backgroundColor = greenColor
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1

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
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // Re-enable the button after a 2-second delay
                        self.GuessBTN.isEnabled = false
                    }
            
            switch progressCounter{
            case 0:
                message.text = "Try hard!"
            case 1:
                message.text = "Boni kottav ra Buddoda!"
            case 2:
                message.text = "Half way there"
            case 3:
                message.text = "Almost there"
            case 4:
                message.text = "You did it!!"
            default:
                message.text = ""

            }
            progressCounter = 0
            
        case 5:
            UIView.transition(with: Digit1Guess5, duration: 0.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit1Guess5.text = String(guessDigit1 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit2Guess5, duration: 1, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit2Guess5.text = String(guessDigit2 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit3Guess5, duration: 1.5, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit3Guess5.text = String(guessDigit3 ?? 0)
                    }, completion: nil)
            UIView.transition(with: Digit4Guess5, duration: 2, options: .transitionFlipFromTop, animations: { [self] in
                self.Digit4Guess5.text = String(guessDigit4 ?? 0)
                    }, completion: nil)
            
            if(guessDigit1! == digit1) {
                Digit1Guess5.backgroundColor = greenColor
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1

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
                progressCounter += 1

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
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // Re-enable the button after a 2-second delay
                        self.GuessBTN.isEnabled = false
                    }
            
            if(progressCounter == 4) {
                message.text = "You did it!!"
            }
            else {
                showAlert()
            }
        
            progressCounter = 0
            
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

    func showAlert() {
        // Create an alert controller
        let alertController = UIAlertController(title: "☠️Game Over☠️", message: "Correct Code - \(digit1)\(digit2)\(digit3)\(digit4)", preferredStyle: .alert)
        
        // Create an action for the alert (usually an "OK" button)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        // Add the action to the alert controller
        alertController.addAction(okAction)
        
        // Present the alert
        self.present(alertController, animated: true, completion: nil)
    }
    


}

