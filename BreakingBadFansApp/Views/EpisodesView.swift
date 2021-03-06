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
                            .italic()
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
