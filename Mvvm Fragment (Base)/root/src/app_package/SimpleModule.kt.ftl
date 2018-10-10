package ${escapeKotlinIdentifiers(packageName)}

import android.arch.lifecycle.ViewModel
import io.reactivex.disposables.CompositeDisposable
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.multibindings.IntoMap


@Module(includes = [${fragmentName}FragmentModule.ProvideModule::class])
internal interface ${fragmentName}FragmentModule {
    @Module
    class ProvideModule {
        @Provides
        @FragmentScope
        @${fragmentName}
        fun provideCompositeDisposable(): CompositeDisposable {
            return CompositeDisposable()
        }
    }

    @Binds
    @FragmentScope
    @IntoMap
    @ViewModelKey(${fragmentName}FragmentViewModel::class)
    fun provideViewModel(${fragmentName?lower_case}FragmentViewModel: ${fragmentName}FragmentViewModel): ViewModel

    @Binds
    @FragmentScope
    fun provide${fragmentName?cap_first}Channel(channel: Channel): ChannelApi
}