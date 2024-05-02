//
//  FeedBackView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct FeedBackView: View {
    var imageName : String
    var title : String
    var tilleBackground : Color
    var body: some View {
        
        
            HStack(alignment:.center,spacing: 10)
            {
                
                if imageName == "whatsapp"
                {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.8)
                        .foregroundStyle(.blue)
                        .font(.title)
                        .frame(width: 50,height: 40)
                        .padding(.leading,10)
                    
                    
                    
                }
                else {
                    Image(systemName: imageName)
                        .foregroundStyle(.blue)
                        .font(.title)
                        .padding(.leading)
                }
                
                
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
                
            }// MARK: - hstack
            .padding(.vertical,20)
            .frame(minWidth: 0,maxWidth: .infinity)
            .background(Color(tilleBackground).opacity(0.3))
            .background(RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(tilleBackground)))
            
        
        
        
    }
}

#Preview {
    FeedBackView(imageName: "whatsapp", title: "Frequently Asked Quesion", tilleBackground: .green)
}
