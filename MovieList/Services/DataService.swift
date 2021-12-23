//
//  DataService.swift
//  MovieList
//
//  Created by Kim Tae Kyeong  on 2021/12/22.
//

import Foundation
class DataService{
    
    
    static func getLocalData () -> [Movie] {
        
        //1.get pathString of the data path
        let pathString = Bundle.main.path(forResource: "movies", ofType:"json")
        
        //Check if path String is not nil, otherwise...
        guard pathString != nil else{
            //if path String is nill, return empty array of recipe
            return [Movie]()
        }
        
            //3. get the url OBJECT of the path
            let url = URL(fileURLWithPath: pathString!)
            
            do{
                //4. Obtain data
                let movieData = try Data(contentsOf: url)
                
                //5. Create JSONdecord Object
                let decorder = JSONDecoder()
                
                do{
                    //6. Map the decorded JSON data into class of Array
                    let jsonMoive = try decorder.decode([Movie].self, from: movieData)
                    
                    //7. Assign IDs
                    for m in jsonMoive {
                        m.id = UUID()
                    }
                    
                    return jsonMoive
                    
                }catch{
                    print("Failed to map data")
                }
                
                
            }catch{
                print("Failed to get the movieData")
            }
            
            
        
        
        
        
        
        return [Movie]()
    }
}
