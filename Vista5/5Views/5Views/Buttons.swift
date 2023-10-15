import SwiftUI

struct Buttons: View {
    @State private var displayText: String?
    @State private var displayImage: Image?
// boton seleccionado
    @State private var selectedButton: Int?

    var body: some View {
        ZStack {
            Color(red: 0.93, green: 0.93, blue: 0.94).opacity(0.94)
                .ignoresSafeArea(.all)
            VStack {
                Spacer().frame(height: 30) // Espacio en la parte de arriba
                
                Text("Breathing Techniques")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0, green: 0.59, blue: 0.7))

                HStack(spacing: 10) {
                   
                    Button(action: {
                        self.displayText = "Erizo"
                        self.displayImage = Image("erizo")
                        self.selectedButton = 0
                    })
                    {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width:100)
                            .frame(height: 35)
                            .foregroundColor(selectedButton == 0 ? Color(red: 0, green: 0.59, blue: 0.7) : Color(red: 0.87, green: 0.87, blue: 0.88))
                            .overlay(
                                Text("Deep Breathing")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            )
                    }
                    
                    Spacer().frame(width:5)
                    
                    Button(action: {
                        self.displayText = "gato"
                        self.displayImage = Image("gato")
                        self.selectedButton = 1
                    }) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width:100)
                            .frame(height: 35)
                            .foregroundColor(selectedButton == 1 ? Color(red: 0, green: 0.59, blue: 0.7) : Color(red: 0.87, green: 0.87, blue: 0.88))
                            .overlay(
                                Text("4 - 7 - 8")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            )
                    }
                    Spacer().frame(width:5)
                    
                    Button(action: {
                        self.displayText = "Perro"
                        self.displayImage = Image("perro")
                        self.selectedButton = 2
                    }) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width:100)
                            .frame(height: 35)
                            .foregroundColor(selectedButton == 2 ? Color(red: 0, green: 0.59, blue: 0.7) : Color(red: 0.87, green: 0.87, blue: 0.88))
                            .overlay(
                                Text("Long Break")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            )
                    }
                }

                if let text = displayText {
                    Text(text)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }

                if let image = displayImage {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
                
                Spacer()
            }
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

struct ClasesView: View {
    var body: some View {
        
        ZStack {
            
            Text("contenido de Clases")
                .foregroundColor(.black)
            
        }
    }
}


