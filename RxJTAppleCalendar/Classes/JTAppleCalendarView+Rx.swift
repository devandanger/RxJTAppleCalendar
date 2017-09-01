
import JTAppleCalendar
import RxCocoa
import RxSwift

extension JTAppleCalendarView {
    public func createJTAppleDelegateProxy() -> RxJTAppleCalendarViewDelegateProxy {
        return RxJTAppleCalendarViewDelegateProxy(parentObject: self)
    }
}

extension Reactive where Base: JTAppleCalendarView {
    public var delegate: DelegateProxy {
        return RxJTAppleCalendarViewDelegateProxy.proxyForObject(base)
    }
    
    
}
