//
//  ContentView.swift
//  CashDaddy
//
//  Created by Ruchira  on 20/06/24.

import SwiftUI
import Firebase

struct LaunchScreenView: View {
    @State private var mobileNumber: String = ""
    @State private var navigateToVerification = false

    var body: some View {
        NavigationView {
            VStack {
                Image("launch")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: UIScreen.main.bounds.height / 2)
    
                Text("Simple solution for your budget.")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Text("Counter and distribute the income correctly...")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top, 5)

                Spacer()

                TextField("Enter your mobile number", text: $mobileNumber)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)

                NavigationLink(destination: VerificationView(), isActive: $navigateToVerification) {
                    Button(action: {
                        // Navigate to the Verification screen
                        navigateToVerification = true
                    }) {
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.primary)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                    }
                }
                .padding(.bottom, 20)

                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
