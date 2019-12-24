package ${escapeKotlinIdentifiers(packageName)}

import java.lang.ref.WeakReference
import javax.inject.Inject


internal class ${fragmentName}PresentCase @Inject constructor(
        private val caseProvider: ${fragmentName}CaseProviderApi

) : ${fragmentName}PresentCaseApi {

    private var weakView: WeakReference<${fragmentName}View>? = null

    private val looknFeelCase by lazy(LazyThreadSafetyMode.NONE, ::LooknFeelCase)

    private val navigationCase by lazy(LazyThreadSafetyMode.NONE, ::NavigationCase)

    inner class LooknFeelCase

    inner class NavigationCase

    init {
        caseProvider.disposable().addAll(

        )
    }

    override fun setView(weakView: WeakReference<${fragmentName}View>) {
        this.weakView = weakView
    }

    override fun onLifecycle(lifecycleState: FragmentLifecycleState) = caseProvider.channel().accept(lifecycleState)

    override fun onViewAction(viewActionCase: ${fragmentName}ViewActionCase) = caseProvider.channel().accept(viewActionCase)

}