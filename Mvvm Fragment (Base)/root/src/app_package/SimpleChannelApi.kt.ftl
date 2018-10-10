package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable


internal interface ChannelApi {
    fun ofLooknFeel(): Observable<LooknFeel>
    fun ofViewAction(): Observable<ViewAction>
    fun accept(looknFeel: LooknFeel)
    fun accept(viewAction: ViewAction)
}
