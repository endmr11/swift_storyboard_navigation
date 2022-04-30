//
//  ViewController.swift
//  udemy_navigation_yayginyontem
//
//  Created by Eren Demir on 1.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var girdiAlani: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goB(_ sender: Any) {
        let gidecekVeri = girdiAlani.text!
        performSegue(withIdentifier: "aToB", sender: gidecekVeri)
    }
    
    @IBAction func goC(_ sender: Any) {
        let gidecekVeri = girdiAlani.text!
        performSegue(withIdentifier: "aToC", sender: gidecekVeri)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aToB" {
            print("A dan B ye ")
            if let veri = sender as? String{
                let gidilecekVC = segue.destination as! ViewController2
                gidilecekVC.mesaj = veri
            }
            
        }
        if segue.identifier == "aToC" {
            print("A dan C ye ")
            if let veri = sender as? String{
                let gidilecekVC = segue.destination as! ViewController3
                gidilecekVC.mesaj = veri
            }
        }
    }
}

