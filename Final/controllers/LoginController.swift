//
//  LoginController.swift
//  Final
//
//  Created by Исмаил Ибрагим on 2/25/21.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pressLogin(_ sender: Any) {
        if usernameField.text == "Test" && passwordField.text == "Test" {
            let vcProd=storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
           
            navigationController?.pushViewController(vcProd, animated: true)
        }
    }
}
