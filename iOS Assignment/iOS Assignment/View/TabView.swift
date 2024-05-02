//
//  TabView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct TabViews: View {
    @State private var index : Int = 0
    var body: some View {
        
        
        VStack(spacing:0)
        {
            ZStack
            {
                if self.index == 0
                {
                    ContentView()
                }
                else if self.index == 1
                {
                    CourseView()
                }
                else if self.index == 2
                {
                    CampaginsView()
                }
                else if self.index == 3
                {
                    ProfileView()
                }
                
            }
            .padding(.bottom,-35)
            
            CustomTabBar(index: $index)
        }
        .background(.black.opacity(0.05))
        
    }
}

#Preview {
    TabViews()
}
