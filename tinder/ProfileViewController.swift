//
//  ProfileViewController.swift
//  tinder
//
//  Created by Tony Zhang on 11/11/18.
//  Copyright © 2018 Tony. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    var userImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = userImage
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

}
