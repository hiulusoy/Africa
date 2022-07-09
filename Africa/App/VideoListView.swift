//
//  VideoListView.swift
//  Africa
//
//  Created by Halil Usanmaz on 2.07.2022.
//

import SwiftUI

struct VideoListView: View {
    // MARK: PROPERTIES
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact:UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 12)
                    }
                }//: FOREACH
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        // SHUFFLE VIDEOS
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }//: BUTTON
                }//: TOOLBARITEM
            }//: TOOLBAR
        }//: NAVIGATION
    }
}
    // MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
