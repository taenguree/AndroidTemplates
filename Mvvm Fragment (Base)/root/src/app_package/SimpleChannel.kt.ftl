package ${escapeKotlinIdentifiers(packageName)}

import com.jakewharton.rxrelay2.PublishRelay
import com.jakewharton.rxrelay2.Relay
import io.reactivex.Observable
import javax.inject.Inject


internal class ${fragmentName}Channel @Inject constructor() : ${fragmentName}ChannelApi {

	private val lifecycleChannel: Relay<FragmentLifecycle> = PublishRelay.create()

    private val looknFeelChannel: Relay<${fragmentName}LooknFeel> = PublishRelay.create()

    private val viewActionChannel: Relay<${fragmentName}ViewAction> = PublishRelay.create()

	private val navigationChannel: Relay<${fragmentName}Navigation> = PublishRelay.create()

    override fun ofLifecycle(): Observable<FragmentLifecycle> = lifecycleChannel

    override fun ofLooknFeel(): Observable<${fragmentName}LooknFeel> = looknFeelChannel

    override fun ofViewAction(): Observable<${fragmentName}ViewAction> = viewActionChannel

    override fun ofNavigation(): Observable<${fragmentName}Navigation> = navigationChannel

    override fun accept(lifecycle: FragmentLifecycle) = lifecycleChannel.accept(lifecycle)

    override fun accept(looknFeel: ${fragmentName}LooknFeel) = looknFeelChannel.accept(looknFeel)

    override fun accept(viewAction: ${fragmentName}ViewAction) = viewActionChannel.accept(viewAction)

    override fun accept(navigation: ${fragmentName}Navigation) = navigationChannel.accept(navigation)

}