//
//  HomeAssembly.swift
//  Airplane
//
//  Created by Rick on 22/07/21.
//

///Aqui Contruiremos nuestro viewcontroller o nuestro navigation viewcontroller
import UIKit

class HomeAssembly{
    
    ///CREAMOS FUNCION STATICA PARA LA CONSTRUCCION DEL MODULO
    ///me regresa un viewcontroller
    static func build() -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let view = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)
        
        ///Crear una instancia del presenter del HomeViewController e
        ///inicializamos con las dependencias inyectadas
        view.presenter = presenter
        
        return view
    }
}
