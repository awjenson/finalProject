//
//  UIScrollView+Extension.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/24/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

extension UIScrollView {
    //1
    fileprivate static func make() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .clear
        scrollView.isPagingEnabled = true
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }

    static func makeHorizontal(with horizontalControllers: [UIViewController], in parent: UIViewController) -> UIScrollView {
        let scrollView = UIScrollView.make()
        //2
        func add(_ child: UIViewController, withOffset offset: CGFloat) {
            parent.addChild(child)
            scrollView.addSubview(child.view)
            child.didMove(toParent: parent)
            child.view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                child.view.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                child.view.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
                child.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: offset)
                ])
        }

        //3
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height

        //4
        for (index, controller) in horizontalControllers.enumerated() {
            let xPosition = CGFloat(index) * width
            add(controller, withOffset: xPosition)
        }

        //5
        scrollView.contentSize = CGSize(width: width * CGFloat(horizontalControllers.count), height: height)
        scrollView.setContentOffset(CGPoint(x: UIScreen.main.bounds.width, y: 0), animated: false)

        return scrollView
    }
}
