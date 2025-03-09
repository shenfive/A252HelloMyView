//
//  MyView.swift
//  A252HelloMyView
//
//  Created by DannyShen on 2025/3/9.
//

import UIKit

class MyView: UIView {
    
    var view:UIView!
    
    @IBOutlet weak var theLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup(){
        view = loadViewFromNib()
        view.frame = view.bounds
        view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
                    UIView.AutoresizingMask.flexibleHeight ] // 一些歷史原因，必需要上的設定
        self.addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: "MyView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    

}
