import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            NavigationView {
                ScrollView(.vertical) {
                    VStack{
                       
                        HStack {
                            Text("StudyUP")
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(Color.pink)
                        }
                        
                        
                    }
                    Spacer()
                    
                        .frame(height: 80)
                    VStack {
                       
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 156)
                                .foregroundColor(Color("Color3"))
                                .overlay(
                                    VStack {
                                        Spacer()
                                        
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        Text("Mi perfil")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                )
                            
                            Spacer().frame(width: 20)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 156)
                                .foregroundColor(Color("Color2"))//color recuadro
                                .overlay(
                                    VStack {
                                        Spacer()
                                        
                                        
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        
                                        Text("Clases")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                    }
                                )
                        }
                    }
                    
                    
                    
                    
                    VStack {
                        Spacer()
                            .frame(width:30,height: 30)
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 156)
                                .foregroundColor(Color("Color4"))
                                .overlay(
                                    VStack {
                                        
                                        Spacer()
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        Text("Calificaciones")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                )
                            
                            Spacer().frame(width: 20)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 153)
                                .foregroundColor(Color("Color1"))
                                .overlay(
                                    VStack {
                                        Spacer()
                                        
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        Text("Examenes")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                )
                        }
                    }
                    
                    VStack {
                        Spacer()
                            .frame(width:30,height: 30)
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 156)
                                .foregroundColor(Color("Color5"))
                                .overlay(
                                    VStack {
                                        Spacer()
                                        
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        Text("Eventos")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                )
                            
                            Spacer().frame(width: 20)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 163, height: 156)
                                .foregroundColor(.accentColor)
                                .overlay(
                                    VStack {
                                        Spacer()
                                        
                                        Circle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(Color("Color6"))
                                        Text("Notion")
                                            .font(.body)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                )
                        }
                    }
                    
                    
                    
                    // el  menu
                    
                    VStack {
                        Spacer()
                            .frame(width:30,height: 30)
                        
                        ZStack{
                            Rectangle() // menu
                            .foregroundColor(.clear)
                            .frame(width: 351, height: 60)
                            .background(Color(red: 0.87, green: 0.87, blue: 0.88))
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.25), radius: 2.5, x: 0, y: 6)
                            // fin menu
                            
                            HStack{
                                // rectangulo uno
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 26, height: 26)
                                    .background(
                                        Image("casa")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 26, height: 26)
                                            .clipped()
                                    )
                                //fin rectangulo 1
                                // segundo
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 26, height: 26)
                                    .background(
                                        Image("lista")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 26, height: 26)
                                            .clipped()
                                    )
                                    .padding(.leading)
                                // fin segundo
                                
                                // tercero
                                Rectangle()
                                    .foregroundColor(.pink)
                                    .frame(width: 26, height: 26)
                                    .background(
                                        Image("PATH_TO_IMAGE")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 26, height: 26)
                                            .clipped()
                                    )
                                
                                    .padding(.leading)
                                // fin del tercero
                                
                                // caurato
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 26, height: 26)
                                    .background(
                                        Image("Reloj")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 26, height: 26)
                                            .clipped()
                                    )
                                    .padding(.leading, 20)
                                
                                
                                // fin del cuarto
                                
                                // quinto
                            
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 26, height: 26)
                                    .background(
                                        Image("play")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 26, height: 26)
                                            .clipped()
                                    )
                                    .padding(.leading)
                                
                                //fin del quinto
                            }
                            
                        }
                        
                        
                    }
                }
                
            }
            
        }
    
    }
    


    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

