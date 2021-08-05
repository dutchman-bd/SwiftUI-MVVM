//
//  AppetizerCell.swift
//  SwiftUI-MVVM
//
//  Created by dutchman on 5/8/21.
//

import SwiftUI

struct AppetizerCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
        }
    }
}

struct AppetizerCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCell(appetizer: MockData.sampleAppetizer)
    }
}
