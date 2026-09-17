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
 
    static let ImageMovieURLString = "https://www.themoviedb.org/t/p/w600_and_h900_face/dB4EDhre2dsC2kxYDavyKWqLQwi.jpg"
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
