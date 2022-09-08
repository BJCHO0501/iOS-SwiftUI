//
//  ContentView.swift
//  SwiftUI-Layout
//
//  Created by 조병진 on 2022/09/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
