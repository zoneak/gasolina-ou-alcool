//
//  ViewController.swift
//  Gasolina ou Alcool
//
//  Created by Adriano Kaito on 20/11/18.
//  Copyright © 2018 AK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcoolTextField: UITextField!
    @IBOutlet weak var precoGasolinaTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var resultadoPreco: Double = 0
        
        // Validacoes
        if let resultadoAlcool = precoAlcoolTextField.text {
            if resultadoAlcool != "" {
                if let resultadoNumero = Double(resultadoAlcool) {
                    precoAlcool = resultadoNumero
                }
            }
        }
        
        if let resultadoGasolina = precoGasolinaTextField.text {
            if resultadoGasolina != "" {
                if let resultadoNumero = Double(resultadoGasolina) {
                    precoGasolina = resultadoNumero
                }
            }
        }
        
        // Calculo (precoAlcool / precoGasolina) >= 0.7
        resultadoPreco = precoAlcool / precoGasolina
        if resultadoPreco >= 0.7 {
            resultadoLabel.text = "Melhor utilizar gasolina"
        } else {
            resultadoLabel.text = "Melhor utilizar álcool"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

