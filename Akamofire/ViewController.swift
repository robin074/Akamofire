//
//  ViewController.swift
//  Akamofire
//
//  Created by apple on 1/30/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchData()
    }
    //MARK: Get data from server
    func fetchData(){
        
        Alamofire.request("https://jsonplaceholder.typicode.com/todos").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let json = response.result.value {
                print("JSON: \(json)")
                // do something with json here
            }
        }
    }
    
}

