//
//  LoginViewController.swift
//  appTemplate
//
//  Created by Victor Hernandez-Urbina on 20/05/2019.
//  Copyright © 2019 Victor Hernandez-Urbina. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var user = UserModel()
    
    @IBOutlet weak var emailTextField: UITextField!    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToHome" {
            let tabController: UITabBarController = segue.destination as! UITabBarController
            // index 0 in tabbarctrl points to first tab, and index 0 in nacctrl points to homeview. if we change order we are screwd!
            let homeVC = (tabController.viewControllers![0] as! UINavigationController).viewControllers[0] as! HomeViewController
            homeVC.user = self.user
        }
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        // some validation should occur here!
        guard let email = emailTextField.text, !email.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        
        user.email = email
        user.name = "default name"
        user.password = password
        
        performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSignup", sender: self)
    }
    
}
