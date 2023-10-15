//
//  View_fondo.swift
//  Prueba
//
//  Created by Miranda G on 02/10/23.
//

import SwiftUI

struct View_fondo: View {
    var body: some View {
        ZStack {
            // fondo gris
           Color(red: 0.93, green: 0.93, blue: 0.94).opacity(0.94)
            
                .ignoresSafeArea(.all)
        }
    }
    
}
    
struct View_fondo_Previews: PreviewProvider {
    static var previews: some View {
       Home()
    }
}


