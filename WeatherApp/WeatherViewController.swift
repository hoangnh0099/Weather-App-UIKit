//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Nguyễn Huy Hoàng on 2/1/20.
//  Copyright © 2020 Nguyễn Huy Hoàng. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    var mainView: WeatherView! {
        return (self.view as! WeatherView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = WeatherView(frame: UIScreen.main.bounds)
    }
}

class WeatherView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupViews()
        setupContraints()
    }
    
    private func setupViews() {
        self.addSubview(backgroundView)
        self.addSubview(mainStack)
        conditionsImageStack.addArrangedSubview(conditionsImageView)
        mainStack.addArrangedSubview(conditionsImageStack)
        mainStack.addArrangedSubview(temperatureLabel)
        mainStack.addArrangedSubview(cityLabel)
        mainStack.addArrangedSubview(conditionsLabel)
        mainStack.addArrangedSubview(buttonsStack)
        buttonsStack.addArrangedSubview(celsiusButton)
        buttonsStack.addArrangedSubview(fahrenheitButton)
    }
    
    private func setupContraints() {
        backgroundView.pinEdges(to: self)
        mainStack.pinEdgesToSafeArea(of: self)
        
    }
    
    let backgroundView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    let mainStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let conditionsImageStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .trailing
        stackView.spacing = 10
        return stackView
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 144)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "18°"
        return label
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 36)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Hanoi"
        return label
    }()
    
    let conditionsLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Sunny"
        return label
    }()
    
    let conditionsImageView: UIImageView = {
        let image = UIImage(named: "sun")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: image!.size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: image!.size.height).isActive = true
        return imageView
    }()
    
    let celsiusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("°C", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 73)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let fahrenheitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("°F", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 73)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let buttonsStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
}
