# Android TV signing

This repository can build either:
- a signed Android release APK when signing secrets are configured in GitHub Actions
- a debug APK when those secrets are not configured

## Generate a keystore

```bash
keytool -genkeypair \
  -v \
  -keystore moonlight-switch.keystore \
  -alias moonlight-switch \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

## Base64-encode the keystore

```bash
base64 -w 0 moonlight-switch.keystore
```

If your system does not support `-w 0`, use an equivalent command that outputs the value on a single line.

## Required GitHub Actions secrets

- `ANDROID_KEYSTORE_BASE64`
- `ANDROID_KEYSTORE_PASSWORD`
- `ANDROID_KEY_ALIAS`
- `ANDROID_KEY_PASSWORD`

## Package name

The Android application ID used for signed and debug builds is `com.ericbarbosa.moonlightswitch`.

## CI behavior

- When all signing secrets are present, the workflow builds `assembleRelease` and uploads a signed APK.
- When any signing secret is missing, the workflow builds `assembleDebug` and uploads the debug APK instead.
