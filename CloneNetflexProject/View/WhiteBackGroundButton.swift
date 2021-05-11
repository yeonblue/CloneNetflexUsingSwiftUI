//
//  WhiteBackGroundButton.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/11.
//

import SwiftUI

struct WhiteBackGroundButton: View {
    
    // MARK: - Properties
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    
    // MARK: - Body
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()

            }
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(5.0)
        })
    }
}

struct WhiteBackGroundButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteBackGroundButton(text: "Play",
                              imageName: "play.fill") {
            // action
        }
        .preferredColorScheme(.dark)
    }
}
