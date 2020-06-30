//
//  ArchitectureListView.swift
//  Landmark Book
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI

struct ArchitectureListView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(ArchitectureList){ architect in
                        NavigationLink(destination: ArchitectureListDetailView(selectLandmark: architect)) {
                            HStack{
                                Image(architect.imagename)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.1)
                                Text(architect.name)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ArchitectureListView_Previews: PreviewProvider {
    static var previews: some View {
        ArchitectureListView()
    }
}
