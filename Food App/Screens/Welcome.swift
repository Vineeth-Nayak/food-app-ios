//
//  Welcome.swift
//  Food App
//
//  Created by Vineeth P Nayak on 27/08/23.
//

import SwiftUI

struct Welcome: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack (path: $path){
            GeometryReader  { geo in
                ZStack {
                    Image("Food_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea(.all)
                        .frame(width:geo.size.width,height: geo.size.height)
                        .opacity(0.8)
                    
                    LinearGradientOnBoarding(geo)
                    
                    
                    VStack (spacing: 200) {
                        VStack (alignment:.leading) {
                            TextCustom("Welcome to", 53, "semibold")
                            TextCustom("FoodHub", 53, "semibold",fontColor: "orange")
                            TextCustom("Your favourite foods delivered fast at doorstep", 18, fontColor:"grey")
                        }
                        .frame(alignment: .leading)
                        
                        VStack (spacing: 30){
                            SignInWIthDecoration()
                            
                            // Social buttons
                            SocialButtons()
                            Button(action:{
                                path.append("LoginView")
                            }){
                                TextCustom("Start with email or phone",18,fontColor: "white")
                                    .padding(.vertical, 14)
                                    .padding(.horizontal, 25)
                                    .background(.white.opacity(0.2))
                                    .clipShape(Capsule())
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .inset(by: 0.5)
                                            .stroke(.white,lineWidth:1)
                                    )
                            }
                            
                            HStack{
                                TextCustom("Already have an account?", 16, fontColor: "white")
                                TextCustom("Sign In", 16, fontColor: "white")
                                    .underline()
                            }
                        }
                    }
                }
                .background(.white)
            } // GeometryReader ENd
            
            .navigationDestination(for: String.self) { view in
                if(view == "LoginView"){
                    Login()
                }
            }
        }
    }
}

#Preview {
    Welcome()
}
