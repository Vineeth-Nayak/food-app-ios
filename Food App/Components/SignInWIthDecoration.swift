//
//  SignInWIthDecoration.swift
//  Food App
//
//  Created by Vineeth P Nayak on 27/08/23.
//

import SwiftUI

struct SignInWIthDecoration: View {
    var fontColor: String = "white"
    var body: some View {
        HStack (spacing: 30) {
            Rectangle()
                .foregroundColor(fontColor == "white" ? .white : .black)
                .frame(width: 84, height: 1)
            
            TextCustom("Sign in with", 14,fontColor: fontColor)
            
            Rectangle()
                .foregroundColor(fontColor == "white" ? .white : .black)
                .frame(width: 84, height: 1)
        }
    }
}

#Preview {
    SignInWIthDecoration()
}
