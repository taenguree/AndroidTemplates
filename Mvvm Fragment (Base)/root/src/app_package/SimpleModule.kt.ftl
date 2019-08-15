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
    class ProvideModule

    @Binds
    @PerFragment
    @${fragmentName}
    fun provideFragment(fragment: ${fragmentName?cap_first}Fragment): Fragment

    @Binds
    @FragmentScope
    @IntoMap
    @ViewModelKey(${fragmentName}FragmentViewModel::class)
    fun provideViewModel(${fragmentName?lower_case}FragmentViewModel: ${fragmentName}FragmentViewModel): ViewModel

    @Binds
    @FragmentScope
    fun provide${fragmentName?cap_first}Channel(channel: ${fragmentName}Channel): ${fragmentName}ChannelApi

    @Binds
    @FragmentScope
    fun provide${fragmentName?cap_first}Repository(repository: ${fragmentName}Repository): ${fragmentName}RepositoryApi
}