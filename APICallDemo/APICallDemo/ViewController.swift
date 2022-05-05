//
//  ViewController.swift
//  APICallDemo
//
//  Created by Neosoft on 05/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayContent()
    }
    
    func displayContent() {
        //ViewModel.shared.a()
        APIService.webService { result in
            DispatchQueue.main.async {
                self.txtView.text = result.data.pantone_value
            }
            
        }
        
    }
}
