//
//  AppView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import SwiftUI

struct AppView: View {
    var item : Links?
    
    let haptics = UINotificationFeedbackGenerator()
    var body: some View {
        
        VStack(alignment:.center,spacing: 0)
        {
            
            HStack
            {
                AsyncImage(url: URL(string: item?.originalImage ?? "")) { image in
                    
                    image
                        .resizable()
                        .imageScale(.large)
                        .clipShape(Rectangle())
                        .scaledToFit()
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.secondary))
                        
                    
                } placeholder: {
                    
                    Circle()
                        .foregroundColor(.gray)
                    
                }
                .frame(width: 50,height: 50)
                .padding()
                
                Spacer()
                
                
                HStack
                {
                    VStack(alignment:.leading,spacing: 12)
                    {
                        Text(item?.app.capitalized ?? "Youtube")
                
                        
                        
                        Text(item?.createdAt.dropLast(14) ?? "2023-03-09T08:00:05.000Z".dropLast(14))
                            .foregroundStyle(.secondary)
                        
                        
                    }// MARK: - vstack
                    
                    Spacer()
                }// MARK: - hstack
                
                Spacer()
                
                VStack(spacing:12)
                {
                    Text("\(item?.totalClicks ?? 0)")
                        .fontWeight(.bold)
                    
                    Text("Clicks")
                        .foregroundStyle(.secondary)
                    
                }// MARK: - vstack
                .padding()
                
                
             

            }// MARK: - hstack
            
           // Spacer()
            
            VStack
            {
                HStack
                {
                    Group
                    {
                        if let link = item?.webLink
                        {
                            Link(destination: URL(string: link)!, label: {
                                Text(link)
                                    .lineLimit(1)
                            })
                            
                        
    //
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            let pasteBoard = UIPasteboard.general
                            pasteBoard.string = item?.webLink
                            haptics.notificationOccurred(.success)
                        
                        }, label: {
                            Image(systemName: "doc.on.doc")
                        })
                        
                        
                    }
                    .padding(.vertical,10)
                    .foregroundStyle(.blue)
                    
                }// MARK: - hstack
                .foregroundStyle(.blue.opacity(0.5))
                
            }// MARK: - Vstack
            .padding(.horizontal)
            .background(.blue.opacity(0.09))
        
            .background(UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 10, bottomTrailingRadius: 10, topTrailingRadius: 0, style: .circular)
                .strokeBorder(style: StrokeStyle(lineWidth: 1,dash: [5,2]))
                .foregroundStyle(.blue)
            )
        }
        
        .frame(minWidth: 0,maxWidth: .infinity)
       // .padding()
        .background(RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.white))
        
        
    }
}

#Preview {
    AppView()
}
