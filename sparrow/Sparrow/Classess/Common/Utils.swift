//
//  Utils.swift
//  Entrenamiento
//
//  Created by Abraham Abreu on 19/07/18.
//  Copyright © 2018 banregio. All rights reserved.
//
import UIKit
import SVProgressHUD
/**
 Clase de utilerias generales del proyecto.
 */
open class Utils {
    static let shared = Utils()
    /**
     Inicializador.
     */
    init() {
        //HUD Configuration
        SVProgressHUD.setHapticsEnabled(true)
        SVProgressHUD.setDefaultStyle(.light)
        SVProgressHUD.setDefaultAnimationType(.flat)
    }
}
extension Utils {
    /**
     Función que muestra un HUD.
     */
    func showHUD() {
       SVProgressHUD.show()
    }
    /**
     Función que oculta un HUD.
     */
    func hideHUD() {
        SVProgressHUD.dismiss()
    }
    /**
     Función que provee una alerta básica.
     */
    func showAlertWith(_ message: String, title: String, inView: UIViewController) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: String(NSLocalizedString("alertOK", comment: "")), style: .default, handler: nil)
        alertController.addAction(alertAction)
        inView.present(alertController, animated: true, completion: nil)
    }
}
