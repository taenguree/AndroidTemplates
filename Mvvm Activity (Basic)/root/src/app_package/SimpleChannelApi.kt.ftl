package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable


internal interface ${activityName}ChannelApi {
    fun ofLifecycle(): Observable<ActivityLifecycle>
    fun ofLooknFeel(): Observable<${activityName}LooknFeel>
    fun ofViewAction(): Observable<${activityName}ViewAction>
    fun ofNavigation(): Observable<${activityName}Navigation>
    fun accept(lifecycle: ActivityLifecycle)
    fun accept(looknFeel: ${activityName}LooknFeel)
    fun accept(viewAction: ${activityName}ViewAction)
    fun accept(navigation: ${activityName}Navigation)
}
