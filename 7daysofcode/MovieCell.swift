//
//  MovieCell.swift
//  7daysofcode
//
//  Created by Edson Neto on 20/11/22.
//

import SwiftUI

struct MovieCell: View {
    let image: String
    let name: String
    let releaseDate: String
    
    init(image: String, name: String, releaseDate: String) {
        self.image = image
        self.name = name
        self.releaseDate = releaseDate
    }
    
    var body: some View {
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: self.image)) { image in
                image
                    .resizable()
                    .frame(width: 90, height: 120, alignment: .center)
                    .cornerRadius(20)
            } placeholder: {
                //put your placeholder here
            }
            VStack(alignment: .leading) {
                Text(self.name)
                    .font( .system(
                    size: 20,
                    weight: .bold ))
                    .padding(.bottom, 4)
                    .foregroundColor(.white)
                    
                Text("Lançamento: \(self.releaseDate)")
                    .foregroundColor(.white.opacity(0.5))
                    .font( .system(
                    size: 14,
                    weight: .regular ))
            }.padding(.leading, 16)
        }
    }
    
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(image: "", name: "Scarface", releaseDate: "17/04/1982")
    }
}
