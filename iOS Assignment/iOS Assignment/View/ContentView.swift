//
//  ContentView.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    let viewModel = ResponseViewModel()
    @State private var apiResponse : ApiResponse?
    @State private var showTopLink : Bool = true
    @State private var showProgress : Bool = false
    @State private var showAlert : Bool = false
    var body: some View {
        
        
        
        
        VStack(spacing:0)
        {
            HStack
            {
                Text("Dashboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "gearshape")
                    .imageScale(.large)
                    .foregroundStyle(.white)
            }
            .padding(.bottom)
            .padding(.horizontal)
            .background(LinearGradient(colors: [.blue], startPoint: .top, endPoint: .center))
            
            
            ScrollView(.vertical,showsIndicators: false)
            {
                
                
                VStack(alignment:.center,spacing: 20) {
                    
                    HStack
                    {
                        VStack(alignment:.leading)
                        {
                            Text("Good Morning")
                                .foregroundStyle(.gray)
                            
                            Text("Ajay Manva 👋")
                                .font(.system(.title))
                                .fontWeight(.medium)
                                .foregroundStyle(.black)
                            
                            
                            
                        }
                        .padding(.leading)
                        Spacer()
                        
                    }
                    .padding(.vertical)
                    
                    ChartView()
                        .aspectRatio(contentMode: .fit)
                        
                    HorizontalScrollView()
                    
                    Analytics(imageName: "chart.line.uptrend.xyaxis", title: "View Analytics")
                    
                    LinkView(showTopLink: $showTopLink)
                    
                    
                    if showTopLink
                    {
                        if showProgress
                        {
                            ProgressView("Loading")
                        }
                        else
                        {
                            TopLink(topLinks: apiResponse?.data)
                            
                        }
                        
                    }
                    else
                    {
                        if showProgress
                        {
                            ProgressView("Loading")
                        }
                        else
                        {
                            RecentLinkView(recentLinks: apiResponse?.data)
                            
                        }
                        
                    }
                    
                    Analytics(imageName: "link", title: "View all links")
                    
                    FeedBackView(imageName: "whatsapp", title: "Talk with us", tilleBackground: .green)
                    
                    FeedBackView(imageName: "questionmark.circle", title: "Frequently Asked Question", tilleBackground: .blue)
                    
                
                }
                .padding(.top,35)
                .padding(.horizontal,15)
                .padding(.bottom,65)
                
                .background(Color.background.ignoresSafeArea(.all))
                .task {
                    do
                    {
                        showProgress = true
                        apiResponse = try await viewModel.fetchResponse(t: "sdf")
                        showProgress = false
                    }
                    catch
                    {
                        print("there was an error")
                        
                    }
                    
                }
                .onReceive(viewModel.$error, perform: { error in
                    if error != nil
                    {
                        showAlert.toggle()
                        showProgress = false
                    }
                    
                })
                .alert(isPresented: $showAlert, content: {
                    
                    Alert(title: Text("Error"), message: Text(viewModel.error?.localizedDescription ?? ""))
                })
                
                
            }

            
            .clipShape(CustomShape())

            
        }
        
        .background(.blue)
        

        
        
    }
}

//#Preview {
//    ContentView()
//}
