//
//  MKPointAnnotation - ObservableObject.swift
//  SkateSpotApp
//
//  Created by Lyndon Shelton on 4/21/21.
//

import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? ""
        }

        set {
            title = newValue
        }
    }

    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? ""
        }

        set {
            subtitle = newValue
        }
    }
}
