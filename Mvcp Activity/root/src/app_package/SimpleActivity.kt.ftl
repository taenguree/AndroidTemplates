package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import androidx.lifecycle.ViewModelProviders
import androidx.appcompat.app.AppCompatActivity
import dagger.android.AndroidInjection
import java.lang.ref.WeakReference
import javax.inject.Inject


internal class ${activityClass} : AppCompatActivity(), ${activityName}View {

    @Inject lateinit var viewModelProviderFactory: ViewModelProviderFactory

    private val viewModel by lazy { ViewModelProviders.of(this, viewModelProviderFactory)[${activityName}ViewModel::class.java] }

    override fun onCreate(savedInstanceState: Bundle?) {
    	AndroidInjection.inject(this)

        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})
</#if>
        initializeListener()

        viewModel.presentCase.setView(WeakReference(this))

        viewModel.presentCase.onLifecycle(LifecycleState.OnCreate(intent, savedInstanceState))
    }

    override fun onDestroy() {
        super.onDestroy()

        viewModel.presentCase.onLifecycle(LifecycleState.OnDestroy)
    }

    override fun bindLooknFeelCase(looknFeelCase: ${activityName}LooknFeelCase) {
        when (looknFeelCase) {}
    }

    override fun bindNavigationCase(navigationCase: ${activityName}NavigationCase) {
        when (navigationCase) {}
    }

    private fun initializeListener() {}

}
