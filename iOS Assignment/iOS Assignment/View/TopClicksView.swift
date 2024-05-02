//
//  TopClicksView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct TopClicksView: View {
    var color : Color
    var number : String
    var text : String
    var image : String
    var body: some View {
        
        VStack(alignment:.leading,spacing: 20)
        {
            ZStack
            {
                Circle()
                    .frame(width: 40)
                    .foregroundStyle(Color(color).opacity(0.15))
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color(color))
                    .frame(width: 24,height: 24)
                    
                
            }
            
                
            
            VStack(alignment:.leading,spacing: 5)
            {
                Text("\(number)")
                    .fontWeight(.bold)
                Text(text)
                    .foregroundStyle(.secondary)
                
            }// MARK: - vstack
            
        }// MARK: - vstack
        .padding()
        .frame(width: 150)
        .background(RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.white))
    }
}

#Preview {
    TopClicksView(color: .purple, number: "123", text: "Today's Click", image: "cursorarrow.click.2")
}
