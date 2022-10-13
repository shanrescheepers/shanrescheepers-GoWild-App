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
        Spacer()
            VStack(alignment: .center){
                ZStack{
                    Image("map").resizable().aspectRatio(contentMode:.fit)
                }.padding(.horizontal, 5.0)//zstack
                Button(action:{
                    print("Map Pressed")
                }){
                    Text("LOCATION MAP").frame(width: 200, height:50, alignment: .center)
                }
                .background(Color("SecondaryButtonColor"))
                .foregroundColor(Color("SecondaryTextColor"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            //vstack
            Spacer()
        }
    }
}

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}
