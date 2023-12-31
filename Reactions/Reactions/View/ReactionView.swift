//
//  ReactionView.swift
//  Reactions
//
//  Created by Balaji on 12/10/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct ReactionView: View {
    @Binding var post : Post
    var body: some View {
       
        HStack(spacing: 15){
            
            ForEach(reactions,id: \.self){gif in
                
                // Enlarging GIF Reaction...
                AnimatedImage(name: gif)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: post.reaction == gif ? 100 : 40, height: post.reaction == gif ? 100 : 40)
                    .padding(post.reaction == gif ? -30 : 0)
                // Moving Vie Up...
                    .offset(y: post.reaction == gif ? -50 : 0)
            }
        }
        .padding(.vertical,10)
        .padding(.horizontal,20)
        .background(Color.white.clipShape(Capsule()))
        .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: 5)
    }
}

var reactions = ["like.gif","love.gif","haha.gif","wow.gif","sad.gif","angry.gif"]
