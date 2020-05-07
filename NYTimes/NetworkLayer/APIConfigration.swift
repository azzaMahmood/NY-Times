//
//  APICoonfigration.swift
//  NYTimes
//
//  Created by Azza Mahmoud on 4/26/20.
//  Copyright © 2020 Azza Mahmoud. All rights reserved.
//

import Alamofire
protocol APIConfigurations: URLRequestConvertible {
    var method: HTTPMethod {get}
    var path: String {get}
    var parameters: Parameters? {get}
}
