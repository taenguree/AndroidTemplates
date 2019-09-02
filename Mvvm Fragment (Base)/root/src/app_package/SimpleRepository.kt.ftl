package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${fragmentName}Repository @Inject constructor(
		private val dataSource: ${fragmentName}DataSourceApi

) : ${fragmentName}RepositoryApi {

	override fun setViewModel(viewModel: ${fragmentName}FragmentViewModel) {
		viewModel.run {

			disposable.addAll(

			)
		}
	}

}