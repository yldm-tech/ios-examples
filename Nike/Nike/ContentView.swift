//
//  ContentView.swift
//  Nike
//
//  Created by Balaji on 12/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
//struct Home : View {
//
//    @State var topIndex = 0
//
//    var body: some View{
//
//        VStack{
//
//            HStack{
//
//                Image("logo")
//                    .renderingMode(.original)
//
//                Spacer()
//
//                Button(action: {}) {
//
//                    Image("menu")
//                        .renderingMode(.original)
//                }
//            }
//            .padding()
//
//            ScrollView(.horizontal, showsIndicators: false) {
//
//                HStack(spacing: 30){
//
//                    ForEach(0..<topMenu.count){menu in
//
//                        TopMenu(menu: menu, index: $topIndex)
//                    }
//                }
//                .padding(.horizontal)
//            }
//            .padding(.top,10)
//
//            // Vertical Menu...
//
//            HStack{
//
//                VerticalMenu()
//                    // moving view to left...
//                    .padding(.leading,-165)
//                    .zIndex(1)
//                // moving view in stack for click event...
//
//                // Scroll view....
//
//                ScrollView(.horizontal, showsIndicators: false) {
//
//                    HStack(spacing: 15){
//
//                        ForEach(1...6,id: \.self){i in
//
//                            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
//
//                                // background Nike Logo...
//
//                                Image("logo")
//                                    .resizable()
//                                    .renderingMode(.template)
//                                    .frame(height: 110)
//                                    .foregroundColor(Color.black.opacity(0.08))
//                                    .padding(.top,55)
//                                    .padding(.horizontal)
//
//                                VStack(alignment: .leading){
//
//                                    Text("$259")
//                                        .font(.system(size: 22))
//                                        .fontWeight(.bold)
//                                        .foregroundColor(.white)
//
//                                    Spacer(minLength: 0)
//
//                                    Image("p\(i)")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                    // rotaing image....
//                                        .rotationEffect(.init(degrees: 12))
//
//                                    Spacer(minLength: 0)
//
//                                    Text("Men's Shoe")
//                                        .foregroundColor(Color.white.opacity(0.6))
//
//                                    Text("Nike Air Huarache\nRun DNA")
//                                        .font(.system(size: 22))
//                                        .fontWeight(.bold)
//                                        .foregroundColor(.white)
//                                }
//                            }
//                            .padding(.horizontal)
//                            .padding(.vertical)
//                            // fixed Frame...
//                            .frame(width: UIScreen.main.bounds.width - 150, height: 360)
//                            .background(Color("Color\(i)"))
//                            .cornerRadius(15)
//                        }
//                    }
//                    .padding(.leading,20)
//                    .padding(.trailing)
//                }
//                .padding(.leading,-165)
//            }
//            // fixed height...
//            .padding(.top,30)
//            .frame(height: 400)
//            // when view is rotated width is converted to height,...
//
//            HStack{
//
//                Text("New Releases")
//                    .font(.system(size: 22))
//                    .fontWeight(.bold)
//                    .foregroundColor(.black)
//
//                Spacer()
//
//                Text("1/2")
//                    .fontWeight(.bold)
//                    .foregroundColor(.black)
//            }
//            .padding(.top,25)
//            .padding(.horizontal)
//
//            // Menu...
//
//            ScrollView(.horizontal, showsIndicators: false) {
//
//                HStack(spacing: 20){
//
//                    ForEach(2...6,id: \.self){i in
//
//                        Image("p\(i)")
//                            .resizable()
//                            .frame(width: 65, height: 35)
//                            .rotationEffect(.init(degrees: 12))
//                            .padding(.vertical,25)
//                            .padding(.horizontal)
//                            .background(Color("Color\(i)"))
//                            .cornerRadius(15)
//                    }
//                }
//                .padding(.horizontal)
//            }
//            .padding(.top,20)
//
//            Spacer(minLength: 0)
//
//
//        }
//        // since all edges are ignored....
//        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
//    }
//}

struct VerticalMenu : View {
    
    @State var index = 0
    
    var body: some View{
        
        HStack(spacing: 0){
            
            Button {
                
                index = 0
                
            } label: {
             
                VStack(spacing: 5){
                    
                    Text("Men")
                        .fontWeight(index == 0 ? .bold : .none)
                        .foregroundColor(index == 0 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 0 ? 1 : 0)
                }
            }
            .padding(.leading)
            
            Spacer(minLength: 0)
            
            Button {
                
                index = 1
                
            } label: {
             
                VStack(spacing: 5){
                    
                    Text("Women")
                        .fontWeight(index == 1 ? .bold : .none)
                        .foregroundColor(index == 1 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 1 ? 1 : 0)
                }
            }
            
            Spacer(minLength: 0)
            
            Button {
                
                index = 2
                
            } label: {
             
                VStack(spacing: 5){
                    
                    Text("Kids")
                        .fontWeight(index == 2 ? .bold : .none)
                        .foregroundColor(index == 2 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 2 ? 1 : 0)
                }
            }
            
            Spacer(minLength: 0)
            
            Button {
                
                index = 3
                
            } label: {
             
                VStack(spacing: 5){
                    
                    Text("Custom")
                        .fontWeight(index == 3 ? .bold : .none)
                        .foregroundColor(index == 3 ? .black : .gray)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 8, height: 8)
                        .opacity(index == 3 ? 1 : 0)
                }
            }
            .padding(.trailing)

        }
        .padding(.vertical,30)
        // fixed width for view rotation...
        .frame(width: 400)
        .background(Color.black.opacity(0.1))
        .cornerRadius(15)
        // rotating view...
        .rotationEffect(.init(degrees: -90))
    }
}

struct TopMenu : View {

    var menu : Int
    @Binding var index : Int
    
    var body: some View{
    
        VStack(spacing: 8){
            
            Text(topMenu[menu])
                .font(.system(size: 22))
                .fontWeight(index == menu ? .bold : .none)
                .foregroundColor(index == menu ? .black : .gray)
            
            Circle()
                .fill(Color.black)
                .frame(width: 10, height: 10)
                .opacity(index == menu ? 1 : 0)
        }
        .onTapGesture {
            
            withAnimation{
                
                index = menu
            }
        }
    }
}

var topMenu = ["Shoes","Clothing","By Sports","By Brand","By Price"]

struct MainView : View {
    
    @State var topIndex = 0
    @State var index = 0
    @State var show = false
    @State var selectedIndex = 0
    // hero Animation....
    @Namespace var name
    // since namespace cannot be shared to other views so we need to copy all the views into one view when ever its using Namespace or hero Animation...
    // hope public version will solve this....
    
    var body: some View{
        
        ZStack{
            
            VStack(spacing: 0){
                
                // tab view with tabs....
                
                // change tabs based on index...
                
                // Scroll View For Smaller Size Phones....
                
                ScrollView(UIScreen.main.bounds.height < 750 ? .vertical : .init(), showsIndicators: false) {
                    
                    VStack{
                        
                        HStack{
                            
                            Image("logo")
                                .renderingMode(.original)
                            
                            Spacer()
                            
                            Button(action: {}) {
                                
                                Image("menu")
                                    .renderingMode(.original)
                            }
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 30){
                                
                                ForEach(0..<topMenu.count){menu in
                                    
                                    TopMenu(menu: menu, index: $topIndex)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding(.top,10)
                        
                        // Vertical Menu...
                        
                        HStack{
                            
                            VerticalMenu()
                                // moving view to left...
                                .padding(.leading,-165)
                                .zIndex(1)
                            // moving view in stack for click event...
                            
                            // Scroll view....
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack(spacing: 15){
                                    
                                    ForEach(1...6,id: \.self){i in
                                        
                                        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                                            
                                            // background Nike Logo...
                                            
                                            Image("logo")
                                                .resizable()
                                                .renderingMode(.template)
                                                .frame(height: 110)
                                                .foregroundColor(Color.black.opacity(0.08))
                                                .padding(.top,55)
                                                .padding(.horizontal)
                                            
                                            VStack(alignment: .leading){
                                                
                                                Text("$259")
                                                    .font(.system(size: 22))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                
                                                Spacer(minLength: 0)
                                                
                                                Image("p\(i)")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                // rotaing image....
                                                    .rotationEffect(.init(degrees: 12))
                                                    .matchedGeometryEffect(id: "p\(i)", in: name)
                                                
                                                Spacer(minLength: 0)
                                                
                                                Text("Men's Shoe")
                                                    .foregroundColor(Color.white.opacity(0.6))
                                                
                                                Text("Nike Air Huarache\nRun DNA")
                                                    .font(.system(size: 22))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                            }
                                        }
                                        .padding(.horizontal)
                                        .padding(.vertical)
                                        // fixed Frame...
                                        .frame(width: UIScreen.main.bounds.width - 150, height: 360)
                                        .background(Color("Color\(i)"))
                                        .cornerRadius(15)
                                        // opening hero animation...
                                        .onTapGesture {
                                            
                                            withAnimation(.spring()){
                                                
                                                selectedIndex = i
                                                show.toggle()
                                            }
                                        }
                                    }
                                }
                                .padding(.leading,20)
                                .padding(.trailing)
                            }
                            .padding(.leading,-165)
                        }
                        // fixed height...
                        .padding(.top,30)
                        .frame(height: 400)
                        // when view is rotated width is converted to height,...
                        
                        HStack{
                            
                            Text("New Releases")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("1/2")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding(.top,25)
                        .padding(.horizontal)
                        
                        // Menu...
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 20){
                                
                                ForEach(2...6,id: \.self){i in
                                    
                                    Image("p\(i)")
                                        .resizable()
                                        .frame(width: 65, height: 35)
                                        .rotationEffect(.init(degrees: 12))
                                        .padding(.vertical,25)
                                        .padding(.horizontal)
                                        .background(Color("Color\(i)"))
                                        .cornerRadius(15)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding(.top,20)
                        
                        Spacer(minLength: 0)
                        
                        
                    }
                    // since all edges are ignored....
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom)
                }
                
                // tab View...
                
                HStack(spacing: 0){
                
                    Button {
                        
                        // animating..
                        
                        withAnimation{
                            
                            index = 0
                        }
                        
                    } label: {
                            
                        HStack(spacing: 8){
                            
                            Image(systemName: "house.fill")
                                .foregroundColor(index == 0 ? .white : Color.black.opacity(0.35))
                                .padding(10)
                                .background(index == 0 ? Color.black : Color.clear)
                                .cornerRadius(8)
                            
                            Text(index == 0 ? "Home" : "")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                        // animating..
                        
                        withAnimation{
                            
                            index = 1
                        }
                        
                    } label: {
                            
                        HStack(spacing: 8){
                            
                            Image(systemName: "suit.heart")
                                .foregroundColor(index == 1 ? .white : Color.black.opacity(0.35))
                                .padding(10)
                                .background(index == 1 ? Color.black : Color.clear)
                                .cornerRadius(8)
                            
                            Text(index == 1 ? "Loved" : "")
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                        // animating..
                        
                        withAnimation{
                            
                            index = 2
                        }
                        
                    } label: {
                            
                        HStack(spacing: 8){
                            
                            Image(systemName: "person.fill")
                                .foregroundColor(index == 2 ? .white : Color.black.opacity(0.35))
                                .padding(10)
                                .background(index == 2 ? Color.black : Color.clear)
                                .cornerRadius(8)
                            
                            Text(index == 2 ? "Account" : "")
                                .foregroundColor(.black)
                        }
                    }

                }
                .padding(.top)
                .padding(.horizontal,25)
                .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                .background(Color.white)
                // since all edges are ignored...
                
            }
            
            // Hero View....
            
            if show{
                
                VStack{
                    
                    VStack{
                        
                        HStack{
                            
                            Button(action: {}) {
                                
                                Image(systemName: "suit.heart")
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                                // closing hero view...
                                
                                withAnimation(.spring()){
                                    
                                    show.toggle()
                                }
                                
                            }) {
                                
                                Image(systemName: "xmark")
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Image("p\(selectedIndex)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 250)
                            .matchedGeometryEffect(id: "p\(selectedIndex)", in: name)
                            .rotationEffect(.init(degrees: 12))
                            .padding(.horizontal)
                    }
                    .padding()
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color("Color\(selectedIndex)"))
                    
                    ScrollView(UIScreen.main.bounds.height < 750 ? .vertical : .init(), showsIndicators: false) {
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Men's Shoe")
                                    .foregroundColor(.gray)
                                
                                Text("Nike Air Huarache Run DNA")
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            Text("$249")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                        
                        Text("The Nike Air Huarache Run DNA Ch. 1 re-imagines not only the original Air Huarache design, but incorporates elements from another legendary icon, the Air Max...")
                            .foregroundColor(.black)
                            .padding(.top,20)
                            .padding(.horizontal)
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 12) {
                                
                                Text("Colors")
                                    .font(.title)
                                
                                HStack(spacing: 15){
                                    
                                    ForEach(1...6,id: \.self){i in
                                        
                                        if i != selectedIndex{
                                            
                                            Button(action: {}) {
                                                
                                                Circle()
                                                    .fill(Color("Color\(i)"))
                                                    .frame(width: 22, height: 22)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Spacer(minLength: 0)
                        }
                        .padding(.horizontal)
                        .padding(.top,25)
                        
                        Spacer(minLength: 0)
                        
                        // Button...
                        
                        Button(action: {}) {
                            
                            Text("Add To Cart")
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.main.bounds.width - 100)
                                .background(Color.black)
                                .clipShape(Capsule())
                        }
                        .padding(.bottom,40)
                        .padding(.top)
                    }
                    
                }
                .background(Color.white)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}
