//
//  HomeRouter.swift
//  Airplane
//
//  Created by Rick on 22/07/21.
//


///Router creado para la navegacion
import UIKit

protocol  HomeRouting {
    
}

class HomeRouter {
    
    var view: UIViewController
    init(view: UIViewController) {
        self.view = view
    }
    
}

extension HomeRouter: HomeRouting{
    
}
