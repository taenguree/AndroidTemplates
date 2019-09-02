package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable


internal interface ${fragmentName}ChannelApi {
	fun ofLifecycle(): Observable<FragmentLifecycle>
    fun ofLooknFeel(): Observable<${fragmentName}LooknFeel>
    fun ofViewAction(): Observable<${fragmentName}ViewAction>
    fun ofNavigation(): Observable<${fragmentName}Navigation>
    fun ofData(): Observable<${fragmentName}DataEvent>
    fun accept(lifecycle: FragmentLifecycle)
    fun accept(looknFeel: ${fragmentName}LooknFeel)
    fun accept(viewAction: ${fragmentName}ViewAction)
    fun accept(navigation: ${fragmentName}Navigation)
    fun accept(data: ${fragmentName}DataEvent)
}
