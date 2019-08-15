package ${escapeKotlinIdentifiers(packageName)}

import dagger.Binds
import dagger.Module
import dagger.Provides
import com.albatrosslab.www.daisy.di.scope.PerActivity
import io.reactivex.disposables.CompositeDisposable


@Module(includes = [${activityName}Module.ProvideModule::class])
internal interface ${activityName}Module {
    @Module
    class ProvideModule

    @Binds
    @PerActivity
    @IntoMap
    @ViewModelKey(${activityName}ViewModel::class)
    fun provide${activityName?cap_first}ViewModel(viewModel: ${activityName}ViewModel): ViewModel

    @Binds
    @PerActivity
    fun provide${activityName?cap_first}Channel(channel: ${activityName}Channel): ${activityName}ChannelApi

    @Binds
    @PerActivity
    fun provide${activityName?cap_first}Repository(repository: ${activityName}Repository): ${activityName}RepositoryApi
}