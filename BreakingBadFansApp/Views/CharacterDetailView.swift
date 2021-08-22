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
                    .font(.title)
                Text(character.nickname)
                    .font(.title2)
                    .foregroundColor(.secondary)
                Spacer()
                    .frame(height: 30)
                Text("Status")
                    .font(.title2)
                Text(character.status)
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
        }
    }
}
