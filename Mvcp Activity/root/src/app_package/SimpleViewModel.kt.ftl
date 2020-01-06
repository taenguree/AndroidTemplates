package ${escapeKotlinIdentifiers(packageName)}

import androidx.lifecycle.ViewModel
import javax.inject.Inject


internal class ${activityName}ViewModel @Inject constructor(
                val presentCase: ${activityName}PresentCaseApi,
        private val sourceCase: ${activityName}SourceCaseApi,
        private val caseProvider: ${activityName}CaseProviderApi

) : ViewModel() {

    override fun onCleared() {
        super.onCleared()

        caseProvider.disposable().clear()
    }

}