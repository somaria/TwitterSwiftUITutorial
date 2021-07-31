//
//  Message.swift
//  Message
//
//  Created by admin on 28/7/21.
//

import Foundation

struct MockMessage: Identifiable {
  let id: Int
  let imageName: String
  let messageText: String
  let isCurrentUser: Bool
}


let MOCK_MESSAGES: [MockMessage] = [
  .init(id: 0, imageName: "spiderman", messageText: "Hey, What's up", isCurrentUser: false),
  .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
  .init(id: 2, imageName: "batman", messageText: "How is life", isCurrentUser: true),
  .init(id: 3, imageName: "spiderman", messageText: "Where are you?", isCurrentUser: false),
  .init(id: 4, imageName: "spiderman", messageText: "I am at home", isCurrentUser: false),
  .init(id: 5, imageName: "batman", messageText: "I am flying", isCurrentUser: true),
]
