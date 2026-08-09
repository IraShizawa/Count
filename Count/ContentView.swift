//
//  ContentView.swift
//  Count
//
//  Created by Shizawa Ira on 2026/08/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var result = ""
    
    var body: some View {
        VStack {
            Text("\(result)")
                .frame(width: 300, height: 100)
                .font(.system(size: 32))
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size :48))
                .foregroundColor(count >= 0 ? .red:.blue)
            HStack{
                Button{
                    count += 1
                    if count >= 5{
                        result = "プラスの勝ち！"
                    }else if count <= -5{
                        result = "マイナスの勝ち!"
                    }else {
                        result = ""
                    }
                }label:{
                    Text("+")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.red)
                }
                
                Button{
                    count -= 1
                    if count >= 5{
                        result = "プラスの勝ち！"
                    }else if count <= -5{
                        result = "マイナスの勝ち!"
                    }else {
                        result = ""
                    }
                }label:{
                    Text("-")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
