//
//  HomeView.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 17/09/26.
//

import SwiftUI

struct HomeView: View {
    var heroTestImageTitle = Constants.ImageMovieURL

    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: URL(string : heroTestImageTitle)){
                    image in
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                } placeholder:{
                    ProgressView()
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        Text(Constants.playString)
                            .ghostBtn()
                    }
                    
                    Button {
                        
                    } label: {
                        Text(Constants.downloadString)
                            .ghostBtn()
                    }
                }
                
                //TOP TRENDING HORIZONTAL LIST
                //ANIME
                HorizontalListView(header: Constants.trendingAnimeString)
                HorizontalListView(header: Constants.topRatedAnimeString)
                //Movie
                HorizontalListView(header: Constants.topRatedAnimeString)
                HorizontalListView(header: Constants.topRatedAnimeString)
                //Series
                HorizontalListView(header: Constants.trendingSeriesString)
                HorizontalListView(header: Constants.topRatedSeriesString)
            }
        }
    }
}

#Preview {
    HomeView()
}
