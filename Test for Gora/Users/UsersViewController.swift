//
//  UsersViewController.swift
//  Test for Gora
//
//  Created by Елена on 04.12.2020.
//

import UIKit

class UsersViewController: UIViewController {

    @IBOutlet weak var User: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://jsonplaceholder.typicode.com/users"
        getData(from: url)
    }
    
    private func getData(from url: String) {
       let task =  URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
            print ("error")
            return
        }

        var result: ResponseUsers?
            do {
                result = try JSONDecoder().decode(ResponseUsers.self, from: data)
            }
            catch {
                print("failed converted \(error)")
            }
            
        guard result != nil else {
                return
            }
        
        })
        
       task.resume()
    }
}

struct ResponseUsers: Decodable {
    var results: ResultUsers?
    var status: String
}

struct Geo: Decodable {
    let lat: Double
    let lng: Double
}

struct Address: Decodable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
}

struct ResultUsers: Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Address?
    var geo: Geo?
}
