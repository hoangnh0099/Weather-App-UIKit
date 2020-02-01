//
//  UIView+constraints.swift
//  WeatherApp
//
//  Created by Nguyễn Huy Hoàng on 2/1/20.
//  Copyright © 2020 Nguyễn Huy Hoàng. All rights reserved.
//

import UIKit

extension UIView {
    func pinEdgesToSafeArea(of view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
        self.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
        ).isActive = true
        self.leftAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.leftAnchor
        ).isActive = true
        self.rightAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.rightAnchor
        ).isActive = true
    }
    
    func pinEdges(to view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
        self.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
        ).isActive = true
        self.leftAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.leftAnchor
        ).isActive = true
        self.rightAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.rightAnchor
        ).isActive = true
    }
}
