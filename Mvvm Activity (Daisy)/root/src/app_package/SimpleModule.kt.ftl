package ${escapeKotlinIdentifiers(packageName)}

import dagger.Binds
import dagger.Module
import dagger.Provides
import com.albatrosslab.www.daisy.di.scope.PerActivity
import io.reactivex.disposables.CompositeDisposable


@Module(includes = [${activityName}Module.ProvideModule::class])
internal interface ${activityName}Module {

    @Module
    class ProvideModule {
        @Provides
        @PerActivity
        @${activityName}
        fun provideCompositeDisposable(): CompositeDisposable {
            return CompositeDisposable()
        }
    }

    @Binds
    @PerActivity
    fun provide${activityName?cap_first}ViewModel(viewModel: ${activityName}ViewModel): ${activityName}ViewModelApi

    @Binds
    @PerActivity
    fun provide${activityName?cap_first}Channel(channel: ${activityName}Channel): ${activityName}ChannelApi

}