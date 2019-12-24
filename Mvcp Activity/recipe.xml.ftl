<?xml version="1.0"?>
<recipe>
  
  <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/activity_${escapeXmlAttribute(activityName)?lower_case}.xml" />

  <instantiate from="src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

  <instantiate from="src/app_package/SimpleActivityView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}View.kt" />

  <instantiate from="src/app_package/SimpleActivityQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Channel.kt" />

  <instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ChannelApi.kt" />

  <instantiate from="src/app_package/SimpleCaseProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}CaseProvider.kt" />

  <instantiate from="src/app_package/SimpleCaseProviderApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}CaseProviderApi.kt" />

  <instantiate from="src/app_package/SimplePresentCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}PresentCase.kt" />

  <instantiate from="src/app_package/SimplePresentCaseApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}PresentCaseApi.kt" />

  <instantiate from="src/app_package/SimpleSourceCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}SourceCase.kt" />

  <instantiate from="src/app_package/SimpleSourceCaseApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}SourceCaseApi.kt" />

  <instantiate from="src/app_package/SimpleDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataSource.kt" />

  <instantiate from="src/app_package/SimpleDataSourceApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataSourceApi.kt" />

	<instantiate from="src/app_package/SimpleLooknFeelCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}LooknFeelCase.kt" />

  <instantiate from="src/app_package/SimpleNavigationCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}NavigationCase.kt" />

  <instantiate from="src/app_package/SimpleViewActionCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewActionCase.kt" />

  <instantiate from="src/app_package/SimpleDataCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataCase.kt" />

	<instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Module.kt" />

  <instantiate from="src/app_package/SimpleDisposableProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DisposableProvider.kt" />

  <instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

</recipe>
