//
//  HorizontalListView.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 18/09/26.
//

import SwiftUI

struct HorizontalListView: View {
    let header : String
    var imageTitles = [Constants.ImageMovieURL2, Constants.ImageMovieURL3, Constants.ImageMovieURL4, Constants.ImageMovieURL5, Constants.ImageMovieURL6]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(header)
                .font(.title) //styling text "Header"
            
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(imageTitles, id: \.self){
                        imageTitle in
                        AsyncImage(url: URL(string:imageTitle)){
                            image in
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }placeholder: {
                            ProgressView()
                        }
                        .frame(width : 120, height: 200)
                    }
                }
            }
        }
        .frame(height: 250)
        .padding(10)
    }
}

#Preview {
    HorizontalListView(header: Constants.trendingAnimeString)
}
