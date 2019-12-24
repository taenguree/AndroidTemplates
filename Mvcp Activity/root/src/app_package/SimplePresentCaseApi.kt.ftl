package ${escapeKotlinIdentifiers(packageName)}

import java.lang.ref.WeakReference


internal interface ${activityName}PresentCaseApi {
	fun setView(weakView: WeakReference<${activityName}View>)
    fun onLifecycle(lifecycleState: LifecycleState)
    fun onViewAction(viewActionCase: ${activityName}ViewActionCase)
}