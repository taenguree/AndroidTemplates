package ${escapeKotlinIdentifiers(packageName)}

import com.albatrosslab.www.daisy.R
import android.os.Bundle
import dagger.android.AndroidInjection
import com.albatrosslab.www.daisy.dto.LifecycleState
import com.albatrosslab.www.daisy.screen.NavigationActivity
import com.albatrosslab.www.daisy.di.qualifier.RxMainScheduler
import com.albatrosslab.www.daisy.subscribeOf
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

internal class ${activityClass} : NavigationActivity() {

    @Inject lateinit var channel: ${activityName}ChannelApi
    @Inject lateinit var viewModel: ${activityName}ViewModelApi

    @Inject @field:${activityName} lateinit var disposable: CompositeDisposable
    @Inject @field:RxMainScheduler lateinit var mainThread: Scheduler

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})

        AndroidInjection.inject(this)

        initializeListener()

        startViewModel()

        subscribeLooknFeel()
        subscribeNavigation()

        channel.accept(LifecycleState.OnCreate(intent, savedInstanceState))
</#if>
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

    override fun onDestroy() {
        super.onDestroy()

        channel.accept(LifecycleState.OnDestroy())

        disposable.clear()
    }

	private fun startViewModel() {
        viewModel.start()
    }

    private fun subscribeLooknFeel() {
        disposable.addAll(
                channel.ofLooknFeel()
                        .observeOn(mainThread)
                        .subscribeOf(
                                onNext = {
                                    
                                }
                        )
        )
    }

    private fun subscribeNavigation() {
        disposable.addAll(
                channel.ofNavigation()
                        .observeOn(mainThread)
                        .subscribeOf(
                                onNext = {

                                }
                        )
        )
    }

    private fun initializeListener() {

    }

}
