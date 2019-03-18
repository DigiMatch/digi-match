//
//  LevelViewController.swift
//  DigiMatch
//
//  Created by Tim Tan on 11/3/18.
//  Copyright © 2018 Tim Tan. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {
    
    @IBOutlet weak var levelTitle: UILabel!
    var level: String!
    
    var moves = 0
    @IBOutlet weak var movesLabel: UILabel!
    
    let defaults1 = UserDefaults.standard
    let defaults2 = UserDefaults.standard
    let defaults3 = UserDefaults.standard
    let defaults4 = UserDefaults.standard
    let defaults5 = UserDefaults.standard
    let defaults6 = UserDefaults.standard
    
    var best: Int!
    @IBOutlet weak var bestLabel: UILabel!
    
    // LEVEL 1 BUTTONS
    @IBOutlet weak var level1button1: UIButton!
    @IBOutlet weak var level1button2: UIButton!
    @IBOutlet weak var level1button3: UIButton!
    
    // LEVEL 2 BUTTONS
    @IBOutlet weak var level2button1: UIButton!
    @IBOutlet weak var level2button2: UIButton!
    @IBOutlet weak var level2button3: UIButton!
    @IBOutlet weak var level2button4: UIButton!
    @IBOutlet weak var level2button5: UIButton!
    
    // LEVEL 3 BUTTONS
    @IBOutlet weak var level3button1: UIButton!
    @IBOutlet weak var level3button2: UIButton!
    @IBOutlet weak var level3button3: UIButton!
    @IBOutlet weak var level3button4: UIButton!
    
    // LEVEL 4 BUTTONS
    @IBOutlet weak var level4button1: UIButton!
    @IBOutlet weak var level4button2: UIButton!
    @IBOutlet weak var level4button3: UIButton!
    @IBOutlet weak var level4button4: UIButton!
    @IBOutlet weak var level4button5: UIButton!
    @IBOutlet weak var level4button6: UIButton!
    
    // LEVEL 5 BUTTONS
    @IBOutlet weak var level5button1: UIButton!
    @IBOutlet weak var level5button2: UIButton!
    @IBOutlet weak var level5button3: UIButton!
    @IBOutlet weak var level5button4: UIButton!
    @IBOutlet weak var level5button5: UIButton!
    @IBOutlet weak var level5button6: UIButton!
    @IBOutlet weak var level5button7: UIButton!
    @IBOutlet weak var level5button8: UIButton!
    @IBOutlet weak var level5button9: UIButton!
    
    //LEVEL 6 BUTTONS
    @IBOutlet weak var level6button1: UIButton!
    @IBOutlet weak var level6button2: UIButton!
    @IBOutlet weak var level6button3: UIButton!
    @IBOutlet weak var level6button4: UIButton!
    @IBOutlet weak var level6button5: UIButton!
    @IBOutlet weak var level6button6: UIButton!
    @IBOutlet weak var level6button7: UIButton!
    @IBOutlet weak var level6button8: UIButton!
    @IBOutlet weak var level6button9: UIButton!
    @IBOutlet weak var level6button10: UIButton!
    @IBOutlet weak var level6button11: UIButton!
    @IBOutlet weak var level6button12: UIButton!
    
    
    var nums: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelTitle.text = "Level \(level!)"
        let levels = view.subviews
        
        if level == "1" {
            levels[1].isHidden = true
            levels[2].isHidden = true
            levels[3].isHidden = true
            levels[4].isHidden = true
            levels[5].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            level1button1.setTitle(String(ini1), for: .normal)
            level1button2.setTitle(String(ini2), for: .normal)
            level1button3.setTitle(String(ini3), for: .normal)
            level1button1.layer.cornerRadius = 10
            level1button2.layer.cornerRadius = 10
            level1button3.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            
            best = defaults1.integer(forKey: "key1")
            bestLabel.text = "Best: \(best!)"
        }
        
        if level == "2" {
            levels[0].isHidden = true
            levels[2].isHidden = true
            levels[3].isHidden = true
            levels[4].isHidden = true
            levels[5].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            let ini4: Int = Int(arc4random_uniform(4)+1)
            let ini5: Int = Int(arc4random_uniform(4)+1)
            level2button1.setTitle(String(ini1), for: .normal)
            level2button2.setTitle(String(ini2), for: .normal)
            level2button3.setTitle(String(ini3), for: .normal)
            level2button4.setTitle(String(ini4), for: .normal)
            level2button5.setTitle(String(ini5), for: .normal)
            level2button1.layer.cornerRadius = 10
            level2button2.layer.cornerRadius = 10
            level2button3.layer.cornerRadius = 10
            level2button4.layer.cornerRadius = 10
            level2button5.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            nums.append(ini4)
            nums.append(ini5)
            
            best = defaults2.integer(forKey: "key2")
            bestLabel.text = "Best: \(best!)"
        }
        
        if level == "3" {
            levels[0].isHidden = true
            levels[1].isHidden = true
            levels[3].isHidden = true
            levels[4].isHidden = true
            levels[5].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            let ini4: Int = Int(arc4random_uniform(4)+1)
            level3button1.setTitle(String(ini1), for: .normal)
            level3button2.setTitle(String(ini2), for: .normal)
            level3button3.setTitle(String(ini3), for: .normal)
            level3button4.setTitle(String(ini4), for: .normal)
            level3button1.layer.cornerRadius = 10
            level3button2.layer.cornerRadius = 10
            level3button3.layer.cornerRadius = 10
            level3button4.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            nums.append(ini4)
            
            best = defaults3.integer(forKey: "key3")
            bestLabel.text = "Best: \(best!)"
        }
        
        if level == "4" {
            levels[0].isHidden = true
            levels[1].isHidden = true
            levels[2].isHidden = true
            levels[4].isHidden = true
            levels[5].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            let ini4: Int = Int(arc4random_uniform(4)+1)
            let ini5: Int = Int(arc4random_uniform(4)+1)
            let ini6: Int = Int(arc4random_uniform(4)+1)
            level4button1.setTitle(String(ini1), for: .normal)
            level4button2.setTitle(String(ini2), for: .normal)
            level4button3.setTitle(String(ini3), for: .normal)
            level4button4.setTitle(String(ini4), for: .normal)
            level4button5.setTitle(String(ini5), for: .normal)
            level4button6.setTitle(String(ini6), for: .normal)
            level4button1.layer.cornerRadius = 10
            level4button2.layer.cornerRadius = 10
            level4button3.layer.cornerRadius = 10
            level4button4.layer.cornerRadius = 10
            level4button5.layer.cornerRadius = 10
            level4button6.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            nums.append(ini4)
            nums.append(ini5)
            nums.append(ini6)
            
            best = defaults4.integer(forKey: "key4")
            bestLabel.text = "Best: \(best!)"
        }
        
        if level == "5" {
            levels[0].isHidden = true
            levels[1].isHidden = true
            levels[2].isHidden = true
            levels[3].isHidden = true
            levels[5].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            let ini4: Int = Int(arc4random_uniform(4)+1)
            let ini5: Int = Int(arc4random_uniform(4)+1)
            let ini6: Int = Int(arc4random_uniform(4)+1)
            let ini7: Int = Int(arc4random_uniform(4)+1)
            let ini8: Int = Int(arc4random_uniform(4)+1)
            let ini9: Int = Int(arc4random_uniform(4)+1)
            level5button1.setTitle(String(ini1), for: .normal)
            level5button2.setTitle(String(ini2), for: .normal)
            level5button3.setTitle(String(ini3), for: .normal)
            level5button4.setTitle(String(ini4), for: .normal)
            level5button5.setTitle(String(ini5), for: .normal)
            level5button6.setTitle(String(ini6), for: .normal)
            level5button7.setTitle(String(ini7), for: .normal)
            level5button8.setTitle(String(ini8), for: .normal)
            level5button9.setTitle(String(ini9), for: .normal)
            level5button1.layer.cornerRadius = 10
            level5button2.layer.cornerRadius = 10
            level5button3.layer.cornerRadius = 10
            level5button4.layer.cornerRadius = 10
            level5button5.layer.cornerRadius = 10
            level5button6.layer.cornerRadius = 10
            level5button7.layer.cornerRadius = 10
            level5button8.layer.cornerRadius = 10
            level5button9.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            nums.append(ini4)
            nums.append(ini5)
            nums.append(ini6)
            nums.append(ini7)
            nums.append(ini8)
            nums.append(ini9)
            
            best = defaults5.integer(forKey: "key5")
            bestLabel.text = "Best: \(best!)"
        }
        
        if level == "6" {
            levels[0].isHidden = true
            levels[1].isHidden = true
            levels[2].isHidden = true
            levels[3].isHidden = true
            levels[4].isHidden = true
            let ini1: Int = Int(arc4random_uniform(4)+1)
            let ini2: Int = Int(arc4random_uniform(4)+1)
            let ini3: Int = Int(arc4random_uniform(4)+1)
            let ini4: Int = Int(arc4random_uniform(4)+1)
            let ini5: Int = Int(arc4random_uniform(4)+1)
            let ini6: Int = Int(arc4random_uniform(4)+1)
            let ini7: Int = Int(arc4random_uniform(4)+1)
            let ini8: Int = Int(arc4random_uniform(4)+1)
            let ini9: Int = Int(arc4random_uniform(4)+1)
            let ini10: Int = Int(arc4random_uniform(4)+1)
            let ini11: Int = Int(arc4random_uniform(4)+1)
            let ini12: Int = Int(arc4random_uniform(4)+1)
            level6button1.setTitle(String(ini1), for: .normal)
            level6button2.setTitle(String(ini2), for: .normal)
            level6button3.setTitle(String(ini3), for: .normal)
            level6button4.setTitle(String(ini4), for: .normal)
            level6button5.setTitle(String(ini5), for: .normal)
            level6button6.setTitle(String(ini6), for: .normal)
            level6button7.setTitle(String(ini7), for: .normal)
            level6button8.setTitle(String(ini8), for: .normal)
            level6button9.setTitle(String(ini9), for: .normal)
            level6button10.setTitle(String(ini10), for: .normal)
            level6button11.setTitle(String(ini11), for: .normal)
            level6button12.setTitle(String(ini12), for: .normal)
            level6button1.layer.cornerRadius = 10
            level6button2.layer.cornerRadius = 10
            level6button3.layer.cornerRadius = 10
            level6button4.layer.cornerRadius = 10
            level6button5.layer.cornerRadius = 10
            level6button6.layer.cornerRadius = 10
            level6button7.layer.cornerRadius = 10
            level6button8.layer.cornerRadius = 10
            level6button9.layer.cornerRadius = 10
            level6button10.layer.cornerRadius = 10
            level6button11.layer.cornerRadius = 10
            level6button12.layer.cornerRadius = 10
            nums.append(ini1)
            nums.append(ini2)
            nums.append(ini3)
            nums.append(ini4)
            nums.append(ini5)
            nums.append(ini6)
            nums.append(ini7)
            nums.append(ini8)
            nums.append(ini9)
            nums.append(ini10)
            nums.append(ini11)
            nums.append(ini12)
            
            best = defaults6.integer(forKey: "key6")
            bestLabel.text = "Best: \(best!)"
        }
        
        if best == 0 {
            best = 1000
            bestLabel.text = "Best: 0"
        }
    }
    
    func winGame() -> Bool {
        var temp = 0
        for (index, _) in nums.enumerated() {
            if index == 0 {
            } else if (nums[index] != nums[temp]) {
                return false
            } else {
                temp += 1
            }
        }
        resetLevel(self)
        return true
    }
    
    func increment(temp: Int) -> Int {
        var numAtPos = temp
        if (numAtPos < 4) {
            numAtPos += 1
            return numAtPos
        } else {
            numAtPos = 1
            return numAtPos
        }
    }
    
    @IBAction func numBtnClicked(_ sender: UIButton) {
        moves = moves + 1
        movesLabel.text = "Moves: \(moves)"
        
        sender.pulsate()
        
        if level == "1" {
            if sender.restorationIdentifier == "lv1btn1" {
                let num1: Int = Int(level1button1.title(for: .normal)!)!
                let num2: Int = Int(level1button2.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
            }
        
            if sender.restorationIdentifier == "lv1btn2" {
                let num1: Int = Int(level1button1.title(for: .normal)!)!
                let num2: Int = Int(level1button2.title(for: .normal)!)!
                let num3: Int = Int(level1button3.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
            }
        
            if sender.restorationIdentifier == "lv1btn3" {
                let num2: Int = Int(level1button2.title(for: .normal)!)!
                let num3: Int = Int(level1button3.title(for: .normal)!)!
                
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
            }
        
            level1button1.setTitle(String(nums[0]), for: .normal)
            level1button2.setTitle(String(nums[1]), for: .normal)
            level1button3.setTitle(String(nums[2]), for: .normal)
            
            checkWinGame()
        }
        
        if level == "2" {
            if sender.restorationIdentifier == "lv2btn1" {
                let num1: Int = Int(level2button1.title(for: .normal)!)!
                let num2: Int = Int(level2button2.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
            }
            
            if sender.restorationIdentifier == "lv2btn2" {
                let num1: Int = Int(level2button1.title(for: .normal)!)!
                let num2: Int = Int(level2button2.title(for: .normal)!)!
                let num3: Int = Int(level2button3.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
            }
            
            if sender.restorationIdentifier == "lv2btn3" {
                let num2: Int = Int(level2button2.title(for: .normal)!)!
                let num3: Int = Int(level2button3.title(for: .normal)!)!
                let num4: Int = Int(level2button4.title(for: .normal)!)!
                
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
            }
            
            if sender.restorationIdentifier == "lv2btn4" {
                let num3: Int = Int(level2button3.title(for: .normal)!)!
                let num4: Int = Int(level2button4.title(for: .normal)!)!
                let num5: Int = Int(level2button5.title(for: .normal)!)!
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
            }
            
            if sender.restorationIdentifier == "lv2btn5" {
                let num4: Int = Int(level2button4.title(for: .normal)!)!
                let num5: Int = Int(level2button5.title(for: .normal)!)!
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
            }
            
            level2button1.setTitle(String(nums[0]), for: .normal)
            level2button2.setTitle(String(nums[1]), for: .normal)
            level2button3.setTitle(String(nums[2]), for: .normal)
            level2button4.setTitle(String(nums[3]), for: .normal)
            level2button5.setTitle(String(nums[4]), for: .normal)
            
            checkWinGame()
        }
        
        if level == "3" {
            if sender.restorationIdentifier == "lv3btn1" {
                let num1: Int = Int( level3button1.title(for: .normal)!)!
                let num2: Int = Int( level3button2.title(for: .normal)!)!
                let num3: Int = Int( level3button3.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
            }
            
            if sender.restorationIdentifier == "lv3btn2" {
                let num1: Int = Int( level3button1.title(for: .normal)!)!
                let num2: Int = Int( level3button2.title(for: .normal)!)!
                let num4: Int = Int( level3button4.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[3] = increment(temp: num4)
            }
            
            if sender.restorationIdentifier == "lv3btn3" {
                let num1: Int = Int( level3button1.title(for: .normal)!)!
                let num3: Int = Int( level3button3.title(for: .normal)!)!
                let num4: Int = Int( level3button4.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
            }
            
            if sender.restorationIdentifier == "lv3btn4" {
                let num2: Int = Int( level3button2.title(for: .normal)!)!
                let num3: Int = Int( level3button3.title(for: .normal)!)!
                let num4: Int = Int( level3button4.title(for: .normal)!)!
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
            }
            
            level3button1.setTitle(String(nums[0]), for: .normal)
            level3button2.setTitle(String(nums[1]), for: .normal)
            level3button3.setTitle(String(nums[2]), for: .normal)
            level3button4.setTitle(String(nums[3]), for: .normal)
            
            checkWinGame()
        }
        
        if level == "4" {
            if sender.restorationIdentifier == "lv4btn1" {
                print("lv4btn1")
                let num1: Int = Int( level4button1.title(for: .normal)!)!
                let num2: Int = Int( level4button2.title(for: .normal)!)!
                let num3: Int = Int( level4button3.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
            }
            
            if sender.restorationIdentifier == "lv4btn2" {
                let num1: Int = Int(level4button1.title(for: .normal)!)!
                let num2: Int = Int(level4button2.title(for: .normal)!)!
                let num4: Int = Int(level4button4.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[3] = increment(temp: num4)
            }
            
            if sender.restorationIdentifier == "lv4btn3" {
                let num1: Int = Int(level4button1.title(for: .normal)!)!
                let num3: Int = Int(level4button3.title(for: .normal)!)!
                let num4: Int = Int(level4button4.title(for: .normal)!)!
                let num5: Int = Int(level4button5.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
            }
            
            if sender.restorationIdentifier == "lv4btn4" {
                let num2: Int = Int( level4button2.title(for: .normal)!)!
                let num3: Int = Int( level4button3.title(for: .normal)!)!
                let num4: Int = Int( level4button4.title(for: .normal)!)!
                let num6: Int = Int( level4button6.title(for: .normal)!)!
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
                nums[5] = increment(temp: num6)
            }
            
            if sender.restorationIdentifier == "lv4btn5" {
                let num3: Int = Int( level4button3.title(for: .normal)!)!
                let num5: Int = Int( level4button5.title(for: .normal)!)!
                let num6: Int = Int( level4button6.title(for: .normal)!)!
                nums[2] = increment(temp: num3)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
            }
            
            if sender.restorationIdentifier == "lv4btn6" {
                let num4: Int = Int( level4button4.title(for: .normal)!)!
                let num5: Int = Int( level4button5.title(for: .normal)!)!
                let num6: Int = Int( level4button6.title(for: .normal)!)!
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
            }
            
            level4button1.setTitle(String(nums[0]), for: .normal)
            level4button2.setTitle(String(nums[1]), for: .normal)
            level4button3.setTitle(String(nums[2]), for: .normal)
            level4button4.setTitle(String(nums[3]), for: .normal)
            level4button5.setTitle(String(nums[4]), for: .normal)
            level4button6.setTitle(String(nums[5]), for: .normal)
            
            checkWinGame()
        }
        
        if level == "5" {
            if sender.restorationIdentifier == "lv5btn1" {
                let num1: Int = Int( level5button1.title(for: .normal)!)!
                let num2: Int = Int( level5button2.title(for: .normal)!)!
                let num4: Int = Int( level5button4.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[3] = increment(temp: num4)
            }
            
            if sender.restorationIdentifier == "lv5btn2" {
                let num1: Int = Int( level5button1.title(for: .normal)!)!
                let num2: Int = Int( level5button2.title(for: .normal)!)!
                let num3: Int = Int( level5button3.title(for: .normal)!)!
                let num5: Int = Int( level5button5.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[4] = increment(temp: num5)
            }
            
            if sender.restorationIdentifier == "lv5btn3" {
                let num2: Int = Int( level5button2.title(for: .normal)!)!
                let num3: Int = Int( level5button3.title(for: .normal)!)!
                let num6: Int = Int( level5button6.title(for: .normal)!)!
                
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[5] = increment(temp: num6)
            }
            
            if sender.restorationIdentifier == "lv5btn4" {
                let num1: Int = Int( level5button1.title(for: .normal)!)!
                let num4: Int = Int( level5button4.title(for: .normal)!)!
                let num5: Int = Int( level5button5.title(for: .normal)!)!
                let num7: Int = Int( level5button7.title(for: .normal)!)!
                nums[0] = increment(temp: num1)
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
                nums[6] = increment(temp: num7)
            }
            
            if sender.restorationIdentifier == "lv5btn5" {
                let num2: Int = Int( level5button2.title(for: .normal)!)!
                let num4: Int = Int( level5button4.title(for: .normal)!)!
                let num5: Int = Int( level5button5.title(for: .normal)!)!
                let num6: Int = Int( level5button6.title(for: .normal)!)!
                let num8: Int = Int( level5button8.title(for: .normal)!)!
                nums[1] = increment(temp: num2)
                nums[3] = increment(temp: num4)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
                nums[7] = increment(temp: num8)
            }
            
            if sender.restorationIdentifier == "lv5btn6" {
                let num3: Int = Int( level5button3.title(for: .normal)!)!
                let num5: Int = Int( level5button5.title(for: .normal)!)!
                let num6: Int = Int( level5button6.title(for: .normal)!)!
                let num9: Int = Int( level5button9.title(for: .normal)!)!
                nums[2] = increment(temp: num3)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
                nums[8] = increment(temp: num9)
            }
            
            if sender.restorationIdentifier == "lv5btn7" {
                let num4: Int = Int( level5button4.title(for: .normal)!)!
                let num7: Int = Int( level5button7.title(for: .normal)!)!
                let num8: Int = Int( level5button8.title(for: .normal)!)!
                nums[3] = increment(temp: num4)
                nums[6] = increment(temp: num7)
                nums[7] = increment(temp: num8)
            }
            
            if sender.restorationIdentifier == "lv5btn8" {
                let num5: Int = Int( level5button5.title(for: .normal)!)!
                let num7: Int = Int( level5button7.title(for: .normal)!)!
                let num8: Int = Int( level5button8.title(for: .normal)!)!
                let num9: Int = Int( level5button9.title(for: .normal)!)!
                nums[4] = increment(temp: num5)
                nums[6] = increment(temp: num7)
                nums[7] = increment(temp: num8)
                nums[8] = increment(temp: num9)
            }
            if sender.restorationIdentifier == "lv5btn9" {
                let num6: Int = Int( level5button6.title(for: .normal)!)!
                let num8: Int = Int( level5button8.title(for: .normal)!)!
                let num9: Int = Int( level5button9.title(for: .normal)!)!
                nums[5] = increment(temp: num6)
                nums[7] = increment(temp: num8)
                nums[8] = increment(temp: num9)
            }
            
            level5button1.setTitle(String(nums[0]), for: .normal)
            level5button2.setTitle(String(nums[1]), for: .normal)
            level5button3.setTitle(String(nums[2]), for: .normal)
            level5button4.setTitle(String(nums[3]), for: .normal)
            level5button5.setTitle(String(nums[4]), for: .normal)
            level5button6.setTitle(String(nums[5]), for: .normal)
            level5button7.setTitle(String(nums[6]), for: .normal)
            level5button8.setTitle(String(nums[7]), for: .normal)
            level5button9.setTitle(String(nums[8]), for: .normal)
            
            checkWinGame()
        }
        
        if level == "6" {
            if sender.restorationIdentifier == "lv6btn1" {
                let num1: Int = Int( level6button1.title(for: .normal)!)!
                let num2: Int = Int( level6button2.title(for: .normal)!)!
                let num5: Int = Int( level6button5.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[4] = increment(temp: num5)
            }
            
            if sender.restorationIdentifier == "lv6btn2" {
                let num1: Int = Int( level6button1.title(for: .normal)!)!
                let num2: Int = Int( level6button2.title(for: .normal)!)!
                let num3: Int = Int( level6button3.title(for: .normal)!)!
                let num6: Int = Int( level6button6.title(for: .normal)!)!
                
                nums[0] = increment(temp: num1)
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[5] = increment(temp: num6)
            }
            
            if sender.restorationIdentifier == "lv6btn3" {
                let num2: Int = Int( level6button2.title(for: .normal)!)!
                let num3: Int = Int( level6button3.title(for: .normal)!)!
                let num4: Int = Int( level6button4.title(for: .normal)!)!
                let num7: Int = Int( level6button7.title(for: .normal)!)!
                
                nums[1] = increment(temp: num2)
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
                nums[6] = increment(temp: num7)
            }
            
            if sender.restorationIdentifier == "lv6btn4" {
                let num3: Int = Int( level6button3.title(for: .normal)!)!
                let num4: Int = Int( level6button4.title(for: .normal)!)!
                let num8: Int = Int( level6button8.title(for: .normal)!)!
                nums[2] = increment(temp: num3)
                nums[3] = increment(temp: num4)
                nums[7] = increment(temp: num8)
            }
            
            if sender.restorationIdentifier == "lv6btn5" {
                let num1: Int = Int( level6button1.title(for: .normal)!)!
                let num5: Int = Int( level6button5.title(for: .normal)!)!
                let num6: Int = Int( level6button6.title(for: .normal)!)!
                let num9: Int = Int( level6button9.title(for: .normal)!)!
                nums[0] = increment(temp: num1)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
                nums[8] = increment(temp: num9)
            }
            
            if sender.restorationIdentifier == "lv6btn6" {
                let num2: Int = Int( level6button2.title(for: .normal)!)!
                let num5: Int = Int( level6button5.title(for: .normal)!)!
                let num6: Int = Int( level6button6.title(for: .normal)!)!
                let num7: Int = Int( level6button7.title(for: .normal)!)!
                let num10: Int = Int( level6button10.title(for: .normal)!)!
                nums[1] = increment(temp: num2)
                nums[4] = increment(temp: num5)
                nums[5] = increment(temp: num6)
                nums[6] = increment(temp: num7)
                nums[9] = increment(temp: num10)
            }
            
            if sender.restorationIdentifier == "lv6btn7" {
                let num3: Int = Int( level6button3.title(for: .normal)!)!
                let num6: Int = Int( level6button6.title(for: .normal)!)!
                let num7: Int = Int( level6button7.title(for: .normal)!)!
                let num8: Int = Int( level6button8.title(for: .normal)!)!
                let num11: Int = Int( level6button11.title(for: .normal)!)!
                nums[2] = increment(temp: num3)
                nums[5] = increment(temp: num6)
                nums[6] = increment(temp: num7)
                nums[7] = increment(temp: num8)
                nums[10] = increment(temp: num11)
            }
            
            if sender.restorationIdentifier == "lv6btn8" {
                let num4: Int = Int( level6button4.title(for: .normal)!)!
                let num7: Int = Int( level6button7.title(for: .normal)!)!
                let num8: Int = Int( level6button8.title(for: .normal)!)!
                let num12: Int = Int( level6button12.title(for: .normal)!)!
                nums[3] = increment(temp: num4)
                nums[6] = increment(temp: num7)
                nums[7] = increment(temp: num8)
                nums[11] = increment(temp: num12)
            }
            
            if sender.restorationIdentifier == "lv6btn9" {
                let num5: Int = Int( level6button5.title(for: .normal)!)!
                let num9: Int = Int( level6button9.title(for: .normal)!)!
                let num10: Int = Int( level6button10.title(for: .normal)!)!
                nums[4] = increment(temp: num5)
                nums[8] = increment(temp: num9)
                nums[9] = increment(temp: num10)
            }
            
            if sender.restorationIdentifier == "lv6btn10" {
                let num6: Int = Int( level6button6.title(for: .normal)!)!
                let num9: Int = Int( level6button9.title(for: .normal)!)!
                let num10: Int = Int( level6button10.title(for: .normal)!)!
                let num11: Int = Int( level6button11.title(for: .normal)!)!
                nums[5] = increment(temp: num6)
                nums[8] = increment(temp: num9)
                nums[9] = increment(temp: num10)
                nums[10] = increment(temp: num11)
            }
            
            if sender.restorationIdentifier == "lv6btn11" {
                let num7: Int = Int( level6button7.title(for: .normal)!)!
                let num10: Int = Int( level6button10.title(for: .normal)!)!
                let num11: Int = Int( level6button11.title(for: .normal)!)!
                let num12: Int = Int( level6button12.title(for: .normal)!)!
                nums[6] = increment(temp: num7)
                nums[9] = increment(temp: num10)
                nums[10] = increment(temp: num11)
                nums[11] = increment(temp: num12)
            }
            
            if sender.restorationIdentifier == "lv6btn12" {
                let num8: Int = Int( level6button8.title(for: .normal)!)!
                let num11: Int = Int( level6button11.title(for: .normal)!)!
                let num12: Int = Int( level6button12.title(for: .normal)!)!
                nums[7] = increment(temp: num8)
                nums[10] = increment(temp: num11)
                nums[11] = increment(temp: num12)
            }
            
            level6button1.setTitle(String(nums[0]), for: .normal)
            level6button2.setTitle(String(nums[1]), for: .normal)
            level6button3.setTitle(String(nums[2]), for: .normal)
            level6button4.setTitle(String(nums[3]), for: .normal)
            level6button5.setTitle(String(nums[4]), for: .normal)
            level6button6.setTitle(String(nums[5]), for: .normal)
            level6button7.setTitle(String(nums[6]), for: .normal)
            level6button8.setTitle(String(nums[7]), for: .normal)
            level6button9.setTitle(String(nums[8]), for: .normal)
            level6button10.setTitle(String(nums[9]), for: .normal)
            level6button11.setTitle(String(nums[10]), for: .normal)
            level6button12.setTitle(String(nums[11]), for: .normal)
            
            checkWinGame()
        }
    }
    
    func checkWinGame() {
        if winGame() {
            if (moves < best) {
                best = moves
                print("new best \(best!)")
                bestLabel.text = "Best: \(best!)"
                
                switch level {
                case "1":
                    defaults1.set(best, forKey: "key1")
                case "2":
                    defaults2.set(best, forKey: "key2")
                case "3":
                    defaults3.set(best, forKey: "key3")
                case "4":
                    defaults4.set(best, forKey: "key4")
                case "5":
                    defaults5.set(best, forKey: "key5")
                case "6":
                    defaults6.set(best, forKey: "key6")
                default:
                    print("bad level")
                }
            }
            triggerPopUp()
        }
    }
    func triggerPopUp() {
        
        let alertVC = UIAlertController(title: "Congratulations!", message: "You won the game", preferredStyle: UIAlertController.Style.alert)
        present(alertVC, animated: false, completion: nil)
        
        alertVC.addAction(UIAlertAction(title: "Back", style: UIAlertAction.Style.cancel, handler: {
            (alertAction: UIAlertAction!) in
            alertVC.dismiss(animated: true, completion: nil)
        }))
    }
    
    @IBAction func resetLevel(_ sender: Any) {
        movesLabel.text = "Moves: 0"
        moves = 0
        for (index, _) in nums.enumerated() {
            let ran = Int(arc4random_uniform(4)+1)
            nums[index] = ran
        }
        if nums.count == 3 {
            level1button1.setTitle(String(nums[0]), for: .normal)
            level1button2.setTitle(String(nums[1]), for: .normal)
            level1button3.setTitle(String(nums[2]), for: .normal)
        } else if nums.count == 5 {
            level2button1.setTitle(String(nums[0]), for: .normal)
            level2button2.setTitle(String(nums[1]), for: .normal)
            level2button3.setTitle(String(nums[2]), for: .normal)
            level2button4.setTitle(String(nums[3]), for: .normal)
            level2button5.setTitle(String(nums[4]), for: .normal)
        } else if nums.count == 4 {
            level3button1.setTitle(String(nums[0]), for: .normal)
            level3button2.setTitle(String(nums[1]), for: .normal)
            level3button3.setTitle(String(nums[2]), for: .normal)
            level3button4.setTitle(String(nums[3]), for: .normal)
        } else if nums.count == 6 {
            level4button1.setTitle(String(nums[0]), for: .normal)
            level4button2.setTitle(String(nums[1]), for: .normal)
            level4button3.setTitle(String(nums[2]), for: .normal)
            level4button4.setTitle(String(nums[3]), for: .normal)
            level4button5.setTitle(String(nums[4]), for: .normal)
            level4button6.setTitle(String(nums[5]), for: .normal)
        } else if nums.count == 9 {
            level5button1.setTitle(String(nums[0]), for: .normal)
            level5button2.setTitle(String(nums[1]), for: .normal)
            level5button3.setTitle(String(nums[2]), for: .normal)
            level5button4.setTitle(String(nums[3]), for: .normal)
            level5button5.setTitle(String(nums[4]), for: .normal)
            level5button6.setTitle(String(nums[5]), for: .normal)
            level5button7.setTitle(String(nums[6]), for: .normal)
            level5button8.setTitle(String(nums[7]), for: .normal)
            level5button9.setTitle(String(nums[8]), for: .normal)
        } else {
            level6button1.setTitle(String(nums[0]), for: .normal)
            level6button2.setTitle(String(nums[1]), for: .normal)
            level6button3.setTitle(String(nums[2]), for: .normal)
            level6button4.setTitle(String(nums[3]), for: .normal)
            level6button5.setTitle(String(nums[4]), for: .normal)
            level6button6.setTitle(String(nums[5]), for: .normal)
            level6button7.setTitle(String(nums[6]), for: .normal)
            level6button8.setTitle(String(nums[7]), for: .normal)
            level6button9.setTitle(String(nums[8]), for: .normal)
            level6button10.setTitle(String(nums[9]), for: .normal)
            level6button11.setTitle(String(nums[10]), for: .normal)
            level6button12.setTitle(String(nums[11]), for: .normal)
        }
    }
}

