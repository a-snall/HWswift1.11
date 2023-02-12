//
//  ContentView.swift
//  HWswift1.11
//
//  Created by Astrid Snäll on 2/6/23.
//



import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "  "
    @State private var imageName = ""
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            
            
            Button("Show image") {
                let message1 = "You're great!"
                let message2 = "You're awesome!"
                messageString = (messageString == message1 ? message2
                                 :message1)
                imageName = ( imageName == "image0" ? "image1"
                              : "image0" )
            }
            .buttonStyle(.borderedProminent)
            
            
        }}}
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
            
            
   
