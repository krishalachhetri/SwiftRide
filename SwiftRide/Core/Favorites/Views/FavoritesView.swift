//
//  FavoritesView.swift
//  SwiftRide
//
//  Created by Krishala Chhetri on 08/18/2024.


import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel: ExploreViewModel
    var favoriteCars: [Car]
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        favoriteCars = viewModel.cars.filter({ $0.isFavorite == true })
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(favoriteCars) { car in
                        let index = viewModel.cars.firstIndex(where: {$0 == car}) ?? 0
                        NavigationLink {
                            DetailCarView(viewModel: viewModel, index: index)
                                .navigationBarBackButtonHidden()
                        } label: {
                            CustomCarView(index: index, viewModel: viewModel)
                        }
                        
                        
                    }
                }
                .padding()
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    FavoritesView(viewModel: ExploreViewModel())
}
