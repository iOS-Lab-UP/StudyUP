import SwiftUI

struct Home: View {
    
    // ver propiedades
    @State private var activeTab: Tab = .home
    // smooth shape sliding efect
    // matched geometry Efect
    @Namespace private var animation
    
    var body: some View {
        
        
        ZStack {
         
            
              
            VStack(spacing:0){
                
              
                TabView(selection: $activeTab) {
                    // Pestaña Home
                    View_fondo()
                        .tag(Tab.home)
                        .toolbar(.hidden, for: .tabBar)
                    
                    // Pestaña Task
                    View_fondo()
                        .tag(Tab.task)
                        .toolbar(.hidden, for: .tabBar)
                    
                    // Pestaña Más
                    View_fondo()
                        .tag(Tab.Mas)
                        .toolbar(.hidden, for: .tabBar)
                    
                    // Pestaña Tiempo
                    View_fondo()
                        .tag(Tab.Tiempo)
                        .toolbar(.hidden, for: .tabBar)
                    
                    // Pestaña Pausa
                  
                        Buttons()
                        .tag(Tab.Pausa)
                        .toolbar(.hidden, for: .tabBar)
                }
                
                
                
                CustomTabBar()
                
            }
        }
    }
    
    
    
    
    
    
    
    // custom tab bar
    
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color(red: 0.45, green: 0.85, blue: 0.85).opacity(0.40)) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                TabItem(tint: tint, tab: tab, animation: animation, activeTab: $activeTab)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(Color(red: 0.69, green: 0.67, blue: 0.67).opacity(0.75))
        .edgesIgnoringSafeArea(.bottom) // Ocupa la parte inferior de la pantalla
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
     
    
}


// tab bar item
struct TabItem: View {
    
    var tint: Color
    var tab: Tab
    var animation: Namespace.ID
    @Binding var activeTab: Tab
    
    var body : some View {
        
        VStack(spacing: 0){
            
                Image(systemName: tab.systemImage)
                    .font(.title2)  // el tamaño de los iconos
                    .foregroundColor(.gray)
                    .frame(width: activeTab == tab ? 68 : 35,height:  activeTab == tab ? 40:35)
                    .background{
                        if activeTab == tab{
                            Circle()
                                
                                .foregroundColor(tint)
                                .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                        }
                    }
                
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .onTapGesture {
                activeTab = tab
            }
            
            
        }
        
    }
    
}






struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



