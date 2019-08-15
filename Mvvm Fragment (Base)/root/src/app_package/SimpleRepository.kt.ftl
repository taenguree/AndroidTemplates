package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject


internal class ${fragmentName}Repository @Inject constructor(

) : ${fragmentName}RepositoryApi {

	override fun setViewModel(viewModel: ${fragmentName}FragmentViewModel) {
		viewModel.run {

			disposable.addAll(

			)
		}
	}

}