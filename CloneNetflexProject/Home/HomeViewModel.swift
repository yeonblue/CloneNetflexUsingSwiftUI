//
//  HomeViewModel.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/09.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // MARK: - Properties
    
    /// String = Category
    @Published var movies: [String: [Movie]] = [:]
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    // Mark: - Lifecycle
    
    init() {
        setupMovie()
    }
    
    // Mark: - Helpers
    
    func setupMovie() {
        movies["Trending Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["New Release"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Action"] = exampleMovies.shuffled()
    }
    
    public func getMovie(forCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
}
