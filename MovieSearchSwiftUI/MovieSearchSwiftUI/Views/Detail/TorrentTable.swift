//
//  TorrentTable.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct TorrentTable: View {
    let torrents: [Torrent]
    let onTorrentTapped: ((String) -> Void)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            ForEach(torrents) { torrent in
                VStack (alignment: .leading) {
                    Text(torrent.quality)
                        .font(.title2)
                    Spacer().frame(height: 8)
                    Text("Seeds: \(torrent.seeds)")
                    Text("Peers: \(torrent.peers)")
                    Text("Date: \(torrent.dateUploaded)")
                }
                .onTapGesture { onTorrentTapped(torrent.url) }
            }
        }
    }
}

struct TorrentTable_Previews: PreviewProvider {
    static var previews: some View {
        TorrentTable(torrents: [torrentPreview], onTorrentTapped: {_ in })
    }
}
