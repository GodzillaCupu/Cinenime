//
//  Constants.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 17/09/26.
//

import Foundation
import SwiftUI

struct Constants
{
    static let homeString = "Home"
    static let upcomingString = "Up Coming"
    static let searchString = "Search"
    static let downloadString = "Download"
    static let playString = "Play"
    
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    
    static let trendingAnimeString = "Trending Animes"
    static let trendingMovieString = "Trending Movies"
    static let trendingSeriesString = "Trending Series"
    static let topRatedAnimeString = "Top Rated Anime"
    static let topRatedMovieString = "Top Rated Movies"
    static let topRatedSeriesString = "Top Rated Series"
 
    //Used At Home View
    static let ImageMovieURL = "https://www.themoviedb.org/t/p/w600_and_h900_face/dB4EDhre2dsC2kxYDavyKWqLQwi.jpg"
    
    //Used At Trending View
    static let ImageMovieURL2 = "https://www.themoviedb.org/t/p/w600_and_h900_face/m5fRPYLziGuqHBJt2LalEmg8sgc.jpg"
    static let ImageMovieURL3 = "https://www.themoviedb.org/t/p/w600_and_h900_face/bAQ8O5Uw6FedtlCbJTutenzPVKd.jpg"
    static let ImageMovieURL4 = "https://www.themoviedb.org/t/p/w600_and_h900_face/v0s3dx6am0RzfsuK3KdEy8ZoCDs.jpg"
    static let ImageMovieURL5 = "https://www.themoviedb.org/t/p/w600_and_h900_face/hTP1DtLGFamjfu8WqjnuQdP1n4i.jpg"
    static let ImageMovieURL6 = "https://www.themoviedb.org/t/p/w600_and_h900_face/fWVSwgjpT2D78VUh6X8UBd2rorW.jpg"
}

extension Text{
    func ghostBtn() -> some View{
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.btnText)
            .bold()
            .background(){
                RoundedRectangle(cornerRadius: 20 , style: .continuous)
                    .stroke(.btnBorder, lineWidth: 5)
            }
    }
    
}
