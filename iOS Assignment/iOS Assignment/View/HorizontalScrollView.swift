//
//  HorizontalScrollView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            
            HStack(spacing:15)
            {
                TopClicksView(color: .purple, number: "123", text: "Today's Clicks", image: "cursorarrow.click.2")
                
                TopClicksView(color: .blue, number: "Ahamedabad", text: "Top Location", image: "mappin")
                
                TopClicksView(color: .red, number: "Instagram", text: "Top Source", image: "globe")
                
            }
            
        }
    }
}

#Preview {
    HorizontalScrollView()
}
