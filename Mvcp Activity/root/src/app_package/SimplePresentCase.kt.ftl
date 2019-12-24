package ${escapeKotlinIdentifiers(packageName)}

import java.lang.ref.WeakReference
import javax.inject.Inject


internal class ${activityName}PresentCase @Inject constructor(
        private val caseProvider: ${activityName}CaseProviderApi

) : ${activityName}PresentCaseApi {

    private var weakView: WeakReference<${activityName}View>? = null

    private val looknFeelCase by lazy(LazyThreadSafetyMode.NONE, ::LooknFeelCase)

    private val navigationCase by lazy(LazyThreadSafetyMode.NONE, ::NavigationCase)

    inner class LooknFeelCase

    inner class NavigationCase

    init {
        caseProvider.disposable().addAll(

        )
    }

    override fun setView(weakView: WeakReference<${activityName}View>) {
        this.weakView = weakView
    }

    override fun onLifecycle(lifecycleState: LifecycleState) = caseProvider.channel().accept(lifecycleState)

    override fun onViewAction(viewActionCase: ${activityName}ViewActionCase) = caseProvider.channel().accept(viewActionCase)

}