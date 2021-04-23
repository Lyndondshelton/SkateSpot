//
//  ContentView.swift
//  SkateSpot
//
//  Created by Lyndon Shelton on 4/22/21.
//
import MapKit
import SwiftUI

struct ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D()
    @State private var locations = [MKPointAnnotation]()
    @State private var selectedPlace: MKPointAnnotation?
    @State private var showingPlaceDetails = false
    @State private var showingEditScreen = false
    
    var body: some View {
        NavigationView{
        ZStack {
            MapView(centerCoordinate: $centerCoordinate, selectedPlace: $selectedPlace, showingPlaceDetails: $showingPlaceDetails, annotations: locations)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.purple)
                .opacity(0.3)
                .frame(width: 20, height: 20)
                .navigationBarTitle("SkateSpot")
                .navigationBarTitleDisplayMode(.inline)
            //create an add button at the bottom of the screen
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: AboutView()){
                        Text("About")
                            .padding(10)
                            .foregroundColor(.purple)
                            .background(Color.black)
                            .cornerRadius(40)
                        
                    }
                    Button(action: {
                        // create a new location
                        let newLocation = MKPointAnnotation()
                        newLocation.title = ""
                        newLocation.coordinate = self.centerCoordinate
                        self.locations.append(newLocation)
                        self.selectedPlace = newLocation
                        self.showingEditScreen = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(Color.purple.opacity(0.75))
                    .foregroundColor(.white)
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                }
            }
        }
        .alert(isPresented: $showingPlaceDetails) {
            Alert(title: Text(selectedPlace?.title ?? "Unknown"), message: Text(selectedPlace?.subtitle ?? "Missing place information."), primaryButton: .default(Text("OK")), secondaryButton: .default(Text("Edit")) {
                    self.showingEditScreen = true
            })
        }
        .sheet(isPresented: $showingEditScreen) {
            if self.selectedPlace != nil {
                EditSpotView(placemark: self.selectedPlace!)
            }
        }
        
    }
        .navigationBarTitle("SkateSpot")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

