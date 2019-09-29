package ${escapeKotlinIdentifiers(packageName)}

import com.jakewharton.rxrelay2.PublishRelay
import com.jakewharton.rxrelay2.Relay
import io.reactivex.Observable
import javax.inject.Inject


internal class ${activityName}Channel @Inject constructor() : ${activityName}ChannelApi {

    private val lifecycleCaseChannel: Relay<LifecycleState> = PublishRelay.create()

    private val viewActionCaseChannel: Relay<${activityName}ViewActionCase> = PublishRelay.create()

    private val dataCaseChannel: Relay<${activityName}DataCase> = PublishRelay.create()

    override fun ofLifecycle(): Observable<LifecycleState> = lifecycleCaseChannel

    override fun ofViewAction(): Observable<${activityName}ViewActionCase> = viewActionCaseChannel

    override fun ofData(): Observable<${activityName}DataCase> = dataCaseChannel

    override fun accept(lifecycle: LifecycleState) = lifecycleCaseChannel.accept(lifecycle)

    override fun accept(viewAction: ${activityName}ViewActionCase) = viewActionCaseChannel.accept(viewAction)

    override fun accept(data: ${activityName}DataCase) = dataCaseChannel.accept(data)

}