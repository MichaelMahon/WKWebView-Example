//
//  ViewController.swift
//  WebRequestTest3
//
//  Created by Michael Mahon on 4/22/16.
//  Copyright © 2016 Michael Mahon. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var pageView: UIView!
    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageView.addSubview(webView)
    }

    override func viewDidAppear(animated: Bool) {
        setNewFrame()
        loadPage("https://google.com")
    }
    
    func loadPage(urlString: String) {
        webView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        setNewFrame()
    }
    
    func setNewFrame(){
        let frame = CGRectMake(1, 1, pageView.bounds.width, pageView.bounds.height)
        webView.frame = frame
    }
    
    @IBAction func onDominosTap(sender: AnyObject) {
        loadPage("https://www.dominos.com")
    }
    @IBAction func onRedditTap(sender: AnyObject) {
        loadPage("https://m.reddit.com")
    }
    @IBAction func onGoogleTap(sender: AnyObject) {
        loadPage("https://www.google.com")
    }
    @IBAction func userDidSwipe(sender: AnyObject) {
    }
}