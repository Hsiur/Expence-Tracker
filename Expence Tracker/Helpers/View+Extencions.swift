//
//  View+Extencions.swift
//  Expence Tracker
//
//  Created by Руслан Ишмухаметов on 03.02.2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ alingment: Alignment = .center) -> some View {
        self
        .frame(maxWidth: .infinity, alignment: alingment)
    }
    
    @ViewBuilder
    func vSpacing(_ alingment: Alignment = .center) -> some View {
        self
        .frame(maxHeight: .infinity, alignment: alingment)
    }
    
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        
        return .zero
    }
    
    func format(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    func currentcyString(_ value: Double, allowedDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = allowedDigits
        
        return formatter.string(from: .init(value: value)) ?? ""
    }
}
