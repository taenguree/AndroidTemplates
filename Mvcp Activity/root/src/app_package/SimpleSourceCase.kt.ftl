package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${activityName}SourceCase @Inject constructor(
        private val caseProvider: ${activityName}CaseProviderApi,
        private val dataSource: ${activityName}DataSourceApi

) : ${activityName}SourceCaseApi {

    private val fetch by lazy(LazyThreadSafetyMode.NONE, ::Fetch)

    private val publish by lazy(LazyThreadSafetyMode.NONE, ::Publish)

    inner class Fetch

    inner class Publish

    init {
        caseProvider.disposable().addAll(

        )
    }

}