//
//  ingredientesController.swift
//  pizzamania2
//
//  Created by Francisco Humberto Andrade Gonzalez on 15/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import UIKit

class ingredientesController: UIViewController {
    var masa=[""]
    var size=[""]
    var queso=[""]
    var ingredientes=[String]()
    
    @IBOutlet weak var anchoas: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var aceitunas: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var jamon: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! confirmacionController
        sigVista.masa = self.masa
        sigVista.size=self.size
        sigVista.queso=self.queso
        sigVista.ingredientes=self.ingredientes
        
    }
    
    @IBAction func next(sender: AnyObject) {
        selecIngredientes()
    }
    func selecIngredientes(){
        if jamon.on{
            ingredientes.append("jamon")
        }
        if peperoni.on{
            ingredientes.append("peperoni")
        }
        if pavo.on{
            ingredientes.append("pavo")
        }
        if salchicha.on{
            ingredientes.append("salchicha")
        }
        if aceitunas.on{
            ingredientes.append("aceitunas")
        }
        if pimiento.on{
            ingredientes.append("pimiento")
        }
        if cebolla.on{
            ingredientes.append("cebolla")
        }
        if piña.on{
            ingredientes.append("piña")
        }
        if anchoas.on{
            ingredientes.append("anchoas")
        }
        if (ingredientes.isEmpty)
        {
            let alert = UIAlertController(title: "Error", message: "Selecciona al menos 1 ingrediente", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
