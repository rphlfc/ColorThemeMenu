//
//  ContentView.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 14/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1872259974, green: 0.2888302505, blue: 0.814283669, alpha: 1))
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    HeaderView()
                        .padding()
                    
                    Divider()
                        .background(Color.white)
                        .padding()
                    
                    SaleshouseView()
                        .padding(.horizontal)
                        .padding(.vertical, 20)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(8)
                        .padding()
                    
                    MenuView()
                        .padding(.top)
                    
                    UsedSpaceView()
                        .foregroundColor(.white)
                        .padding(20)
                        .background(Color(#colorLiteral(red: 0.1452784836, green: 0.2314804792, blue: 0.6926547885, alpha: 1)))
                        .cornerRadius(8)
                        .padding()
                    
                    Divider()
                        .background(Color.white)
                        .padding()
                    
                    ProfileView()
                        .padding()
                }
            })
        }
    }
}

struct ProfileView: View {
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
            
            Text("Raphael Cerqueira")
                .font(.title3)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: {}, label: {
                VStack {
                    Circle()
                        .frame(width: 6, height: 6)
                    
                    Circle()
                        .frame(width: 6, height: 6)
                }
                .foregroundColor(.white)
            })
        }
    }
}

struct UsedSpaceView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Used space")
                .font(.title3)
                .fontWeight(.semibold)
            
            Text("Admin updated 09:12 am")
            
            Text("November 08, 2020")
            
            HStack {
                Spacer()
                
                Text("71%")
            }
            
            ZStack(alignment: .leading) {
                Capsule()
                    .frame(maxWidth: .infinity)
                    .frame(height: 6)
                    .opacity(0.3)
                
                Capsule()
                    .frame(width: 200)
                    .frame(height: 6)
            }
        }
    }
}

struct MenuView: View {
    @State var selectedIndex: Int = 0
    @Namespace var namespace
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0 ..< 4) { i in
                MenuItemView(item: items[i], selectedIndex: $selectedIndex, index: i, namespace: namespace)
                    .padding(.leading)
                    .padding(.trailing, 3)
                    .padding(.vertical, 8)
                    .onTapGesture {
                        withAnimation {
                            selectedIndex = i
                        }
                    }
            }
            
            Text("SHORTCUTS")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading)
                .padding(.top)
                .foregroundColor(Color.white.opacity(0.3))
            
            ForEach(4 ..< 7) { i in
                MenuItemView(item: items[i], selectedIndex: $selectedIndex, index: i, namespace: namespace)
                    .padding(.leading)
                    .padding(.trailing, 3)
                    .padding(.vertical, 8)
                    .onTapGesture {
                        withAnimation {
                            selectedIndex = i
                        }
                    }
            }
        }
    }
}

struct MenuItemView: View {
    var item: MenuItem
    @Binding var selectedIndex: Int
    var index: Int
    var namespace: Namespace.ID
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .font(.system(size: 21))
                .foregroundColor(selectedIndex == index ? .white : Color("secondary"))
            
            Text(item.title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(selectedIndex == index ? .white : Color("secondary"))
            
            Spacer()
            
            Text(String(item.badge ?? 0))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding(8)
                .background(Color(#colorLiteral(red: 0.9361843467, green: 0.3738268018, blue: 0.2627907395, alpha: 1)))
                .clipShape(Circle())
                .opacity(item.badge != nil ? 1 : 0)
                .padding(.trailing)
            
            ZStack {
                Capsule()
                    .frame(width: 4, height: 40)
                    .foregroundColor(.clear)
                
                if selectedIndex == index {
                    Capsule()
                        .frame(width: 4, height: 40)
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "selector", in: namespace)
                }
            }
        }
    }
}

struct SaleshouseView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .overlay(
                    HStack(spacing: 0) {
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.1872954965, green: 0.2914423347, blue: 0.7732083797, alpha: 1)))
                        
                        Circle()
                            .frame(width: 10, height: 10)
                            .offset(y: 10)
                            .foregroundColor(Color(#colorLiteral(red: 0.1872954965, green: 0.2914423347, blue: 0.7732083797, alpha: 1)))
                    }
                    .offset(y: -4)
                )
                .background(Circle().shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5))
                
            VStack(alignment: .leading) {
                Text("Saleshouse")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text("general team")
                    .foregroundColor(Color("secondary"))
            }
            
            Spacer()
            
            VStack(spacing: 4) {
                Image(systemName: "chevron.up")
                    .font(.system(size: 17, weight: .bold))
                
                Image(systemName: "chevron.down")
                    .font(.system(size: 17, weight: .bold))
            }
            .foregroundColor(.white)
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            LogoView()
            
            Spacer()
            
            Text("Integration")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
}

struct LogoView: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                HorseShoeView()
                    .rotationEffect(.degrees(270))
                    .foregroundColor(Color(#colorLiteral(red: 0.5990232229, green: 0.644103229, blue: 0.9978863597, alpha: 1)))
                
                HorseShoeView()
                    .foregroundColor(Color(#colorLiteral(red: 0.7412165999, green: 0.3841100931, blue: 0.7441754937, alpha: 1)))
            }
            
            HorseShoeView()
                .rotationEffect(.degrees(135))
                .foregroundColor(Color(#colorLiteral(red: 0.3871058524, green: 0.7152147293, blue: 1, alpha: 1)))
        }
    }
}

struct HorseShoeView: View {
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.75)
            .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
            .frame(width: 20, height: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
