package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import io.reactivex.disposables.CompositeDisposable
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.multibindings.IntoMap


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
    @IntoMap
    @ViewModelKey(${activityName}ViewModel::class)
    fun provideViewModel(${activityName?lower_case}ViewModel: ${activityName}ViewModel): ViewModel

    @Binds
    @ActivityScope
    fun provide${activityName?cap_first}Channel(channel: Channel): ChannelApi
}