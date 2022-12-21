//
//  WeatherModel.swift
//  Clima
//
//  Created by Paulo Roberto on 21/11/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperaturaString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
            
        case 801...804:
            return "cloud.fill"
        
        case 800:
            return "sun.max.fill"
            
        case 600...622:
            return "snowflake.circle"
            
        case 500...531:
            return "cloud.rain.circle.fill"
            
        case 300...321:
            return "cloud.drizzle.fill"
            
        case 200...232:
            return "tropicalstorm.circle"
            
        default:
            return "location.slash.fill"
            
        }
    }
}
