//
//  FriendFaceApp.swift
//  FriendFace
//
//  Created by mitch on 11/28/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import SwiftUI

@main
struct FriendFaceApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
