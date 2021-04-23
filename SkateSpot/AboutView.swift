//
//  AboutView.swift
//  SkateSpotApp
//
//  Created by Lyndon Shelton on 4/21/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Color.black
            .overlay(
            VStack(alignment: .leading){
                Text("Welcome!")
                    .font(.largeTitle)
                    .padding(.leading, 30)
                    .padding(.bottom, 10)
                Text("Thank you for downloading SkateSpot!")
                    .padding(.leading, 30)
                    .padding(.bottom, 15)
                Text("What is SkateSpot?")
                    .font(.title2)
                    .padding(.leading, 30)
                    .padding(.bottom, 5)
                Text("SkateSpot is a mobile application for people who love to skateboard, but can never find good spots to skate. This app allows skaters to mark locations where they've skated or would like to skate.")
                    .padding(.leading, 30)
                    .padding(.bottom, 15)
                Text("How to use this app?")
                    .font(.title2)
                    .padding(.leading, 30)
                    .padding(.bottom, 5)
                Text("Using the 'Target' on the 'SkateMap' navigate to where you'd like to create a new spot, click the 'Add Spot' button to create a new pin at this location. When the pin is clicked you will be able to see the customized title of the location and the custom description.")
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
            }
            .foregroundColor(.purple)
        )
            .navigationBarTitle("About")
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
