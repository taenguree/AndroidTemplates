package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import com.knowre.rx.di.qulifier.RxIoScheduler
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        private val channel: ${activityName}ChannelApi,
        @${activityName} private val disposable: CompositeDisposable,
        @RxIoThread private val ioThread: Scheduler

) : ${activityName}ViewModelApi {

    override fun start() {
        disposable.addAll(
        )
    }

}