//
//  ContentView.swift
//  7daysofcode
//
//  Created by Edson Neto on 18/11/22.
//

import SwiftUI

struct ContentView: View {
    
    struct Movie: Identifiable {
        let id: Int
        let title: String
        let releaseDate: String
        let image: String?
        let overview: String
        let voteAverage: Double
    }
    
    let movies: [Movie] = [
        Movie(id: 1, title: "Órfã 2: A Origem", releaseDate: "2022-07-27", image: nil, overview: "", voteAverage: 7.2),
        Movie(id: 2, title: "Minions 2: A Origem de Gru", releaseDate: "2022-06-29", image: nil, overview: "", voteAverage: 7.8),
        Movie(id: 3, title: "Thor: Amor e Trovão", releaseDate: "2022-07-06", image: nil, overview: "", voteAverage: 6.8),
        Movie(id: 4, title: "Avatar", releaseDate: "2009-12-18", image: nil, overview: "", voteAverage: 8.8),
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.lightDeepPurple, .darkDeepPurple],
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            VStack {
                Text("Filmes Populares")
                    .font(
                        .system(
                    size: 28,
                    weight: .bold
                        ))
                    .foregroundColor(.white)
                List {
                    ForEach(movies) {movie in
//                        Text(movie.title).background(Color.clear)
//                            .listRowBackground(Color.clear)
                        MovieCell(image: "https://cdn.shopify.com/s/files/1/1057/4964/products/Scarface-Vintage-Movie-Poster-Original-1-Sheet-27x41.jpg?v=1663223050", name: "Scarface", releaseDate: "17/05/1984")                    }.listRowBackground(Color.clear)
                }.scrollContentBackground(.hidden)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
