//
//  Tab.swift
//  Expence Tracker
//
//  Created by Руслан Ишмухаметов on 05.01.2024.
//

import SwiftUI

enum Tab: String {
    case recents = "Недавние"
    case search = "Поиск"
    case charts = "Графики"
    case settings = "Настройки"
    
    @ViewBuilder
    var tabContent: some View {
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}
