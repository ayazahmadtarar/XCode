//
//  CallService.swift
//  jsonGloss
//
//  Created by Ayaz Ahmad Tarar on 8/4/16.
//  Copyright © 2016 tarar. All rights reserved.
//

import Foundation
import Gloss

protocol MoviesDelgate
{

    func setmovies(movies:[Movie])
  

}
public class CallService{
    
    var mydelegate:MoviesDelgate?

    
    func getMoviesList(completion: (result:[Movie]) -> Void){
    
        
        
        let requestURL: NSURL = NSURL(string: "https://yts.ag/api/v2/list_movies.json")!
        
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(urlRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            if (statusCode == 200) {
                print("File downloaded successfully.")
                do{
                    
                    let jsonYts=try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments)
                    
                    let jsonDataTag=jsonYts["data"]
                    let jsonMovie=jsonDataTag!!["movies"]!
                    
                    let  movies=[Movie].fromJSONArray(jsonMovie as! [JSON])
                    completion(result: movies)
                    
//                  if(self.mydelegate != nil)
//                  {
//               dispatch_async(dispatch_get_main_queue(),{})
 //           self.mydelegate?.setmovies(movies) })
//                        
//                    }
                    
                 
                    
                }catch{
                    
                }
                
                
            }
        }
        
        task.resume()

    }



}