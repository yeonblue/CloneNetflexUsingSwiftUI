//
//  TopMoviePreview.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/09.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
        
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                            .bold()
                        
                        if !isCategoryLast(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }.padding(.bottom, 10)
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        isOn: true) {
                        // action
                    }
                    Spacer()
                    WhiteBackGroundButton(text: "Play",
                                          imageName: "play.fill") {
                        // action
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        isOn: true) {
                        // action
                    }
                    Spacer()
                }

            }
            .foregroundColor(.white)
        }
    }
    
    // Mark: - Helper
    func isCategoryLast(_ category: String) -> Bool {
        let categoryCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != categoryCount {
                return false
            }
        }
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovies[0])
    }
}
