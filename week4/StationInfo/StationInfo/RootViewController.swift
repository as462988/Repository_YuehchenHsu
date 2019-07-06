//
//  ViewController.swift
//  StationInfo
//
//  Created by yueh on 2019/7/6.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let stationInfoView: StationInfoView = StationInfoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stationInfoView)
        stationInfoView.frame = view.frame
        // Do any additional setup after loading the view, typically from a nib.
        ApiCaller.shared.getStationInfo { (station) in
            DispatchQueue.main.async {
                self.stationInfoView.updateLabel(station)
            }
        }
            
    }
        
}



