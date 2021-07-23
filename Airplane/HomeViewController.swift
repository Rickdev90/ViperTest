//
//  ViewController.swift
//  Airplane
//
//  Created by Rick on 22/07/21.
//

import UIKit

///protocolo hereda de la clase class
protocol HomeView: class{
    
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension HomeViewController: HomeView{
    
}

