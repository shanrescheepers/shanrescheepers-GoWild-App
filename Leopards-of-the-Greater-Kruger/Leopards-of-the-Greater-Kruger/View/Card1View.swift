//
//  Card1View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card1View: View {
    var body: some View {
      
            VStack{
              
                Image("logopng").resizable().frame(width:32, height: 25).padding(.horizontal, 9.0)
                Spacer()
                VStack(alignment: .center){
                    ZStack{
                        Image("saseka").resizable().aspectRatio(contentMode: .fit)

                    }
                    Button(action: {
                        //doa ction
                        print("SASEKA PRESSED")
                        
                    }) {
                        Text("SASEKA").frame(width: 200, height: 50, alignment: .center)
                    }
                    .background(Color("SecondaryButtonColor"))
                    .foregroundColor(Color("SecondaryTextColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
//                    Button("SASEKA"){
//                        print("Button tapped")
//
//
//
//                    }.background(Color("SecondaryButtonColor")).padding(4).clipShape(RoundedRectangle(cornerRadius: 15)).foregroundColor(Color("SecondaryTextColor"))
//
//                    Text("Get to know the famous iconic leopards of the Timbavati and Klaserie Private Nature Reserves")
                }
                Spacer()
                VStack{
                    Image("compass").fixedSize()
                }
            }
       
        
     
    }
}

struct Card1View_Previews: PreviewProvider {
    static var previews: some View {
        Card1View()
    }
}
