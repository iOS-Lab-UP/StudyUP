//
//  TaskView.swift
//  StudyUP
//
//  Created by Camila Gómez Salas on 04/10/23.
//

import SwiftUI

struct TaskView: View {
    
    @State var isTaskCompleted: Bool = false
    @State var isTaskActive: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 217/255, green: 217/255, blue: 220/255, opacity: 1.0)
                    .ignoresSafeArea()
                
                VStack {
                    Button(action: {}, label: {
                        Image("Rectangle 30")
                            .padding(.bottom, 29)
                            .overlay(Image("Rectangle 31"))
                    })
                }.padding(.bottom, 710)
                    .padding(.trailing, 330)
                
                VStack {
                    Text("Tareas")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color(red: 0/255, green: 140/255, blue: 169/255, opacity: 1.0))
                    Spacer()
                    
                    VStack {
                        Text("¡Felicidades nombre!")
                            .font(.system(size: 20, weight: .bold))
                            .padding(.bottom, 12)
                            .foregroundColor(.white)
                        Text("Haz completado un streak de 25")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.white)
                        Text("días!")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        Text("25 Day Streak")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                    }.frame(width: 365, height: 165, alignment: .center)
                        .background(Color(red: 0/255, green: 135/255, blue: 162/255, opacity: 1.0))
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 4)
                        .padding(.bottom, 500)
                }
                
                VStack {
                    Text("Tareas de hoy")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.bottom, 160)
                        .padding(.trailing, 250)
                }
                
                VStack {
                    Text("Nombre de la tarea")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top, 2)
                        .padding(.trailing, 118)
                    Text("Materia / Hoy")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color(red: 157/255, green: 157/255, blue: 157/255))
                        .padding(.top, 5)
                        .padding(.trailing, 168)
                }.frame(width: 365, height: 70)
                    .background(.white)
                    .cornerRadius(8)
                    .padding(.leading)
                    .padding(.bottom, 25)
                Button(action: {isTaskCompleted = false}, label: {
                    Image("Rectangle 36")
                }).padding(.trailing, 295)
                    .padding(.bottom, 25)
                
                VStack {
                    Text("Nombre de la tarea")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top, 2)
                        .padding(.trailing, 118)
                    Text("Materia / Hoy")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color(red: 157/255, green: 157/255, blue: 157/255))
                        .padding(.top, 5)
                        .padding(.trailing, 168)
                }.frame(width: 365, height: 70)
                    .background(.white)
                    .cornerRadius(8)
                    .padding(.leading)
                    .padding(.top, 170)
                Button(action: {isTaskCompleted = true}, label: {
                    Image("Rectangle 38")
                        .overlay(Image("Done"))
                }).padding(.trailing, 295)
                    .padding(.top, 170)
                
                VStack {
                    HStack(spacing: 36) {
                        Button(action: {}, label: {
                            Image("Home")
                        })
                        Button(action: {isTaskActive = true}, label: {
                            Image("Blue task")
                        })
                        
                        Button(action: {}, label: {
                            Image("Ellipse 12")
                                .overlay(Image("Rectangle 26"))
                                .overlay(Image("Rectangle 27"))
                        })
                        
                        Button(action: {}, label: {
                            Image("Black clock")
                        })
                        
                        Button(action: {}, label: {
                            Image("Pause")
                        })
                    }
                }.frame(width: 355, height: 60)
                    .background(Color(red: 217/255, green: 217/255, blue: 220/255, opacity: 1.0))
                    .cornerRadius(17)
                    .shadow(color: Color.black.opacity(0.4), radius: 4, x: 0, y: 6)
                    .padding(.top, 670)
            }
        }
    }
}
struct TaskView_Previews: PreviewProvider {
        static var previews: some View {
            TaskView()
    }
}
