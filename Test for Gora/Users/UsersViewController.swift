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
        let getter = Getter()
        getter.getData(from: url)
        let title = getter.users?[0].name
        print(title ?? "empy")
    }
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

struct Company: Decodable {
    let name: String
    let catchPhrase: String
    let bs: String
}

class Response: Decodable {
    let users: [User]
}

class User: Decodable {
    let name: String
    let username: String
    let email: String
    let address: Address?
    let geo: Geo?
    let phone: String
    let website: String
    let company: Company?
}
