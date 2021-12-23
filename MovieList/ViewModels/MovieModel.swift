//
//  MoiveModel.swift
//  MovieList
//
//  Created by Kim Tae Kyeong  on 2021/12/22.
//

import Foundation
class MovieModel : ObservableObject{
    @Published var movies = [Movie]()
    
    init(){
        //Git hub pull test
        self.movies = DataService.getLocalData()
        
    }
    
    
    
}
