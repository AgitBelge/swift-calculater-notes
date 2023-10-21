//
//  ViewController.swift
//  notHesaplama
//
//  Created by Agit on 20.10.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var midtermText: UITextField!
    
    @IBOutlet weak var finalText: UITextField!
    
    @IBOutlet weak var noteLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLabel.text = ""
        
        let getRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(getRecognizer)
    }


    @IBAction func calculateNote(_ sender: Any) {
        
        let midterm = Int(midtermText.text!)!
        let final = Int(finalText.text!)!
        
        let not = ((Double(midterm) / 100.0) * 40.0) + ((Double(final) / 100.0) * 60.0)
        noteLabel.text = "notun :\(Int(not))"
        
    }
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
}

