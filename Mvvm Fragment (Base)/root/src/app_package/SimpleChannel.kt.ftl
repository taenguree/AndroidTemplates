package ${escapeKotlinIdentifiers(packageName)}

import com.jakewharton.rxrelay2.PublishRelay
import com.jakewharton.rxrelay2.Relay
import io.reactivex.Observable
import javax.inject.Inject


internal class Channel @Inject constructor() : ChannelApi {

    private val looknFeelChannel: Relay<LooknFeel> = PublishRelay.create()

    private val viewActionChannel: Relay<ViewAction> = PublishRelay.create()

    override fun ofLooknFeel(): Observable<LooknFeel> = looknFeelChannel

    override fun ofViewAction(): Observable<ViewAction> = viewActionChannel

    override fun accept(looknFeel: LooknFeel) = looknFeelChannel.accept(looknFeel)

    override fun accept(viewAction: ViewAction) = viewActionChannel.accept(viewAction)

}