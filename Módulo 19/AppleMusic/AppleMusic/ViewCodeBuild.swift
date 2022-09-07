//
//  ViewCodeBuild.swift
//  AppleMusic
//
//  Created by Marcelo Machado on 07/09/22.
//

import Foundation

protocol ViewCodeBuild {
	func buildViewHierarchy()
	func setupConstraints()
	func setupAdditionalConfiguration()
	func setupView()
}

extension ViewCodeBuild {
	func setupView() {
		buildViewHierarchy()
		setupConstraints()
		setupAdditionalConfiguration()
	}
}
