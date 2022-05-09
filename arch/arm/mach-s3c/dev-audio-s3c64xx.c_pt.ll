; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/dev-audio-s3c64xx.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/dev-audio-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s3c64xx_device_iis0\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_iis0\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_iis0\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_iis0:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_iis0\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_iis0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c64xx_device_iis1\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_iis1\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_iis1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_iis1:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_iis1\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_iis1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c64xx_device_iisv4\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_iisv4\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_iisv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_iisv4:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_iisv4\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_iisv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c64xx_device_pcm0\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_pcm0\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_pcm0\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_pcm0:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_pcm0\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_pcm0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c64xx_device_pcm1\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_pcm1\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_pcm1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_pcm1:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_pcm1\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_pcm1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c64xx_device_ac97\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c64xx_device_ac97\09\09\09\09"
module asm "\09.long\09__crc_s3c64xx_device_ac97\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c64xx_device_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c64xx_device_ac97\22\09\09\09\09\09"
module asm "__kstrtabns_s3c64xx_device_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.s3c_audio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.samsung_i2s_type }
%struct.samsung_i2s_type = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-i2s\00", [20 x i8] zeroinitializer }, align 32
@i2s0_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } { %struct.s3c_audio_pdata { ptr @s3c64xx_i2s_cfg_gpio, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.samsung_i2s_type zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_iis0_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130714624, i32 2130714879, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_iis0 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s0_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c64xx_iis0_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_iis0 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_iis0 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_iis0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_iis0 to i32), ptr @__kstrtab_s3c64xx_device_iis0, ptr @__kstrtabns_s3c64xx_device_iis0 }, section "___ksymtab+s3c64xx_device_iis0", align 4
@i2s1_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } { %struct.s3c_audio_pdata { ptr @s3c64xx_i2s_cfg_gpio, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.samsung_i2s_type zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_iis1_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130718720, i32 2130718975, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_iis1 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s1_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c64xx_iis1_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_iis1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_iis1 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_iis1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_iis1 to i32), ptr @__kstrtab_s3c64xx_device_iis1, ptr @__kstrtabns_s3c64xx_device_iis1 }, section "___ksymtab+s3c64xx_device_iis1", align 4
@i2sv4_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } { %struct.s3c_audio_pdata { ptr @s3c64xx_i2s_cfg_gpio, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.samsung_i2s_type { i32 1, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_iisv4_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130759680, i32 2130759935, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_iisv4 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 2, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2sv4_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c64xx_iisv4_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_iisv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_iisv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_iisv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_iisv4 to i32), ptr @__kstrtab_s3c64xx_device_iisv4, ptr @__kstrtabns_s3c64xx_device_iisv4 }, section "___ksymtab+s3c64xx_device_iisv4", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pcm\00", [20 x i8] zeroinitializer }, align 32
@s3c_pcm0_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } { %struct.s3c_audio_pdata { ptr @s3c64xx_pcm_cfg_gpio, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.samsung_i2s_type zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_pcm0_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130743296, i32 2130743551, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_pcm0 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_pcm0_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c64xx_pcm0_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_pcm0 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_pcm0 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_pcm0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_pcm0 to i32), ptr @__kstrtab_s3c64xx_device_pcm0, ptr @__kstrtabns_s3c64xx_device_pcm0 }, section "___ksymtab+s3c64xx_device_pcm0", align 4
@s3c_pcm1_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } { %struct.s3c_audio_pdata { ptr @s3c64xx_pcm_cfg_gpio, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.samsung_i2s_type zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_pcm1_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130747392, i32 2130747647, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_pcm1 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_pcm1_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c64xx_pcm1_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_pcm1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_pcm1 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_pcm1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_pcm1 to i32), ptr @__kstrtab_s3c64xx_device_pcm1, ptr @__kstrtabns_s3c64xx_device_pcm1 }, section "___ksymtab+s3c64xx_device_pcm1", align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"samsung-ac97\00", [19 x i8] zeroinitializer }, align 32
@s3c_ac97_pdata = internal global { %struct.s3c_audio_pdata, [32 x i8] } zeroinitializer, align 32
@s3c64xx_ac97_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@s3c64xx_ac97_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130710528, i32 2130710783, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 68, i32 68, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_ac97 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.2, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_ac97_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @s3c64xx_ac97_dmamask, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c64xx_ac97_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__kstrtab_s3c64xx_device_ac97 = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c64xx_device_ac97 = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c64xx_device_ac97 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c64xx_device_ac97 to i32), ptr @__kstrtab_s3c64xx_device_ac97, ptr @__kstrtabns_s3c64xx_device_ac97 }, section "___ksymtab+s3c64xx_device_ac97", align 4
@s3c64xx_i2s_cfg_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017Invalid I2S Controller number: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c64xx_i2s_cfg_gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"arch/arm/mach-s3c/dev-audio-s3c64xx.c\00", [58 x i8] zeroinitializer }, align 32
@s3c64xx_i2s_cfg_gpio._entry_ptr = internal global ptr @s3c64xx_i2s_cfg_gpio._entry, section ".printk_index", align 4
@s3c64xx_pcm_cfg_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017Invalid PCM Controller number: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c64xx_pcm_cfg_gpio\00", [43 x i8] zeroinitializer }, align 32
@s3c64xx_pcm_cfg_gpio._entry_ptr = internal global ptr @s3c64xx_pcm_cfg_gpio._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 58, i32 13 }
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"i2s0_pdata\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 53, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"s3c64xx_iis0_resource\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 49, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_iis0\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 57, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"i2s1_pdata\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 72, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"s3c64xx_iis1_resource\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 68, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_iis1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 76, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"i2sv4_pdata\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 91, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"s3c64xx_iisv4_resource\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"s3c64xx_device_iisv4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 98, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"s3c_pcm0_pdata\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"s3c64xx_pcm0_resource\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 133, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_pcm0\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 141, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"s3c_pcm1_pdata\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 156, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"s3c64xx_pcm1_resource\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 152, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_pcm1\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 160, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 194, i32 13 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"s3c_ac97_pdata\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 188, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"s3c64xx_ac97_dmamask\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 191, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"s3c64xx_ac97_resource\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 183, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_ac97\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 193, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 39, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [41 x i8] c"../arch/arm/mach-s3c/dev-audio-s3c64xx.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 124, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_s3c64xx_device_ac97, ptr @__ksymtab_s3c64xx_device_iis0, ptr @__ksymtab_s3c64xx_device_iis1, ptr @__ksymtab_s3c64xx_device_iisv4, ptr @__ksymtab_s3c64xx_device_pcm0, ptr @__ksymtab_s3c64xx_device_pcm1, ptr @s3c64xx_i2s_cfg_gpio._entry, ptr @s3c64xx_i2s_cfg_gpio._entry_ptr, ptr @s3c64xx_pcm_cfg_gpio._entry, ptr @s3c64xx_pcm_cfg_gpio._entry_ptr, ptr @.str, ptr @i2s0_pdata, ptr @s3c64xx_iis0_resource, ptr @s3c64xx_device_iis0, ptr @i2s1_pdata, ptr @s3c64xx_iis1_resource, ptr @s3c64xx_device_iis1, ptr @i2sv4_pdata, ptr @s3c64xx_iisv4_resource, ptr @s3c64xx_device_iisv4, ptr @.str.1, ptr @s3c_pcm0_pdata, ptr @s3c64xx_pcm0_resource, ptr @s3c64xx_device_pcm0, ptr @s3c_pcm1_pdata, ptr @s3c64xx_pcm1_resource, ptr @s3c64xx_device_pcm1, ptr @.str.2, ptr @s3c_ac97_pdata, ptr @s3c64xx_ac97_dmamask, ptr @s3c64xx_ac97_resource, ptr @s3c64xx_device_ac97, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_iis0_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_iis0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_iis1_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_iis1 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv4_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_iisv4_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_iisv4 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm0_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pcm0_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_pcm0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm1_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pcm1_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_pcm1 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_ac97_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_ac97_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_ac97_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_ac97 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_i2s_cfg_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pcm_cfg_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s3c64xx_ac97_setup_gpio(i32 noundef %num) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  %s3c64xx_ac97_cfg_gpd.s3c64xx_ac97_cfg_gpe = select i1 %cmp, ptr @s3c64xx_ac97_cfg_gpd, ptr @s3c64xx_ac97_cfg_gpe
  store ptr %s3c64xx_ac97_cfg_gpd.s3c64xx_ac97_cfg_gpe, ptr @s3c_ac97_pdata, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_ac97_cfg_gpd(ptr nocapture noundef readnone %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_cfgpin_range(i32 noundef 26, i32 noundef 5, i32 noundef -12) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_ac97_cfg_gpe(ptr nocapture noundef readnone %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_cfgpin_range(i32 noundef 32, i32 noundef 5, i32 noundef -12) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_i2s_cfg_gpio(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @s3c_gpio_cfgpin(i32 noundef 21, i32 noundef -11) #4
  %call3 = tail call i32 @s3c_gpio_cfgpin(i32 noundef 22, i32 noundef -11) #4
  %call4 = tail call i32 @s3c_gpio_cfgpin(i32 noundef 24, i32 noundef -11) #4
  %call5 = tail call i32 @s3c_gpio_cfgpin_range(i32 noundef 69, i32 noundef 4, i32 noundef -11) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %base.0 = phi i32 [ 32, %sw.bb1 ], [ 26, %entry.sw.epilog_crit_edge ]
  %call8 = tail call i32 @s3c_gpio_cfgpin_range(i32 noundef %base.0, i32 noundef 5, i32 noundef -13) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb2
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgpin(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgpin_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_pcm_cfg_gpio(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %base.0 = phi i32 [ 32, %sw.bb1 ], [ 26, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 @s3c_gpio_cfgpin_range(i32 noundef %base.0, i32 noundef 5, i32 noundef -14) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 58, i32 13}
!2 = !{ptr @s3c64xx_device_iis0, !3, !"s3c64xx_device_iis0", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 57, i32 24}
!4 = !{ptr @__ksymtab_s3c64xx_device_iis0, !5, !"__ksymtab_s3c64xx_device_iis0", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 66, i32 1}
!6 = !{ptr @s3c64xx_device_iis1, !7, !"s3c64xx_device_iis1", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 76, i32 24}
!8 = !{ptr @__ksymtab_s3c64xx_device_iis1, !9, !"__ksymtab_s3c64xx_device_iis1", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 85, i32 1}
!10 = !{ptr @s3c64xx_device_iisv4, !11, !"s3c64xx_device_iisv4", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 98, i32 24}
!12 = !{ptr @__ksymtab_s3c64xx_device_iisv4, !13, !"__ksymtab_s3c64xx_device_iisv4", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 107, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 142, i32 13}
!16 = !{ptr @s3c64xx_device_pcm0, !17, !"s3c64xx_device_pcm0", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 141, i32 24}
!18 = !{ptr @__ksymtab_s3c64xx_device_pcm0, !19, !"__ksymtab_s3c64xx_device_pcm0", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 150, i32 1}
!20 = !{ptr @s3c64xx_device_pcm1, !21, !"s3c64xx_device_pcm1", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 160, i32 24}
!22 = !{ptr @__ksymtab_s3c64xx_device_pcm1, !23, !"__ksymtab_s3c64xx_device_pcm1", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 169, i32 1}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 194, i32 13}
!26 = !{ptr @s3c64xx_device_ac97, !27, !"s3c64xx_device_ac97", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 193, i32 24}
!28 = !{ptr @__ksymtab_s3c64xx_device_ac97, !29, !"__ksymtab_s3c64xx_device_ac97", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 204, i32 1}
!30 = !{ptr @i2s0_pdata, !31, !"i2s0_pdata", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 53, i32 31}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 39, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @s3c64xx_i2s_cfg_gpio._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @s3c64xx_i2s_cfg_gpio._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @s3c64xx_iis0_resource, !39, !"s3c64xx_iis0_resource", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 49, i32 24}
!40 = !{ptr @i2s1_pdata, !41, !"i2s1_pdata", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 72, i32 31}
!42 = !{ptr @s3c64xx_iis1_resource, !43, !"s3c64xx_iis1_resource", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 68, i32 24}
!44 = !{ptr @i2sv4_pdata, !45, !"i2sv4_pdata", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 91, i32 31}
!46 = !{ptr @s3c64xx_iisv4_resource, !47, !"s3c64xx_iisv4_resource", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 87, i32 24}
!48 = !{ptr @s3c_pcm0_pdata, !49, !"s3c_pcm0_pdata", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 137, i32 31}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 124, i32 3}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @s3c64xx_pcm_cfg_gpio._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @s3c64xx_pcm_cfg_gpio._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @s3c64xx_pcm0_resource, !56, !"s3c64xx_pcm0_resource", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 133, i32 24}
!57 = !{ptr @s3c_pcm1_pdata, !58, !"s3c_pcm1_pdata", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 156, i32 31}
!59 = !{ptr @s3c64xx_pcm1_resource, !60, !"s3c64xx_pcm1_resource", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 152, i32 24}
!61 = !{ptr @s3c_ac97_pdata, !62, !"s3c_ac97_pdata", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 188, i32 31}
!63 = !{ptr @s3c64xx_ac97_dmamask, !64, !"s3c64xx_ac97_dmamask", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 191, i32 12}
!65 = !{ptr @s3c64xx_ac97_resource, !66, !"s3c64xx_ac97_resource", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-s3c/dev-audio-s3c64xx.c", i32 183, i32 24}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
