-keep class com.google.mlkit.* { *; }
-keep class com.google.android.libraries.barhopper.** { *; }
-keep class com.google.photos.* { *; }

-keepclassmembers class * extends java.lang.Enum {
    <fields>;
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# AGP 9.1.0: R8 now repackages classes into the unnamed package by default.
# Opt out to keep pre-9.1 package structure.
-dontrepackage
