//
//  characterCellView.swift
//  RickAndMortyApp
//
//  Created by Horacio Mota on 07/09/2023.
//

import SwiftUI

struct characterCellView: View {
    var body: some View {

        VStack {
            Rectangle()
                .frame(width: 120, height: 180)
                .cornerRadius(20)
            
            Text("Rick Sanchez")
                .font(.headline)
                .fontWeight(.bold)
            
            Text("Human, Alibe")
                .font(.footnote)
                .foregroundColor(.gray)
            
        }

    }
}

struct characterCellView_Previews: PreviewProvider {
    static var previews: some View {
        characterCellView()
    }
}
