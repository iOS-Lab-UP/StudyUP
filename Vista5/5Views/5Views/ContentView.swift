import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
           
            VStack {
             
                
                ZStack{    Color(red: 0.93, green: 0.93, blue: 0.94).opacity(0.94)
                    
                        .ignoresSafeArea(.all)
                    Home()
                
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

