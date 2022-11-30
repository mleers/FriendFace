//
//  DataController.swift
//  FriendFace
//
//  Created by mitch on 11/29/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FriendFace")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading data \(error.localizedDescription)")
            }
        }
    }
}
