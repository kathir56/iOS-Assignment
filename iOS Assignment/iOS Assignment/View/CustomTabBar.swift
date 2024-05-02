//
//  CustomTabBar.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var index : Int
    var body: some View {
        
        HStack
        {
            Button(action: {
                self.index = 0
            }, label: {
                VStack(spacing:10)
                {
                    Image(systemName: "link")
                        .scaleEffect(1.5)
                    
                    Text("Links")
                        .font(.caption2)
                    
                }
                .padding(.top)
                
            })
            .foregroundStyle(Color.black.opacity(index == 0 ? 1.0 : 0.3))
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 1
            }, label: {
                
                VStack(spacing:10)
                {
                    Image(systemName: "book")
                        .scaleEffect(1.5)
                    
                    Text("Courses")
                        .font(.caption2)
                    
                }
                .padding(.top)
                
            })
            .foregroundStyle(Color.black.opacity(index == 1 ? 1.0 : 0.3))
            
            Spacer(minLength: 0)
            
            Button(action: {
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .scaleEffect(3)
            })
            .offset(x:12,y:-30)
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 2
            }, label: {
                VStack(spacing:10)
                {
                    Image(systemName: "speaker")
                        .scaleEffect(1.5)
                    
                    Text("Campagins")
                        .font(.caption2)
                    
                }
                .padding(.top)
                
            })
            .foregroundStyle(Color.black.opacity(index == 2 ? 1.0 : 0.3))
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 3
            }, label: {
                
                VStack(spacing:10)
                {
                    Image(systemName: "person.crop.circle")
                        .scaleEffect(1.5)
                    
                    Text("Profile")
                        .font(.caption2)
                    
                }
                .padding(.top)
                
            })
            .foregroundStyle(Color.black.opacity(index == 3 ? 1.0 : 0.3))
        }
        .padding(.horizontal,35)
        .padding(.top,35)
        .background(.white)
        .clipShape(Cshape())
        
    }
}

#Preview {
    TabViews()
}


