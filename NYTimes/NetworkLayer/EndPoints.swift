//
//  EndPointsd.swift
//  NYTimes
//
//  Created by Azza Mahmoud on 4/26/20.
//  Copyright © 2020 Azza Mahmoud. All rights reserved.
//

import Foundation
import Alamofire

enum EndPoints: APIConfigurations {

    
    case getArticlesList(numOfDays: Days)
    
    var method: HTTPMethod {
        return .get
    }
    
    internal var encoding: ParameterEncoding {
        switch method {
            case .get:
                return URLEncoding.default
            case .post:
                return  JSONEncoding.default
            default:
                return JSONEncoding.default
        }
    }
    
    var path: String {
        switch self {
            case .getArticlesList(let numOfdays):
                return "\(numOfdays.day)\(getValue(forKey: "ApiKey"))"

        }
        
    }
    
    var parameters: Parameters? {
        return nil 
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = "https://\(getValue(forKey: "BaseUrl"))\(path)"
        
        let finalURl = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        let urlRequest = URLRequest(url: URL(string: finalURl)!)

        return urlRequest
    }
    
    func getValue(forKey key: String) -> String {
        return (Bundle.main.infoDictionary?[key] as? String)!
    }
    
}
