package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${activityName}Repository @Inject constructor(
		private val dataSource: ${activityName}DataSourceApi

) : ${activityName}RepositoryApi {

    override fun setViewModel(viewModel: ${activityName}ViewModel) {
        viewModel.run {

            disposable.addAll(

            )   
        }
    }

}