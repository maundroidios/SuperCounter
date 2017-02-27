//
//  ViewController.swift
//  HolaMundo
//
//  Created by Mauricio Acuña on 23/1/17.
//  Copyright © 2017 Mauricio Acuña. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var logCuentas: UITextView!
    @IBOutlet weak var acumulador: UILabel!
    @IBOutlet weak var resta: UIButton!
    @IBOutlet weak var reinicia: UIButton!
    @IBOutlet weak var Selector: UIPickerView!
    var prodotti = ["AAAAA", "VVVV", "CCCC"]
   
    
    
    @IBAction func cargaStatusClean(_ sender: Any) {
        // obtengo fecha
        let today:NSDate = NSDate()
        let formatter:DateFormatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.short
        let current:String = formatter.string(from: today as Date)
        
        //Obtengo hora
        let date = NSDate()
        let calendar = NSCalendar.current
        let hour = calendar.component(.hour, from: date as Date)
        let minutes = calendar.component(.minute, from: date as Date)
        let auditoria =   " >> \(current) \(hour) : \(minutes) "
        logCuentas.text = logCuentas.text + " \n Contados: " + acumulador.text! + " \(auditoria)"
        valorActual = 0
        acumulador.text = "\(valorActual)"
    }
    
    
    
    @IBAction func restaValor(_ sender: Any) {
        valorActual = valorActual - 1
        
        acumulador.text = "\(valorActual)"
    }
    
    
    @IBAction func reinicioLog(_ sender: Any) {
    }
    
    
    var valorActual = 0
    
    @IBAction func descuentaValor(_ sender: Any) {
        valorActual = valorActual - 1
        acumulador.text = "\(valorActual)"
    }
    
    
    @IBAction func writeHelloWorld(_ sender: Any) {
        valorActual = valorActual + 1
        acumulador.text = "\(valorActual)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //contador.text = "0"
        //logCuentas.text = "Log"
        // Do any additional setup after loading the view, typically from a nib.
        //self.Selector.dataSource = self
        //self.Selector.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

