//
//  LinkView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct LinkView: View {
    @Binding var showTopLink : Bool
    var body: some View {
        
        HStack(alignment:.center,spacing: 10)
        {
            
            Button {
                
                withAnimation(.interactiveSpring) {
                    
                    showTopLink.toggle()
                }
                
            } label: {
                Text("Top Links")
                    .foregroundStyle(showTopLink ? .white : .gray)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical,8)
                    .padding(.horizontal,20)
                    .background(Capsule()
                        .foregroundStyle(showTopLink ? .blue : .background))
            }

            
            
            Button {
                
                withAnimation(.interactiveSpring) {
                    
                    showTopLink.toggle()
                }
                
            } label: {
                Text("Recent Links")
                    .foregroundStyle(showTopLink ? .gray : .white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical,8)
                    .padding(.horizontal,20)
                    .background(Capsule()
                        .foregroundStyle(showTopLink ? .background : .blue))
            }
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .font(.title3)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .foregroundStyle(.gray)
                .background(RoundedRectangle(cornerRadius: 7)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.gray))
        }
    }
}

#Preview {
    LinkView(showTopLink: .constant(true))
}
