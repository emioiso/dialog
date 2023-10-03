//
//  ContentView.swift
//  alert
//
//  Created by emi oiso on 2023/10/03.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    
    var body: some View {
        VStack {
            Button("アラート"){
                isShowAlert = true
            }
            .padding()
            
            Button("ダイアログ"){
                isShowDialog = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか？",isPresented: $isShowAlert){
            Button("削除する",role: .destructive){
                
            }
            Button("キャンセル",role: .cancel){
                
            }
        } message: {
            Text("一度削除したら元に戻すことはできません")
        }
        .confirmationDialog("タイトル", isPresented: $isShowDialog,titleVisibility: .visible) {
            Button("選択肢1"){
                
            }
            Button("選択肢2"){
                
            }
            Button("選択肢3"){
                
            }
            Button("キャンセル",role: .cancel){
                
            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

#Preview {
    ContentView()
}
