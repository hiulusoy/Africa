//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Halil Usanmaz on 9.07.2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: PROPERTIES
    
    var videoSelected: String;
    var videoTitle: String;
    
    
    
    // MARK: BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected , fileFormat: "mp4")){
                
            }
            .overlay(
                Image("logo").resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 10)
                    .padding(.horizontal, 10),alignment: .topLeading)
       
        }//: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle.uppercased(), displayMode: .inline)
    }
}
    // MARK: PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
                .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
