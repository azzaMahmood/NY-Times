//
//  DetailsViewController.swift
//  NYTimes
//
//  Created by Azza Mahmoud on 4/26/20.
//  Copyright © 2020 Azza Mahmoud. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    var article: ArticleDataShowed?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.detailsLabel.text = article?.abstract
        self.titleLabel.text = article?.title
    }
}
