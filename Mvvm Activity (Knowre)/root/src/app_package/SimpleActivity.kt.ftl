package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import com.knowre.android.patterns.R
import android.os.Bundle
<#if includeCppSupport!false>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import dagger.android.AndroidInjection
import com.knowre.rx.di.qulifier.RxMainScheduler
import com.knowre.rx.extension.subscribeOf
import com.knowre.rx.data.LifecycleState
import com.knowre.rx.screen.BaseActivity
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

internal class ${activityClass} : BaseActivity() {

    @Inject lateinit var channel: ${activityName}ChannelApi

    @Inject @field:${activityName} lateinit var disposable: CompositeDisposable
    @Inject @field:RxMainThread lateinit var mainThread: Scheduler

    private val viewModel by lazy(LazyThreadSafetyMode.NONE) {
        createViewModel(${activityName}ViewModel::class.java)
    }

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
