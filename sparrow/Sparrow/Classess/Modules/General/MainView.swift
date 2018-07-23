//
//  MainView.swift
//  Entrenamiento
//
//  Created by Abraham Abreu on 19/07/18.
//  Copyright © 2018 banregio. All rights reserved.
//

import UIKit
/**
 Protocolo principal de vistas
 */
protocol MainViewProtocol: class {
    /**
     Función que muestra un HUD en vista
     */
    func showHUD()
    /**
     Función que oculta un HUD en vista.
     */
    func hideHUD()
    /**
     Función generica que muestra un mensaje de error.
     */
    func showErrorMessage(_ error: Error)
}
