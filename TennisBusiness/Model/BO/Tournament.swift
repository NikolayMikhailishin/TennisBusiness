//
//  Tournament.swift
//  TennisBusiness
//
//  Created by Nikolay Mikhailishin on 11/3/19.
//  Copyright © 2019 nikolay.mihailishin. All rights reserved.
//

import Foundation

class Tournament {
    // MARK: - Properties
    
    let identifier: String
    let name: String
    let city: String
    let country: Country?
    let week: Int
    let surface: Surface
    let surfaceType: SurfaceLocationType
    let totalFinancialCommitment: Double
    let points: TournamentPoints
    let draw: (single: Int, double: Int)
    let startDate: Date
    
    
    
    // MARK: - Init
    
    init(identifier: String, name: String, city: String,
         country: Country?,  week: Int, surface: Surface,
         surfaceType: SurfaceLocationType,
         totalFinancialCommitment: Double, points: TournamentPoints,
         draw: (single: Int, double: Int),
         startDate: Date) {
        self.identifier = identifier
        self.name = name
        self.city = city
        self.country = country
        self.week = week
        self.surface = surface
        self.surfaceType = surfaceType
        self.totalFinancialCommitment = totalFinancialCommitment
        self.points = points
        self.draw = draw
        self.startDate = startDate
    }
}
