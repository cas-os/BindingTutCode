//
//  ContentView.swift
//  BindingTutCode
//
//  Created by HAL-9001 on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {

        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(.blue)
                .cornerRadius(10)
        })
    }
}
