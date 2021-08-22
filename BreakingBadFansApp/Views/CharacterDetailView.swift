//
//  CharacterDetailView.swift
//  BreakingBadFansApp
//
//  Created by User 1 on 8/22/21.
//

import SwiftUI
import SDWebImageSwiftUI


struct CharacterDetailView: View {
    
    var character : Character
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                WebImage(url: character.img)
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: .fill)
                Text(character.name)
                    .font(.largeTitle)
                Text(character.nickname)
                    .font(.title2)
                Spacer()
                    .frame(height: 30)
                Text("Status")
                    .font(.title)
                Text(character.status)
                    .font(.title)
            }
            .padding(.horizontal)
        }
    }
}
