//
//  ContentView.swift
//  Expence Tracker
//
//  Created by Руслан Ишмухаметов on 05.01.2024.
//

import SwiftUI

struct ContentView: View {
    // Intro Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    // Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Недавние")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            Text("Поиск")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            Text("Графики")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            Text("Настройки")
                .tag(Tab.search)
                .tabItem { Tab.settings.tabContent }

        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime) {
            IntroScreen()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    ContentView()
}
