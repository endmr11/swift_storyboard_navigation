//
//  ViewController2.swift
//  udemy_navigation_yayginyontem
//
//  Created by Eren Demir on 1.05.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    var mesaj:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = mesaj ?? ""
    }


}
