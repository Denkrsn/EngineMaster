//
//  ViewController.swift
//  Engine Master
//
//  Created by Denis Ganevitch on 23/05/2018.
//  Copyright © 2018 Denis Ganevitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var boreTextField: UITextField!
    
    @IBOutlet weak var strokeTextField: UITextField!
    
    @IBOutlet weak var headVolumeTextField: UITextField!
    
    @IBOutlet weak var gasketBoreTextField: UITextField!
    
    @IBOutlet weak var gasketThiknessTextField: UITextField!
    
    @IBOutlet weak var domeVolumeTextField: UITextField!
    
    @IBOutlet weak var gapTextField: UITextField!
    
    @IBOutlet weak var CRLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.boreTextField.keyboardType = UIKeyboardType.decimalPad
        self.strokeTextField.keyboardType = UIKeyboardType.decimalPad
        self.headVolumeTextField.keyboardType = UIKeyboardType.decimalPad
        self.gasketThiknessTextField.keyboardType = UIKeyboardType.decimalPad
        self.gasketBoreTextField.keyboardType = UIKeyboardType.decimalPad
        self.domeVolumeTextField.keyboardType = UIKeyboardType.decimalPad
        self.gapTextField.keyboardType = UIKeyboardType.decimalPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
  
    
    @IBAction func buttonPressed(_ sender: UIButton) {
      
        var bore = 0.0
        var stroke = 0.0
        var headVolume = 0.0
        var gasketBore = 0.0
        var gasketThikness = 0.0
        var domeVolume = 0.0
        var gap = 0.0
        
        
     
        
        
       
//        func textFieldShouldReturn( gapTextField: UITextField) -> Bool // called when 'return' key pressed. return false to ignore.
//        {
//            boreTextField.resignFirstResponder()
//            return true
//        }
//
    
        
        if  boreTextField != nil { bore = Double (boreTextField.text!)!  }
        if  strokeTextField != nil { stroke = Double (strokeTextField.text!)!  }
        if  headVolumeTextField != nil { headVolume = Double (headVolumeTextField.text!)!  }
        if  gasketBoreTextField != nil {  gasketBore = Double (gasketBoreTextField.text!)!  }
        if  gasketThiknessTextField != nil {  gasketThikness = Double (gasketThiknessTextField.text!)!  }
        if  domeVolumeTextField != nil {  domeVolume = Double (domeVolumeTextField.text!)!  }
        
        if  gapTextField != nil {  gap = Double (gapTextField.text!)!  }
        
        let Cr = CompressionRatioCalculation(bore: bore, stroke: stroke, headVol: headVolume, gasketBore: gasketBore, gasketThikness: gasketThikness, domeVol: domeVolume, gap: gap)
  
        CRLabel.text = Cr
        
    }

}

