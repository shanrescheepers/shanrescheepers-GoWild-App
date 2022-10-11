//
//  Card3View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card3View: View {
    var body: some View {
        HStack{
            VStack{
                Text("Card 3")
                Image("logopng").resizable(resizingMode: .tile).fixedSize().padding(.horizontal, 9.0)
            }
       
        }
     
    }
}

struct Card3View_Previews: PreviewProvider {
    static var previews: some View {
        Card3View()
    }
}
