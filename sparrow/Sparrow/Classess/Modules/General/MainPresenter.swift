//
//  MainPresenter.swift
//  Entrenamiento
//
//  Created by Abraham Abreu on 19/07/18.
//  Copyright © 2018 banregio. All rights reserved.
//

import UIKit
/**
 Presentador general para los módulos de la app.
 */
class MainPresenter {
    ///Instancia del protocolo principal
    weak private var mainView: MainViewProtocol?
    init() {
        //Cualquier método o función a inicializar.
    }
    /**
     Función que adjunta la vista.
     - parameter view: Vista para adjuntar.
     */
    func atachView(view: MainViewProtocol) {
        self.mainView = view
    }
    /**
     Función que desliga la vista.
     */
    func detachView() {
        self.mainView = nil
    }
}
