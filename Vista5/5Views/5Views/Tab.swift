

import SwiftUI

enum Tab: String,CaseIterable{
    
    
    
    case home="Home"
    case task="Task"
    case Mas="Mas"
    case Tiempo="Tiempo"
    case Pausa="Pausa"
    
    var systemImage:String{ // SF Symbol
        
        switch self{
        case .home:
            return "house"
        case .task:
            return "list.clipboard"
        case .Mas:
            return "plus.circle"
        case .Tiempo:
            return "clock"
        case .Pausa:
            return "pause.circle"
            
        }
    }
    var index:Int{
        
        
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
    
    
}


