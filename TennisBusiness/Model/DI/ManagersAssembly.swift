//
//  ManagersAssembly.swift
//  TennisBusiness
//
//  Created by Nikolay Mikhailishin on 8/17/19.
//  Copyright © 2019 nikolay.mihailishin. All rights reserved.
//

import Swinject

final class ManagersAssembly: Assembly {
    // MARK: - Assembly
    
    func assemble(container: Container) {
        container.register(CalculationManager.self) { CalculationManagerImp(resolver: $0)! }
            .inObjectScope(.container)
        container.register(DataManager.self) { DataManagerImp(resolver: $0)! }
        container.register(CountriesDataManager.self) { _ in CountriesDataManagerImp() }
            .inObjectScope(.container)
        container.register(TournamentsTemplateManager.self) { TournamentsTemplateManagerImp(resolver: $0)! }
            .inObjectScope(.container)
        container.register(NamesDataManager.self) { _ in NamesDataManagerImp() }
            .inObjectScope(.container)
        container.register(AuthDataManager.self) { _ in AuthDataManagerImp() }
            .inObjectScope(.container)
        container.register(AppState.self) { _ in AppState() }
            .inObjectScope(.container)
    }
}
