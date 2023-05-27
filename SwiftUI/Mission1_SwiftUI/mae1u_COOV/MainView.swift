//
//  ContentView.swift
//  Mae1U_COOV
//
//  Created by seunghoria on 2023/05/14.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        VStack{
            TabView {
                FirstView()
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("나의 증명서")
                    }
                Text("상대방 인증뷰")
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("상대방 인증하기")
                    }
                
                Text("더보기")
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("더보기")
                    }
            }
            .border(.green)
        }.ignoresSafeArea(.all)
      
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
