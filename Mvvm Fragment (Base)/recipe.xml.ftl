<?xml version="1.0"?>
<recipe>
  <instantiate from="res/layout/fragment_blank.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/fragment_${escapeXmlAttribute(fragmentName)?lower_case}.xml" />

  <instantiate from="src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

  <instantiate from="src/app_package/SimpleFragmentQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
                   
  <instantiate from="src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Channel.kt" />

	<instantiate from="src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}ChannelApi.kt" />

  <instantiate from="src/app_package/SimpleRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Repository.kt" />

  <instantiate from="src/app_package/SimpleRepositoryApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}RepositoryApi.kt" />

	<instantiate from="src/app_package/SimpleLooknFeel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}LooknFeel.kt" />

	<instantiate from="src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Module.kt" />

	<instantiate from="src/app_package/SimpleViewAction.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewAction.kt" />

  <instantiate from="src/app_package/SimpleNavigation.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}Navigation.kt" />

	<instantiate from="src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}FragmentViewModel.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

</recipe>
