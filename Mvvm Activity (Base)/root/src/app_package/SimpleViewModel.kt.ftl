package ${escapeKotlinIdentifiers(packageName)}

import com.albatrosslab.www.daisy.screen.base.BaseViewModel
import io.reactivex.disposables.Disposable
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        		val channel: ${activityName}ChannelApi,
        private val repository: ${activityName}RepositoryApi

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
                *subscribeLooknFeel(),
                *subscribeNavigation()
        )
    }

    private fun subscribeLooknFeel(): Array<Disposable> {
        return looknFeelOutput.run {
            arrayOf(

            )
        }
    }

    private fun subscribeNavigation(): Array<Disposable> {
        return navigationOutput.run {
            arrayOf(

            )
        }
    }

}