package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import com.knowre.rx.di.qulifier.RxIoScheduler
import com.knowre.rx.common.Startable
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        private val channel: ${activityName}ChannelApi,
        @${activityName} private val disposable: CompositeDisposable,
        @RxIoScheduler private val ioThread: Scheduler

) : Startable, ViewModel() {

    override fun start() {
        disposable.addAll(
        )
    }

}