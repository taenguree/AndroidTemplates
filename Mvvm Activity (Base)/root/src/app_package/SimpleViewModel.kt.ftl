package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import io.reactivex.Scheduler
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
        private val channel: ChannelApi

) : ViewModel() {

}