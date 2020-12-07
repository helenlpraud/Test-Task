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
//        getData(from: url)
    }
}

class ResponseUser: Decodable {
    var results: ResultUser? = nil
    var status: String = ""
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

class ResultUser: Decodable {
    let name: String
    let username: String
    let email: String
    let address: Address?
    let geo: Geo?
}
