//
//  ContentView.swift
//  Parallax
//
//  Created by Balaji on 06/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body: some View{
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            GeometryReader{reader in
                
                // Type 2 Parollax....
                
                if reader.frame(in: .global).minY > -480 {
                    Image("main")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        // moving View Up....
                        .offset(y: -reader.frame(in: .global).minY)
                    // going to add parallax effect....
                        .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)
                }
  
                // Type 1 Parallax....
                
//                Image("main")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    // moving View Up....
//                    .offset(y: -reader.frame(in: .global).minY)
//                // going to add parallax effect....
//                    .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 480)
                
                
            }
            // default frame...
            .frame(height: 480)
            
            VStack(alignment: .leading,spacing: 15){
                
                Text("Toys Story")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                
                HStack(spacing: 15){
                    
                    ForEach(1...5,id: \.self){_ in
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                    }
                }
                
                Text("Some Scene May Scare Very Young Childrens")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.top,5)
                
                Text(plot)
                    .padding(.top, 10)
                    .foregroundColor(.white)
                
                HStack(spacing: 15){
                    
                    Button(action: {}, label: {
                        Text("Bookmark")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    
                    Button(action: {}, label: {
                        Text("Buy Tickes")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.red)
                            .cornerRadius(10)
                    })
                }
                .padding(.top, 25)
            }
            .padding(.top, 25)
            .padding(.horizontal)
            .background(Color.black)
            .cornerRadius(20)
            .offset(y: -35)
        })
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

var plot = "Nine years earlier, following the events of Toy Story 2, Bo Peep and Woody attempt to rescue RC, Andy's remote-controlled car, from a rainstorm. Just as they finish the rescue, Woody watches as Bo is donated to a new owner, and considers going with her, but ultimately decides to remain with Andy. Years later, a young adult Andy donates them to Bonnie, a younger child, before he goes off to college. While the toys are grateful to have a new child, Woody struggles to adapt to an environment where he is not the favorite as he was with Andy, apparent when Bonnie takes Woody's sheriff badge and puts it on Jessie instead, not even bothering to give him a role during her playtime.On the day of Bonnie's kindergarten orientation, Woody worries over her and sneaks into her backpack. After a classmate takes away Bonnie's arts and crafts supplies, Woody covertly recovers the materials and various pieces of garbage from the trash, including a plastic spork. Bonnie uses these to create a bipedal spork with googly eyes, whom she dubs Forky. Forky comes to life in Bonnie's backpack and begins to experience an existential crisis, thinking he is garbage rather than a toy and wishing to remain in a trash can. As Forky becomes Bonnie's favorite toy, Woody takes it upon himself to prevent Forky from throwing himself away......."
