<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <application>

        <activity
            android:name="${relativePackage}.${activityClass}"
            android:screenOrientation="portrait" />

    </application>
</manifest>