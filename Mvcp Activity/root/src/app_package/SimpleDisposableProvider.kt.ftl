package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject


internal class ${activityName}DisposableProvider @Inject constructor(@${activityName} private val disposable: CompositeDisposable) {

    fun get() = disposable

}