//
//  ContentView.swift
//  SplashScreen
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Hey This is the home screen")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
