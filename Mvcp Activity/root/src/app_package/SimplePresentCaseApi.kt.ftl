package ${escapeKotlinIdentifiers(packageName)}


internal interface ${activityName}PresentCaseApi {
    fun onLifecycle(lifecycleState: LifecycleState)
    fun onViewAction(viewActionCase: ${activityName}ViewActionCase)
}