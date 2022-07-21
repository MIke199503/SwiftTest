//
//  WebView.swift
//  zhiliao
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/28.
//

import SwiftUI
import UIKit
import WebKit

struct CourseWebView:UIViewRepresentable{
    let url:URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView:WKWebView, context: Context) {
        guard let myURL = url else{
            return
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
    
}
