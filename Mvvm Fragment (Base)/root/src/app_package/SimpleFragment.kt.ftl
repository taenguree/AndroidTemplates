package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup


internal class ${fragmentClass} : BaseFragment() {

    companion object {
        fun newInstance(): ${fragmentClass} {
            val bundle = Bundle()

            return ${fragmentClass}().apply {
                arguments = bundle
            }
        }
    }

    private val viewModel by lazy(LazyThreadSafetyMode.NONE) {
        createViewModel(${fragmentName}FragmentViewModel::class.java)
    }

  override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
    }

    private fun initializeListener() = Unit

}
