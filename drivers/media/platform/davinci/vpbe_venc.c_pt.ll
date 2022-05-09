; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpbe_venc.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpbe_venc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+venc_sub_dev_init\22, \22a\22\09"
module asm "\09.weak\09__crc_venc_sub_dev_init\09\09\09\09"
module asm "\09.long\09__crc_venc_sub_dev_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_venc_sub_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22venc_sub_dev_init\22\09\09\09\09\09"
module asm "__kstrtabns_venc_sub_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.venc_state = type { %struct.v4l2_subdev, ptr, ptr, ptr, i32, i64, %struct.spinlock, ptr, ptr, i32 }
%struct.venc_platform_data = type { ptr, ptr, ptr, i32, ptr }
%struct.v4l2_dv_timings = type { i32, %union.anon.90 }
%union.anon.90 = type { [32 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_debug = internal constant [16 x i8] c"vpbe_venc.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [29 x i8] c"vpbe_venc.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [37 x i8] c"vpbe_venc.parm=debug:Debug level 0-2\00", section ".modinfo", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@venc_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @venc_core_ops, ptr null, ptr null, ptr @venc_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@venc_sub_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: vpbe unable to register venc sub device\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_sub_dev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/davinci/vpbe_venc.c\00", [53 x i8] zeroinitializer }, align 32
@venc_sub_dev_init._entry_ptr = internal global ptr @venc_sub_dev_init._entry, section ".printk_index", align 4
@venc_sub_dev_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: vpbe venc initialization failed\0A\00", [57 x i8] zeroinitializer }, align 32
@venc_sub_dev_init._entry_ptr.5 = internal global ptr @venc_sub_dev_init._entry.3, section ".printk_index", align 4
@__kstrtab_venc_sub_dev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_venc_sub_dev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_venc_sub_dev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @venc_sub_dev_init to i32), ptr @__kstrtab_venc_sub_dev_init, ptr @__kstrtabns_venc_sub_dev_init }, section "___ksymtab+venc_sub_dev_init", align 4
@__initcall__kmod_vpbe_venc__294_672_venc_driver_init6 = internal global ptr @venc_driver_init, section ".initcall6.init", align 4
@venc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @venc_probe, ptr @venc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.38, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vpbe_venc_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_venc_driver_exit = internal global ptr @venc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [56 x i8] c"vpbe_venc.file=drivers/media/platform/davinci/vpbe_venc\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"vpbe_venc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [39 x i8] c"vpbe_venc.description=VPBE VENC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [35 x i8] c"vpbe_venc.author=Texas Instruments\00", section ".modinfo", align 1
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpbe-venc\00", [22 x i8] zeroinitializer }, align 32
@venc_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_command, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@venc_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @venc_s_routing, ptr null, ptr null, ptr null, ptr @venc_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_s_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@venc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Wrong IOCTL cmd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"venc_command\00", [19 x i8] zeroinitializer }, align 32
@venc_command._entry_ptr = internal global ptr @venc_command._entry, section ".printk_index", align 4
@venc_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: venc_s_routing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"venc_s_routing\00", [17 x i8] zeroinitializer }, align 32
@venc_s_routing._entry_ptr = internal global ptr @venc_s_routing._entry, section ".printk_index", align 4
@venc_set_dac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Setting output to Composite\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"venc_set_dac\00", [19 x i8] zeroinitializer }, align 32
@venc_set_dac._entry_ptr = internal global ptr @venc_set_dac._entry, section ".printk_index", align 4
@venc_set_dac._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Setting output to Component\0A\00", [61 x i8] zeroinitializer }, align 32
@venc_set_dac._entry_ptr.15 = internal global ptr @venc_set_dac._entry.13, section ".printk_index", align 4
@venc_set_dac._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Setting output to S-video\0A\00", [63 x i8] zeroinitializer }, align 32
@venc_set_dac._entry_ptr.18 = internal global ptr @venc_set_dac._entry.16, section ".printk_index", align 4
@venc_s_std_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: venc_s_std_output\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_s_std_output\00", [46 x i8] zeroinitializer }, align 32
@venc_s_std_output._entry_ptr = internal global ptr @venc_s_std_output._entry, section ".printk_index", align 4
@venc_set_ntsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: venc_set_ntsc\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"venc_set_ntsc\00", [18 x i8] zeroinitializer }, align 32
@venc_set_ntsc._entry_ptr = internal global ptr @venc_set_ntsc._entry, section ".printk_index", align 4
@venc_enabledigitaloutput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: venc_enabledigitaloutput\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"venc_enabledigitaloutput\00", [39 x i8] zeroinitializer }, align 32
@venc_enabledigitaloutput._entry_ptr = internal global ptr @venc_enabledigitaloutput._entry, section ".printk_index", align 4
@venc_set_pal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: venc_set_pal\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"venc_set_pal\00", [19 x i8] zeroinitializer }, align 32
@venc_set_pal._entry_ptr = internal global ptr @venc_set_pal._entry, section ".printk_index", align 4
@venc_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: venc_s_dv_timings\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_s_dv_timings\00", [46 x i8] zeroinitializer }, align 32
@venc_s_dv_timings._entry_ptr = internal global ptr @venc_s_dv_timings._entry, section ".printk_index", align 4
@venc_set_576p50._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: venc_set_576p50\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venc_set_576p50\00", [16 x i8] zeroinitializer }, align 32
@venc_set_576p50._entry_ptr = internal global ptr @venc_set_576p50._entry, section ".printk_index", align 4
@venc_set_480p59_94._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: venc_set_480p59_94\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"venc_set_480p59_94\00", [45 x i8] zeroinitializer }, align 32
@venc_set_480p59_94._entry_ptr = internal global ptr @venc_set_480p59_94._entry, section ".printk_index", align 4
@venc_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error setting output during init\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venc_initialize\00", [16 x i8] zeroinitializer }, align 32
@venc_initialize._entry_ptr = internal global ptr @venc_initialize._entry, section ".printk_index", align 4
@venc_initialize._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error setting std during init\0A\00", [59 x i8] zeroinitializer }, align 32
@venc_initialize._entry_ptr.37 = internal global ptr @venc_initialize._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci-vpbe-venc\00", [46 x i8] zeroinitializer }, align 32
@vpbe_venc_devtype = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"dm644x,vpbe-venc\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"dm365,vpbe-venc\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"dm355,vpbe-venc\00\00\00\00\00", i32 3 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@venc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 626, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No platform data for VENC sub device\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venc_probe._entry_ptr = internal global ptr @venc_probe._entry, section ".printk_index", align 4
@venc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&venc->lock\00", [20 x i8] zeroinitializer }, align 32
@venc_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 653, ptr @.str.46, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VENC sub device probe success\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@venc_probe._entry_ptr.47 = internal global ptr @venc_probe._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 480, i64 576, i64 720, i64 1080]
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 48, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"venc_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 552, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 606, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 611, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"venc_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 663, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 586, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"venc_core_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 542, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"venc_video_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 546, i32 43 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 535, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 515, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 115, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 119, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 123, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 468, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 221, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 137, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 267, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 485, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 368, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 320, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 568, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 574, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 667, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"vpbe_venc_devtype\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 30, i32 40 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 626, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 651, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [46 x i8] c"../drivers/media/platform/davinci/vpbe_venc.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 653, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_venc_driver_exit, ptr @__initcall__kmod_vpbe_venc__294_672_venc_driver_init6, ptr @__ksymtab_venc_sub_dev_init, ptr @__param_debug, ptr @venc_command._entry, ptr @venc_command._entry_ptr, ptr @venc_driver_exit, ptr @venc_enabledigitaloutput._entry, ptr @venc_enabledigitaloutput._entry_ptr, ptr @venc_initialize._entry, ptr @venc_initialize._entry.35, ptr @venc_initialize._entry_ptr, ptr @venc_initialize._entry_ptr.37, ptr @venc_probe._entry, ptr @venc_probe._entry.44, ptr @venc_probe._entry_ptr, ptr @venc_probe._entry_ptr.47, ptr @venc_s_dv_timings._entry, ptr @venc_s_dv_timings._entry_ptr, ptr @venc_s_routing._entry, ptr @venc_s_routing._entry_ptr, ptr @venc_s_std_output._entry, ptr @venc_s_std_output._entry_ptr, ptr @venc_set_480p59_94._entry, ptr @venc_set_480p59_94._entry_ptr, ptr @venc_set_576p50._entry, ptr @venc_set_576p50._entry_ptr, ptr @venc_set_dac._entry, ptr @venc_set_dac._entry.13, ptr @venc_set_dac._entry.16, ptr @venc_set_dac._entry_ptr, ptr @venc_set_dac._entry_ptr.15, ptr @venc_set_dac._entry_ptr.18, ptr @venc_set_ntsc._entry, ptr @venc_set_ntsc._entry_ptr, ptr @venc_set_pal._entry, ptr @venc_set_pal._entry_ptr, ptr @venc_sub_dev_init._entry, ptr @venc_sub_dev_init._entry.3, ptr @venc_sub_dev_init._entry_ptr, ptr @venc_sub_dev_init._entry_ptr.5, ptr @debug, ptr @venc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @venc_driver, ptr @.str.6, ptr @venc_core_ops, ptr @venc_video_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @vpbe_venc_devtype, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @venc_probe.__key, ptr @.str.43, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_sub_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_sub_dev_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_dac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_dac._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_dac._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_s_std_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_ntsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_enabledigitaloutput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_pal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_576p50._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_set_480p59_94._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_initialize._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_venc_devtype to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @venc_sub_dev_init(ptr noundef %v4l2_dev, ptr noundef %venc_name) #0 align 64 {
entry:
  %venc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %venc) #8
  %0 = ptrtoint ptr %venc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %venc, align 4
  %call = call i32 @bus_for_each_dev(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef nonnull %venc, ptr noundef nonnull @venc_device_get) #8
  %1 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %venc, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @v4l2_subdev_init(ptr noundef nonnull %2, ptr noundef nonnull @venc_ops) #8
  %3 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %venc, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 9
  %call2 = call i32 @strscpy(ptr noundef %name, ptr noundef %venc_name, i32 noundef 32) #8
  %5 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %venc, align 4
  %call4 = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name7 = getelementptr inbounds %struct.v4l2_device, ptr %v4l2_dev, i32 0, i32 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name7) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %venc, align 4
  %output.i = getelementptr inbounds %struct.venc_state, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %output.i, align 8
  %std.i = getelementptr inbounds %struct.venc_state, ptr %8, i32 0, i32 5
  %10 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 63744, ptr %std.i, align 8
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 2
  br i1 %cmp.i.i, label %do.end4.i.i, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end4.i.i:                                      ; preds = %if.end10
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 9
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i.i) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp.i.i.i = icmp slt i32 %.pr.i, 2
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %do.end4.i.i.if.end.i_crit_edge

do.end4.i.i.if.end.i_crit_edge:                   ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i.i, %do.end4.i.i.if.end.i_crit_edge, %if.end10.if.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %venc_base.i.i.i.i = getelementptr inbounds %struct.venc_state, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %venc_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %venc_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #8, !srcloc !136
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %output.i, align 8
  %15 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %std.i, align 8
  %call5.i = call i32 @venc_s_std_output(ptr noundef %8, i64 noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name12.i = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name12.i) #11
  %name18 = getelementptr inbounds %struct.v4l2_device, ptr %v4l2_dev, i32 0, i32 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name18) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %venc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end16 ], [ %18, %if.end21 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %venc) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_device_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call ptr @strstr(ptr noundef %1, ptr noundef nonnull @.str.6)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @venc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @venc_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @venc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_command(ptr noundef %sd, i32 noundef %cmd, ptr nocapture noundef writeonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %venc_base.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !137
  %3 = lshr i32 %2, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %and.lobit = and i32 %3, 1
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit, ptr %arg, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = zext i32 %output to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %output, label %do.end4.if.end8_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %do.body5.i
    i32 2, label %do.body18.i
  ]

do.end4.if.end8_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body.i:                                        ; preds = %do.end4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp slt i32 %2, 2
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end2.i_crit_edge

do.body.i.do.end2.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.body.i.do.end2.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !136
  br label %if.then6

do.body5.i:                                       ; preds = %do.end4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp6.i = icmp slt i32 %5, 2
  br i1 %cmp6.i, label %do.end9.i, label %do.body5.i.do.end15.i_crit_edge

do.body5.i.do.end15.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

do.end9.i:                                        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %name11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name11.i) #11
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end9.i, %do.body5.i.do.end15.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i35.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %6 = ptrtoint ptr %venc_base.i35.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc_base.i35.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %7, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 1124401152) #8, !srcloc !136
  br label %if.then6

do.body18.i:                                      ; preds = %do.end4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp19.i = icmp slt i32 %8, 2
  br i1 %cmp19.i, label %do.end22.i, label %do.body18.i.do.end28.i_crit_edge

do.body18.i.do.end28.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

do.end22.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  %name24.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name24.i) #11
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end22.i, %do.body18.i.do.end28.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i37.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %9 = ptrtoint ptr %venc_base.i37.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %venc_base.i37.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %10, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 268566528) #8, !srcloc !136
  br label %if.then6

if.then6:                                         ; preds = %do.end28.i, %do.end15.i, %do.end2.i
  %output7 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 4
  %11 = ptrtoint ptr %output7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %output, ptr %output7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end4.if.end8_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.then6 ], [ -22, %do.end4.if.end8_crit_edge ]
  ret i32 %retval.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_s_std_output(ptr noundef %sd, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %and = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %do.end2
  %pdata1.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata1.i, align 8
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp slt i32 %3, 3
  br i1 %cmp.i, label %do.end.i, label %if.then3.do.end5.i_crit_edge

if.then3.do.end5.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.then3.do.end5.i_crit_edge
  %call6.i = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %setup_clock.i = getelementptr inbounds %struct.venc_platform_data, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %setup_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_clock.i, align 4
  %call7.i = tail call i32 %5(i32 noundef 1, i32 noundef 63744) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end5.i.return_crit_edge, label %if.end10.i

do.end5.i.return_crit_edge:                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10.i:                                       ; preds = %do.end5.i
  %venc_type.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %6 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %venc_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %7, label %if.end10.i.venc_enable_vpss_clock.exit.i_crit_edge [
    i32 3, label %land.lhs.true10.i.i
    i32 2, label %land.lhs.true.i.i
  ]

if.end10.i.venc_enable_vpss_clock.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_enable_vpss_clock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %call7.i.i = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 1) #8
  br label %venc_enable_vpss_clock.exit.i

land.lhs.true10.i.i:                              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 0) #8
  br label %venc_enable_vpss_clock.exit.i

venc_enable_vpss_clock.exit.i:                    ; preds = %land.lhs.true10.i.i, %land.lhs.true.i.i, %if.end10.i.venc_enable_vpss_clock.exit.i_crit_edge
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  %9 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %venc_type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %if.else23.i [
    i32 3, label %if.then13.i
    i32 2, label %if.then19.i
  ]

if.then13.i:                                      ; preds = %venc_enable_vpss_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %12 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %16 = ptrtoint ptr %vdaccfg_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdaccfg_reg.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1230626546) #8, !srcloc !136
  %18 = ptrtoint ptr %vdaccfg_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdaccfg_reg.i.i, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end29.i

if.then19.i:                                      ; preds = %venc_enable_vpss_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i60.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %21 = ptrtoint ptr %venc_base.i60.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %venc_base.i60.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %22, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %venc_base.i60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %venc_base.i60.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i64.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %25 = ptrtoint ptr %vdaccfg_reg.i64.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdaccfg_reg.i64.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -817819384) #8, !srcloc !136
  %27 = ptrtoint ptr %vdaccfg_reg.i64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdaccfg_reg.i64.i, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end29.i

if.else23.i:                                      ; preds = %venc_enable_vpss_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %venc_base.i.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %30 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %33 = and i32 %32, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %33) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %37, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 16777216) #8, !srcloc !136
  %38 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %41 = and i32 %40, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i2.i70.i = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i70.i, i32 %41) #8, !srcloc !136
  %44 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %47 = and i32 %46, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %venc_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %venc_base.i.i.i, align 4
  %add.ptr.i2.i74.i = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i74.i, i32 %47) #8, !srcloc !136
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else23.i, %if.then19.i, %if.then13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i75.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %50 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %venc_base.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #8, !srcloc !136
  %52 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %venc_base.i75.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %55 = or i32 %54, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %venc_base.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !136
  %58 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %venc_base.i75.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %61 = and i32 %60, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %venc_base.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !136
  %64 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %venc_base.i75.i, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %67 = and i32 %66, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %venc_base.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %venc_base.i75.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %71, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 0) #8, !srcloc !136
  %72 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %venc_base.i75.i, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %75 = or i32 %74, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %venc_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %venc_base.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !136
  br label %return

if.else:                                          ; preds = %do.end2
  %and5 = and i64 %norm, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else.return_crit_edge, label %if.then7

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7:                                         ; preds = %if.else
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp.i14 = icmp slt i32 %78, 3
  br i1 %cmp.i14, label %do.end.i16, label %if.then7.do.end4.i_crit_edge

if.then7.do.end4.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i16:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %name.i15 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i15) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i16, %if.then7.do.end4.i_crit_edge
  %call5.i = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %pdata.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %79 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdata.i, align 8
  %setup_clock.i17 = getelementptr inbounds %struct.venc_platform_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %setup_clock.i17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %setup_clock.i17, align 4
  %call6.i18 = tail call i32 %82(i32 noundef 1, i32 noundef 16713471) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i18)
  %cmp7.i = icmp slt i32 %call6.i18, 0
  br i1 %cmp7.i, label %do.end4.i.return_crit_edge, label %if.end9.i

do.end4.i.return_crit_edge:                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9.i:                                        ; preds = %do.end4.i
  %venc_type.i19 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %83 = ptrtoint ptr %venc_type.i19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %venc_type.i19, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %84, label %if.end9.i.venc_enable_vpss_clock.exit.i25_crit_edge [
    i32 3, label %land.lhs.true10.i.i24
    i32 2, label %land.lhs.true.i.i22
  ]

if.end9.i.venc_enable_vpss_clock.exit.i25_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_enable_vpss_clock.exit.i25

land.lhs.true.i.i22:                              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i20 = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %call7.i.i21 = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 1) #8
  br label %venc_enable_vpss_clock.exit.i25

land.lhs.true10.i.i24:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i23 = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 0) #8
  br label %venc_enable_vpss_clock.exit.i25

venc_enable_vpss_clock.exit.i25:                  ; preds = %land.lhs.true10.i.i24, %land.lhs.true.i.i22, %if.end9.i.venc_enable_vpss_clock.exit.i25_crit_edge
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  %86 = ptrtoint ptr %venc_type.i19 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %venc_type.i19, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %87, label %if.else22.i [
    i32 3, label %if.then12.i
    i32 2, label %if.then18.i
  ]

if.then12.i:                                      ; preds = %venc_enable_vpss_clock.exit.i25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i26 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %89 = ptrtoint ptr %venc_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %venc_base.i.i26, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %90, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %venc_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %venc_base.i.i26, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i.i28 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %93 = ptrtoint ptr %vdaccfg_reg.i.i28 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vdaccfg_reg.i.i28, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 -1230626546) #8, !srcloc !136
  %95 = ptrtoint ptr %vdaccfg_reg.i.i28 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vdaccfg_reg.i.i28, align 8
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end26.i

if.then18.i:                                      ; preds = %venc_enable_vpss_clock.exit.i25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i56.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %98 = ptrtoint ptr %venc_base.i56.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %venc_base.i56.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %99, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %venc_base.i56.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %venc_base.i56.i, align 4
  %add.ptr.i59.i29 = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i29, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i60.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %102 = ptrtoint ptr %vdaccfg_reg.i60.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vdaccfg_reg.i60.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 -817819384) #8, !srcloc !136
  %104 = ptrtoint ptr %vdaccfg_reg.i60.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vdaccfg_reg.i60.i, align 8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end26.i

if.else22.i:                                      ; preds = %venc_enable_vpss_clock.exit.i25
  call void @__sanitizer_cov_trace_pc() #10
  %venc_base.i.i.i30 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %107 = ptrtoint ptr %venc_base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %venc_base.i.i.i30, align 4
  %add.ptr.i.i.i31 = getelementptr i8, ptr %108, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i31) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %110 = and i32 %109, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %111 = ptrtoint ptr %venc_base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %venc_base.i.i.i30, align 4
  %add.ptr.i2.i.i32 = getelementptr i8, ptr %112, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i32, i32 %110) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %113 = ptrtoint ptr %venc_base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %venc_base.i.i.i30, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %114, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 16777216) #8, !srcloc !136
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else22.i, %if.then18.i, %if.then12.i
  %venc_base.i.i63.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %115 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %venc_base.i.i63.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %116, i32 12
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %118 = or i32 %117, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %venc_base.i.i63.i, align 4
  %add.ptr.i2.i66.i = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i66.i, i32 %118) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %venc_base.i.i63.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #8, !srcloc !136
  %123 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %venc_base.i.i63.i, align 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %126 = or i32 %125, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %127 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %venc_base.i.i63.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #8, !srcloc !136
  %129 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %venc_base.i.i63.i, align 4
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %132 = and i32 %131, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %venc_base.i.i63.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #8, !srcloc !136
  %135 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %venc_base.i.i63.i, align 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %138 = and i32 %137, 1073741823
  %139 = or i32 %138, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %140 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %venc_base.i.i63.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %142 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %venc_base.i.i63.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %143, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #8, !srcloc !136
  %144 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %venc_base.i.i63.i, align 4
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %147 = or i32 %146, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %venc_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %venc_base.i.i63.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #8, !srcloc !136
  br label %return

return:                                           ; preds = %if.end26.i, %do.end4.i.return_crit_edge, %if.else.return_crit_edge, %if.end29.i, %do.end5.i.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.return_crit_edge ], [ 0, %if.end29.i ], [ -22, %do.end5.i.return_crit_edge ], [ 0, %if.end26.i ], [ -22, %do.end4.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_s_dv_timings(ptr noundef %sd, ptr nocapture noundef readonly %dv_timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %height1 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %dv_timings, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %height1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %height1, align 1
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %1, label %do.end5.cleanup_crit_edge [
    i32 576, label %if.then7
    i32 480, label %if.then10
    i32 720, label %land.lhs.true
    i32 1080, label %land.lhs.true20
  ]

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.end5
  %pdata1.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1.i, align 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp slt i32 %6, 3
  br i1 %cmp.i, label %do.end.i, label %if.then7.do.end5.i_crit_edge

if.then7.do.end5.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.then7.do.end5.i_crit_edge
  %venc_type.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %7 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %venc_type.i, align 4
  %.off.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end10.i, label %do.end5.i.cleanup_crit_edge

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %do.end5.i
  %setup_clock.i = getelementptr inbounds %struct.venc_platform_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %setup_clock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %setup_clock.i, align 4
  %call11.i = tail call i32 %10(i32 noundef 4, i32 noundef 27000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cleanup_crit_edge, label %if.end14.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %11 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %venc_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cond.i = icmp eq i32 %12, 2
  br i1 %cond.i, label %land.lhs.true.i.i, label %if.end14.i.venc_enable_vpss_clock.exit.i_crit_edge

if.end14.i.venc_enable_vpss_clock.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_enable_vpss_clock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %call7.i.i = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 1) #8
  br label %venc_enable_vpss_clock.exit.i

venc_enable_vpss_clock.exit.i:                    ; preds = %land.lhs.true.i.i, %if.end14.i.venc_enable_vpss_clock.exit.i_crit_edge
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  %13 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %venc_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp17.i = icmp eq i32 %14, 2
  br i1 %cmp17.i, label %if.then18.i, label %venc_enable_vpss_clock.exit.i.if.end20.i_crit_edge

venc_enable_vpss_clock.exit.i.if.end20.i_crit_edge: ; preds = %venc_enable_vpss_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then18.i:                                      ; preds = %venc_enable_vpss_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %15 = ptrtoint ptr %vdaccfg_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdaccfg_reg.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -280948472) #8, !srcloc !136
  %17 = ptrtoint ptr %vdaccfg_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdaccfg_reg.i.i, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %venc_enable_vpss_clock.exit.i.if.end20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %20 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %23, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 16777216) #8, !srcloc !136
  %24 = ptrtoint ptr %venc_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %venc_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp24.i = icmp eq i32 %25, 1
  br i1 %cmp24.i, label %if.then25.i, label %if.end20.i.if.end28.i_crit_edge

if.end20.i.if.end28.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %29 = or i32 %28, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %29) #8, !srcloc !136
  %32 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.i) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %35 = or i32 %34, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %venc_base.i.i, align 4
  %add.ptr.i2.i60.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i60.i, i32 %35) #8, !srcloc !136
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end20.i.if.end28.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #8, !srcloc !136
  %40 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %venc_base.i.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %43 = or i32 %42, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !136
  %46 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %venc_base.i.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %49 = or i32 %48, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !136
  %52 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %venc_base.i.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %55 = and i32 %54, 1073741823
  %56 = or i32 %55, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !136
  %59 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %venc_base.i.i, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %62 = and i32 %61, -7340033
  %63 = or i32 %62, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !136
  %66 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %venc_base.i.i, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %69 = or i32 %68, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %venc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %venc_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #8, !srcloc !136
  br label %cleanup

if.then10:                                        ; preds = %do.end5
  %pdata1.i44 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %72 = ptrtoint ptr %pdata1.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdata1.i44, align 8
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp.i45 = icmp slt i32 %74, 3
  br i1 %cmp.i45, label %do.end.i48, label %if.then10.do.end5.i52_crit_edge

if.then10.do.end5.i52_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i52

do.end.i48:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %name.i46 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i46) #11
  br label %do.end5.i52

do.end5.i52:                                      ; preds = %do.end.i48, %if.then10.do.end5.i52_crit_edge
  %venc_type.i49 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %75 = ptrtoint ptr %venc_type.i49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %venc_type.i49, align 4
  %.off.i50 = add i32 %76, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i50)
  %switch.i51 = icmp ult i32 %.off.i50, 2
  br i1 %switch.i51, label %if.end10.i56, label %do.end5.i52.cleanup_crit_edge

do.end5.i52.cleanup_crit_edge:                    ; preds = %do.end5.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i56:                                     ; preds = %do.end5.i52
  %setup_clock.i53 = getelementptr inbounds %struct.venc_platform_data, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %setup_clock.i53 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %setup_clock.i53, align 4
  %call11.i54 = tail call i32 %78(i32 noundef 4, i32 noundef 27000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i54)
  %cmp12.i55 = icmp slt i32 %call11.i54, 0
  br i1 %cmp12.i55, label %if.end10.i56.cleanup_crit_edge, label %if.end14.i58

if.end10.i56.cleanup_crit_edge:                   ; preds = %if.end10.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i58:                                     ; preds = %if.end10.i56
  %79 = ptrtoint ptr %venc_type.i49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %venc_type.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cond.i57 = icmp eq i32 %80, 2
  br i1 %cond.i57, label %land.lhs.true.i.i61, label %if.end14.i58.venc_enable_vpss_clock.exit.i63_crit_edge

if.end14.i58.venc_enable_vpss_clock.exit.i63_crit_edge: ; preds = %if.end14.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_enable_vpss_clock.exit.i63

land.lhs.true.i.i61:                              ; preds = %if.end14.i58
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i59 = tail call i32 @vpss_enable_clock(i32 noundef 4, i32 noundef 1) #8
  %call7.i.i60 = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 1) #8
  br label %venc_enable_vpss_clock.exit.i63

venc_enable_vpss_clock.exit.i63:                  ; preds = %land.lhs.true.i.i61, %if.end14.i58.venc_enable_vpss_clock.exit.i63_crit_edge
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  %81 = ptrtoint ptr %venc_type.i49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %venc_type.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp17.i62 = icmp eq i32 %82, 2
  br i1 %cmp17.i62, label %if.then18.i65, label %venc_enable_vpss_clock.exit.i63.if.end20.i70_crit_edge

venc_enable_vpss_clock.exit.i63.if.end20.i70_crit_edge: ; preds = %venc_enable_vpss_clock.exit.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i70

if.then18.i65:                                    ; preds = %venc_enable_vpss_clock.exit.i63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i.i64 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %83 = ptrtoint ptr %vdaccfg_reg.i.i64 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vdaccfg_reg.i.i64, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 -280948472) #8, !srcloc !136
  %85 = ptrtoint ptr %vdaccfg_reg.i.i64 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vdaccfg_reg.i.i64, align 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %if.end20.i70

if.end20.i70:                                     ; preds = %if.then18.i65, %venc_enable_vpss_clock.exit.i63.if.end20.i70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i66 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %88 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %89, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i55.i68 = getelementptr i8, ptr %91, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i68, i32 16777216) #8, !srcloc !136
  %92 = ptrtoint ptr %venc_type.i49 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %venc_type.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp24.i69 = icmp eq i32 %93, 1
  br i1 %cmp24.i69, label %if.then25.i75, label %if.end20.i70.if.end28.i76_crit_edge

if.end20.i70.if.end28.i76_crit_edge:              ; preds = %if.end20.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i76

if.then25.i75:                                    ; preds = %if.end20.i70
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i.i.i71 = getelementptr i8, ptr %95, i32 8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %97 = or i32 %96, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i2.i.i72 = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i72, i32 %97) #8, !srcloc !136
  %100 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i.i57.i73 = getelementptr i8, ptr %101, i32 8
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.i73) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %103 = or i32 %102, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %venc_base.i.i66, align 4
  %add.ptr.i2.i60.i74 = getelementptr i8, ptr %105, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i60.i74, i32 %103) #8, !srcloc !136
  br label %if.end28.i76

if.end28.i76:                                     ; preds = %if.then25.i75, %if.end20.i70.if.end28.i76_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #8, !srcloc !136
  %108 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %venc_base.i.i66, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %111 = or i32 %110, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #8, !srcloc !136
  %114 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %venc_base.i.i66, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %117 = or i32 %116, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #8, !srcloc !136
  %120 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %venc_base.i.i66, align 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %123 = and i32 %122, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #8, !srcloc !136
  %126 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %venc_base.i.i66, align 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %129 = and i32 %128, -7340033
  %130 = or i32 %129, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !136
  %133 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %venc_base.i.i66, align 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %136 = or i32 %135, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %venc_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %venc_base.i.i66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #8, !srcloc !136
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end5
  %venc_type = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %139 = ptrtoint ptr %venc_type to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %venc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp14 = icmp eq i32 %140, 2
  br i1 %cmp14, label %if.then15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  %pdata1.i78 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %141 = ptrtoint ptr %pdata1.i78 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdata1.i78, align 8
  %setup_clock.i79 = getelementptr inbounds %struct.venc_platform_data, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %setup_clock.i79 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %setup_clock.i79, align 4
  %call2.i = tail call i32 %144(i32 noundef 4, i32 noundef 74250000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i80 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i80, label %if.then15.venc_set_720p60_internal.exit_crit_edge, label %venc_enable_vpss_clock.exit.i83

if.then15.venc_set_720p60_internal.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_set_720p60_internal.exit

venc_enable_vpss_clock.exit.i83:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i81 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %145 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %venc_base.i.i81, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %146, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %venc_base.i.i81, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %148, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %149 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %venc_base.i.i81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 0) #8, !srcloc !136
  %151 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %venc_base.i.i81, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %154 = or i32 %153, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %155 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %venc_base.i.i81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #8, !srcloc !136
  %157 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %venc_base.i.i81, align 4
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %160 = or i32 %159, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %161 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %venc_base.i.i81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #8, !srcloc !136
  %163 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %venc_base.i.i81, align 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %166 = or i32 %165, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %167 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %venc_base.i.i81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #8, !srcloc !136
  %169 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %venc_base.i.i81, align 4
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %172 = or i32 %171, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %173 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %venc_base.i.i81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %175 = ptrtoint ptr %venc_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %venc_base.i.i81, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %176, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 0) #8, !srcloc !136
  br label %venc_set_720p60_internal.exit

venc_set_720p60_internal.exit:                    ; preds = %venc_enable_vpss_clock.exit.i83, %if.then15.venc_set_720p60_internal.exit_crit_edge
  %retval.0.i84 = phi i32 [ 0, %venc_enable_vpss_clock.exit.i83 ], [ -22, %if.then15.venc_set_720p60_internal.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %177 = ptrtoint ptr %vdaccfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %vdaccfg_reg.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 -280948472) #8, !srcloc !136
  %179 = ptrtoint ptr %vdaccfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %vdaccfg_reg.i, align 8
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %cleanup

land.lhs.true20:                                  ; preds = %do.end5
  %venc_type21 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %182 = ptrtoint ptr %venc_type21 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %venc_type21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %183)
  %cmp22 = icmp eq i32 %183, 2
  br i1 %cmp22, label %if.then23, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true20
  %pdata1.i85 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 2
  %184 = ptrtoint ptr %pdata1.i85 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdata1.i85, align 8
  %setup_clock.i86 = getelementptr inbounds %struct.venc_platform_data, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %setup_clock.i86 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %setup_clock.i86, align 4
  %call2.i87 = tail call i32 %187(i32 noundef 4, i32 noundef 74250000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i87)
  %cmp.i88 = icmp slt i32 %call2.i87, 0
  br i1 %cmp.i88, label %if.then23.venc_set_1080i30_internal.exit_crit_edge, label %venc_enable_vpss_clock.exit.i93

if.then23.venc_set_1080i30_internal.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_set_1080i30_internal.exit

venc_enable_vpss_clock.exit.i93:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @venc_enabledigitaloutput(ptr noundef %sd) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i.i89 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %188 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %venc_base.i.i89, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %189, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %190 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %venc_base.i.i89, align 4
  %add.ptr.i23.i91 = getelementptr i8, ptr %191, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i91, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %192 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %venc_base.i.i89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #8, !srcloc !136
  %194 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %venc_base.i.i89, align 4
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %197 = or i32 %196, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %198 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %venc_base.i.i89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #8, !srcloc !136
  %200 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %venc_base.i.i89, align 4
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %203 = or i32 %202, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %204 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %venc_base.i.i89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #8, !srcloc !136
  %206 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %venc_base.i.i89, align 4
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %209 = and i32 %208, 1073741823
  %210 = or i32 %209, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %211 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %venc_base.i.i89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #8, !srcloc !136
  %213 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %venc_base.i.i89, align 4
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %216 = or i32 %215, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %217 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %venc_base.i.i89, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %219 = ptrtoint ptr %venc_base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %venc_base.i.i89, align 4
  %add.ptr.i35.i92 = getelementptr i8, ptr %220, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i92, i32 0) #8, !srcloc !136
  br label %venc_set_1080i30_internal.exit

venc_set_1080i30_internal.exit:                   ; preds = %venc_enable_vpss_clock.exit.i93, %if.then23.venc_set_1080i30_internal.exit_crit_edge
  %retval.0.i94 = phi i32 [ 0, %venc_enable_vpss_clock.exit.i93 ], [ -22, %if.then23.venc_set_1080i30_internal.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %vdaccfg_reg.i95 = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 8
  %221 = ptrtoint ptr %vdaccfg_reg.i95 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %vdaccfg_reg.i95, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 -280948472) #8, !srcloc !136
  %223 = ptrtoint ptr %vdaccfg_reg.i95 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vdaccfg_reg.i95, align 8
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #8, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %venc_set_1080i30_internal.exit, %land.lhs.true20.cleanup_crit_edge, %venc_set_720p60_internal.exit, %land.lhs.true.cleanup_crit_edge, %if.end28.i76, %if.end10.i56.cleanup_crit_edge, %do.end5.i52.cleanup_crit_edge, %if.end28.i, %if.end10.i.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i84, %venc_set_720p60_internal.exit ], [ %retval.0.i94, %venc_set_1080i30_internal.exit ], [ -22, %do.end5.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ], [ 0, %if.end28.i ], [ -22, %do.end5.i.cleanup_crit_edge ], [ -22, %if.end10.i.cleanup_crit_edge ], [ 0, %if.end28.i76 ], [ -22, %do.end5.i52.cleanup_crit_edge ], [ -22, %if.end10.i56.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_enable_clock(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venc_enabledigitaloutput(ptr noundef %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #11
  br label %if.else

if.else:                                          ; preds = %do.end, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %venc_base.i = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %venc_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1090584576) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 2080702464) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #8, !srcloc !136
  %venc_type = getelementptr inbounds %struct.venc_state, ptr %sd, i32 0, i32 9
  %13 = ptrtoint ptr %venc_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %venc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp25.not = icmp eq i32 %14, 3
  br i1 %cmp25.not, label %if.else.if.end28_crit_edge, label %if.then26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 65536) #8, !srcloc !136
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else.if.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %38, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %40, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %42, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 16777216) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %venc_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %venc_base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %44, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 33554432) #8, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %venc_type = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %venc_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %venc_type, align 4
  %pdev9 = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %pdev9, align 4
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 8
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %venc_base = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %venc_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %venc_base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %venc_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %venc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20.not = icmp eq i32 %14, 1
  br i1 %cmp20.not, label %if.end18.do.body30_crit_edge, label %if.then21

if.end18.do.body30_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.then21:                                        ; preds = %if.end18
  %call22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %vdaccfg_reg = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %vdaccfg_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %vdaccfg_reg, align 8
  %cmp.i61 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then25, label %if.then21.do.body30_crit_edge

if.then21.do.body30_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call22 to i32
  br label %cleanup

do.body30:                                        ; preds = %if.then21.do.body30_crit_edge, %if.end18.do.body30_crit_edge
  %lock = getelementptr inbounds %struct.venc_state, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @venc_probe.__key, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev9, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %19, ptr noundef nonnull @.str.45) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %if.then25, %if.then15, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %12, %if.then15 ], [ %16, %if.then25 ], [ 0, %do.body30 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_remove(ptr nocapture noundef readnone %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !111, !112, !113, !114, !115, !116, !118, !119, !121, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 50, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 606, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @venc_sub_dev_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @venc_sub_dev_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 611, i32 3}
!13 = !{ptr @venc_sub_dev_init._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @venc_sub_dev_init._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_venc_sub_dev_init, !16, !"__ksymtab_venc_sub_dev_init", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 618, i32 1}
!17 = !{ptr @__initcall__kmod_vpbe_venc__294_672_venc_driver_init6, !18, !"__initcall__kmod_vpbe_venc__294_672_venc_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 672, i32 1}
!19 = !{ptr @__exitcall_venc_driver_exit, !18, !"__exitcall_venc_driver_exit", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_file295, !21, !"__UNIQUE_ID_file295", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 674, i32 1}
!22 = !{ptr @__UNIQUE_ID_license296, !21, !"__UNIQUE_ID_license296", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description297, !24, !"__UNIQUE_ID_description297", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 675, i32 1}
!25 = !{ptr @__UNIQUE_ID_author298, !26, !"__UNIQUE_ID_author298", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 676, i32 1}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @debug, !29, !"debug", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 48, i32 12}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 586, i32 25}
!32 = !{ptr @venc_ops, !33, !"venc_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 552, i32 37}
!34 = !{ptr @venc_core_ops, !35, !"venc_core_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 542, i32 42}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 535, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @venc_command._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @venc_command._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @venc_video_ops, !42, !"venc_video_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 546, i32 43}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 515, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @venc_s_routing._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @venc_s_routing._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 115, i32 3}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @venc_set_dac._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @venc_set_dac._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 119, i32 3}
!55 = !{ptr @venc_set_dac._entry.13, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @venc_set_dac._entry_ptr.15, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 123, i32 3}
!59 = !{ptr @venc_set_dac._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @venc_set_dac._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 468, i32 2}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @venc_s_std_output._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @venc_s_std_output._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 221, i32 2}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @venc_set_ntsc._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @venc_set_ntsc._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 137, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @venc_enabledigitaloutput._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @venc_enabledigitaloutput._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 267, i32 2}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @venc_set_pal._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @venc_set_pal._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 485, i32 2}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @venc_s_dv_timings._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @venc_s_dv_timings._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 368, i32 2}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @venc_set_576p50._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @venc_set_576p50._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 320, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @venc_set_480p59_94._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @venc_set_480p59_94._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 568, i32 3}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @venc_initialize._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @venc_initialize._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 574, i32 3}
!103 = !{ptr @venc_initialize._entry.35, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @venc_initialize._entry_ptr.37, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 667, i32 11}
!107 = !{ptr @venc_driver, !108, !"venc_driver", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 663, i32 31}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 626, i32 3}
!111 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @venc_probe._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @venc_probe._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @venc_probe.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 651, i32 2}
!118 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 653, i32 2}
!121 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @venc_probe._entry.44, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @venc_probe._entry_ptr.47, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @vpbe_venc_devtype, !125, !"vpbe_venc_devtype", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/davinci/vpbe_venc.c", i32 30, i32 40}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i64 2156150207}
!136 = !{i64 4914468}
!137 = !{i64 4914886}
!138 = !{i64 2156149815}
!139 = !{i64 2156150943}
!140 = !{i64 2156151604}
