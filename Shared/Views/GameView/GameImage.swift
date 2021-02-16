//
//  GameImage.swift
//  NameGame
//
//  Created by Robert Silverman on 2/15/21.
//

import SwiftUI

struct GameImage: View {
    @StateObject private var imageLoader: ImageLoader
    var loading = Image(systemName: "person.circle")
    var failure = Image(systemName: "exclamationmark.circle")
    
    var body: some View {
        getImage()
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
    }
    
    init(url: String) {
        _imageLoader = StateObject(wrappedValue: ImageLoader(url: url))
    }
    
    func getImage() -> Image {
        switch imageLoader.loadingState {
        case .loading:
            return loading
        case .failure:
            return failure
        default:
            if let image = UIImage(data: imageLoader.data) {
                return Image(uiImage: image)
            } else {
                return failure
            }
        }
    }
    
    private class ImageLoader: ObservableObject {
        var data = Data()
        var loadingState: LoadingState = .loading
        
        init(url: String) {
            guard let parsedURL = URL(string: url) else {
                fatalError("Invalid URL: \(url)")
            }
            
            URLSession.shared.dataTask(with: parsedURL) { data, response, error in
                if let data = data, data.count > 0 {
                    self.data = data
                    self.loadingState = .success
                } else {
                    self.loadingState = .failure
                }
                
                DispatchQueue.main.async {
                    self.objectWillChange.send()
                }
            }.resume()
        }
    }
    
    enum LoadingState {
        case loading, success, failure
    }
}

struct GameImage_Previews: PreviewProvider {
    static var previews: some View {
        GameImage(url: "https://namegame.willowtreeapps.com/mm.png")
    }
}
