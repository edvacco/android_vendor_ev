# Audio
PRODUCT_PACKAGES += \
    AudioFX \
    Eleven

# Chromium Browser
PRODUCT_PACKAGES += \
    Chromium

# Evervolv packages
PRODUCT_PACKAGES += \
    EVToolbox \
    EVUpdater \
    EVTips \
    EVWidgets \
    EVWallpapers \
    init.evervolv.rc \
    welcome_motd

# Theme engine
ifneq ($(wildcard packages/apps/ThemeChooser/Android.mk),)
PRODUCT_PACKAGES += \
    aapt \
    ThemeChooser \
    ThemesProvider
endif

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
     libstagefright_soft_ffmpegadec \
     libstagefright_soft_ffmpegvdec \
     libFFmpegExtractor \
     media_codecs_ffmpeg.xml

# Command line tools
PRODUCT_PACKAGES += \
    bash \
    busybox \
    ca-bundle \
    curl \
    dumplogcat \
    e2fsck \
    mke2fs \
    resize2fs \
    rsync \
    scp \
    sftp \
    ssh \
    ssh-keygen \
    sshd \
    sshd_config \
    sshd_motd \
    start-ssh \
    sysinit \
    su \
    tune2fs \
    vim \
    vimrc \
    wget

# Backup Tool
PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/bin/backuptool/backuptool.sh:install/bin/backuptool.sh \
    $(SRC_EVERVOLV_DIR)/prebuilt/bin/backuptool/backuptool.functions:install/bin/backuptool.functions \
    $(SRC_EVERVOLV_DIR)/prebuilt/bin/backuptool/50-cm.sh:system/addon.d/50-cm.sh \
    $(SRC_EVERVOLV_DIR)/prebuilt/bin/backuptool/blacklist:system/addon.d/blacklist

# Init.d
PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    $(SRC_EVERVOLV_DIR)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    $(SRC_EVERVOLV_DIR)/prebuilt/etc/init.d/05mountext:system/etc/init.d/05mountext \
    $(SRC_EVERVOLV_DIR)/prebuilt/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Themes
ifneq ($(wildcard packages/apps/ThemeChooser/Android.mk),)
PRODUCT_COPY_FILES += \
    $(SRC_EVERVOLV_DIR)/prebuilt/etc/permissions/org.cyanogenmod.theme.xml:system/etc/permissions/org.cyanogenmod.theme.xml
endif
