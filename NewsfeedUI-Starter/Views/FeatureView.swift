//
//  FeatureView.swift
//  NewsfeedUI-Starter
//
//  Created by Adwait Ganguly on 8/2/22.
//

import SwiftUI

struct FeatureView: View {
    var article: NewsArticle
    
    var body: some View {
        RemoteImage(url: article.urlToImage)
            .aspectRatio(3/2, contentMode: .fit)
            .overlay(TextOverlay(text: article.title))
    }
}

struct TextOverlay: View {
    var text: String
    
    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(0)]),
        startPoint: .bottom,
        endPoint: .center
        )
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Rectangle()
                .fill(gradient)
            Text(text)
                .font(.headline)
                .padding()
                .padding(.bottom, 25)
        }
        .foregroundColor(.white)
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView(article: NewsFeed.sampleData[0])
    }
}
