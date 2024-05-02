//
//  ResponseViewModel.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import Foundation



class ResponseViewModel : ObservableObject
{
    @Published var error : Error?
    
    
    
}

extension ResponseViewModel
{
    @MainActor
    func fetchResponse(t : String) async throws -> ApiResponse
    {
        let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI"
        do
        {
            let urlString : String = "https://api.inopenapp.com/api/v1/dashboardNew"
            guard let url = URL(string: urlString) else {throw CommonError.invalidURL}
            
            var request = URLRequest(url: url)
            
            request.httpMethod = "GET"
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data,response) =  try await URLSession.shared.data(for: request)
            
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else{throw CommonError.serverError}
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            guard let responseBody = try? decoder.decode(ApiResponse.self, from: data) else{throw CommonError.invalidData}
            return responseBody
         
        }
        catch
        {
            print(error.localizedDescription)
            self.error = error
            
            throw CommonError.invalidData
            
        }
        
        
    }
    
}





