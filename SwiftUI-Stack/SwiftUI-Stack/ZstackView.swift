//
//  Zstack.swift
//  SwiftUI-Stack
//
//  Created by 조병진 on 2022/09/06.
//

import SwiftUI

struct Zstack: View {
    var body: some View {
        ZStack {
            Rectangle() //사각형
                .foregroundColor(.blue)
                .frame(width: 300, height: 300)
//                .zIndex(1) //쌓이는 순서
                
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
        }
    }
}

struct Zstack_Previews: PreviewProvider {
    static var previews: some View {
        Zstack()
    }
}
