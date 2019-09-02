package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import com.albatrosslab.www.daisy.R
import com.albatrosslab.www.daisy.dto.LifecycleState
import com.albatrosslab.www.daisy.extension.subscribeOf
import com.albatrosslab.www.daisy.screen.base.NavigationActivity


internal class ${activityClass} : NavigationActivity() {

    private val viewModel by lazy { createViewModel(${activityName}ViewModel::class.java) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})

        subscribeLooknFeel()
        subscribeNavigation()

        initializeListener()

        viewModel.channel.accept(LifecycleState.OnCreate(intent, savedInstanceState))
</#if>
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

    private fun subscribeLooknFeel() {
        with(viewModel) {
            activityDisposable.addAll(
                    
            )
        }
    }

    private fun subscribeNavigation() {
        activityDisposable.addAll(
                viewModel.channel.ofNavigation()
                        .subscribeOf(
                                onNext = {

                                }
                        )
        )
    }

    private fun initializeListener() {
        
    }

}
