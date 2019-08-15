package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup


internal class ${fragmentClass} : InjectingFragment() {

    companion object {
        fun newInstance(): ${fragmentClass} {
            val bundle = Bundle()

            return ${fragmentClass}().apply {
                arguments = bundle
            }
        }
    }

    private val viewModel by lazy(LazyThreadSafetyMode.NONE) { createViewModel(${fragmentName}FragmentViewModel::class.java) }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_${fragmentName?lower_case}, container, false)
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        subscribeLooknFeel()

        subscribeNavigation()

        initializeListener()

        viewModel.channel.accept(FragmentLifecycle.OnActivityCreated(arguments, savedInstanceState))
    }

    private fun subscribeLooknFeel() {
        fragmentDisposable.addAll(

        )
    }

    private fun subscribeNavigation() {
        fragmentDisposable.addAll(

        )
    }

    private fun initializeListener() {

    }

}
