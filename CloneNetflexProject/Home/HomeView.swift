//
//  HomeView.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/09.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeViewModel()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack(){
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main
            ScrollView(showsIndicators: false) {
                LazyVStack { // 필요할 때만 리로드
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovies[0])
                        .frame(width: screen.width)
                        .padding(.top, -130)
                        .zIndex(-1)
                    // LazyVStack은 padding(-130)으로 가리는지 알 수 없음.
                    // parent는 Button이 TopMoviePreview 위에 있다는 것만 알음.
                    // 속성은 parent가 아닌 childrun으로만 전달.
                    // zindex 변경을 통해 상단 버튼이 가리지 않게 할 수 있음.

                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(vm.getMovie(forCategory: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            } // end of main
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("My List")
            })
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 20)
        .padding(.trailing, 50)
    }
}
