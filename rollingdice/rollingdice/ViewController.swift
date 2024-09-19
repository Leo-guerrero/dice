//
//  ViewController.swift
//  rollingdice
//
//  Created by Leonardo Guerrero on 9/19/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rolldice()
    }
    
    
    @IBOutlet weak var imgDice1: UIImageView!
    
    
    @IBOutlet weak var imgDice2: UIImageView!
    
    var randomdice1 : Int = 0
    var randomdice2 : Int = 0
    
    let dicaArray : [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    @IBAction func btnRollDice(_ sender: UIButton) {
        rolldice()
    }
    
    
    func rolldice() {
        
        randomdice1 = Int(arc4random_uniform(6))
        
        randomdice2 = Int(arc4random_uniform(6))
        
        
        
        
        imgDice1.image = UIImage(named: dicaArray[randomdice1])
        imgDice2.image = UIImage(named: dicaArray[randomdice2])
        
        if randomdice2 == 5 && randomdice1 == 5{
            rules()
        }
        
        if randomdice2 == 0 && randomdice1 == 0{
            rules2()
        }
        
    }
    
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rolldice()
    }
    
    
    @IBOutlet weak var labellol: UILabel!
    
    func rules() {
        labellol.text = "looser!!"
    }
    
    func rules2(){
        labellol.text = "coolguy"
    }


}

