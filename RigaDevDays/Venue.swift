//
//  Venue.swift
//  RigaDevDays
//
//  Created by Dmitry Beloborodov on 05/03/2017.
//  Copyright © 2017 RigaDevDays. All rights reserved.
//

import Foundation
import Firebase

class Venue: DataObject {

    let address: String?
    let coordinates: String?
    let description: String?
    let imageUrl: String?
    let name: String?
    let title: String?
    let web: String?

    override init(snapshot: DataSnapshot) {

        let snapshotValue = snapshot.value as! [String: AnyObject]

        address = snapshotValue["address"] as? String
        coordinates = snapshotValue["coordinates"] as? String
        description = snapshotValue["description"] as? String
        imageUrl = snapshotValue["imageUrl"] as? String
        name = snapshotValue["name"] as? String
        title = snapshotValue["title"] as? String
        web = snapshotValue["web"] as? String

        super.init(snapshot: snapshot)
    }
}
