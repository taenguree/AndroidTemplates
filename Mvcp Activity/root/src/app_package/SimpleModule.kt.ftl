package ${escapeKotlinIdentifiers(packageName)}

import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModel
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.multibindings.IntoMap
import io.reactivex.disposables.CompositeDisposable
import java.lang.ref.WeakReference


@Module(includes = [${activityName}Module.ProvideModule::class])
internal interface ${activityName}Module {
    @Module
    class ProvideModule {
        @Provides
        @ActivityScope
        fun provideWeakView(@${activityName} activity: AppCompatActivity): WeakReference<${activityName}View> {
            return WeakReference(activity as ${activityName}View)
        }

        @Provides
        @ActivityScope
        @${activityName}
        fun provideCompositeDisposable(): CompositeDisposable {
            return CompositeDisposable()
        }

        @Provides
        @ActivityScope
        fun provideDisposableProvider(@${activityName} disposable: CompositeDisposable): ${activityName}DisposableProvider {
            return ${activityName}DisposableProvider(disposable)
        }
    }

    @Binds
    @ActivityScope
    @IntoMap
    @ViewModelKey(${activityName}ViewModel::class)
    fun provideViewModel(viewModel: ${activityName}ViewModel): ViewModel

    @Binds
    @ActivityScope
    @${activityName}
    fun provideActivity(activity: ${activityName}Activity): AppCompatActivity

    @Binds
    @ActivityScope
    fun provideChannel(channel: ${activityName}Channel): ${activityName}ChannelApi

    @Binds
    @ActivityScope
    fun provideCaseProvide(caseProvider: ${activityName}CaseProvider): ${activityName}CaseProviderApi

    @Binds
    @ActivityScope
    fun providePresentCase(presentCase: ${activityName}PresentCase): ${activityName}PresentCaseApi

    @Binds
    @ActivityScope
    fun provideSourceCase(sourceCase: ${activityName}SourceCase): ${activityName}SourceCaseApi

    @Binds
    @ActivityScope
    fun provideDataSource(dataSource: ${activityName}DataSource): ${activityName}DataSourceApi
}