//
//  Friend.swift
//  FriendFace
//
//  Created by mitch on 11/28/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: UUID
    let name: String
}
