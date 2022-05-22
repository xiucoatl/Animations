//
//  ViewController.swift
//  Animations
//
//  Created by DISMOV on 20/05/22.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    
    var loader: LoaderView!

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var viewImgs: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex=UISegmentedControl.noSegment
        
        // Do any additional setup after loading the view.
        
        /*let fish = LoaderView()
        fish.frame.size = CGSize(width: 400, height: 400)
        fish.center = self.view.center
        view.addSubview(fish)*/
        view.backgroundColor = .cyan
    }


    @IBAction func cambiaImg(_ sender: UISegmentedControl) {
        let indice = sender.selectedSegmentIndex
        
        if loader != nil{
            loader.removeFromSuperview()
        }
        
        loader = LoaderView()
        
        viewImgs.frame = CGRect(x:0, y: 0, width: 400, height: 400)
        viewImgs.center = self.view.center
        viewImgs.animationSpeed = 0.2
        viewImgs.contentMode = .scaleAspectFill
        view.addSubview(viewImgs)
        loader.commonInit(selecciona: indice)
    }
}

