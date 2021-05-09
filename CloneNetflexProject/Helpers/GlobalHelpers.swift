//
//  GlobalHelpers.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/09.
//

import Foundation

// MARK: - Dummy Movie Data
private let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "Movie1",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

private let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Movie2",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

private let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Movie3",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

private let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Movie4",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

private let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Movie5",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

private let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "Movie6",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Exciting", "Suspenseful", "Amazing"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2,
                              exampleMovie3, exampleMovie4,
                              exampleMovie5, exampleMovie6]
