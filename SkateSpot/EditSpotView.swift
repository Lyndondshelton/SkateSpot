//
//  EditSpotView.swift
//  SkateSpotApp
//
//  Created by Lyndon Shelton on 4/21/21.
//

import MapKit
import SwiftUI

struct EditSpotView: View {
    @Environment(\.presentationMode) var presentationMode
        @ObservedObject var placemark: MKPointAnnotation

        var body: some View {
            NavigationView {
                Form {
                    Section {
                        TextField("Spot name", text: $placemark.wrappedTitle)
                        TextField("Description", text: $placemark.wrappedSubtitle)
                    }
                }
                .navigationBarTitle("Add a new spot")
                .navigationBarItems(trailing: Button("Done") {
                    self.presentationMode.wrappedValue.dismiss()
                })
            }
        }
}

struct EditSpotView_Previews: PreviewProvider {
    static var previews: some View {
        EditSpotView(placemark: MKPointAnnotation.example)
    }
}
