//
//  ButtonCustom.swift
//  Food App
//
//  Created by Vineeth P Nayak on 29/08/23.
//

import SwiftUI

struct ButtonCustom: View {
    var buttonText:String
    var body: some View {
        Button(action:{}){
            TextCustom(buttonText, 15, fontColor: "white" )
                .kerning(1.2)
                .frame(width: 250,height: 60)
                .background( Color(red: 1, green: 0.45, blue: 0.3) )
                .clipShape(Capsule())
                .shadow(color: Color(red: 0.48, green: 0.51, blue: 0.72).opacity(0.16), radius: 22, x: 0, y: 10)

        }
    }
}

#Preview {
    ButtonCustom(buttonText: "LOGIN")
}
