//
//  UiTextFieldExt.swift
//  SunInJang
//
//  Created by 진시윤 on 2021/12/16.
//

import UIKit
import SnapKit

extension UITextField{
    func leftSpacing(space: CGFloat){
        let spaceView = UIView()
        spaceView.snp.makeConstraints {
            $0.width.equalTo(space)
            $0.height.equalTo(50)
        }
        self.leftView = spaceView
    }
    func addShadow() {
        self.frame = CGRect(x: 0, y: 0, width: 255, height: 47)
        self.backgroundColor = .white
        self.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        self.layer.shadowColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 0.25).cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    func label1() {
        
    }
}
