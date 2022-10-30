//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image("onboarding")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Be the rider you want")
                    .font(.system(size: 30))
                    .bold()
                    .opacity(0.7)
                    .padding()
            }.scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.size = 1.2
                        self.opacity = 1.0
                    }
                }.onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation {
                            self.isActive = true
                        }                    }
                }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
