//
//  BreakingBadFansAppApp.swift
//  BreakingBadFansApp
//
//  Created by User 1 on 8/21/21.
//

import SwiftUI

@main
struct BreakingBadFansAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView
            {
                CharactersView()
                    .tabItem
                    {
                        Image(systemName: "person.3")
                        Text("Characters")
                    }
                EpisodesView()
                    .tabItem
                    {
                        Image(systemName: "list.number")
                        Text("Episodes")
                    }
            }
            .colorScheme(.dark)
        }
    }
}
