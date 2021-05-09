//
//  StandardHomeMovie.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/09.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    
    var movie: Movie
    var body: some View {
        VStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovies[0])
    }
}
