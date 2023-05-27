//
//  practice.swift
//  mae1u_COOV
//
//  Created by seunghoria on 2023/05/14.
//

import SwiftUI

struct practice: View {
    var body: some View {
        
        VStack{
            TabView {
                FirstView()
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("나의 증명서")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("상대방 인증하기")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("더보기")
                    }
            }
            .border(.green)
        }.ignoresSafeArea(.all)
            
    }
}

struct practice_Previews: PreviewProvider {
    static var previews: some View {
        practice()
    }
}
