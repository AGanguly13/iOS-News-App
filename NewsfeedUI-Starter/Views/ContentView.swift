//
//  ContentView.swift
//  NewsfeedUI-Starter
//
//  Created by Longe, Chris on 1/3/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var newsFeed = NewsFeed()
    
    var body: some View {
        NavigationView {
            List {
                if !newsFeed.general.isEmpty {
                    CarouselView(articles: Array(newsFeed.general.prefix(5)))
                        .listRowInsets(EdgeInsets())
                }
                
                if !newsFeed.sports.isEmpty {
                    CategoryRow(categoryName: "Sports", articles: newsFeed.sports)
                        .listRowInsets(EdgeInsets())
                }
                
                if !newsFeed.health.isEmpty {
                    CategoryRow(categoryName: "Health", articles: newsFeed.health)
                        .listRowInsets(EdgeInsets())
                }
                
                if !newsFeed.entertainment.isEmpty {
                    CategoryRow(categoryName: "Entertainment", articles: newsFeed.entertainment)
                        .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("Newsfeed")
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
