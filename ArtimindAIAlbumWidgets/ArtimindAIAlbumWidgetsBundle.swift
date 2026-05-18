import WidgetKit
import SwiftUI

@main
struct ArtimindAIAlbumWidgetsBundle: WidgetBundle {
    var body: some Widget {
        if #available(iOS 16.2, *) {
            ArtimindGeneratingLiveActivity()
        }
    }
}
