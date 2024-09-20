//
//  NotificationsView.swift
//  SwiftRide
//
//  Created by Krishala Chhetri on 08/20/2024.


import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Activity")
                .font(.headline)
                .fontWeight(.bold)
            Divider()
            HStack(alignment: .top,spacing: 15) {
                Circle()
                    .frame(width: 75, height: 75)
                    .overlay {
                        Text("SwiftRide")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                VStack(alignment: .leading) {
                    Text("Welcome to SwiftRide")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("Thanks for joining the SwiftRide community. your adventure starts here")
                }
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    NotificationsView()
}
