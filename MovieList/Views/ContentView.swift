//
//  ContentView.swift
//  MovieList
//
//  Created by Kim Tae Kyeong  on 2021/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var movieList = MovieModel()
    
    var body: some View {
        
        
        NavigationView{
                ScrollView{
                    VStack(){
                            ForEach(movieList.movies){
                                item in
                                
                                NavigationLink(destination: MovieInfoView(movie: item), label: {
                                    
                                    Image(item.image).resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 500, alignment: .center)
                                        .clipped()
                                        .cornerRadius(20)
                                })
                                
                            }.navigationBarTitle("Favorite Movie")
                            
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
