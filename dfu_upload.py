Import("env")
#env.Replace(UPLOADCMD="dfu-util -a 0 -s 0x08000000:leave -D $SOURCE")
env.Replace(UPLOADCMD="dfu-util -D $SOURCE")
