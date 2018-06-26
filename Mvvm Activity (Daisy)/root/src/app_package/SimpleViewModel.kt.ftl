package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import com.albatrosslab.www.daisy.di.qualifier.RxIoScheduler
import com.albatrosslab.www.daisy.Startable
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        private val channel: ${activityName}ChannelApi,
        @${activityName} private val disposable: CompositeDisposable,
        @RxIoScheduler private val ioThread: Scheduler

) : ${activityName}ViewModelApi {

    override fun start() {
        disposable.addAll(
        )
    }

}