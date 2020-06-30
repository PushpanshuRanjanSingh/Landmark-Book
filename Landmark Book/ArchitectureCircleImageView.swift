//
//  ArchitectureCircleImageView.swift
//  Landmark Book
//
//  Created by Pushpanshu Ranjan Singh on 01/07/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ArchitectureCircleImageView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5 ))
            .shadow(radius: 15)
    }
}

struct ArchitectureCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        ArchitectureCircleImageView(image: Image("BurjalArab"))
    }
}
