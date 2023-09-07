//
//  Login.swift
//  Food App
//
//  Created by Vineeth P Nayak on 27/08/23.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
       
            ScrollView{
                    BackgroundCustom()
                VStack (spacing: 60){
                    VStack(spacing: 32){
                        TextCustom("Login", 36, "semibold")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack (alignment: .center, spacing: 32){
                            // TextFields
                            TextFieldCustom(textState: $email, labelName: "E-mail", placeHolder: "Enter your Email or Phone")
                            
                            TextFieldCustom(textState: $password, labelName: "Password", placeHolder: "Password", isSecureText: true)
                            
                            TextCustom("Forgot Password?", 14, fontColor: "orange")
                            
                            ButtonCustom(buttonText: "LOGIN")
                            
                            // text with link
                            HStack{
                                TextCustom("Don't have an account?", 14)
                                TextCustom("Sign Up", 14, fontColor: "orange")
                            }
                        }
                    }// LOgin heading till dont have account
                    
                    //MARK : Social Buttons
                    VStack (spacing: 15){
                        SignInWIthDecoration(fontColor: "black")
                        SocialButtons()
                    }
                }
                .padding()
            }.ignoresSafeArea()// Scrollview end
    }
}


#Preview {
    Login()
}
