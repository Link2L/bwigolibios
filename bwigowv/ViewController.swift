//
//  ViewController.swift
//  bwigowv
//
//  Created by Armando Cervantes on 28/01/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var wView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults=UserDefaults.standard
                if let usr = defaults.string(forKey:"username"){
                    if let pss = defaults.string(forKey:"password"){
                        wView.load(URLRequest(url: URL(string: "https://pwa.bwigo.com?key=1&keycode=login&usr="+usr+"&psw="+pss)!))
                    }
                    print("usuario correcto")
                }else{
                    print("usuario y password invalido")
                }
        
        
       /* wView.load(URLRequest(url: URL(string: "https://pwa.bwigo.com?key=1&keycode=login&usr=1018999629757430&psw=pruebas")!))*/

    }

}

