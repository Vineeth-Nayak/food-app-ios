//
//  BackgroundCustom.swift
//  Food App
//
//  Created by Vineeth P Nayak on 07/09/23.
//

import SwiftUI

struct BackgroundCustom: View {
    var body: some View {
            ZStack(alignment: .top){
                VStack{
                    Image("Ellipse 126")
                        .frame( height: 60)
                        .aspectRatio(contentMode: .fit)
                        .offset(x:-172, y: 22)
                    
                    Image("Ellipse 127")
                        .frame( height: 65)
                        .aspectRatio(contentMode: .fit)
                        .offset(x:-130, y: -69)
                    
                    Spacer()
                }.ignoresSafeArea(.all)
                
                
                Image("Ellipse 128")
                    .frame(height: 2)
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 158, y: 36)
                
            }.ignoresSafeArea(.all) // ZStack end
    }
}

#Preview {
    BackgroundCustom()
}
