package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle


internal class ${activityClass} : BaseActivity() {

    private val viewModel by lazy(LazyThreadSafetyMode.NONE) {
        createViewModel(${activityName}ViewModel::class.java)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        initializeListener()
    }

    private fun initializeListener() = Unit

}
