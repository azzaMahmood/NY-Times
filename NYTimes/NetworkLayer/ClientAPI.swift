//
//  NetworkManager.swift
//  NYTimes
//
//  Created by Azza Mahmoud on 4/27/20.
//  Copyright © 2020 Azza Mahmoud. All rights reserved.
//

import Foundation

protocol ClientAPIType {
    func getArticlesList(numOfDays: Days, completion: @escaping (_ list: [Article]) -> Void)
}

class ClientAPI: ClientAPIType {
    func getArticlesList(numOfDays: Days, completion: @escaping (_ list: [Article]) -> Void){
        let endPoint = EndPoints.getArticlesList(numOfDays: numOfDays)
        GenericClientApi.CallApi(endPoint: endPoint) { (result: Articles?, error: Error?, code) in
            guard let resultList = result?.results else { return }
            completion(resultList)
        }
    }
    
}
