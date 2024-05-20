Import("env")

# Merge bootloader and firmware
env.AddPostAction(
    "$BUILD_DIR/${PROGNAME}.elf",
    env.VerboseAction("C:\\\"Program Files\"\\srecord\\bin\\srec_cat usb_bootloader.hex -intel $BUILD_DIR/${PROGNAME}.hex -intel -o $BUILD_DIR/${PROGNAME}_with_bootloader.hex -intel",
    "Building $BUILD_DIR/${PROGNAME}_with_bootloader.hex")
)
