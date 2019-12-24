package ${escapeKotlinIdentifiers(packageName)}

import androidx.lifecycle.ViewModel
import javax.inject.Inject


internal class ${fragmentName}ViewModel @Inject constructor(
                val presentCase: ${fragmentName}PresentCaseApi,
        private val sourCase: ${fragmentName}SourceCaseApi,
        private val caseProvider: ${fragmentName}CaseProviderApi

) : ViewModel() {

    override fun onCleared() {
        super.onCleared()

        caseProvider.disposable().clear()
    }

}