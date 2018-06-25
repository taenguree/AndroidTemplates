package ${escapeKotlinIdentifiers(packageName)}

import dagger.Binds
import dagger.Module
import dagger.Provides
import com.knowre.rx.di.scope.ActivityScope
import io.reactivex.disposables.CompositeDisposable


@Module(includes = [${activityName}Module.ProvideModule::class])
internal interface ${activityName}Module {

    @Module
    class ProvideModule {
        @Provides
        @ActivityScope
        @${activityName}
        fun provideCompositeDisposable(): CompositeDisposable {
            return CompositeDisposable()
        }
    }

    @Binds
    @ActivityScope
    fun provide${activityName?cap_first}ViewModel(viewModel: ${activityName}ViewModel): ${activityName}ViewModelApi

    @Binds
    @ActivityScope
    fun provide${activityName?cap_first}Channel(channel: ${activityName}Channel): ${activityName}ChannelApi

}