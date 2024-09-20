//
//  NavigationStackModifier.swift
//  SwiftRide
//
//  Created by Krishala Chhetri on 08/11/2024.


import SwiftUI

struct NavigationStackModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background{
                    Color(.systemGray6)
            }
            .ignoresSafeArea()
            .navigationTitle("Find Cars")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.1))
                        .frame(width:45,height: 45)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.white)
                        }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image("krishala_chhetri")
                        .resizable()
                        .frame(width:45,height: 45)
                        .scaledToFill()
                        .clipShape(Circle())
                }
            }
        
    }
}

extension View {
    func navigationStackModifier() -> some View {
        modifier(NavigationStackModifier())
    }
}
