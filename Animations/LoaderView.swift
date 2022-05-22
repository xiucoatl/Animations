//
//  LoaderView.swift
//  Animations
//
//  Created by DISMOV on 20/05/22.
//

import Foundation
import UIKit
import Lottie

public class LoaderView: UIView {
    
    private var imgs: [String] = ["fish","105722-cloud-angry","104753-friendly-owl","106405-energy-rocket"]
    private var animacion: AnimationView?
    
    public override init(frame: CGRect){
    super.init(frame: frame)
    //commonInit()
}


required init?(coder: NSCoder){
    fatalError("Fallo")
    //commonInit()
}

    public func commonInit(selecciona: Int){
    
    
        animacion = AnimationView(name: imgs[selecciona])
        animacion?.frame = CGRect(x:0, y: 0, width: 400, height: 400)
        animacion?.center = self.center
        animacion?.animationSpeed = 0.2
        animacion?.contentMode = .scaleAspectFill
    self.addSubview(animacion!)
        animacion?.play()
        /*animacion?.translatesAutoresizingMaskIntoConstraints = false
        animacion?.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animacion?.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animacion?.widthAnchor.constraint(equalToConstant: 280).isActive = true
        animacion?.heightAnchor.constraint(equalToConstant: 108).isActive = true*/
        
}
    
}
