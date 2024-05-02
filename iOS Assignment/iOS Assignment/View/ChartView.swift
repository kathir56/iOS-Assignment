//
//  ChartView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import SwiftUI
import Charts

struct ChartView: View {
   // var chart : DataResponse?
    
    var body: some View {
        
        VStack
        {
            HStack
            {
                Text("Overview")
                    .foregroundStyle(.gray)
                
                Spacer()
                
                HStack
                {
                    Text("23 Aug - 23 Sept")
                        .font(.caption)
                    Image(systemName: "clock")
                        .foregroundStyle(.gray)
                    
                }
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.gray))
                
                
            }// MARK: - hstack
            
            
            
            
            Chart
            {
                LineMark(x: .value("jan", "jan"), y: .value("1", 3))
                AreaMark(x: .value("jan", "jan"), y: .value("1", 3))
                AreaMark(x: .value("jan", "Feb"), y: .value("2", 6))
                AreaMark(x: .value("jan", "Mar"), y: .value("3", 10))
                AreaMark(x: .value("jan", "Apr"), y: .value("4", 15))
                AreaMark(x: .value("jan", "May"), y: .value("5", 12))
                AreaMark(x: .value("jan", "Jun"), y: .value("6", 8))
                AreaMark(x: .value("jan", "July"), y: .value("7",13))
                AreaMark(x: .value("jan", "Aug"), y: .value("8", 18))
                AreaMark(x: .value("jan", "Sep"), y: .value("9", 20))
                AreaMark(x: .value("jan", "Oct"), y: .value("10", 20))
                AreaMark(x: .value("jan", "Nov"), y: .value("11", 25))
                AreaMark(x: .value("jan", "Dec"), y: .value("12", 26))
            
                
            }
            .foregroundStyle(LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom))
            
        }
    
        .padding()
        .background(RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.white))
        
        
    }
}

#Preview {
    ChartView()
}
