//
//  CalendarView.swift
//  Sport
//
//  Created by User on 21.10.2022.
//

import UIKit

class CalendarView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 0.2421774566, green: 0.6150763035, blue: 0.5633368492, alpha: 1)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false 
    }
}

extension CalendarView {
    
    private func setConstraints() {
        
    }
}
