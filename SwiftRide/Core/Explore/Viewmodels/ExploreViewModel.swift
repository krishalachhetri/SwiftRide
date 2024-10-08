//
//  ExploreViewModel.swift
//  SwiftRide
//
//  Created by Krishala Chhetri on 08/15/2024.


import Foundation


class ExploreViewModel: ObservableObject {
    
    @Published var brands: [Brand] = [
                                      Brand(id: UUID().uuidString, brandName: "Mercedes",imageName: "mercedes", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "BMW",imageName: "bmw", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Jaguar",imageName: "jaguar", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Audi",imageName: "audi", carIds: [])
                                      ]
    
    @Published var cars: [Car] = [
        .init(id: UUID().uuidString, carName: "MERCEDES-BENZ C-CLASS", rating: 4.9, brand: "Mercedes", pricePerDay: 40, description: "This 2023 Mercedes is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "merecedesC", imagesNames: ["mercedes_c_0","mercedes_c_1","mercedes_c_2","mercedes_c_3","mercedes_c_4"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Krishala Automotive", hostImageName: "krishala_chhetri", hostJoinDate: "10 June 2024",isFavorite: false),
        .init(id: UUID().uuidString, carName: "BMW X1", rating: 4.8, brand: "BMW", pricePerDay: 36, description: "This 2021 BMW is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "bmwx1", imagesNames: ["bmwx1_1","bmwx1_2","bmwx1_3"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Krishala Automotive", hostImageName: "krishala_chhetri", hostJoinDate: "10 Aug 2024",isFavorite: true)
    ]
    
    
    
}
