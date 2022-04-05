//
//  CustomSegue.swift
//  AnimationExample
//
//  Created by Аршат Талап on 01.03.2022.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        let destination_view = self.destination.view
        let source_view = self.source.view
        UIView.animate(withDuration: 2, animations: {
            // animating
            source_view?.alpha = 0
        }) { (Bool) in
            destination_view?.alpha = 0
            self.source.present(self.destination, animated: false) {
                UIView.animate(withDuration: 2){
                    destination_view?.alpha = 1
                }
            }
            // completing
        }
    }
}
