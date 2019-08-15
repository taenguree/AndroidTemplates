package ${escapeKotlinIdentifiers(packageName)}

import com.albatrosslab.www.daisy.screen.base.BaseViewModel
import io.reactivex.disposables.Disposable
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        		val channel: ${activityName}ChannelApi,
        private val repository: ${activityName}RepositoryApi

) : BaseViewModel() {

    val viewActionInput  by lazy(LazyThreadSafetyMode.NONE, this::ViewActionInput)
    val lifecycleInput   by lazy(LazyThreadSafetyMode.NONE, this::LifecycleInput)
    val dataInput        by lazy(LazyThreadSafetyMode.NONE, this::DataInput)
    val looknFeelOutput  by lazy(LazyThreadSafetyMode.NONE, this::LooknFeelOutput)
    val navigationOutput by lazy(LazyThreadSafetyMode.NONE, this::NavigationOutput)

    inner class ViewActionInput

    inner class LifecycleInput

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