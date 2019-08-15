package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${activityName}Repository @Inject constructor() : ${activityName}RepositoryApi {

    override fun setViewModel(viewModel: ${activityName}ViewModel) {
        viewModel.run {

            disposable.addAll(

            )   
        }
    }

}