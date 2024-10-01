//
//  Button.swift
//  Counter
//
//  Created by Aymane Maizi on 29/9/2024.
//

import SwiftUI

struct Btn: View {
    var buttonColor: Color
    var buttonImage: String
    
    var body: some View {
        ZStack(){
            Circle()
                .fill(buttonColor)
                .frame(width: 150, height: 150)
            Image(buttonImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    Btn(buttonColor: .red, buttonImage: "PlusImg")
}
