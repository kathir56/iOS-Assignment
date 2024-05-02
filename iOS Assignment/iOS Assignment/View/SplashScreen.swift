//
//  SplashScreen.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        
        VStack(alignment:.center,spacing: 20)
        {
            Text("OpeninApp")
                .font(.system(.largeTitle, design: .rounded, weight: .bold))
                
            
            Text(.now,style: .date)
                .font(.system(.largeTitle, design: .rounded, weight: .bold))
                
            
            Text(.now,style: .time)
                .font(.system(.largeTitle, design: .rounded, weight: .bold))
            
        }
        .foregroundStyle(LinearGradient(colors: [.pink,.purple], startPoint: .top, endPoint: .bottom))
        
        
    }
}

#Preview {
    SplashScreen()
}
