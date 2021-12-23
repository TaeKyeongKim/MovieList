//
//  Moive.swift
//  MovieList
//
//  Created by Kim Tae Kyeong  on 2021/12/22.
//

import Foundation
class Movie :Identifiable , Decodable {
    var id:UUID?
    var title:String
    var year:Int
    var rate:String
    var image:String
    var innerImage:String
    var storyLine:String
    var leadRole:[String]
}
