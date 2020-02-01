//
//  WeatherPresenter.swift
//  WeatherApp
//
//  Created by Nguyễn Huy Hoàng on 2/1/20.
//  Copyright © 2020 Nguyễn Huy Hoàng. All rights reserved.
//

import UIKit

protocol WeatherPresenter {
    var backgroundColors: [CGColor] { get }
}

class WeatherPresenterImpl: WeatherPresenter {
    var backgroundColors: [CGColor] {
        return sunnyColors
    }

    private let sunnyColors: [CGColor] = {
        return [UIColor.sunnyTop.cgColor, UIColor.sunnyBottom.cgColor]
    }()

    private let snowyColors: [CGColor] = {
        return [UIColor.snowyTop.cgColor, UIColor.snowyBottom.cgColor]
    }()
}
