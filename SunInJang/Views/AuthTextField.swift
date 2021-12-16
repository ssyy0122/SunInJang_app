//
//  AuthTextField.swift
//  SunInJang
//
//  Created by 진시윤 on 2021/12/16.
//

import UIKit
import SnapKit

final class AuthTextField: UITextField{
    // MARK: - Properties
    private let subTitleLabel = UILabel()
    
    
    // MARK: - Init
    init(subTitle: String, placeholder: String){
        super.init(frame: .zero)
        subTitleLabel.text = subTitle
        self.placeholder = placeholder
        addView()
        setLayout()
        configureTF()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func addView(){
        addSubview(subTitleLabel)
    }
    
    /*
     스냅킷 -
     left = leading
     right = trailing
     
     */
    private func setLayout(){
        subTitleLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(22)
        }
    }
    private func configureTF(){
        self.addShadow()
        self.leftSpacing(space: 70)
        
    }
}
