//
//  Loading.swift
//  Tinder2
//
//  Created by Mac Neia on 08/09/21.
//

import UIKit

class Loading: UIView {
    
    let loadView: UIView = {
        let load = UIView()
        load.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        load.backgroundColor = UIColor(red: 218/255, green: 99/255, blue: 111/255, alpha: 1)
        load.layer.cornerRadius = 50
        load.layer.borderWidth = 1
        load.layer.borderColor = UIColor.red.cgColor
        return load
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       addSubview(loadView)
        loadView.center = center
    
        self.animacao()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (code:) has not benn implemented ")
    }
    
    func animacao () {
        UIView.animate(withDuration: 1.3, animations: {
            
            self.loadView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = 125
            self.loadView.alpha = 0.3
            
        }) { (_) in
            self.loadView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = 50
            self.loadView.alpha = 1
            
        }
    }
}
