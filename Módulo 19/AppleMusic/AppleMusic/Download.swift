//
//  Download.swift
//  AppleMusic
//
//  Created by Marcelo Machado on 07/09/22.
//

import Foundation

class Download: NSObject {
  var url: URL
  var task: URLSessionDownloadTask?
  
  init(url: URL) {
	self.url = url
  }
}
