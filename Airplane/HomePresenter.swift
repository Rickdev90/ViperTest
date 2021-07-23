//
//  HomePresenter.swift
//  Airplane
//
//  Created by Rick on 22/07/21.
//

///El presenter se comunica con el viewcontroller y a su vez con el interactor
import Foundation

protocol HomePresentation{
    ///carga los datos de inicio en el viewcontroller
    func viewDidLoad()
}

class HomePresenter{
    
    
    
}

extension HomePresenter: HomePresentation{
    func viewDidLoad() {
        
    }
}
