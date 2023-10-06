//
//  HomePage.swift
//  StudyUP
//
//  Created by Camila Gómez Salas on 17/09/23.
//

import SwiftUI

struct SignInPage: View {
    
    var body: some View {
        
        ZStack {
            Color(red: 217/255, green: 217/255, blue: 220/255, opacity: 1.0).ignoresSafeArea()
            HStack {
                Image("Star 1")
                    .frame(width: 285, height: 432, alignment: .center)
                Spacer()
            }.padding(.bottom, 445)

            Image("logo")
                .frame(width: 265, height: 227, alignment: .center)
                .padding(.bottom, 520)
            
            HStack {
                Image("Rectangle 7")
                    .frame(width: 350, height: 600, alignment: .center)
                Spacer()
            }.padding(.top, 240)
            
            HStack {
                Spacer()
                Image("Rectangle 8")
                    .frame(width: 368, height: 565, alignment: .center)
            }.padding(.top, 272)
            
            VStack {
                Button(action: {}, label: {
                    Image("image 1")
                    Spacer().frame(width: 40, alignment: .center)
                    Text("Continue with Google")
                        .font(.custom("Didot", size: 16))
                    Spacer().frame(width: 25)
                }).frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 2, leading: 15, bottom: 2, trailing: 15))
                    .overlay(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.black, lineWidth: 1.5))
            }.padding(.top, 600)
        }
    }
}
    
    
struct SignInPage_Previews: PreviewProvider {
        static var previews: some View {
            SignInPage()
    }
}
