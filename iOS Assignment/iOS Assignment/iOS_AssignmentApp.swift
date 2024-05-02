//
//  iOS_AssignmentApp.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 17/04/24.
//

import SwiftUI

@main
struct iOS_AssignmentApp: App {
    
    @State public var isShowMain : Bool = false
        @AppStorage("isDarkMode") private var isDarkMode: Bool = false
        var body: some Scene {
            WindowGroup {
                
                if isShowMain
                {
                    TabViews()
                        .preferredColorScheme(.light)
                }
                else
                {
                    SplashScreen()
                        .preferredColorScheme(.light)
                        .onAppear(perform: {
                            DispatchQueue.main.asyncAfter(deadline: .now()+1)
                            {
                                withAnimation(.linear)
                                {
                                    isShowMain.toggle()
                                }
                            }
                        })
                }
                
            }
        }

}
