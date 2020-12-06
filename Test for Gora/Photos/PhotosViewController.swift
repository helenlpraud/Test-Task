//
//  PhotosViewController.swift
//  Test for Gora
//
//  Created by Елена on 04.12.2020.
//

import UIKit

class PhotosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

let urlAlbums = "https://jsonplaceholder.typicode.com/albums"

let urlPhotos = "https://jsonplaceholder.typicode.com/photos"

struct ResponseAlbums {
    let Result: ResultAlbums
    let status: String
}

struct ResultAlbums {
    let userId: Int
    let id: Int
    let title: String
}

struct ResponsePhotos {
    let Result: ResultPhotos
    let status: String
}

struct ResultPhotos {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}

