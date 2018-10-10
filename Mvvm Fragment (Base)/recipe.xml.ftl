<?xml version="1.0"?>
<recipe>

  <instantiate from="src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

  <instantiate from="src/app_package/SimpleFragmentQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Channel.kt" />

	<instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ChannelApi.kt" />

	<instantiate from="src/app_package/SimpleLooknFeel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/LooknFeel.kt" />

	<instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Module.kt" />

	<instantiate from="src/app_package/SimpleViewAction.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ViewAction.kt" />

	<instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}FragmentViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

</recipe>
