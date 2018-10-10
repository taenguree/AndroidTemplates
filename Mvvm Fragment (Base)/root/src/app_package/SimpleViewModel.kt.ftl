package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import javax.inject.Inject


internal class ${fragmentName}FragmentViewModel @Inject constructor(
        private val channel: ChannelApi

) : ViewModel() {

}