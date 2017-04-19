import UIKit

class MGridVisorDetailItemDistance:MGridVisorDetailItem
{
    let distance:Double?
    private let kCellHeight:CGFloat = 60
    
    init(model:MGridAlgoItem)
    {
        let reusableIdentifier:String = VGridVisorDetailCellDistance.reusableIdentifier
        distance = model.distance
        
        super.init(
            reusableIdentifier:reusableIdentifier,
            cellHeight:kCellHeight)
    }
}
