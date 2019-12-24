package ${escapeKotlinIdentifiers(packageName)}

import java.lang.ref.WeakReference


internal interface ${fragmentName}PresentCaseApi {
	fun setView(weakView: WeakReference<${fragmentName}View>)
    fun onLifecycle(lifecycleState: FragmentLifecycleState)
    fun onViewAction(viewActionCase: ${fragmentName}ViewActionCase)
}