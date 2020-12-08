//
//  Getter.swift
//  Test for Gora
//
//  Created by Елена on 07.12.2020.
//

import Foundation

class Getter {
    
    let decoder = JSONDecoder()
    
    var users: [User]? = nil
    
    func getData(from url: String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print()
                return
            }
            
            var result: Response?
            do {
                result = try self.decoder.decode(Response.self, from: data)
            }
            catch {
                print("failed \(error.localizedDescription)")
            }
            guard let json = result else {
                return
            }
            
            print(json.users)
            self.users = json.users
        })
        
        task.resume()
    }
}

