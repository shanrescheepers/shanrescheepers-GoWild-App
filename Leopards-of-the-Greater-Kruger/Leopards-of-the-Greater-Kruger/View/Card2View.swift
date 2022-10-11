//
//  Card2View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card2View: View {
    var body: some View {
        HStack{
            VStack{
                Text("Card 2")
                Image("logopng").resizable(resizingMode: .tile).fixedSize().padding(.horizontal, 9.0)
            }
       
        }
     
    }
}

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}
