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
        self.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }

    func pinEdges(to view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
