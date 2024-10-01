//
//  ContentView.swift
//  Counter
//
//  Created by Aymane Maizi on 29/9/2024.
//

import SwiftUI



struct ContentView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack () {
            Spacer().frame(height: 50)
            Text(String(counter))
                .font(.custom("Fredoka-Regular", size: 200))
            Spacer().frame(height: 30)
            HStack(spacing: 20){
                Button {
                    decreaseCounter()
                } label: {
                    Btn(buttonColor: .red, buttonImage: "MinusImg")
                }
                Button {
                    increaseCounter()
                } label: {
                    Btn(buttonColor: .green, buttonImage: "PlusImg")
                }
            }
            Spacer().frame(height: 80)
            ZStack(){
                Rectangle()
                    .foregroundStyle(Color(.blue))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .ignoresSafeArea()
                Button {
                    resetCounter()
                } label: {
                    ZStack(){
                        Rectangle()
                            .frame(width: 150, height: 80)
                            .foregroundStyle(Color(.white))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        Text("RESET")
                            .font(.custom("Fredoka-Regular", size: 40))
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func increaseCounter(){
        counter += 1
    }
    
    func decreaseCounter(){
        if counter > 0 {
            counter -= 1
        }
    }
    
    func resetCounter(){
        counter = 0
    }
}

#Preview {
    ContentView()
}
