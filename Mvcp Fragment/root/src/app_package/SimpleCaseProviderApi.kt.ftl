package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.disposables.CompositeDisposable


internal interface ${fragmentName}CaseProviderApi {
    fun channel(): ${fragmentName}ChannelApi
    fun disposable(): CompositeDisposable
    fun lifecycleCase(): ${fragmentName}CaseProvider.LifecycleCase
    fun viewActionCase(): ${fragmentName}CaseProvider.ViewActionCase
    fun dataCase(): ${fragmentName}CaseProvider.DataCase
}