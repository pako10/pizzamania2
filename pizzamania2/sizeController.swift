//
//  sizeController.swift
//  pizzamania2
//
//  Created by Francisco Humberto Andrade Gonzalez on 15/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import UIKit

class sizeController: UIViewController {
    var size = [String]()
    
    @IBOutlet weak var mediana: UISwitch!
    @IBOutlet weak var chica: UISwitch!
    @IBOutlet weak var grande: UISwitch!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! masaController
        sigVista.size = self.size
    }
    
    
    @IBAction func enviarDatos(sender: AnyObject) {
        selecSize()
    }

    func selecSize(){
        if chica.on{
            size.append("Chica")
        }
        if mediana.on{
            size.append("Mediana")
        }
        if grande.on{
            size.append("Grande")
        }
        if (size.isEmpty)
        {
            let alert = UIAlertController(title: "Error", message: "Selecciona el tamaño", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        
        }
        

    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    */
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "segueIngToPedido"
        {
            if (size.isEmpty)
            {
                let alert = UIAlertController(title: "Error", message: "Selecciona el tamaño", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                return false
            }
            else
            {
                return true
            }
        }
        return true
    }


}
