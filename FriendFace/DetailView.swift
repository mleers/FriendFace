//
//  DetailView.swift
//  FriendFace
//
//  Created by mitch on 11/29/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let user: CachedUser
    
    var body: some View {
        List {
            Section {
                Text("Registered: \(user.wrappedFormattedDate)")
                Text("Age: \(user.age)")
                Text("Email: \(user.wrappedEmail)")
                Text("Address: \(user.wrappedAddress)")
                Text("Works for: \(user.wrappedCompany)")
            } header: {
                Text("Basic Info")
            }
            
            Section {
                Text(user.wrappedAbout)
            } header: {
                Text("About")
            }
            
            Section {
                ForEach(user.friendsArray) { friend in
                    Text(friend.wrappedName)
                }
            } header: {
                Text("Friends")
            }
        }
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
