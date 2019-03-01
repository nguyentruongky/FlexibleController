//
//  ViewController.swift
//  FlexibleController
//
//  Created by Ky Nguyen on 2/28/19.
//  Copyright © 2019 Ky Nguyen. All rights reserved.
//

import UIKit

class ViewController: knStaticListController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    

    override func setupView() {
        tableView.backgroundColor = UIColor.green.withAlphaComponent(0.8)
        view.addSubviews(views: tableView)
        tableView.fill(toView: view)
        datasource = [
            makeTitleCell(),
            makeTextFieldCell(placeholder: "Email"),
            makeTextFieldCell(placeholder: "Password")
        ]
    }
    
    func makeTitleCell() -> knTableCell {
        let titleLabel = UIMaker.makeLabel(text: "Golf App",
                                           font: UIFont.boldSystemFont(ofSize: 22),
                                           color: .white,
                                           numberOfLines: 0,
                                           alignment: .center)
        return knTableCell.wrap(view: titleLabel,
                                space: UIEdgeInsets(top: 16, left: 16, bottom: 44, right: 16))
    }
    
    func makeTextFieldCell(placeholder: String) -> knTableCell {
        let textField = UIMaker.makeTextField(placeholder: placeholder,
                                              font: UIFont.systemFont(ofSize: 14),
                                              color: .white,
                                              alignment: .left)
        textField.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        textField.height(48)
        return knTableCell.wrap(view: textField,
                                space: UIEdgeInsets(left: 16, bottom: 16, right: 16))
    }

}

