//
//  TextCustom.swift
//  Food App
//
//  Created by Vineeth P Nayak on 26/08/23.
//

import SwiftUI

struct TextCustom: View {
    let text:String
    let fontSizes:CGFloat
    let fontWeights:String, fontColor: String
    init(_ text: String,_ fontSizes:CGFloat = 20,
         _ fontWeights:String? = "regular", fontColor:String = "black") {
        self.text = text
        self.fontSizes = fontSizes
        self.fontWeights = fontWeights!
        self.fontColor = fontColor
    }
    
    func getWeightFont(weight:String)->Font.Weight{
        if(weight == "thin"){
            return .thin
        }else if(weight == "semibold"){
            return .semibold
        }
        return .regular
    }
    
    func getFontColor(color:String)->Color{
        if(color == "light"){
            return Color(red: 0.19, green: 0.22, blue: 0.31)
        }else if(color == "orange"){
            return Color(red: 1, green: 0.45, blue: 0.3)
        }else if(color == "white"){
            return Color(.white)
        }else if(color == "label"){
            return Color(red: 0.59, green: 0.59, blue: 0.63)
        }
        return .black
    }
    
    var body: some View {
        Text(text)
            .font(.custom("Poppins", size: fontSizes))
            .fontWeight(getWeightFont(weight: fontWeights))
            .foregroundColor(getFontColor(color: fontColor))
            .frame(alignment:.leading)
    }
}

#Preview {
    TextCustom("text")
}
