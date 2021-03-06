<?xml version="1.0"?>
<recipe>
  
  <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="res/layout/activity_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/activity_${escapeXmlAttribute(activityName)?lower_case}.xml" />

  <instantiate from="src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

  <instantiate from="src/app_package/SimpleActivityQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Channel.kt" />

  <instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ChannelApi.kt" />

  <instantiate from="src/app_package/SimpleDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataSource.kt" />

  <instantiate from="src/app_package/SimpleDataSourceApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataSourceApi.kt" />

  <instantiate from="src/app_package/SimpleRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Repository.kt" />

	<instantiate from="src/app_package/SimpleRepositoryApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}RepositoryApi.kt" />

	<instantiate from="src/app_package/SimpleLooknFeel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}LooknFeel.kt" />

  <instantiate from="src/app_package/SimpleNavigation.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Navigation.kt" />

	<instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Module.kt" />

	<instantiate from="src/app_package/SimpleViewAction.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewAction.kt" />

  <instantiate from="src/app_package/SimpleDataEvent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}DataEvent.kt" />

	<instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

</recipe>
