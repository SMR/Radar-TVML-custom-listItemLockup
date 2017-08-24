//
//  ViewController.swift
//  TVMLCustomListItem
//
//  Created by Vitalij Dadaschjanz on 24.08.17.
//  Copyright © 2017 zattoo. All rights reserved.
//

import UIKit
import TVMLKit

class ViewController: UIViewController {
    
    var appController: TVApplicationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appControllerContext = TVApplicationControllerContext()
        
        let appJS = Bundle.main.url(forResource: "application", withExtension: "js")
        guard let localJavaScriptURL = appJS else { fatalError("unable to create bundle path") }
        
        let javaScriptURL = localJavaScriptURL
        let baseURL = javaScriptURL.deletingLastPathComponent().absoluteString
        
        appControllerContext.javaScriptApplicationURL = javaScriptURL
        appControllerContext.launchOptions["BASEURL"] = baseURL
        
        appController = TVApplicationController(context: appControllerContext, window: nil, delegate: nil)
        
        guard let tvmlViewController = appController?.navigationController else { return }
        addChildViewController(tvmlViewController)
        view.addSubview(tvmlViewController.view)
    }

}

