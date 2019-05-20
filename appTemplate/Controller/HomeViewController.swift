//
//  HomeViewController.swift
//  appTemplate
//
//  Created by Victor Hernandez-Urbina on 20/05/2019.
//  Copyright © 2019 Victor Hernandez-Urbina. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var user = UserModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("email: \(user.email)")
        print("password: \(user.password)")
        print("name: \(user.name)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goToSubsectionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSubSectionB", sender: self)
    }
}
