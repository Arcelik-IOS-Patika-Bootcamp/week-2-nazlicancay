//
//  ViewController.swift
//  Odev2
//
//  Created by Nazlıcan Çay on 31.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private let notificationView = NotificationSettingView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(notificationView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        notificationView.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
    }


}

class NotificationSettingView : UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "moon")
        imageView.tintColor = .systemBlue
        return imageView
    }()
    
    private let label: UILabel = {
        
        let label = UILabel()
        label.text = "Push to stay up to date"
        label.textAlignment = .center
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("eneable Notifications", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize = bounds.size.width / 2
        imageView.frame = CGRect(x: (bounds.size.width-imageSize)/2, y: 30, width: imageSize, height: imageSize)
    }
}

