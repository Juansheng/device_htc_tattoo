#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#include <linux/msm_audio.h>

int main(int argc, char *argv[])
{
    struct msm_snd_device_config args;

    if (argc > 2) {
        printf("Requires one argument: 11 for speaker or 9 for headset\n");
        return 1;
    }

    int fd = open("/dev/msm_snd", O_NONBLOCK | O_RDWR);
    if (fd < 0) {
        printf("Can not open snd device\n");
        return 1;
    }

    uint16_t ioctl_param = atoi(argv[1]);
    args.device = ioctl_param;
    args.ear_mute = 1;
    args.mic_mute = 1;

    // device, ear_mute, mic_mute = 11 1 1 speaker or 9 1 1 headset
    int ret = ioctl(fd, SND_SET_DEVICE, &args); 
    if (ret < 0)
        printf("ioctl return: %d\n", ret);
    close(fd);

    return 0;
}
