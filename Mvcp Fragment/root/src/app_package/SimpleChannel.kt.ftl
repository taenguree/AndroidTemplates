package ${escapeKotlinIdentifiers(packageName)}

import com.jakewharton.rxrelay2.PublishRelay
import com.jakewharton.rxrelay2.Relay
import io.reactivex.Observable
import javax.inject.Inject


internal class ${fragmentName}Channel @Inject constructor() : ${fragmentName}ChannelApi {

    private val lifecycleCaseChannel: Relay<FragmentLifecycleState> = PublishRelay.create()

    private val viewActionCaseChannel: Relay<${fragmentName}ViewActionCase> = PublishRelay.create()

    private val dataCaseChannel: Relay<${fragmentName}DataCase> = PublishRelay.create()

    override fun ofLifecycle(): Observable<FragmentLifecycleState> = lifecycleCaseChannel

    override fun ofViewAction(): Observable<${fragmentName}ViewActionCase> = viewActionCaseChannel

    override fun ofData(): Observable<${fragmentName}DataCase> = dataCaseChannel

    override fun accept(lifecycle: FragmentLifecycleState) = lifecycleCaseChannel.accept(lifecycle)

    override fun accept(viewAction: ${fragmentName}ViewActionCase) = viewActionCaseChannel.accept(viewAction)

    override fun accept(data: ${fragmentName}DataCase) = dataCaseChannel.accept(data)

}