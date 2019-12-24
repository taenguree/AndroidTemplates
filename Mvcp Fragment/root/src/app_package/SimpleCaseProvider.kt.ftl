package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.rxkotlin.ofType
import javax.inject.Inject


internal class ${fragmentName}CaseProvider @Inject constructor(
        private val channel: ${fragmentName}ChannelApi,
        private val disposable: ${fragmentName}DisposableProvider

) : ${fragmentName}CaseProviderApi {

    private val lifecycleCase by lazy(LazyThreadSafetyMode.NONE, this::LifecycleCase)

    private val viewActionCase by lazy(LazyThreadSafetyMode.NONE, this::ViewActionCase)

    private val dataEventCase by lazy(LazyThreadSafetyMode.NONE, this::DataCase)

    inner class LifecycleCase

    inner class ViewActionCase

    inner class DataCase

    override fun channel() = channel

    override fun disposable() = disposable.get()

    override fun lifecycleCase() = lifecycleCase

    override fun viewActionCase() = viewActionCase

    override fun dataCase() = dataEventCase

}