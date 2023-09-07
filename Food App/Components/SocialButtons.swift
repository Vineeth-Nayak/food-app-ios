//
//  Social Buttons.swift
//  Food App
//
//  Created by Vineeth P Nayak on 27/08/23.
//

import SwiftUI

struct SocialButtons: View {
    var body: some View {
        HStack (spacing: 20){
            Button{}label:{
                Label("FACEBOOK",image: "FacebookLogo")
                    .font(.custom("Poppins", size: 13))
                    .frame(width: 150, height: 60)
                    .background()
                    .clipShape(Capsule())
                    .foregroundStyle(.black)
                    .kerning(1)
                    .shadow(color: Color(red: 0.83, green: 0.82, blue: 0.85).opacity(0.45), radius: 15, x: 15, y: 15)

            }
            Button{}label:{
                Label("GOOGLE",image: "GoogleLogo")
                    .font(.custom("Poppins", size: 13))
                    .frame(width: 150, height: 60)
                    .background()
                    .clipShape(Capsule())
                    .foregroundStyle(.black)
                    .kerning(1)
                    .shadow(color: Color(red: 0.83, green: 0.82, blue: 0.85).opacity(0.45), radius: 15, x: 15, y: 15)
            }
        }
    }
}

#Preview {
    SocialButtons()
}
