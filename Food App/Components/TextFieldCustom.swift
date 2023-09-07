//
//  TextFieldCustom.swift
//  Food App
//
//  Created by Vineeth P Nayak on 28/08/23.
//

import SwiftUI

struct TextFieldCustom: View {
    
    @Binding var textState: String
    @FocusState private var isEditing
    var labelName: String = "Label", placeHolder: String = "Placeholder..", isSecureText = false
    @State var showText = false
    
    func getShadow(_ isEditing:Bool) -> CustomObj{
        if(isEditing == false){
            return CustomObj( color: Color(red: 0.91, green: 0.91, blue: 0.91).opacity(0.45), radius: 22.5, x: 15, y: 20)
        }
        return CustomObj(color: Color(red: 0.83, green: 0.82, blue: 0.85).opacity(0.45), radius: 15, x: 15, y: 15)
    }
    
    struct CustomObj {
        var color: Color
        var radius: CGFloat
        var x: CGFloat
        var y: CGFloat
    }
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12){
            TextCustom(labelName, 16, fontColor: "label")
            VStack {
                if(isSecureText == false){
                    TextField(placeHolder, text: $textState)
                        .focused($isEditing)
                        .textFieldStyle(BorderedStyle(focused: isEditing))
                }else{
                    ZStack (alignment: .trailing){
                        if(showText == false){
                            SecureField(placeHolder, text: $textState)
                                .focused($isEditing)
                                .textFieldStyle(BorderedStyle(focused: isEditing))
                        }else{
                            TextField(placeHolder, text: $textState)
                                .focused($isEditing)
                                .textFieldStyle(BorderedStyle(focused: isEditing))
                        }
                        Button(action: {showText.toggle()}){
                            Image(systemName: self.showText ? "eye.slash" : "eye")
                                .tint(.gray)
                                .padding(.trailing, 20)
                        }
                    }
                }
            }
            .background()
            .shadow(color: getShadow(isEditing).color, radius: getShadow(isEditing).radius, x: getShadow(isEditing).x, y: getShadow(isEditing).y)
        }
    }
}

struct BorderedStyle: TextFieldStyle {
    var focused: Bool
    
    // If focused show orange else show normal
    func _body(configuration: TextField<Self._Label>)-> some View{
        configuration
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(focused ?
                            Color(red: 1, green: 0.45, blue: 0.3):
                                Color(red: 0.83, green: 0.83, blue: 0.83), lineWidth:1)
            )
    }
}

//#Preview {
//    @State var textState = ""
//    TextFieldCustom(textState: $textState)
//}
