<?xml version="1.0"?>
<recipe>
  <instantiate from="res/layout/fragment_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/fragment_${escapeXmlAttribute(fragmentName)?lower_case}.xml" />

  <instantiate from="src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

  <instantiate from="src/app_package/SimpleFragmentView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}View.kt" />

  <instantiate from="src/app_package/SimpleFragmentQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Channel.kt" />

  <instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}ChannelApi.kt" />

  <instantiate from="src/app_package/SimpleCaseProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}CaseProvider.kt" />

  <instantiate from="src/app_package/SimpleCaseProviderApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}CaseProviderApi.kt" />

  <instantiate from="src/app_package/SimplePresentCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}PresentCase.kt" />

  <instantiate from="src/app_package/SimplePresentCaseApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}PresentCaseApi.kt" />

  <instantiate from="src/app_package/SimpleSourceCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}SourceCase.kt" />

  <instantiate from="src/app_package/SimpleSourceCaseApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}SourceCaseApi.kt" />

  <instantiate from="src/app_package/SimpleDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}DataSource.kt" />

  <instantiate from="src/app_package/SimpleDataSourceApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}DataSourceApi.kt" />

  <instantiate from="src/app_package/SimpleLooknFeelCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}LooknFeelCase.kt" />

  <instantiate from="src/app_package/SimpleNavigationCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}NavigationCase.kt" />

  <instantiate from="src/app_package/SimpleViewActionCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewActionCase.kt" />

  <instantiate from="src/app_package/SimpleDataCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}DataCase.kt" />

  <instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Module.kt" />

  <instantiate from="src/app_package/SimpleDisposableProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}DisposableProvider.kt" />

  <instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

</recipe>
