package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import dagger.android.AndroidInjection
import javax.inject.Inject


internal class ${activityClass} : AppCompatActivity(), ${activityName}View {

    @Inject lateinit var presentCase: ${activityName}PresentCaseApi

    @Inject lateinit var sourceCase: ${activityName}SourceCaseApi

    override fun onCreate(savedInstanceState: Bundle?) {
    	AndroidInjection.inject(this)

        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})
</#if>
        initializeListener()

        presentCase.onLifecycle(LifecycleState.OnCreate(intent, savedInstanceState))
    }

    override fun onDestroy() {
        super.onDestroy()

        presentCase.onLifecycle(LifecycleState.OnDestroy)
    }

    override fun bindLooknFeelCase(looknFeelCase: ${activityName}LooknFeelCase) {
        when(looknFeelCase) {}
    }

    override fun bindNavigationCase(navigationCase: ${activityName}NavigationCase) {
        when(navigationCase) {}
    }

    private fun initializeListener() {}

}
