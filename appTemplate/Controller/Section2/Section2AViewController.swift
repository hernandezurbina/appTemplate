//
//  Section2AViewController.swift
//  appTemplate
//
//  Created by Victor Hernandez-Urbina on 20/05/2019.
//  Copyright © 2019 Victor Hernandez-Urbina. All rights reserved.
//

import UIKit

class Section2AViewController: UIViewController {
    
    var user = UserModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Welcome to Section2")
        print("email: \(user.email)")
        print("password: \(user.password)")
        print("name: \(user.name)")
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

    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToWelcome", sender: self)
    }
}
