//
//  masaController.swift
//  pizzamania2
//
//  Created by Francisco Humberto Andrade Gonzalez on 15/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import UIKit

class masaController: UIViewController {
    var masa = [String]()
    @IBOutlet weak var gruesa: UISwitch!
    @IBOutlet weak var crujiente: UISwitch!
    @IBOutlet weak var delgada: UISwitch!
    
    var size:[String]=[" "]
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! quesoController
        sigVista.masa = self.masa
        sigVista.size=self.size
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(size)
        print(masa)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(sender: AnyObject) {
        selecMasa()
    }
    func selecMasa(){
    if delgada.on{
    masa.append("Delgada")
    }
    if crujiente.on{
    masa.append("Crujiente")
    }
    if gruesa.on{
    masa.append("Gruesa")
    }
    if (masa.isEmpty)
    {
    let alert = UIAlertController(title: "Error", message: "Selecciona la masa", preferredStyle: UIAlertControllerStyle.Alert)
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
