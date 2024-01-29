//
//  IntroScreen.swift
//  Expence Tracker
//
//  Created by Руслан Ишмухаметов on 05.01.2024.
//

import SwiftUI

struct IntroScreen: View {
    // Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    var body: some View {
        VStack(spacing: 15) {
            Text("Что нового в приложении")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            /// Points View
            VStack(alignment: .leading, spacing: 25, content: {
                PointView(symbol: "dollarsign", title: "Переводы", subTitle: "Продолжай записывать свои расходы и доходы")
                PointView(symbol: "chart.bar.fill", title: "Графическая визуализация", subTitle: "Смоти как твои переводы отображаются на красивых графиках")
                PointView(symbol: "magnifyingglass", title: "Продвинутые фильты", subTitle: "Находи свои расходы в продинутой системе фильтров")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button {
                isFirstTime = false
            } label: {
                Text("Продолжить")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            }
        }
        .padding(15)
    }
    
    /// `Point View`
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            })

        }
    }
}

#Preview {
    IntroScreen()
}
