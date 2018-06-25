package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import com.knowre.android.patterns.R
import android.os.Bundle
<#if includeCppSupport!false>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import dagger.android.AndroidInjection
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

internal class ${activityClass} : ${superClass}() {

    @Inject lateinit var channel: ${activityName}ChannelApi
    @Inject lateinit var viewModel: ${activityName}ViewModelApi

    @Inject @field:${activityName} lateinit var disposable: CompositeDisposable
    @Inject @field:RxMainThread 	lateinit var mainThread: Scheduler

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})

        AndroidInjection.inject(this)

        initializeListener()

        startViewModel()

        subscribeLooknFeel()
        subscribeNavigation()

        channel.accept(ActivityLifecycle.OnCreate(intent, savedInstanceState))
</#if>
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

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
