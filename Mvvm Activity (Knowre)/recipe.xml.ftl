<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/SimpleActivityQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
                   
   <instantiate from="root/src/app_package/SimpleChannel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Channel.kt" />

	<instantiate from="root/src/app_package/SimpleChannelApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ChannelApi.kt" />

	<instantiate from="root/src/app_package/SimpleLooknFeel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}LooknFeel.kt" />

	<instantiate from="root/src/app_package/SimpleModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Module.kt" />

	<instantiate from="root/src/app_package/SimpleNavigation.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}Navigation.kt" />

	<instantiate from="root/src/app_package/SimpleViewAction.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewAction.kt" />

	<instantiate from="root/src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}ViewModel.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

</recipe>
