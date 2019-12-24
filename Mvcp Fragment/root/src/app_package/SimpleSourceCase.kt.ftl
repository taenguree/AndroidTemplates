package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${fragmentName}SourceCase @Inject constructor(
        private val caseProvider: ${fragmentName}CaseProviderApi,
        private val dataSource: ${fragmentName}DataSourceApi

) : ${fragmentName}SourceCaseApi {

    private val fetch by lazy(LazyThreadSafetyMode.NONE, ::Fetch)

    private val publish by lazy(LazyThreadSafetyMode.NONE, ::Publish)

    inner class Fetch

    inner class Publish

    init {
        caseProvider.disposable().addAll(

        )
    }

}