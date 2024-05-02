//
//  TopLink.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import SwiftUI

struct TopLink: View {
    var topLinks : DataResponse?
    var body: some View {
        
        VStack(alignment:.center,spacing: 20)
        {
            
            ForEach(topLinks?.topLinks ?? [], id: \.self){item in
                
                
                AppView(item: item)
                
                
            }// MARK: - foreach
            
            
            
        }// MARK: - vstack
        .padding(.vertical)
    
        
        
    }
}

//#Preview {
//    TopLink()
//}
