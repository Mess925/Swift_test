////
////  ContentView.swift
////  app
////
////  Created by Messs  on 3/6/25.
////
//

import SwiftUI

struct ContentView: View {
    @State private var showNextView = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome.....")
                    .foregroundColor(.red)
                    .shadow(color: .white.opacity(0.5), radius: 4, x: 5, y: 4)
                    .bold()
                    .font(.largeTitle)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showNextView = true
                        }
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .ignoresSafeArea()
            .navigationDestination(isPresented: $showNextView) {
                ViewTwo()
            }
        }
    }
}

struct ViewTwo: View {
    @State private var navigateToSignUp = false
    @State private var navigateToLogin = false

    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 40)
                Circle()
                    .fill(Color.red)
                    .frame(width: 80, height: 80)
                    .overlay(
                        Image(systemName: "figure.run")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    )
                Text("LOGO")
                    .font(.title2)
                    .bold()
            }
            Spacer()
            VStack {
                Button {
                    navigateToSignUp = true
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .frame(maxWidth: 350, minHeight: 50)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal)
                }
                HStack(alignment: .center) {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)

                    Text("or")
                        .padding(.horizontal)

                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 340, maxHeight: 20)
                .padding(.horizontal)
                Button {
                    navigateToLogin = true
                } label: {
                    Text("Log in")
                        .font(.headline)
                        .frame(maxWidth: 350, minHeight: 50)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        .padding(.horizontal)
                }
            }

            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .padding()
                .multilineTextAlignment(.center)
                .font(.caption)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $navigateToSignUp) {
            SignUpView()
        }
        .navigationDestination(isPresented: $navigateToLogin) {
            LoginView()
        }
    }
}

struct SignUpView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 40)

            Rectangle()
                .fill(Color.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(30)
                .shadow(radius: 10)
                .overlay(
                    VStack {
                        Spacer().frame(height: 200)
                        Button(action: {
                        }) {
                            Text("E-Mail")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                        Spacer().frame(height: 25)
                        Button(action: {
                        }) {
                            Text("Password")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                        Text("Forgot your Password?")
                        Spacer()
                        Button(action: {
                        }) {
                            Text("Sign Up")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                        HStack(alignment: .center) {
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)

                            Text("or")
                                .padding(.horizontal)

                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                        }
                        HStack(alignment: .center) {
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .padding(25)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .padding(25)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .padding(25)
                        }
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                            .padding()
                            .multilineTextAlignment(.center)
                            .font(.caption)
                    }
                    .padding()
                )
                .edgesIgnoringSafeArea(.bottom)
        }
        .background(Color.black)
    }
}


struct LoginView: View {
    var body: some View {
        Text("Log In Page")
            .font(.largeTitle)
            .foregroundColor(.red)
            .background(Color.black)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


