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
    ///Como home presennter se va a cominicar con el view principal creamos un referencia debil
    ///Por eso es conveniente que el protocolo herede de la clase class el protocolo
    ///Creamos la instancias de los protocolos
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    ///inicializamos
    init(view: HomeView, interactor: HomeUseCase, router:HomeRouting){
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension HomePresenter: HomePresentation{
    func viewDidLoad() {
        
    }
}
