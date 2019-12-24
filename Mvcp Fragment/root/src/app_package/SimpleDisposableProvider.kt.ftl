package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject


internal class ${fragmentName}DisposableProvider @Inject constructor(@${fragmentName} private val disposable: CompositeDisposable) {

    fun get() = disposable

}