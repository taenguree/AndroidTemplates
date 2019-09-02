package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.disposables.Disposable
import javax.inject.Inject


internal class ${fragmentName}FragmentViewModel @Inject constructor(
                val channel: ${fragmentName}ChannelApi,
        private val repository: ${fragmentName}RepositoryApi

) : BaseViewModel() {

    private val lifecycleInput by lazy(LazyThreadSafetyMode.NONE, this::LifecycleInput)
    private val viewActionInput by lazy(LazyThreadSafetyMode.NONE, this::ViewActionInput)
    private val dataInput by lazy(LazyThreadSafetyMode.NONE, this::DataInput)
    private val looknFeelOutput by lazy(LazyThreadSafetyMode.NONE, this::LooknFeelOutput)
    private val navigationOutput by lazy(LazyThreadSafetyMode.NONE, this::NavigationOutput)

    inner class LifecycleInput

    inner class ViewActionInput

    inner class DataInput

    inner class LooknFeelOutput

    inner class NavigationOutput

    init {
        repository.setViewModel(this)

        disposable.addAll(
                *bindLooknFeel(),
                *bindNavigation()
        )
    }

    private fun bindLooknFeel(): Array<Disposable> {
        return looknFeelOutput.run {
            arrayOf(

            )
        }
    }

    private fun bindNavigation(): Array<Disposable> {
        return navigationOutput.run {
            arrayOf(

            )
        }
    }

}