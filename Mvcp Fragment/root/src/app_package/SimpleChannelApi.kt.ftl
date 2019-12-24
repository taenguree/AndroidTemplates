package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable


internal interface ${fragmentName}ChannelApi {
    fun ofLifecycle(): Observable<FragmentLifecycleState>
    fun ofViewAction(): Observable<${fragmentName}ViewActionCase>
    fun ofData(): Observable<${fragmentName}DataCase>
    fun accept(lifecycle: FragmentLifecycleState)
    fun accept(viewAction: ${fragmentName}ViewActionCase)
    fun accept(data: ${fragmentName}DataCase)
}
