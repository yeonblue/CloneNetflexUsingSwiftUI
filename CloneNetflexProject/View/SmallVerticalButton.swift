//
//  SmallVerticalButton.swift
//  CloneNetflexProject
//
//  Created by yeonBlue on 2021/05/11.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    // MARK: - Properties
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    var imageName: String {
        return isOn ? isOnImage : isOffImage
    }
    
    var action: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button(action: action, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallVerticalButton(text: "My List",
                            isOnImage: "checkmark",
                            isOffImage: "plus",
                            isOn: true){
            print("Tapped")
        }
        .preferredColorScheme(.dark)
    }
}
