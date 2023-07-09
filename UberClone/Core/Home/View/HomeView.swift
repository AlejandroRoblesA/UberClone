//
//  HomeView.swift
//  UberClone
//
//  Created by Alejandro Robles on 07/07/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationsSearchView = false
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            if showLocationsSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        showLocationsSearchView.toggle()
                    }
            }
            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
