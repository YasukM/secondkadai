//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Yasuko Matsubara on 2017/11/29.
//  Copyright © 2017年 yasuko.matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tf.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerに値を代入して渡す
        resultViewController.name = tf.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

