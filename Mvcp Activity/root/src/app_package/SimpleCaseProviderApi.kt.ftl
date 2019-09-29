package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.disposables.CompositeDisposable


internal interface ${activityName}CaseProviderApi {
    fun channel(): ${activityName}ChannelApi
    fun disposable(): CompositeDisposable
    fun lifecycleCase(): ${activityName}CaseProvider.LifecycleCase
    fun viewActionCase(): ${activityName}CaseProvider.ViewActionCase
    fun dataCase(): ${activityName}CaseProvider.DataCase
}