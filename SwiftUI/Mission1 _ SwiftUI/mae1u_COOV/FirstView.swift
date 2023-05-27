//
//  FirstView.swift
//  mae1u_COOV
//
//  Created by seunghoria on 2023/05/14.
//

import SwiftUI

struct FirstView: View {
    @State var buttonShow = false
    let AppleSDGothicNeo_medium = "AppleSDGothicNeoM"
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 150)
                    .foregroundColor(Color("ColorStatusGray"))
                    .padding(.bottom, 67)
                    .overlay{
                        VStack(alignment: .leading, spacing: 0){
                            if !buttonShow{
                                Text("본인인증 수단이 추가되었습니다.")
                                    .foregroundColor(Color("ColorStatusFont"))
                                    .font(.custom("AppleSDGothicNeo-Medium", size: 16))
                                    .padding(.bottom, 4)
                                                                    
                                Button {
                                    print("회색 줄 버튼 찍기")
                                } label: {
                                    RoundedRectangle(cornerRadius: 13.5)
                                        .frame(width: 75)
                                        .frame(height: 26).foregroundColor(Color("ColorStatusBlue"))
                                }
                            }
                            
                            if buttonShow {
                                Text("코로나19 예방접종 내역")
                                    .foregroundColor(Color("ColorStatusFont"))
                                    .font(.custom("AppleSDGothicNeo-Medium", size: 16))
                                    .padding(.bottom, 4)
                                
                                Button {
                                    print("회색 줄 버튼 찍기")
                                } label: {
                                    RoundedRectangle(cornerRadius: 13.5)
                                        .strokeBorder(Color("ColorStatusBtnGray"),lineWidth: 1)
                                        .frame(width: 75)
                                        .frame(height: 26)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32)
                    }
                
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 467)
                    .cornerRadius(16)
                    .foregroundColor(!buttonShow ? Color("ColorCardGray") : Color("ColorCardBackgroundBlue"))
                    .shadow(color: .black.opacity(0.12), radius: 12, x: 1, y: 1)
                    .overlay{
                        
                            if !buttonShow {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("본인인증 증명서")
                                        .foregroundColor(.white)
                                        .font(.custom("AppleSDGothicNeo-SemiBold", size: 28))
                                        .padding(.top, 263)
                                        .padding(.leading, 17)
                                        .padding(.bottom, 62)
                                    
                                    Rectangle()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 118)
                                        .foregroundColor(.white)
                                        .cornerRadius(16, corners: .bottomRight)
                                        .cornerRadius(16, corners: .bottomLeft)
                                        .overlay{
                                            VStack(spacing: 0){
                                                Button {
                                                    print("본인인증하기 버튼")
                                                    buttonShow.toggle()
                                                } label: {
                                                    Text("본인인증 하기")
                                                        .font(.custom("AppleSDGothicNeo-SemiBold", size: 16))
                                                        .foregroundColor(.white)
                                                        .frame(maxWidth: .infinity)
                                                        .frame(height: 47)
                                                        .background(Color("ColorCardBtnBlue"))
                                                        .cornerRadius(12)
                                                }
                                            }
                                            .padding(.horizontal, 37)
                                        }
                                }

                            }
                            
                            if buttonShow {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("코로나19 예방접종 증명서")
                                        .foregroundColor(.white)
                                        .font(.custom("AppleSDGothicNeo-SemiBold", size: 28))
                                        .padding(.top, 229)
                                        .padding(.leading, 17)
                                        .padding(.bottom, 52)
                                    
                                    
                                    Rectangle()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 118)
                                        .cornerRadius(16, corners: .bottomRight)
                                        .cornerRadius(16, corners: .bottomLeft)
                                        .foregroundColor(.white)
                                        .overlay{
                                            HStack(alignment: .top, spacing: 0){
                                                VStack(alignment: .leading, spacing: 0){
                                                    Text("접종차수")
                                                        .font(.custom("AppleSDGothicNeo-Medium", size: 14))
                                                        .padding(.bottom, 2)
                                                    
                                                    Text("1차")
                                                        .font(.custom("AppleSDGothicNeo-SemiBold", size: 28))
                                                }
                                                .padding(.leading, 17)
                                                .padding(.top, 20)
                                                
                                                Spacer()
                                                
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text("백신제조사")
                                                        .font(.custom("AppleSDGothicNeo-Medium", size: 14))
                                                        .padding(.bottom, 2)
                                                    
                                                    Text("화이자")
                                                        .font(.custom("AppleSDGothicNeo-Medium", size: 14))
                                                }
                                                .padding(.trailing, 30)
                                                .padding(.top, 20)
                                            }
                                            .padding(.bottom, 45)
                                            //.border(.green)
                                        }
                                }
                        }
                    }
                    .padding(.horizontal, 60)
                    .padding(.bottom, 71)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
