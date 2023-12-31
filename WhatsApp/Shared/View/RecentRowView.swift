//
//  RecentRowView.swift
//  WhatsApp Hero Animation (iOS)
//
//  Created by Balaji on 27/03/21.
//

import SwiftUI

struct RecentRowView: View {
    
    var recent: Profile
    var animation: Namespace.ID
    
    // Environment Object...
    @EnvironmentObject var profileData: ProfileDetailModel
    
    var body: some View {
        
        HStack(spacing: 15){
            
            // Making it as clickable Button....
            
            Button(action: {
                withAnimation{
                    profileData.selectedProfile = recent
                    profileData.showProfile.toggle()
                }
            }, label: {
                
                ZStack{
                    
                    // Without matched geometry effect simply showing image...
                    Image(recent.profile)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    if !profileData.showProfile{
                        
                        Image(recent.profile)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            // Matched Geometry Effect...
                            // Giving unique ID that is from UUID from profile Model....
                            .matchedGeometryEffect(id: recent.id, in: animation)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                }
            })
            // it decreased the highlight color....
            .buttonStyle(PlainButtonStyle())
            
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        
                        Text(recent.userName)
                            .fontWeight(.bold)
                        
                        Text(recent.lastMsg)
                            .font(.caption)
                            .foregroundColor(.gray)
                    })
                    
                    Spacer(minLength: 10)
                    
                    Text(recent.time)
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                
                Divider()
            }
        }
        .padding(.horizontal)
    }
}

struct RecentRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
