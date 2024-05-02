//
//  Analytics.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct Analytics: View {
    var imageName : String
    var title : String
    var body: some View {
        
        Button {
            
        } label: {
            
            HStack(alignment:.center,spacing: 15)
            {
                Image(systemName: imageName)
                    .font(.title2)
                    .foregroundStyle(.black)
                
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            }
            .padding(.vertical,10)
            .frame(minWidth: 0,maxWidth: .infinity, maxHeight: 55)
            .background(RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1)
                .foregroundStyle(.gray))
        }

    }
}

#Preview {
    Analytics(imageName: "chart.line.uptrend.xyaxis", title: "View Analytics")
}
