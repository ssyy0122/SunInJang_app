//
//  LoginViewController.swift
//  SunInJang
//
//  Created by 진시윤 on 2021/12/16.
//

import RxSwift
import SnapKit
import Then
import UIKit
import SwiftUI

class LoginViewController: baseVC {
    // MARK: - Propertise
    private let bound = UIScreen.main.bounds
    
    private let Loginlabel = UILabel().then {
        $0.text = "Login"
        $0.font = UIFont(name: "FredokaOne-Regular", size: 30)
        $0.textColor = UIColor(red: 0.792, green: 0.757, blue: 0.706, alpha: 1)
    }
    
    private let IDTextfield = AuthTextField(subTitle: "ID", placeholder: "아이디를 입력해주세요.")


    private let PwdTextfield = AuthTextField(subTitle: "PW", placeholder: "비밀번호를 입력해주세요")
    
    

    private let  PwdTextlabel = UILabel().then {
        $0.frame =  CGRect(x: 0, y: 0, width: 19, height: 13)
        $0.backgroundColor = .white
        $0.textColor = UIColor(red: 0.792, green: 0.757, blue: 0.706, alpha: 1)
        $0.font = UIFont(name: "FredokaOne-Regular", size: 11)
    }
    
    
    // MARK: - UI
    private func addView(){
        [Loginlabel, IDTextfield, PwdTextfield].forEach{ view.addSubview($0) }
    }
    func setLayout(){
        IDTextfield.snp.makeConstraints {
            $0.height.equalTo(bound.height*0.0583)
            $0.centerY.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(bound.width*0.16)
        }
    }
}
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
