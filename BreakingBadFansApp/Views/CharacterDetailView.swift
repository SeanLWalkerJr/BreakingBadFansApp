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
            WebImage(url: character.img)
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading){
                Text(character.name)
                    .font(.title)
                //Spacer()
                Text(character.nickname)
                    .font(.title)
                Text("Status")
                    .font(.title)
                Text(character.status)
                    .font(.title)
            }
            .padding(.horizontal)
        }
    }
}
