//
//  FarmView.swift
//  StationInfo
//
//  Created by yueh on 2019/7/6.
//  Copyright © 2019 yueh. All rights reserved.
//

import Foundation
import UIKit

class StationInfoView: UIView {
    let stationId: UILabel = UILabel()
    let stationName: UILabel = UILabel()
    let stationAddress: UILabel = UILabel()
    
    init() {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .orange
        setupView()
        styleType()
        layoutConstrain()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.addSubview(stationName)
        self.addSubview(stationAddress)
        self.addSubview(stationId)
        
    }
    
    func styleType() {
        stationId.font = UIFont.systemFont(ofSize: 30)
        stationId.textColor = .white
        stationId.text = "111"
        stationName.font = UIFont.systemFont(ofSize: 80)
        stationName.textColor = .white
        stationName.text = "111"
        stationAddress.font = UIFont.systemFont(ofSize: 18)
        stationAddress.textColor = .white
        stationAddress.text = "111"
    }
    
    func layoutConstrain() {
        stationId.translatesAutoresizingMaskIntoConstraints = false
        stationName.translatesAutoresizingMaskIntoConstraints = false
        stationAddress.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stationId.bottomAnchor.constraint(equalTo: stationName.topAnchor, constant: -35),
            stationId.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stationName.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stationName.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
            stationAddress.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stationAddress.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -200)
            ])
    }
    func updateLabel(_ station: Station) {
        stationId.text = station.stationID
        stationName.text = station.stationName
        stationAddress.text = station.stationAddress
    }
    
}
