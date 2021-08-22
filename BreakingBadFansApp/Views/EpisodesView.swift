//
//  EpisodesView.swift
//  BreakingBadFansApp
//
//  Created by User 1 on 8/22/21.
//

import SwiftUI

struct EpisodesView: View {
    @ObservedObject var episodesViewModel = EpisodesViewModel()
    
    var body: some View {
        NavigationView
        {
            List
            {
                ForEach(episodesViewModel.episodes)
                {episode in
                    VStack(alignment: .leading)
                    {
                        Text("Season \(episode.season)")
                        Text("Episode \(episode.episode)")
                        Text(episode.title)
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .navigationTitle("Episodes")
            .onAppear(perform: {
                episodesViewModel.fetchEpisodes()
            })
        }
    }
}
