package ${escapeKotlinIdentifiers(packageName)}

import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModel
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.multibindings.IntoMap
import io.reactivex.disposables.CompositeDisposable
import java.lang.ref.WeakReference


@Module(includes = [${fragmentName}Module.ProvideModule::class])
internal interface ${fragmentName}Module {
    @Module
    class ProvideModule {
        @Provides
        @FragmentScope
        fun provideWeakView(@${fragmentName} fragment: Fragment): WeakReference<${fragmentName}View> {
            return WeakReference(fragment as ${fragmentName}View)
        }

        @Provides
        @FragmentScope
        @${fragmentName}
        fun provideCompositeDisposable(): CompositeDisposable {
            return CompositeDisposable()
        }

        @Provides
        @FragmentScope
        fun provideDisposableProvider(@${fragmentName} disposable: CompositeDisposable): ${fragmentName}DisposableProvider {
            return ${fragmentName}DisposableProvider(disposable)
        }
    }

    @Binds
    @FragmentScope
    @IntoMap
    @ViewModelKey(${fragmentName}ViewModel::class)
    fun provideViewModel(viewModel: ${fragmentName}ViewModel): ViewModel

    @Binds
    @FragmentScope
    @${fragmentName}
    fun provideFragment(fragment: ${fragmentName}Fragment): Fragment

    @Binds
    @FragmentScope
    fun provideChannel(channel: ${fragmentName}Channel): ${fragmentName}ChannelApi

    @Binds
    @FragmentScope
    fun provideCaseProvide(caseProvider: ${fragmentName}CaseProvider): ${fragmentName}CaseProviderApi

    @Binds
    @FragmentScope
    fun providePresentCase(presentCase: ${fragmentName}PresentCase): ${fragmentName}PresentCaseApi

    @Binds
    @FragmentScope
    fun provideSourceCase(sourceCase: ${fragmentName}SourceCase): ${fragmentName}SourceCaseApi

    @Binds
    @FragmentScope
    fun provideDataSource(dataSource: ${fragmentName}DataSource): ${fragmentName}DataSourceApi
}