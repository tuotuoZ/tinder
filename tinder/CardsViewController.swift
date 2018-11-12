//
//  CardsViewController.swift
//  tinder
//
//  Created by Tony Zhang on 11/11/18.
//  Copyright © 2018 Tony. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    
    var cardInitialCenter: CGPoint!
    @IBOutlet weak var userImage: UIImageView!
    var direction: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func rotateImage(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        
        
        
        if sender.state == .began {
           
            cardInitialCenter = userImage.center
            if sender.location(in: view).y > userImage.center.y{
                direction = -1
                print("reverse")
            }
        }
        
        else if sender.state == .changed {
            userImage.center = CGPoint(x: cardInitialCenter.x + translation.x, y: cardInitialCenter.y + translation.y)
            userImage.transform = CGAffineTransform(rotationAngle: CGFloat(direction * translation.x * CGFloat.pi / 700))
            print(direction)
        }
        else if sender.state == .ended {
            direction = 1
            
            if translation.x < -50 || translation.x > 50 {
                UIView.animate(withDuration: 0.15) {
                    self.userImage.alpha = 0
                }
            }
            else{
                UIView.animate(withDuration:0.15, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options:[] ,
                               animations: { () -> Void in
                                self.userImage.center = self.cardInitialCenter
                                self.userImage.transform = CGAffineTransform.identity
                }, completion: nil)

            }
        }
    }
    
 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ProfileViewController
        vc.userImage = userImage.image!
        
     
        
        
    }
    
}
