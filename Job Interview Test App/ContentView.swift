//
//  ContentView.swift
//  Job Interview Test App
//
//  Created by Brock Kennedy on 2024-09-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Captcha()
    }
}

struct Captcha: View {
  var body: some View {
    HStack{
      Spacer()
      VStack{
        HStack{
          VStack(alignment: .leading){
            Text("Select all images with")
            Text("ai art")
              .fontWeight(.heavy)
            Text("Click verify once there are none left")
          }
          Spacer()
        }
        .padding()
        .foregroundColor(.white)
        VStack{
          HStack{
            CaptchaBox()
            CaptchaBox()
            CaptchaBox()
          }
          HStack{
            CaptchaBox()
            CaptchaBox()
            CaptchaBox()
          }
          HStack{
            CaptchaBox()
            CaptchaBox()
            CaptchaBox()
          }
        }
        .background(.white)
        HStack{
          Button(action: {}){
            Text("refresh")
          }
          Button(action: {}){
            Text("github")
          }
          Spacer()
          Button(action: {}){
            Text("verify")
          }
        }
        .padding()
        .foregroundColor(.white)
      }
      .background(.blue)
      Spacer()
    }
    
  }
}

struct CaptchaBox: View {
  var body: some View{
    Button(action: {}) {
      Rectangle()
        .frame(width: 100, height: 100)
    }
  }
}

#Preview {
    ContentView()
}
