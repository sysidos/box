import UIKit

class MGridVisorDetailItemDebug:MGridVisorDetailItem
{
    let credits:Int
    private let kCellHeight:CGFloat = 240
    
    init(model:MGridAlgoItemHostile)
    {
        let reusableIdentifier:String = VGridVisorDetailCellDebug.reusableIdentifier
        credits = model.credits
        
        super.init(
            reusableIdentifier:reusableIdentifier,
            cellHeight:kCellHeight)
    }
}
