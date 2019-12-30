package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProviders
import androidx.appcompat.app.AppCompatActivity
import dagger.android.support.AndroidSupportInjection
import java.lang.ref.WeakReference
import javax.inject.Inject


internal class ${fragmentClass} : Fragment(), ${fragmentName}View {

    companion object {
        fun newInstance(): ${fragmentClass} {
            val bundle = Bundle()

            return ${fragmentClass}().apply {
                arguments = bundle
            }
        }
    }

    @Inject lateinit var viewModelProviderFactory: ViewModelProviderFactory

    private val viewModel by lazy { ViewModelProviders.of(this, viewModelProviderFactory)[${fragmentName}ViewModel::class.java] }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        AndroidSupportInjection.inject(this)

        super.onActivityCreated(savedInstanceState)

        initializeListener()

        viewModel.presentCase.setView(WeakReference(this))

        viewModel.presentCase.onLifecycle(FragmentLifecycleState.OnActivityCreated(savedInstanceState))
    }

    override fun bindLooknFeelCase(looknFeelCase: ${fragmentName}LooknFeelCase) {
        when (looknFeelCase) {}
    }

    override fun bindNavigationCase(navigationCase: ${fragmentName}NavigationCase) {
        when (navigationCase) {}
    }

    private fun initializeListener() {}

}
