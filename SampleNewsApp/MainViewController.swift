//
//  ViewController.swift
//  SampleNewsApp
//
//  Created by Caroline LaDouce on 8/6/22.
//

import UIKit


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "News"
        view.backgroundColor = .systemBlue
        
        APICaller.shared.getTopStories { result in
            switch result {
            case .success(let response):
                break
            case .failure(let error):
                print(error)
            }
        }
    }


}

