//
//  MovieInfoView.swift
//  MovieList
//
//  Created by Kim Tae Kyeong  on 2021/12/23.
//

import SwiftUI

struct MovieInfoView: View {
    var movie:Movie
    var body: some View {
        ScrollView {
            VStack(){
               
                
                HStack{
                    Text("Rate : ")
                    Text(movie.rate)
                }
                
                Image(movie.innerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 300, alignment: .center)
                    .clipped()
                    .cornerRadius(20)
                
                HStack{
                    Text("Main Acting: ")
                        .font(.headline)
                    ForEach(movie.leadRole, id:\.self){ char in
                        Text(char)
                    }
                    .padding()
                }
                .padding(.all)
                
                
                Text("- Story Line -")
                    .font(.headline)
                    .padding(.top)
                Text(movie.storyLine)
                    .padding(.horizontal)
                
            }
        }.navigationBarTitle(movie.title)
    }
}
struct MovieInfoView_Previews: PreviewProvider {
    static var previews: some View {
        let movieList = MovieModel()
        
        MovieInfoView(movie: movieList.movies[0])
        
    }
}
