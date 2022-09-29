//
//  LabelTimeAtom.swift
//  ios-logger
//
//  Created by Tyler Inari on 2022-09-28.
//

import SwiftUI

struct LabelTimeAtom: View {
    var body: some View {
        Text("Time")
            .frame(maxWidth: .infinity)
            .padding()
    }
}

struct LabelTimeAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelTimeAtom()
            .previewLayout(.sizeThatFits)
    }
}
