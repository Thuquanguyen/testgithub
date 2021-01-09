//
//  GetUintStaticAPI.swift
//  YTeThongMinh
//
//  Created by ThanhND on 7/17/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import Foundation
import SwiftyJSON

class GetUnitStaticAPI: APIOperation<GetUnitStaticAPIResponse> {
    init() {
        super.init(request: APIRequest(name: "Get recomend drug", path: "api/v0/staticdata/unit/", method: .get, parameters: .body([:])))
    }
}

class GetUnitStaticAPIResponse: APIResponseProtocol {
    var units: [UnitModel]
    
    required init(json: JSON) {
        units = json["data"].arrayValue.map({ UnitModel(json: $0) })
    }
    
}
