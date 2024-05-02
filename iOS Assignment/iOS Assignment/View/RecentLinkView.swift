//
//  RecentLinkView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import SwiftUI

struct RecentLinkView: View {
    
    var recentLinks : DataResponse?
    var body: some View {
        
        VStack(alignment:.center,spacing: 20)
        {
        
            ForEach(recentLinks?.recentLinks ?? [], id: \.self){item in
                
                AppView(item: item)
                
                
            }// MARK: - foreach
            
            
            
        }// MARK: - vstack
        .padding(.vertical)
    
        
        
    }
}

//#Preview {
//    RecentLinkView()
//}
