//
//  ViewController.swift
//  Entrenamiento
//
//  Created by Abraham Abreu on 19/07/18.
//  Copyright © 2018 banregio. All rights reserved.
//
import UIKit
import Firebase
import FirebaseDatabase
class MainViewController: UIViewController {
    private let mainPresenter: MainPresenter! = MainPresenter()
    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = String(NSLocalizedString("mainTitle", comment: ""))
        self.mainPresenter.atachView(view: self)
        self.ref = Database.database().reference()
        self.saveData(user: User(name: "Abraham", age: nil, address: "Dirección", email: "abraham.abreu@banregio.com"))
    }
    func saveData(user: User) {
        self.ref.child("users").childByAutoId().setValue(["username": user.name,
                                          "phone": user.age ?? 40,
                                          "age": user.email ?? "",
                                          "address": user.address])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension MainViewController: MainViewProtocol {
    func showHUD() {
        Utils.shared.showHUD()
    }
    func hideHUD() {
        Utils.shared.hideHUD()
    }
    func showErrorMessage(_ error: Error) {
        Utils.shared.showAlertWith(error.localizedDescription, title: String(NSLocalizedString("alertTitle", comment: "")), inView: self)
    }
}
