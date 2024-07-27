//
//  ContentView.swift
//  SwiftUI_CounterApp
//
//  Created by michael on 27/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var LableValue : Int = 0
    var body: some View {
        ZStack{
            Image("background_2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Label("Counter App", systemImage: "")
                    .font(.largeTitle)
                
                Spacer()
                
                Label("\(LableValue)", systemImage: "")
                    .frame(width: 150,height: 100)
                    .background(.gray)
                    
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button("mud one") {
                        
                        LableValue -= 1
                    }
                    .padding()
                    .buttonStyle(.bordered)
                    .tint(.black)
                    
                    
                    Spacer()
                    
                    Button("add one") {
                        LableValue += 1
                    }
                    .padding()
                    .buttonStyle(.bordered)
                    .tint(.black)
                   
                    Spacer()
                }
                
                Spacer()
                
                Button("Resit") {
                    LableValue = 0
                }
                .padding()
                .buttonStyle(.bordered)
                .tint(.black)
                .padding(.bottom,90)
                //Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
