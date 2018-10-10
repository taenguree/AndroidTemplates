<?xml version="1.0"?>
<recipe>
  
  <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

  <instantiate from="src/app_package/SimpleActivityQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Channel.kt" />

	<instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ChannelApi.kt" />

	<instantiate from="src/app_package/SimpleLooknFeel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/LooknFeel.kt" />

	<instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Module.kt" />

	<instantiate from="src/app_package/SimpleViewAction.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ViewAction.kt" />

	<instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

</recipe>
