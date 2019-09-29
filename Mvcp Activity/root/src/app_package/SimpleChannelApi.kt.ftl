package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable


internal interface ${activityName}ChannelApi {
    fun ofLifecycle(): Observable<LifecycleState>
    fun ofViewAction(): Observable<${activityName}ViewActionCase>
    fun ofData(): Observable<${activityName}DataCase>
    fun accept(lifecycle: LifecycleState)
    fun accept(viewAction: ${activityName}ViewActionCase)
    fun accept(data: ${activityName}DataCase)
}
