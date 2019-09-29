package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.rxkotlin.ofType
import javax.inject.Inject


internal class ${activityName}CaseProvider @Inject constructor(
        private val channel: ${activityName}ChannelApi,
        private val disposable: ${activityName}DisposableProvider

) : ${activityName}CaseProviderApi {

    private val lifecycleCase by lazy(LazyThreadSafetyMode.NONE, this::LifecycleCase)

    private val viewActionCase by lazy(LazyThreadSafetyMode.NONE, this::ViewActionCase)

    private val dataEventCase by lazy(LazyThreadSafetyMode.NONE, this::DataCase)

    inner class LifecycleCase {
		val onDestroy = channel.ofLifecycle().ofType<LifecycleState.OnDestroy>()
    }

    inner class ViewActionCase

    inner class DataCase

    init {
        disposable.get().addAll(
                lifecycleCase.onDestroy
                        .subscribeOf(onNext = { disposable.get().clear() })
        )
    }

    override fun channel() = channel

    override fun disposable() = disposable.get()

    override fun lifecycleCase() = lifecycleCase

    override fun viewActionCase() = viewActionCase

    override fun dataCase() = dataEventCase

}