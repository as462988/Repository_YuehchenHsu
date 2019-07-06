//
//  APICaller.swift
//  StationInfo
//
//  Created by yueh on 2019/7/6.
//  Copyright © 2019 yueh. All rights reserved.
//

import Foundation

struct Station: Codable {
    
    let stationID: String
    let stationName: String
    let stationAddress: String
}

class ApiCaller {
    
    static let shared = ApiCaller()
    
    func getStationInfo(completionHandler: @escaping (_ station: Station) -> Void) {
        let urlStr = "https://stations-98a59.firebaseio.com/practice.json"
        if let url = URL(string: urlStr) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data else {return}
////                print("Data: \(data)")
                let decoder  = JSONDecoder()
                do{

                let station = try decoder.decode(Station.self, from: data)
                    completionHandler(station)

                } catch {
                    print(error)
                }
            }.resume()
            
        }
    }
}
