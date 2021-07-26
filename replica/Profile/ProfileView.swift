//
//  ProfileView.swift
//  replica
//
//  Created by Stamp Dev on 20/7/21.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appState: AppStateManager
    @EnvironmentObject var userMng: UserManager
    
    var user: User {
        return userMng.currentUser
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                RoundedImage(url: user.imageURLS.first)
                    .frame(height: 175)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                })
                .padding(.vertical, 10)
                .offset(x: -10)
            }
            
            Spacer()
                .frame(height: 18)
            
            Text("\(user.name), \(user.age)")
                .foregroundColor(.textTilte)
                .font(.system(size: 26, weight: .medium))
            
            Spacer()
                .frame(height: 8)
            
            Text("\(user.jobTitle)")
            
            Spacer()
                .frame(height: 22)

            HStack(alignment: .top) {
                Spacer()
                
                VStack {
                    Button(action: { }, label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                    })
                    Text("SETTINGS")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
                
                Spacer()
                
                VStack {
                    Button(action: { }, label: {
                        Image(systemName: "camera.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 38))
                            .padding(22)
                            .background(Color.red)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                    })
                    Text("ADD MEDIA")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
                
                Spacer()
                
                VStack {
                    Button(action: { }, label: {
                        Image(systemName: "shield.fill")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                    })
                    Text("SAFETY")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
                
                Spacer()
            }
            
            Spacer().frame(height: 14)
            
            HStack {
                Text("\(user.profileTip)")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Button(action: { }, label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .heavy))
                        .foregroundColor(.pink)
                        .padding(6)
                })
                .background(Color.white)
                .clipShape(Circle())
            }
            .padding()
            .background(Color.pink)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            
            if !user.goldSubscriber {
                ZStack {
                    Color.gray.opacity(0.15)
                    
                    ProfileSwipePromo {
                        appState.showPurchaseScreen()
                    }
                }
                .padding(.top, 18)
            }
            else {
                Spacer()
            }
        }
        .foregroundColor(Color.black.opacity(0.75))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(AppStateManager())
            .environmentObject(UserManager())
    }
}
