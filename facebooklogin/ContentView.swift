//
//  ContentView.swift
//  facebooklogin
//
//  Created by Isaias Teodoro Felisbino on 01/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            
            Color ("BackgroundColor").ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:280)
                
                Spacer().frame(height: 64)
                
                VStack {
                    TextField("Telefone ou Email", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                        .keyboardType(.emailAddress)
                    Divider()
                    SecureField("Senha", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                    
                }.background(Color.white)
                    .cornerRadius(4.0)
                
                Spacer().frame(height: 16)
                
                Button("Entrar") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.font(.title.weight(.medium))
                .font (.title3)
                .foregroundColor(.white)
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(Color("ButtonColor"))
                .cornerRadius(4.0)
                
                Spacer().frame(height: 64)
                
                
                VStack (spacing: 8){
                    Button("Criar uma nova conta do Facebook") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(.white)
                    
                    
                    Button("Esqueceu a senha?") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.foregroundColor(Color("TextColor"))                }
                
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
