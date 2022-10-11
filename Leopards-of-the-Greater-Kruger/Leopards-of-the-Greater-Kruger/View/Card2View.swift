//
//  Card2View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card2View: View {
    var body: some View {
        VStack{
            Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
            Spacer()
            VStack{
                Image("compass").fixedSize()
            }
        }
     
    }
}

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}