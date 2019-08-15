package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable
import com.albatrosslab.www.daisy.dto.LifecycleState


internal interface ${activityName}ChannelApi {
    fun ofLifecycle(): Observable<LifecycleState>
    fun ofLooknFeel(): Observable<${activityName}LooknFeel>
    fun ofViewAction(): Observable<${activityName}ViewAction>
    fun ofNavigation(): Observable<${activityName}Navigation>
    fun accept(lifecycle: LifecycleState)
    fun accept(looknFeel: ${activityName}LooknFeel)
    fun accept(viewAction: ${activityName}ViewAction)
    fun accept(navigation: ${activityName}Navigation)
}
