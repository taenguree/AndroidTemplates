package ${escapeKotlinIdentifiers(packageName)}

import com.jakewharton.rxrelay2.PublishRelay
import com.jakewharton.rxrelay2.Relay
import com.knowre.rx.data.Navigation
import com.knowre.rx.data.LifecycleState
import io.reactivex.Observable
import javax.inject.Inject


internal class ${activityName}Channel @Inject constructor() : ${activityName}ChannelApi {

    private val lifecycleChannel: Relay<LifecycleState> = PublishRelay.create()
    private val looknFeelChannel: Relay<${activityName}LooknFeel> = PublishRelay.create()
    private val viewActionChannel: Relay<${activityName}ViewAction> = PublishRelay.create()
    private val navigationChannel: Relay<Navigation> = PublishRelay.create()

    override fun ofLifecycle(): Observable<LifecycleState> = lifecycleChannel
    override fun ofLooknFeel(): Observable<${activityName}LooknFeel> = looknFeelChannel
    override fun ofViewAction(): Observable<${activityName}ViewAction> = viewActionChannel
    override fun ofNavigation(): Observable<Navigation> = navigationChannel

    override fun accept(lifecycle: LifecycleState) = lifecycleChannel.accept(lifecycle)
    override fun accept(looknFeel: ${activityName}LooknFeel) = looknFeelChannel.accept(looknFeel)
    override fun accept(viewAction: ${activityName}ViewAction) = viewActionChannel.accept(viewAction)
    override fun accept(navigation: Navigation) = navigationChannel.accept(navigation)

}