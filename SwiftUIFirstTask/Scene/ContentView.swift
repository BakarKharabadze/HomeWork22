//
//  ContentView.swift
//  SwiftUIFirstTask
//
//  Created by Bakar Kharabadze on 5/22/24.
//

import SwiftUI

// MARK: - ContentView
struct ContentView: View {
    // MARK: - Properties
    @State var musicTitle: MusicTitle = .original
    @State var chatColor: Color = Color("chatColor")
    @State var FloatButton: Color = Color("floatingColor")
    
    let colors: [Color] = [.green, .blue, .orange, .purple, .pink, .yellow]
    
    // MARK: Body
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                HStack(spacing: 13) {
                    musicView
                        .padding(.leading, 9)
                    verticalStack
                        .padding(.trailing, 23)
                }
                .padding(.top, 7)
                .padding(.bottom, 30)
                
                List {
                    ForEach(News.allNews, id: \.id) { news in
                        HStack {
                            Image("listPhoto")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(news.title)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text(news.description)
                                    .font(.subheadline)
                                    .foregroundColor(Color("descriptionColor"))
                            }
                        }
                    }
                    .listRowBackground(Color("backgroundColor"))
                }
                .listStyle(PlainListStyle())
                .background(Color("backgroundColor"))
            }
            .overlay(
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            self.FloatButton = self.colors.randomElement() ?? .blue
                        }) {
                            Image("floatingButton")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .frame(width: 50, height: 50)
                                .background(FloatButton)
                                .clipShape(Circle())
                        }
                        .padding()
                    }
                }
            )
        }
    }
    
    // MARK: - Music View
    var musicView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color("musicColor"))
                .frame(width: 165, height: 232)
            
            Image("musicPhoto")
                .resizable()
                .cornerRadius(18)
                .aspectRatio(contentMode: .fit)
                .frame(width: 82, height: 182)
                .offset(x: 40, y: 25)
            
            Button(action: {
                switch self.musicTitle {
                case .original:
                    self.musicTitle = .changed
                case .changed:
                    self.musicTitle = .original
                }
            }, label: {
                Image("musicButton")
                    .resizable()
                    .scaledToFit()
            })
            .frame(width: 32, height: 32)
            .contentShape(Circle())
            .offset(x: -44, y: -88)
            
            Text("ჯუზონები და რამე")
                .font(.system(size: 9))
                .foregroundColor(.white)
                .offset(x: -35, y: -60)
            
            Text(musicTitle.rawValue)
                .font(.system(size: 17))
                .frame(width: 108, height: 88)
                .foregroundColor(.white)
                .offset(x: -15, y: 45)
        }
    }
    
    // MARK: - Chat View
    var chatView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(chatColor)
                .frame(width: 165, height: 110)
            
            Image("chatPhoto")
                .resizable()
                .cornerRadius(18)
                .scaledToFit()
                .frame(width: 97, height: 93)
                .offset(x: 44, y: 7)
            
            Button(action: {
                self.chatColor = self.colors.randomElement() ?? .orange
            }, label: {
                Image("chatButton")
                    .resizable()
                    .scaledToFit()
            })
            .frame(width: 32, height: 32)
            .contentShape(Circle())
            .offset(x: -55, y: -25)
            
            Text("ჩატაობა")
                .foregroundColor(.white)
                .font(.system(size: 9))
                .offset(x: -52, y: 0)
        }
    }
    
    // MARK: - News View
    var newsView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color("newsColor"))
                .frame(width: 165, height: 110)
            
            Image("newsPhoto")
                .resizable()
                .cornerRadius(18)
                .frame(width: 66, height: 86)
                .scaledToFit()
                .offset(x: 50, y: 12)
            
            Button(action: {
                self.chatColor = .green
            }, label: {
                Image("newsButton")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .offset(x: -55, y: -25)
            })
            
            Text("ცეცხლოვანი სიახლეები")
                .frame(width: 61, height: 26)
                .foregroundColor(.white)
                .font(.system(size: 9))
                .offset(x: -45, y: 5)
        }
    }
    
    var verticalStack: some View {
        VStack {
            chatView
            newsView
        }
    }
}

#Preview {
    ContentView()
}
