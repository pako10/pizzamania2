//
//  quesoController.swift
//  pizzamania2
//
//  Created by Francisco Humberto Andrade Gonzalez on 15/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import UIKit

class quesoController: UIViewController {
    @IBOutlet weak var parmesano: UISwitch!
    @IBOutlet weak var mozarella: UISwitch!
    @IBOutlet weak var cheddar: UISwitch!
    @IBOutlet weak var sinQueso: UISwitch!
    
    var masa=[""]
    var size=[""]
    var queso=[String]()
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ingredientesController
        sigVista.masa = self.masa
        sigVista.size=self.size
        sigVista.queso=self.queso
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(sender: AnyObject) {
        selecQueso()
    }
    func selecQueso(){
        if parmesano.on{
            queso.append("Parmesano")
        }
        if mozarella.on{
            queso.append("Mozarella")
        }
        if cheddar.on{
            queso.append("Cheddar")
        }
        if sinQueso.on{
            queso.append("Sin Queso")
        }
        if (queso.isEmpty)
        {
            let alert = UIAlertController(title: "Error", message: "Selecciona un queso", preferredStyle: UIAlertControllerStyle.Alert)
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
