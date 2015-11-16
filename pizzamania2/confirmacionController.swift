//
//  confirmacionController.swift
//  pizzamania2
//
//  Created by Francisco Humberto Andrade Gonzalez on 15/11/15.
//  Copyright © 2015 Francisco Humberto Andrade Gonzalez. All rights reserved.
//

import UIKit

class confirmacionController: UIViewController {
    
    var masa=[""]
    var size=[""]
    var queso=[""]
    var ingredientes=[""]

    @IBOutlet weak var cheese: UILabel!
    
    
    @IBOutlet weak var ingredient: UILabel!
    @IBOutlet weak var mas: UILabel!
    @IBOutlet weak var tamaño: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var x:CGFloat = 40
        let y:CGFloat = 450
        for i in ingredientes
        {
            let label = UILabel(frame: CGRectMake(0, 0, 100, 21))
            label.center = CGPointMake(x, y)
            label.textAlignment = NSTextAlignment.Center
            label.text = "\(i)"
            self.view.addSubview(label)
            x += 70
        }
        
        for i in queso
        {
            let label = UILabel(frame: CGRectMake(0, 0, 100, 21))
            label.center = CGPointMake(x, y)
            label.textAlignment = NSTextAlignment.Center
            label.text = "\(i)"
            self.view.addSubview(label)
            x += 70
        }
        for i in size
        {
            let label = UILabel(frame: CGRectMake(0, 0, 100, 21))
            label.center = CGPointMake(x, y)
            label.textAlignment = NSTextAlignment.Center
            label.text = "\(i)"
            self.view.addSubview(label)
            x += 70
        }
        for i in masa
        {
            let label = UILabel(frame: CGRectMake(0, 0, 100, 21))
            label.center = CGPointMake(x, y)
            label.textAlignment = NSTextAlignment.Center
            label.text = "\(i)"
            self.view.addSubview(label)
            x += 70
        }





        // Do any additional setup after loading the view.
    }

    @IBAction func confirmacion(sender: AnyObject) {
        let alert = UIAlertController(title: "Pedido", message: "Esta Correcto tu Pedido?", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
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

}
