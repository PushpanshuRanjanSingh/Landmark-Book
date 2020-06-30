//
//  ArchitectureListDetailView.swift
//  Landmark Book
//
//  Created by Pushpanshu Ranjan Singh on 01/07/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ArchitectureListDetailView: View {
    var selectLandmark: Architecture
    var body: some View {
        
        
        VStack{
            MapView(coordinate: selectLandmark.locationCoordinate)
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .edgesIgnoringSafeArea(.top)
            ArchitectureCircleImageView(image: Image(selectLandmark.imagename))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.5)
                .offset(y: UIScreen.main.bounds.height * -0.45)
                .padding(.bottom, UIScreen.main.bounds.height * -0.50)
            
            
            VStack(alignment: .leading){
                Text(selectLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                
                
                HStack{
                    Text(selectLandmark.country)
                        .font(.headline)
                    Text(selectLandmark.place)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(selectLandmark.category)
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
        
    }
}

struct ArchitectureListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArchitectureListDetailView(selectLandmark: Architecture1)
    }
}
