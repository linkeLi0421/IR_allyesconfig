; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpfe_capture.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpfe_capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vpfe_register_ccdc_device\22, \22a\22\09"
module asm "\09.weak\09__crc_vpfe_register_ccdc_device\09\09\09\09"
module asm "\09.long\09__crc_vpfe_register_ccdc_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vpfe_register_ccdc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22vpfe_register_ccdc_device\22\09\09\09\09\09"
module asm "__kstrtabns_vpfe_register_ccdc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vpfe_unregister_ccdc_device\22, \22a\22\09"
module asm "\09.weak\09__crc_vpfe_unregister_ccdc_device\09\09\09\09"
module asm "\09.long\09__crc_vpfe_unregister_ccdc_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vpfe_unregister_ccdc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22vpfe_unregister_ccdc_device\22\09\09\09\09\09"
module asm "__kstrtabns_vpfe_unregister_ccdc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vpfe_standard = type { i64, i32, i32, %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.vpfe_pixel_format = type { i32, i32 }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccdc_hw_device = type { [32 x i8], ptr, %struct.ccdc_hw_ops }
%struct.ccdc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccdc_config = type { i32, [32 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vpfe_device = type { %struct.video_device, ptr, ptr, %struct.v4l2_device, ptr, i32, i32, i8, %struct.vpfe_hw_if_param, ptr, i32, %struct.vpfe_std_info, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i32, %struct.v4l2_format, %struct.v4l2_rect, %struct.videobuf_queue, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i8, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vpfe_hw_if_param = type { i32, i32, i32 }
%struct.vpfe_std_info = type { i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.vpfe_config = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpfe_subdev_info = type { [32 x i8], i32, i32, ptr, ptr, i32, %struct.vpfe_hw_if_param, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vpfe_fh = type { %struct.v4l2_fh, ptr, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.93, i16, i16, i16, [10 x i16] }
%union.anon.93 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.100, i32, i32, %union.anon.102 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.100 = type { i32 }
%union.anon.102 = type { i32 }
%struct.vpfe_route = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.98, i32, i32 }
%union.anon.98 = type { i32 }

@__param_str_numbuffers = internal constant [24 x i8] c"vpfe_capture.numbuffers\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@numbuffers = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_numbuffers = internal constant %struct.kernel_param { ptr @__param_str_numbuffers, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @numbuffers } }, section "__param", align 4
@__UNIQUE_ID_numbufferstype294 = internal constant [38 x i8] c"vpfe_capture.parmtype=numbuffers:uint\00", section ".modinfo", align 1
@__param_str_bufsize = internal constant [21 x i8] c"vpfe_capture.bufsize\00", align 1
@bufsize = internal global { i32, [28 x i8] } { i32 829440, [28 x i8] zeroinitializer }, align 32
@__param_bufsize = internal constant %struct.kernel_param { ptr @__param_str_bufsize, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @bufsize } }, section "__param", align 4
@__UNIQUE_ID_bufsizetype295 = internal constant [35 x i8] c"vpfe_capture.parmtype=bufsize:uint\00", section ".modinfo", align 1
@__param_str_debug = internal constant [19 x i8] c"vpfe_capture.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [32 x i8] c"vpfe_capture.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_numbuffers297 = internal constant [54 x i8] c"vpfe_capture.parm=numbuffers:buffer count (default:3)\00", section ".modinfo", align 1
@__UNIQUE_ID_bufsize298 = internal constant [71 x i8] c"vpfe_capture.parm=bufsize:buffer size in bytes (default:720 x 576 x 2)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [40 x i8] c"vpfe_capture.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [61 x i8] c"vpfe_capture.description=VPFE Video for Linux Capture Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [62 x i8] c"vpfe_capture.file=drivers/media/platform/davinci/vpfe_capture\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [25 x i8] c"vpfe_capture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [38 x i8] c"vpfe_capture.author=Texas Instruments\00", section ".modinfo", align 1
@vpfe_register_ccdc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015vpfe_register_ccdc_device: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vpfe_register_ccdc_device\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/davinci/vpfe_capture.c\00", [50 x i8] zeroinitializer }, align 32
@vpfe_register_ccdc_device._entry_ptr = internal global ptr @vpfe_register_ccdc_device._entry, section ".printk_index", align 4
@ccdc_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ccdc_lock, i64 52), ptr getelementptr (i8, ptr @ccdc_lock, i64 52) }, ptr @ccdc_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ccdc_cfg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vpfe_register_ccdc_device._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013vpfe capture not initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@vpfe_register_ccdc_device._entry_ptr.5 = internal global ptr @vpfe_register_ccdc_device._entry.3, section ".printk_index", align 4
@ccdc_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vpfe_register_ccdc_device._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ccdc already registered\0A\00", [37 x i8] zeroinitializer }, align 32
@vpfe_register_ccdc_device._entry_ptr.8 = internal global ptr @vpfe_register_ccdc_device._entry.6, section ".printk_index", align 4
@__kstrtab_vpfe_register_ccdc_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_vpfe_register_ccdc_device = external dso_local constant [0 x i8], align 1
@__ksymtab_vpfe_register_ccdc_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vpfe_register_ccdc_device to i32), ptr @__kstrtab_vpfe_register_ccdc_device, ptr @__kstrtabns_vpfe_register_ccdc_device }, section "___ksymtab+vpfe_register_ccdc_device", align 4
@vpfe_unregister_ccdc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013invalid ccdc device ptr\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vpfe_unregister_ccdc_device\00", [36 x i8] zeroinitializer }, align 32
@vpfe_unregister_ccdc_device._entry_ptr = internal global ptr @vpfe_unregister_ccdc_device._entry, section ".printk_index", align 4
@vpfe_unregister_ccdc_device._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015vpfe_unregister_ccdc_device, dev->name = %s\0A\00", [49 x i8] zeroinitializer }, align 32
@vpfe_unregister_ccdc_device._entry_ptr.13 = internal global ptr @vpfe_unregister_ccdc_device._entry.11, section ".printk_index", align 4
@__kstrtab_vpfe_unregister_ccdc_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_vpfe_unregister_ccdc_device = external dso_local constant [0 x i8], align 1
@__ksymtab_vpfe_unregister_ccdc_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vpfe_unregister_ccdc_device to i32), ptr @__kstrtab_vpfe_unregister_ccdc_device, ptr @__kstrtabns_vpfe_unregister_ccdc_device }, section "___ksymtab+vpfe_unregister_ccdc_device", align 4
@__initcall__kmod_vpfe_capture__312_1902_vpfe_driver_init6 = internal global ptr @vpfe_driver_init, section ".initcall6.init", align 4
@vpfe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vpfe_probe, ptr @vpfe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vpfe_driver_exit = internal global ptr @vpfe_driver_exit, section ".exitcall.exit", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccdc_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccdc_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe-capture\00", [19 x i8] zeroinitializer }, align 32
@vpfe_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vpfe_suspend, ptr @vpfe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vpfe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Failed to allocate memory for vpfe_dev\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_probe\00", [21 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr = internal global ptr @vpfe_probe._entry, section ".printk_index", align 4
@vpfe_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unable to get vpfe config\0A\00", [63 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.21 = internal global ptr @vpfe_probe._entry.19, section ".printk_index", align 4
@vpfe_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: null ptr in vpfe_cfg\0A\00", [36 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.24 = internal global ptr @vpfe_probe._entry.22, section ".printk_index", align 4
@vpfe_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Unable to get interrupt for VINT0\0A\00", [55 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.27 = internal global ptr @vpfe_probe._entry.25, section ".printk_index", align 4
@vpfe_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Unable to get interrupt for VINT1\0A\00", [55 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.30 = internal global ptr @vpfe_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_capture0\00", [18 x i8] zeroinitializer }, align 32
@vpfe_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.2, i32 1743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unable to request interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.34 = internal global ptr @vpfe_probe._entry.32, section ".printk_index", align 4
@vpfe_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vpfe_poll, ptr @video_ioctl2, ptr null, ptr @vpfe_mmap, ptr @vpfe_open, ptr @vpfe_release }, [60 x i8] zeroinitializer }, align 32
@vpfe_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vpfe_querycap, ptr @vpfe_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_reqbufs, ptr @vpfe_querybuf, ptr @vpfe_qbuf, ptr null, ptr @vpfe_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_streamon, ptr @vpfe_streamoff, ptr @vpfe_g_std, ptr @vpfe_s_std, ptr @vpfe_querystd, ptr @vpfe_enum_input, ptr @vpfe_g_input, ptr @vpfe_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vpfe_g_pixelaspect, ptr @vpfe_g_selection, ptr @vpfe_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s_V%d.%d.%d\00", [19 x i8] zeroinitializer }, align 32
@vpfe_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.18, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unable to register v4l2 device.\0A\00", [57 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.38 = internal global ptr @vpfe_probe._entry.36, section ".printk_index", align 4
@vpfe_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.18, ptr @.str.2, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: v4l2 device registered\0A\00", [34 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.41 = internal global ptr @vpfe_probe._entry.39, section ".printk_index", align 4
@vpfe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vpfe_dev->irqlock\00", [45 x i8] zeroinitializer }, align 32
@vpfe_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&vpfe_dev->dma_queue_lock\00", [38 x i8] zeroinitializer }, align 32
@vpfe_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vpfe_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@config_params.1 = internal global { i8, [31 x i8] } { i8 3, [31 x i8] zeroinitializer }, align 32
@config_params.3 = internal global { i32, [28 x i8] } { i32 829440, [28 x i8] zeroinitializer }, align 32
@vpfe_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.2, i32 1778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: trying to register vpfe device.\0A\00", [57 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.49 = internal global ptr @vpfe_probe._entry.47, section ".printk_index", align 4
@vpfe_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.18, ptr @.str.2, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: video_dev=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.52 = internal global ptr @vpfe_probe._entry.50, section ".printk_index", align 4
@vpfe_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.18, ptr @.str.2, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Unable to register video device.\0A\00", [56 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.55 = internal global ptr @vpfe_probe._entry.53, section ".printk_index", align 4
@vpfe_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.18, ptr @.str.2, i32 1791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: video device registered\0A\00", [33 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.58 = internal global ptr @vpfe_probe._entry.56, section ".printk_index", align 4
@vpfe_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.18, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: v4l2 sub device %s registered\0A\00", [59 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.61 = internal global ptr @vpfe_probe._entry.59, section ".printk_index", align 4
@vpfe_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.18, ptr @.str.2, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: v4l2 sub device %s register fails\0A\00", [55 x i8] zeroinitializer }, align 32
@vpfe_probe._entry_ptr.64 = internal global ptr @vpfe_probe._entry.62, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vpfe_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: \0AStarting vpfe_isr...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpfe_isr\00", [23 x i8] zeroinitializer }, align 32
@vpfe_isr._entry_ptr = internal global ptr @vpfe_isr._entry, section ".printk_index", align 4
@vpfe_isr._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: frame format is progressive...\0A\00", [58 x i8] zeroinitializer }, align 32
@vpfe_isr._entry_ptr.69 = internal global ptr @vpfe_isr._entry.67, section ".printk_index", align 4
@vpfe_isr._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: field id = %x:%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@vpfe_isr._entry_ptr.72 = internal global ptr @vpfe_isr._entry.70, section ".printk_index", align 4
@vpfe_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: vpfe_poll\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpfe_poll\00", [22 x i8] zeroinitializer }, align 32
@vpfe_poll._entry_ptr = internal global ptr @vpfe_poll._entry, section ".printk_index", align 4
@vpfe_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: vpfe_mmap\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpfe_mmap\00", [22 x i8] zeroinitializer }, align 32
@vpfe_mmap._entry_ptr = internal global ptr @vpfe_mmap._entry, section ".printk_index", align 4
@vpfe_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: vpfe_open\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpfe_open\00", [22 x i8] zeroinitializer }, align 32
@vpfe_open._entry_ptr = internal global ptr @vpfe_open._entry, section ".printk_index", align 4
@vpfe_open._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: No decoder registered\0A\00", [35 x i8] zeroinitializer }, align 32
@vpfe_open._entry_ptr.81 = internal global ptr @vpfe_open._entry.79, section ".printk_index", align 4
@vpfe_standards = internal constant { [2 x %struct.vpfe_standard], [32 x i8] } { [2 x %struct.vpfe_standard] [%struct.vpfe_standard { i64 63744, i32 720, i32 480, %struct.v4l2_fract { i32 11, i32 10 }, i32 1 }, %struct.vpfe_standard { i64 16713471, i32 720, i32 576, %struct.v4l2_fract { i32 54, i32 59 }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@vpfe_initialize_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: ccdc device not registered\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpfe_initialize_device\00", [41 x i8] zeroinitializer }, align 32
@vpfe_initialize_device._entry_ptr = internal global ptr @vpfe_initialize_device._entry, section ".printk_index", align 4
@vpfe_initialize_device._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Couldn't lock ccdc module\0A\00", [63 x i8] zeroinitializer }, align 32
@vpfe_initialize_device._entry_ptr.86 = internal global ptr @vpfe_initialize_device._entry.84, section ".printk_index", align 4
@vpfe_config_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: standard not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpfe_config_image_format\00", [39 x i8] zeroinitializer }, align 32
@vpfe_config_image_format._entry_ptr = internal global ptr @vpfe_config_image_format._entry, section ".printk_index", align 4
@vpfe_config_image_format._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: error in getting get_fmt from sub device\0A\00", [48 x i8] zeroinitializer }, align 32
@vpfe_config_image_format._entry_ptr.91 = internal global ptr @vpfe_config_image_format._entry.89, section ".printk_index", align 4
@vpfe_config_ccdc_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: couldn't set pix format in ccdc\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vpfe_config_ccdc_image_format\00", [34 x i8] zeroinitializer }, align 32
@vpfe_config_ccdc_image_format._entry_ptr = internal global ptr @vpfe_config_ccdc_image_format._entry, section ".printk_index", align 4
@vpfe_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: vpfe_release\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe_release\00", [19 x i8] zeroinitializer }, align 32
@vpfe_release._entry_ptr = internal global ptr @vpfe_release._entry, section ".printk_index", align 4
@vpfe_release._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: stream off failed in subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@vpfe_release._entry_ptr.98 = internal global ptr @vpfe_release._entry.96, section ".printk_index", align 4
@vpfe_querycap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: vpfe_querycap\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_querycap\00", [18 x i8] zeroinitializer }, align 32
@vpfe_querycap._entry_ptr = internal global ptr @vpfe_querycap._entry, section ".printk_index", align 4
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VPFE\00", [27 x i8] zeroinitializer }, align 32
@vpfe_enum_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: vpfe_enum_fmt_vid_cap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpfe_enum_fmt_vid_cap\00", [42 x i8] zeroinitializer }, align 32
@vpfe_enum_fmt_vid_cap._entry_ptr = internal global ptr @vpfe_enum_fmt_vid_cap._entry, section ".printk_index", align 4
@vpfe_pix_fmts = internal constant { [6 x %struct.vpfe_pixel_format], [48 x i8] } { [6 x %struct.vpfe_pixel_format] [%struct.vpfe_pixel_format { i32 825770306, i32 1 }, %struct.vpfe_pixel_format { i32 844257602, i32 2 }, %struct.vpfe_pixel_format { i32 808535106, i32 1 }, %struct.vpfe_pixel_format { i32 1498831189, i32 2 }, %struct.vpfe_pixel_format { i32 1448695129, i32 2 }, %struct.vpfe_pixel_format { i32 842094158, i32 1 }], [48 x i8] zeroinitializer }, align 32
@vpfe_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: vpfe_g_fmt_vid_cap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpfe_g_fmt_vid_cap\00", [45 x i8] zeroinitializer }, align 32
@vpfe_g_fmt_vid_cap._entry_ptr = internal global ptr @vpfe_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vpfe_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: vpfe_s_fmt_vid_cap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpfe_s_fmt_vid_cap\00", [45 x i8] zeroinitializer }, align 32
@vpfe_s_fmt_vid_cap._entry_ptr = internal global ptr @vpfe_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vpfe_s_fmt_vid_cap._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Streaming is started\0A\00", [36 x i8] zeroinitializer }, align 32
@vpfe_s_fmt_vid_cap._entry_ptr.110 = internal global ptr @vpfe_s_fmt_vid_cap._entry.108, section ".printk_index", align 4
@vpfe_check_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: width = %d, height = %d, bpp = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpfe_check_format\00", [46 x i8] zeroinitializer }, align 32
@vpfe_check_format._entry_ptr = internal global ptr @vpfe_check_format._entry, section ".printk_index", align 4
@vpfe_check_format._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016%s: adjusted width = %d, height = %d, bpp = %d, bytesperline = %d, sizeimage = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@vpfe_check_format._entry_ptr.115 = internal global ptr @vpfe_check_format._entry.113, section ".printk_index", align 4
@vpfe_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: vpfe_try_fmt_vid_cap\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpfe_try_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vpfe_try_fmt_vid_cap._entry_ptr = internal global ptr @vpfe_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vpfe_reqbufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: vpfe_reqbufs\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe_reqbufs\00", [19 x i8] zeroinitializer }, align 32
@vpfe_reqbufs._entry_ptr = internal global ptr @vpfe_reqbufs._entry, section ".printk_index", align 4
@vpfe_reqbufs._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Invalid buffer type\0A\00", [37 x i8] zeroinitializer }, align 32
@vpfe_reqbufs._entry_ptr.122 = internal global ptr @vpfe_reqbufs._entry.120, section ".printk_index", align 4
@vpfe_reqbufs._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Only one IO user allowed\0A\00", [32 x i8] zeroinitializer }, align 32
@vpfe_reqbufs._entry_ptr.125 = internal global ptr @vpfe_reqbufs._entry.123, section ".printk_index", align 4
@vpfe_videobuf_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @vpfe_videobuf_setup, ptr @vpfe_videobuf_prepare, ptr @vpfe_videobuf_queue, ptr @vpfe_videobuf_release }, [16 x i8] zeroinitializer }, align 32
@vpfe_videobuf_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpfe_buffer_setup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpfe_videobuf_setup\00", [44 x i8] zeroinitializer }, align 32
@vpfe_videobuf_setup._entry_ptr = internal global ptr @vpfe_videobuf_setup._entry, section ".printk_index", align 4
@vpfe_videobuf_setup._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: count=%d, size=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@vpfe_videobuf_setup._entry_ptr.130 = internal global ptr @vpfe_videobuf_setup._entry.128, section ".printk_index", align 4
@vpfe_videobuf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: vpfe_buffer_prepare\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpfe_videobuf_prepare\00", [42 x i8] zeroinitializer }, align 32
@vpfe_videobuf_prepare._entry_ptr = internal global ptr @vpfe_videobuf_prepare._entry, section ".printk_index", align 4
@vpfe_videobuf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: vpfe_buffer_queue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpfe_videobuf_queue\00", [44 x i8] zeroinitializer }, align 32
@vpfe_videobuf_queue._entry_ptr = internal global ptr @vpfe_videobuf_queue._entry, section ".printk_index", align 4
@vpfe_videobuf_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: vpfe_videobuf_release\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vpfe_videobuf_release\00", [42 x i8] zeroinitializer }, align 32
@vpfe_videobuf_release._entry_ptr = internal global ptr @vpfe_videobuf_release._entry, section ".printk_index", align 4
@vpfe_querybuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: vpfe_querybuf\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_querybuf\00", [18 x i8] zeroinitializer }, align 32
@vpfe_querybuf._entry_ptr = internal global ptr @vpfe_querybuf._entry, section ".printk_index", align 4
@vpfe_querybuf._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Invalid buf type\0A\00", [40 x i8] zeroinitializer }, align 32
@vpfe_querybuf._entry_ptr.141 = internal global ptr @vpfe_querybuf._entry.139, section ".printk_index", align 4
@vpfe_querybuf._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: Invalid memory\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_querybuf._entry_ptr.144 = internal global ptr @vpfe_querybuf._entry.142, section ".printk_index", align 4
@vpfe_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: vpfe_qbuf\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpfe_qbuf\00", [22 x i8] zeroinitializer }, align 32
@vpfe_qbuf._entry_ptr = internal global ptr @vpfe_qbuf._entry, section ".printk_index", align 4
@vpfe_qbuf._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.146, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_qbuf._entry_ptr.148 = internal global ptr @vpfe_qbuf._entry.147, section ".printk_index", align 4
@vpfe_qbuf._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.146, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: fh->io_allowed\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_qbuf._entry_ptr.151 = internal global ptr @vpfe_qbuf._entry.149, section ".printk_index", align 4
@vpfe_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: vpfe_dqbuf\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_dqbuf\00", [21 x i8] zeroinitializer }, align 32
@vpfe_dqbuf._entry_ptr = internal global ptr @vpfe_dqbuf._entry, section ".printk_index", align 4
@vpfe_dqbuf._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.153, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_dqbuf._entry_ptr.155 = internal global ptr @vpfe_dqbuf._entry.154, section ".printk_index", align 4
@vpfe_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: vpfe_streamon\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_streamon\00", [18 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr = internal global ptr @vpfe_streamon._entry, section ".printk_index", align 4
@vpfe_streamon._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.157, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.159 = internal global ptr @vpfe_streamon._entry.158, section ".printk_index", align 4
@vpfe_streamon._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.157, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.161 = internal global ptr @vpfe_streamon._entry.160, section ".printk_index", align 4
@vpfe_streamon._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.157, ptr @.str.2, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: stream on failed in subdev\0A\00", [62 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.164 = internal global ptr @vpfe_streamon._entry.162, section ".printk_index", align 4
@vpfe_streamon._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.157, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: buffer queue is empty\0A\00", [35 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.167 = internal global ptr @vpfe_streamon._entry.165, section ".printk_index", align 4
@vpfe_streamon._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.157, ptr @.str.2, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Error in attaching interrupt handle\0A\00", [53 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.170 = internal global ptr @vpfe_streamon._entry.168, section ".printk_index", align 4
@vpfe_streamon._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.157, ptr @.str.2, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Error in configuring ccdc\0A\00", [63 x i8] zeroinitializer }, align 32
@vpfe_streamon._entry_ptr.173 = internal global ptr @vpfe_streamon._entry.171, section ".printk_index", align 4
@vpfe_calculate_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: vpfe_calculate_offsets\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vpfe_calculate_offsets\00", [41 x i8] zeroinitializer }, align 32
@vpfe_calculate_offsets._entry_ptr = internal global ptr @vpfe_calculate_offsets._entry, section ".printk_index", align 4
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_capture1\00", [18 x i8] zeroinitializer }, align 32
@vdint1_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: \0AInside vdint1_isr...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdint1_isr\00", [21 x i8] zeroinitializer }, align 32
@vdint1_isr._entry_ptr = internal global ptr @vdint1_isr._entry, section ".printk_index", align 4
@vpfe_streamoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: vpfe_streamoff\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpfe_streamoff\00", [17 x i8] zeroinitializer }, align 32
@vpfe_streamoff._entry_ptr = internal global ptr @vpfe_streamoff._entry, section ".printk_index", align 4
@vpfe_streamoff._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.180, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_streamoff._entry_ptr.182 = internal global ptr @vpfe_streamoff._entry.181, section ".printk_index", align 4
@vpfe_streamoff._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.180, ptr @.str.2, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_streamoff._entry_ptr.184 = internal global ptr @vpfe_streamoff._entry.183, section ".printk_index", align 4
@vpfe_streamoff._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.180, ptr @.str.2, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: device started\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_streamoff._entry_ptr.187 = internal global ptr @vpfe_streamoff._entry.185, section ".printk_index", align 4
@vpfe_streamoff._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.180, ptr @.str.2, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpfe_streamoff._entry_ptr.189 = internal global ptr @vpfe_streamoff._entry.188, section ".printk_index", align 4
@vpfe_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: vpfe_g_std\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_g_std\00", [21 x i8] zeroinitializer }, align 32
@vpfe_g_std._entry_ptr = internal global ptr @vpfe_g_std._entry, section ".printk_index", align 4
@vpfe_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: vpfe_s_std\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpfe_s_std\00", [21 x i8] zeroinitializer }, align 32
@vpfe_s_std._entry_ptr = internal global ptr @vpfe_s_std._entry, section ".printk_index", align 4
@vpfe_s_std._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: streaming is started\0A\00", [36 x i8] zeroinitializer }, align 32
@vpfe_s_std._entry_ptr.196 = internal global ptr @vpfe_s_std._entry.194, section ".printk_index", align 4
@vpfe_s_std._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.193, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Failed to set standard\0A\00", [34 x i8] zeroinitializer }, align 32
@vpfe_s_std._entry_ptr.199 = internal global ptr @vpfe_s_std._entry.197, section ".printk_index", align 4
@vpfe_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: vpfe_querystd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpfe_querystd\00", [18 x i8] zeroinitializer }, align 32
@vpfe_querystd._entry_ptr = internal global ptr @vpfe_querystd._entry, section ".printk_index", align 4
@vpfe_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: vpfe_enum_input\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpfe_enum_input\00", [16 x i8] zeroinitializer }, align 32
@vpfe_enum_input._entry_ptr = internal global ptr @vpfe_enum_input._entry, section ".printk_index", align 4
@vpfe_enum_input._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: input information not found for the subdev\0A\00", [46 x i8] zeroinitializer }, align 32
@vpfe_enum_input._entry_ptr.206 = internal global ptr @vpfe_enum_input._entry.204, section ".printk_index", align 4
@vpfe_g_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: vpfe_g_input\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe_g_input\00", [19 x i8] zeroinitializer }, align 32
@vpfe_g_input._entry_ptr = internal global ptr @vpfe_g_input._entry, section ".printk_index", align 4
@vpfe_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: vpfe_s_input\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpfe_s_input\00", [19 x i8] zeroinitializer }, align 32
@vpfe_s_input._entry_ptr = internal global ptr @vpfe_s_input._entry, section ".printk_index", align 4
@vpfe_s_input._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Streaming is on\0A\00", [41 x i8] zeroinitializer }, align 32
@vpfe_s_input._entry_ptr.213 = internal global ptr @vpfe_s_input._entry.211, section ".printk_index", align 4
@vpfe_s_input._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: invalid input index\0A\00", [37 x i8] zeroinitializer }, align 32
@vpfe_s_input._entry_ptr.216 = internal global ptr @vpfe_s_input._entry.214, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vpfe_s_input._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.210, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: vpfe_doioctl:error in setting input in decoder\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_s_input._entry_ptr.219 = internal global ptr @vpfe_s_input._entry.217, section ".printk_index", align 4
@vpfe_g_pixelaspect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: vpfe_g_pixelaspect\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpfe_g_pixelaspect\00", [45 x i8] zeroinitializer }, align 32
@vpfe_g_pixelaspect._entry_ptr = internal global ptr @vpfe_g_pixelaspect._entry, section ".printk_index", align 4
@vpfe_g_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vpfe_g_selection\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpfe_g_selection\00", [47 x i8] zeroinitializer }, align 32
@vpfe_g_selection._entry_ptr = internal global ptr @vpfe_g_selection._entry, section ".printk_index", align 4
@vpfe_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vpfe_s_selection\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpfe_s_selection\00", [47 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr = internal global ptr @vpfe_s_selection._entry, section ".printk_index", align 4
@vpfe_s_selection._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.225, ptr @.str.2, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Cannot change crop when streaming is ON\0A\00", [49 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr.228 = internal global ptr @vpfe_s_selection._entry.226, section ".printk_index", align 4
@vpfe_s_selection._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.225, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: doesn't support negative values for top & left\0A\00", [42 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr.231 = internal global ptr @vpfe_s_selection._entry.229, section ".printk_index", align 4
@vpfe_s_selection._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.225, ptr @.str.2, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error in S_SELECTION params\0A\00", [61 x i8] zeroinitializer }, align 32
@vpfe_s_selection._entry_ptr.234 = internal global ptr @vpfe_s_selection._entry.232, section ".printk_index", align 4
@vpfe_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: vpfe_remove\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpfe_remove\00", [20 x i8] zeroinitializer }, align 32
@vpfe_remove._entry_ptr = internal global ptr @vpfe_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.241 = internal global [8 x i64] [i64 6, i64 32, i64 808535106, i64 825770306, i64 842094158, i64 844257602, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [8 x i64] [i64 6, i64 32, i64 808535106, i64 825770306, i64 842094158, i64 844257602, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.251 = internal global [8 x i64] [i64 6, i64 32, i64 808535106, i64 825770306, i64 842094158, i64 844257602, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.252 = internal global [8 x i64] [i64 6, i64 32, i64 808535106, i64 825770306, i64 842094158, i64 844257602, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.253 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@___asan_gen_.254 = private unnamed_addr constant [11 x i8] c"numbuffers\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 66, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 67, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 65, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 169, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [10 x i8] c"ccdc_lock\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [9 x i8] c"ccdc_cfg\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 112, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 195, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [9 x i8] c"ccdc_dev\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 108, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 207, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 226, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 230, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [12 x i8] c"vpfe_driver\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1893, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 110, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1895, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant [16 x i8] c"vpfe_dev_pm_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1888, i32 32 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1688, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1696, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1704, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1722, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1732, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1740, i32 6 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1743, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [10 x i8] c"vpfe_fops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 707, i32 42 }
@___asan_gen_.371 = private unnamed_addr constant [15 x i8] c"vpfe_ioctl_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1618, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1756, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1764, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1768, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1769, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1770, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1771, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"config_params.1\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [16 x i8] c"config_params.3\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1777, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1779, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1786, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1791, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1818, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1828, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 496, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 509, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 521, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 698, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 686, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 423, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 426, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [15 x i8] c"vpfe_standards\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 114, i32 35 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 390, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 396, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 320, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 351, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 255, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 635, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 647, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 849, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 852, i32 25 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 875, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [14 x i8] c"vpfe_pix_fmts\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 120, i32 39 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 862, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 896, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 900, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 816, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 838, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 929, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1265, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1268, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1277, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant [19 x i8] c"vpfe_videobuf_qops\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1247, i32 40 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1163, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1171, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1185, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1216, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1234, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1306, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1309, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1314, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1327, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1330, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1339, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1350, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1353, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1397, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1400, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1406, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1415, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1421, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1450, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1456, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1368, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 609, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 571, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1480, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1483, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1489, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1495, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1511, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1148, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1116, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1126, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1134, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1097, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 994, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1000, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1012, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1028, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1039, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1048, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1067, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1522, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1539, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1566, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1574, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1584, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1598, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.970 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.971 = private constant [49 x i8] c"../drivers/media/platform/davinci/vpfe_capture.c\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.971, i32 1867, i32 2 }
@llvm.compiler.used = appending global [349 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_bufsize298, ptr @__UNIQUE_ID_bufsizetype295, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_numbuffers297, ptr @__UNIQUE_ID_numbufferstype294, ptr @__exitcall_vpfe_driver_exit, ptr @__initcall__kmod_vpfe_capture__312_1902_vpfe_driver_init6, ptr @__ksymtab_vpfe_register_ccdc_device, ptr @__ksymtab_vpfe_unregister_ccdc_device, ptr @__param_bufsize, ptr @__param_debug, ptr @__param_numbuffers, ptr @vdint1_isr._entry, ptr @vdint1_isr._entry_ptr, ptr @vpfe_calculate_offsets._entry, ptr @vpfe_calculate_offsets._entry_ptr, ptr @vpfe_check_format._entry, ptr @vpfe_check_format._entry.113, ptr @vpfe_check_format._entry_ptr, ptr @vpfe_check_format._entry_ptr.115, ptr @vpfe_config_ccdc_image_format._entry, ptr @vpfe_config_ccdc_image_format._entry_ptr, ptr @vpfe_config_image_format._entry, ptr @vpfe_config_image_format._entry.89, ptr @vpfe_config_image_format._entry_ptr, ptr @vpfe_config_image_format._entry_ptr.91, ptr @vpfe_dqbuf._entry, ptr @vpfe_dqbuf._entry.154, ptr @vpfe_dqbuf._entry_ptr, ptr @vpfe_dqbuf._entry_ptr.155, ptr @vpfe_driver_exit, ptr @vpfe_enum_fmt_vid_cap._entry, ptr @vpfe_enum_fmt_vid_cap._entry_ptr, ptr @vpfe_enum_input._entry, ptr @vpfe_enum_input._entry.204, ptr @vpfe_enum_input._entry_ptr, ptr @vpfe_enum_input._entry_ptr.206, ptr @vpfe_g_fmt_vid_cap._entry, ptr @vpfe_g_fmt_vid_cap._entry_ptr, ptr @vpfe_g_input._entry, ptr @vpfe_g_input._entry_ptr, ptr @vpfe_g_pixelaspect._entry, ptr @vpfe_g_pixelaspect._entry_ptr, ptr @vpfe_g_selection._entry, ptr @vpfe_g_selection._entry_ptr, ptr @vpfe_g_std._entry, ptr @vpfe_g_std._entry_ptr, ptr @vpfe_initialize_device._entry, ptr @vpfe_initialize_device._entry.84, ptr @vpfe_initialize_device._entry_ptr, ptr @vpfe_initialize_device._entry_ptr.86, ptr @vpfe_isr._entry, ptr @vpfe_isr._entry.67, ptr @vpfe_isr._entry.70, ptr @vpfe_isr._entry_ptr, ptr @vpfe_isr._entry_ptr.69, ptr @vpfe_isr._entry_ptr.72, ptr @vpfe_mmap._entry, ptr @vpfe_mmap._entry_ptr, ptr @vpfe_open._entry, ptr @vpfe_open._entry.79, ptr @vpfe_open._entry_ptr, ptr @vpfe_open._entry_ptr.81, ptr @vpfe_poll._entry, ptr @vpfe_poll._entry_ptr, ptr @vpfe_probe._entry, ptr @vpfe_probe._entry.19, ptr @vpfe_probe._entry.22, ptr @vpfe_probe._entry.25, ptr @vpfe_probe._entry.28, ptr @vpfe_probe._entry.32, ptr @vpfe_probe._entry.36, ptr @vpfe_probe._entry.39, ptr @vpfe_probe._entry.47, ptr @vpfe_probe._entry.50, ptr @vpfe_probe._entry.53, ptr @vpfe_probe._entry.56, ptr @vpfe_probe._entry.59, ptr @vpfe_probe._entry.62, ptr @vpfe_probe._entry_ptr, ptr @vpfe_probe._entry_ptr.21, ptr @vpfe_probe._entry_ptr.24, ptr @vpfe_probe._entry_ptr.27, ptr @vpfe_probe._entry_ptr.30, ptr @vpfe_probe._entry_ptr.34, ptr @vpfe_probe._entry_ptr.38, ptr @vpfe_probe._entry_ptr.41, ptr @vpfe_probe._entry_ptr.49, ptr @vpfe_probe._entry_ptr.52, ptr @vpfe_probe._entry_ptr.55, ptr @vpfe_probe._entry_ptr.58, ptr @vpfe_probe._entry_ptr.61, ptr @vpfe_probe._entry_ptr.64, ptr @vpfe_qbuf._entry, ptr @vpfe_qbuf._entry.147, ptr @vpfe_qbuf._entry.149, ptr @vpfe_qbuf._entry_ptr, ptr @vpfe_qbuf._entry_ptr.148, ptr @vpfe_qbuf._entry_ptr.151, ptr @vpfe_querybuf._entry, ptr @vpfe_querybuf._entry.139, ptr @vpfe_querybuf._entry.142, ptr @vpfe_querybuf._entry_ptr, ptr @vpfe_querybuf._entry_ptr.141, ptr @vpfe_querybuf._entry_ptr.144, ptr @vpfe_querycap._entry, ptr @vpfe_querycap._entry_ptr, ptr @vpfe_querystd._entry, ptr @vpfe_querystd._entry_ptr, ptr @vpfe_register_ccdc_device._entry, ptr @vpfe_register_ccdc_device._entry.3, ptr @vpfe_register_ccdc_device._entry.6, ptr @vpfe_register_ccdc_device._entry_ptr, ptr @vpfe_register_ccdc_device._entry_ptr.5, ptr @vpfe_register_ccdc_device._entry_ptr.8, ptr @vpfe_release._entry, ptr @vpfe_release._entry.96, ptr @vpfe_release._entry_ptr, ptr @vpfe_release._entry_ptr.98, ptr @vpfe_remove._entry, ptr @vpfe_remove._entry_ptr, ptr @vpfe_reqbufs._entry, ptr @vpfe_reqbufs._entry.120, ptr @vpfe_reqbufs._entry.123, ptr @vpfe_reqbufs._entry_ptr, ptr @vpfe_reqbufs._entry_ptr.122, ptr @vpfe_reqbufs._entry_ptr.125, ptr @vpfe_s_fmt_vid_cap._entry, ptr @vpfe_s_fmt_vid_cap._entry.108, ptr @vpfe_s_fmt_vid_cap._entry_ptr, ptr @vpfe_s_fmt_vid_cap._entry_ptr.110, ptr @vpfe_s_input._entry, ptr @vpfe_s_input._entry.211, ptr @vpfe_s_input._entry.214, ptr @vpfe_s_input._entry.217, ptr @vpfe_s_input._entry_ptr, ptr @vpfe_s_input._entry_ptr.213, ptr @vpfe_s_input._entry_ptr.216, ptr @vpfe_s_input._entry_ptr.219, ptr @vpfe_s_selection._entry, ptr @vpfe_s_selection._entry.226, ptr @vpfe_s_selection._entry.229, ptr @vpfe_s_selection._entry.232, ptr @vpfe_s_selection._entry_ptr, ptr @vpfe_s_selection._entry_ptr.228, ptr @vpfe_s_selection._entry_ptr.231, ptr @vpfe_s_selection._entry_ptr.234, ptr @vpfe_s_std._entry, ptr @vpfe_s_std._entry.194, ptr @vpfe_s_std._entry.197, ptr @vpfe_s_std._entry_ptr, ptr @vpfe_s_std._entry_ptr.196, ptr @vpfe_s_std._entry_ptr.199, ptr @vpfe_streamoff._entry, ptr @vpfe_streamoff._entry.181, ptr @vpfe_streamoff._entry.183, ptr @vpfe_streamoff._entry.185, ptr @vpfe_streamoff._entry.188, ptr @vpfe_streamoff._entry_ptr, ptr @vpfe_streamoff._entry_ptr.182, ptr @vpfe_streamoff._entry_ptr.184, ptr @vpfe_streamoff._entry_ptr.187, ptr @vpfe_streamoff._entry_ptr.189, ptr @vpfe_streamon._entry, ptr @vpfe_streamon._entry.158, ptr @vpfe_streamon._entry.160, ptr @vpfe_streamon._entry.162, ptr @vpfe_streamon._entry.165, ptr @vpfe_streamon._entry.168, ptr @vpfe_streamon._entry.171, ptr @vpfe_streamon._entry_ptr, ptr @vpfe_streamon._entry_ptr.159, ptr @vpfe_streamon._entry_ptr.161, ptr @vpfe_streamon._entry_ptr.164, ptr @vpfe_streamon._entry_ptr.167, ptr @vpfe_streamon._entry_ptr.170, ptr @vpfe_streamon._entry_ptr.173, ptr @vpfe_try_fmt_vid_cap._entry, ptr @vpfe_try_fmt_vid_cap._entry_ptr, ptr @vpfe_unregister_ccdc_device._entry, ptr @vpfe_unregister_ccdc_device._entry.11, ptr @vpfe_unregister_ccdc_device._entry_ptr, ptr @vpfe_unregister_ccdc_device._entry_ptr.13, ptr @vpfe_videobuf_prepare._entry, ptr @vpfe_videobuf_prepare._entry_ptr, ptr @vpfe_videobuf_queue._entry, ptr @vpfe_videobuf_queue._entry_ptr, ptr @vpfe_videobuf_release._entry, ptr @vpfe_videobuf_release._entry_ptr, ptr @vpfe_videobuf_setup._entry, ptr @vpfe_videobuf_setup._entry.128, ptr @vpfe_videobuf_setup._entry_ptr, ptr @vpfe_videobuf_setup._entry_ptr.130, ptr @numbuffers, ptr @bufsize, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ccdc_lock, ptr @ccdc_cfg, ptr @.str.4, ptr @ccdc_dev, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @vpfe_driver, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @vpfe_dev_pm_ops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @vpfe_fops, ptr @vpfe_ioctl_ops, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @vpfe_probe.__key, ptr @.str.42, ptr @vpfe_probe.__key.43, ptr @.str.44, ptr @vpfe_probe.__key.45, ptr @.str.46, ptr @config_params.1, ptr @config_params.3, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @vpfe_standards, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @vpfe_pix_fmts, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @vpfe_videobuf_qops, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.156, ptr @.str.157, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.186, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.235, ptr @.str.236], section "llvm.metadata"
@0 = internal global [241 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numbuffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_register_ccdc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_register_ccdc_device._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_register_ccdc_device._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_unregister_ccdc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_unregister_ccdc_device._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_params.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_params.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_isr._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_isr._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_open._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_standards to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_initialize_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_initialize_device._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_image_format._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_config_ccdc_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_release._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_querycap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_pix_fmts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_fmt_vid_cap._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_check_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_check_format._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reqbufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reqbufs._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_reqbufs._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_setup._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_videobuf_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_querybuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_querybuf._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_querybuf._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_qbuf._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_qbuf._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_dqbuf._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamon._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_calculate_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdint1_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamoff._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamoff._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamoff._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_streamoff._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_std._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_std._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_enum_input._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_g_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_input._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_input._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_input._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_g_pixelaspect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_g_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_s_selection._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpfe_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpfe_register_ccdc_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev) #14
  %hw_ops = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %enable = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %set_hw_if_params = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %set_hw_if_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_hw_if_params, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %configure = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %configure, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %set_buftype = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %set_buftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_buftype, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %get_buftype = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 10
  %10 = ptrtoint ptr %get_buftype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_buftype, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false15

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %enum_pix = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %enum_pix to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enum_pix, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %lor.lhs.false15.cleanup_crit_edge, label %lor.lhs.false18

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %set_frame_format = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %set_frame_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_frame_format, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %lor.lhs.false18.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %get_frame_format = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %get_frame_format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_frame_format, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %lor.lhs.false21.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %get_pixel_format = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 14
  %18 = ptrtoint ptr %get_pixel_format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_pixel_format, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %lor.lhs.false24.cleanup_crit_edge, label %lor.lhs.false27

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %set_pixel_format = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 15
  %20 = ptrtoint ptr %set_pixel_format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_pixel_format, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %lor.lhs.false27.cleanup_crit_edge, label %lor.lhs.false30

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %set_image_window = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 16
  %22 = ptrtoint ptr %set_image_window to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_image_window, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %lor.lhs.false30.cleanup_crit_edge, label %lor.lhs.false33

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %get_image_window = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 17
  %24 = ptrtoint ptr %get_image_window to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_image_window, align 4
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %lor.lhs.false33.cleanup_crit_edge, label %lor.lhs.false36

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %get_line_length = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 18
  %26 = ptrtoint ptr %get_line_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_line_length, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %lor.lhs.false36.cleanup_crit_edge, label %lor.lhs.false39

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %getfid = getelementptr inbounds %struct.ccdc_hw_device, ptr %dev, i32 0, i32 2, i32 20
  %28 = ptrtoint ptr %getfid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %getfid, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %lor.lhs.false39.cleanup_crit_edge, label %if.end

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false39
  tail call void @mutex_lock_nested(ptr noundef nonnull @ccdc_lock, i32 noundef 0) #11
  %30 = load ptr, ptr @ccdc_cfg, align 4
  %tobool42.not = icmp eq ptr %30, null
  br i1 %tobool42.not, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %unlock

if.end49:                                         ; preds = %if.end
  %name52 = getelementptr inbounds %struct.ccdc_config, ptr %30, i32 0, i32 1
  %call54 = tail call i32 @strcmp(ptr noundef %dev, ptr noundef %name52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end49.unlock_crit_edge

if.end49.unlock_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end57:                                         ; preds = %if.end49
  %31 = load ptr, ptr @ccdc_dev, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %unlock

if.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %dev, ptr @ccdc_dev, align 4
  br label %unlock

unlock:                                           ; preds = %if.end65, %do.end62, %if.end49.unlock_crit_edge, %do.end46
  %ret.0 = phi i32 [ -22, %do.end62 ], [ 0, %if.end65 ], [ -14, %do.end46 ], [ -22, %if.end49.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge, %lor.lhs.false27.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %lor.lhs.false39.cleanup_crit_edge ], [ -22, %lor.lhs.false36.cleanup_crit_edge ], [ -22, %lor.lhs.false33.cleanup_crit_edge ], [ -22, %lor.lhs.false30.cleanup_crit_edge ], [ -22, %lor.lhs.false27.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %lor.lhs.false21.cleanup_crit_edge ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vpfe_unregister_ccdc_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %return

do.end2:                                          ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %dev) #14
  %0 = load ptr, ptr @ccdc_cfg, align 4
  %name7 = getelementptr inbounds %struct.ccdc_config, ptr %0, i32 0, i32 1
  %call9 = tail call i32 @strcmp(ptr noundef nonnull %dev, ptr noundef %name7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end2.return_crit_edge

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end12:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ccdc_lock, i32 noundef 0) #11
  store ptr null, ptr @ccdc_dev, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br label %return

return:                                           ; preds = %if.end12, %do.end2.return_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpfe_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpfe_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @numbuffers, align 4
  %1 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 3, ptr @numbuffers, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = load i32, ptr @bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 691200, i32 %3)
  %cmp4.i = icmp ult i32 %3, 691200
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 691200, ptr @bufsize, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %4 = load i32, ptr @numbuffers, align 4
  %conv8.i = trunc i32 %4 to i8
  store i8 %conv8.i, ptr @config_params.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end7.i.vpfe_initialize.exit_crit_edge, label %if.then9.i

if.end7.i.vpfe_initialize.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_initialize.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i32, ptr @bufsize, align 4
  store i32 %5, ptr @config_params.3, align 4
  br label %vpfe_initialize.exit

vpfe_initialize.exit:                             ; preds = %if.then9.i, %if.end7.i.vpfe_initialize.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2448) #16
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %vpfe_initialize.exit
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %10) #14
  br label %cleanup228

if.end:                                           ; preds = %vpfe_initialize.exit
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %pdev3 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev2, ptr %pdev3, align 8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data, align 8
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end9, label %if.end15

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %driver12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver12, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %17) #14
  br label %probe_free_dev_mem

if.end15:                                         ; preds = %if.end
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %cfg, align 4
  %ccdc = getelementptr inbounds %struct.vpfe_config, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ccdc, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end15.do.end25_crit_edge, label %lor.lhs.false

if.end15.do.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end15
  %card_name = getelementptr inbounds %struct.vpfe_config, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card_name, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %lor.lhs.false.do.end25_crit_edge, label %lor.lhs.false20

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %sub_devs = getelementptr inbounds %struct.vpfe_config, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %sub_devs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sub_devs, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %lor.lhs.false20.do.end25_crit_edge, label %if.end31

lor.lhs.false20.do.end25_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false20.do.end25_crit_edge, %lor.lhs.false.do.end25_crit_edge, %if.end15.do.end25_crit_edge
  %driver28 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %25 = ptrtoint ptr %driver28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver28, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %28) #14
  br label %probe_free_dev_mem

if.end31:                                         ; preds = %lor.lhs.false20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 36) #16
  store ptr %call7.i, ptr @ccdc_cfg, align 4
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end31.probe_free_dev_mem_crit_edge, label %if.end35

if.end31.probe_free_dev_mem_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_free_dev_mem

if.end35:                                         ; preds = %if.end31
  tail call void @mutex_lock_nested(ptr noundef nonnull @ccdc_lock, i32 noundef 0) #11
  %30 = load ptr, ptr @ccdc_cfg, align 4
  %name36 = getelementptr inbounds %struct.ccdc_config, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ccdc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ccdc, align 4
  %call38 = tail call i32 @strscpy(ptr noundef %name36, ptr noundef %32, i32 noundef 32) #11
  %call39 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end50

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %driver47 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %33 = ptrtoint ptr %driver47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver47, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %36) #14
  br label %probe_free_ccdc_cfg_mem

if.end50:                                         ; preds = %if.end35
  %37 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call39, align 4
  %ccdc_irq0 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 13
  %39 = ptrtoint ptr %ccdc_irq0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ccdc_irq0, align 4
  %call51 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #11
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end56, label %if.end62

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %driver59 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %driver59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver59, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %43) #14
  br label %probe_free_ccdc_cfg_mem

if.end62:                                         ; preds = %if.end50
  %44 = ptrtoint ptr %call51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call51, align 4
  %ccdc_irq1 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 14
  %46 = ptrtoint ptr %ccdc_irq1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ccdc_irq1, align 8
  %47 = ptrtoint ptr %ccdc_irq0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ccdc_irq0, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %48, ptr noundef nonnull @vpfe_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end75, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %driver72 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %49 = ptrtoint ptr %driver72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver72, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %52) #14
  br label %probe_free_ccdc_cfg_mem

if.end75:                                         ; preds = %if.end62
  %release = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 23
  %53 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @video_device_release_empty, ptr %release, align 8
  %fops = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @vpfe_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 24
  %55 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @vpfe_ioctl_ops, ptr %ioctl_ops, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 22
  %56 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %tvnorms, align 8
  %v4l2_dev = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 3
  %v4l2_dev76 = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 7
  %57 = ptrtoint ptr %v4l2_dev76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %v4l2_dev, ptr %v4l2_dev76, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 67108865, ptr %device_caps, align 8
  %name77 = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 12
  %call79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name77, i32 noundef 32, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %call82 = tail call i32 @v4l2_device_register(ptr noundef %dev2, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.end96, label %do.end87

do.end87:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %driver90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %59 = ptrtoint ptr %driver90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver90, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %62) #14
  br label %probe_out_release_irq

do.end96:                                         ; preds = %if.end75
  %name99 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 3, i32 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name99) #14
  %irqlock = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.42, ptr noundef nonnull @vpfe_probe.__key, i16 noundef signext 3) #11
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %dma_queue_lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @vpfe_probe.__key.43, i16 noundef signext 3) #11
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @vpfe_probe.__key.45) #11
  %63 = load i8, ptr @config_params.1, align 4
  %conv = zext i8 %63 to i32
  %numbuffers = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 15
  %64 = ptrtoint ptr %numbuffers to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %numbuffers, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp114 = icmp sgt i32 %65, 0
  br i1 %cmp114, label %do.body128, label %do.end96.do.end143_crit_edge

do.end96.do.end143_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

do.body128:                                       ; preds = %do.end96
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name99) #14
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp129 = icmp sgt i32 %.pr, 0
  br i1 %cmp129, label %do.end134, label %do.body128.do.end143_crit_edge

do.body128.do.end143_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

do.end134:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name99, ptr noundef nonnull %call7.i.i.i) #14
  br label %do.end143

do.end143:                                        ; preds = %do.end134, %do.body128.do.end143_crit_edge, %do.end96.do.end143_crit_edge
  %fmt = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 20
  %66 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %fmt, align 4
  %67 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fops, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i326 = tail call i32 @__video_register_device(ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool146.not = icmp eq i32 %call.i326, 0
  br i1 %tobool146.not, label %do.end159, label %do.end150

do.end150:                                        ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #13
  %driver153 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %71 = ptrtoint ptr %driver153 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver153, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %74) #14
  br label %probe_out_v4l2_unregister

do.end159:                                        ; preds = %do.end143
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name99) #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i327 = getelementptr inbounds %struct.video_device, ptr %call7.i.i.i, i32 0, i32 5, i32 8
  %76 = ptrtoint ptr %driver_data.i.i327 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i, ptr %driver_data.i.i327, align 4
  %i2c_adapter_id = getelementptr inbounds %struct.vpfe_config, ptr %13, i32 0, i32 1
  %77 = ptrtoint ptr %i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i2c_adapter_id, align 4
  %call166 = tail call ptr @i2c_get_adapter(i32 noundef %78) #11
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %13, align 4
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %80, i32 4) #11
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %kmalloc_array.exit.thread, label %if.end7.i329, !prof !483

kmalloc_array.exit.thread:                        ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #13
  %sd332 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %sd332 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %sd332, align 8
  br label %probe_out_video_unregister

if.end7.i329:                                     ; preds = %do.end159
  %84 = extractvalue { i32, i1 } %81, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %84, i32 noundef 3264) #17
  %sd = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call8.i, ptr %sd, align 8
  %tobool170.not = icmp eq ptr %call8.i, null
  br i1 %tobool170.not, label %if.end7.i329.probe_out_video_unregister_crit_edge, label %for.cond.preheader

if.end7.i329.probe_out_video_unregister_crit_edge: ; preds = %if.end7.i329
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_out_video_unregister

for.cond.preheader:                               ; preds = %if.end7.i329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp173339.not = icmp eq i32 %80, 0
  br i1 %cmp173339.not, label %for.cond.preheader.for.end216_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end216_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end216

for.body:                                         ; preds = %for.inc214.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0340 = phi i32 [ %inc215, %for.inc214.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %86 = ptrtoint ptr %sub_devs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sub_devs, align 4
  %arrayidx = getelementptr %struct.vpfe_subdev_info, ptr %87, i32 %i.0340
  %board_info = getelementptr %struct.vpfe_subdev_info, ptr %87, i32 %i.0340, i32 7
  %call177 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %call166, ptr noundef %board_info, ptr noundef null) #11
  %88 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd, align 8
  %arrayidx179 = getelementptr ptr, ptr %89, i32 %i.0340
  %90 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call177, ptr %arrayidx179, align 4
  %91 = load ptr, ptr %sd, align 8
  %arrayidx181 = getelementptr ptr, ptr %91, i32 %i.0340
  %92 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx181, align 4
  %tobool182.not = icmp eq ptr %93, null
  br i1 %tobool182.not, label %probe_sd_out, label %do.end186

do.end186:                                        ; preds = %for.body
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name99, ptr noundef %arrayidx) #14
  %grp_id = getelementptr %struct.vpfe_subdev_info, ptr %87, i32 %i.0340, i32 1
  %94 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %grp_id, align 4
  %96 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd, align 8
  %arrayidx195 = getelementptr ptr, ptr %97, i32 %i.0340
  %98 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx195, align 4
  %grp_id196 = getelementptr inbounds %struct.v4l2_subdev, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %grp_id196 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %95, ptr %grp_id196, align 4
  %num_inputs = getelementptr %struct.vpfe_subdev_info, ptr %87, i32 %i.0340, i32 2
  %101 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp198337 = icmp sgt i32 %102, 0
  br i1 %cmp198337, label %for.body200.lr.ph, label %do.end186.for.inc214_crit_edge

do.end186.for.inc214_crit_edge:                   ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc214

for.body200.lr.ph:                                ; preds = %do.end186
  %inputs = getelementptr %struct.vpfe_subdev_info, ptr %87, i32 %i.0340, i32 3
  br label %for.body200

for.body200:                                      ; preds = %for.body200.for.body200_crit_edge, %for.body200.lr.ph
  %j.0338 = phi i32 [ 0, %for.body200.lr.ph ], [ %inc, %for.body200.for.body200_crit_edge ]
  %103 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %inputs, align 4
  %std = getelementptr %struct.v4l2_input, ptr %104, i32 %j.0338, i32 5
  %105 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %std, align 8
  %107 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %tvnorms, align 8
  %or = or i64 %108, %106
  store i64 %or, ptr %tvnorms, align 8
  %inc = add nuw nsw i32 %j.0338, 1
  %109 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_inputs, align 4
  %cmp198 = icmp slt i32 %inc, %110
  br i1 %cmp198, label %for.body200.for.body200_crit_edge, label %for.body200.for.inc214_crit_edge

for.body200.for.inc214_crit_edge:                 ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc214

for.body200.for.body200_crit_edge:                ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body200

for.inc214:                                       ; preds = %for.body200.for.inc214_crit_edge, %do.end186.for.inc214_crit_edge
  %inc215 = add nuw nsw i32 %i.0340, 1
  %exitcond.not = icmp eq i32 %inc215, %80
  br i1 %exitcond.not, label %for.inc214.for.end216_crit_edge, label %for.inc214.for.body_crit_edge

for.inc214.for.body_crit_edge:                    ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc214.for.end216_crit_edge:                  ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end216

for.end216:                                       ; preds = %for.inc214.for.end216_crit_edge, %for.cond.preheader.for.end216_crit_edge
  %111 = ptrtoint ptr %sub_devs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sub_devs, align 4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 9
  %113 = ptrtoint ptr %current_subdev to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %current_subdev, align 4
  %114 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sd, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler222 = getelementptr inbounds %struct.vpfe_device, ptr %call7.i.i.i, i32 0, i32 3, i32 6
  %120 = ptrtoint ptr %ctrl_handler222 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %ctrl_handler222, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br label %cleanup228

probe_sd_out:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name99, ptr noundef %arrayidx) #14
  %121 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sd, align 8
  tail call void @kfree(ptr noundef %122) #11
  br label %probe_out_video_unregister

probe_out_video_unregister:                       ; preds = %probe_sd_out, %if.end7.i329.probe_out_video_unregister_crit_edge, %kmalloc_array.exit.thread
  %ret.2 = phi i32 [ -6, %probe_sd_out ], [ -12, %if.end7.i329.probe_out_video_unregister_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  tail call void @video_unregister_device(ptr noundef nonnull %call7.i.i.i) #11
  br label %probe_out_v4l2_unregister

probe_out_v4l2_unregister:                        ; preds = %probe_out_video_unregister, %do.end150
  %ret.3 = phi i32 [ %call.i326, %do.end150 ], [ %ret.2, %probe_out_video_unregister ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %probe_out_release_irq

probe_out_release_irq:                            ; preds = %probe_out_v4l2_unregister, %do.end87
  %ret.4 = phi i32 [ %call82, %do.end87 ], [ %ret.3, %probe_out_v4l2_unregister ]
  %123 = ptrtoint ptr %ccdc_irq0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ccdc_irq0, align 4
  %call227 = tail call ptr @free_irq(i32 noundef %124, ptr noundef nonnull %call7.i.i.i) #11
  br label %probe_free_ccdc_cfg_mem

probe_free_ccdc_cfg_mem:                          ; preds = %probe_out_release_irq, %do.end69, %do.end56, %do.end44
  %ret.5 = phi i32 [ %call.i, %do.end69 ], [ %ret.4, %probe_out_release_irq ], [ -19, %do.end56 ], [ -19, %do.end44 ]
  %125 = load ptr, ptr @ccdc_cfg, align 4
  tail call void @kfree(ptr noundef %125) #11
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br label %probe_free_dev_mem

probe_free_dev_mem:                               ; preds = %probe_free_ccdc_cfg_mem, %if.end31.probe_free_dev_mem_crit_edge, %do.end25, %do.end9
  %ret.6 = phi i32 [ %ret.5, %probe_free_ccdc_cfg_mem ], [ -2, %do.end25 ], [ -19, %do.end9 ], [ -12, %if.end31.probe_free_dev_mem_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup228

cleanup228:                                       ; preds = %probe_free_dev_mem, %for.end216, %do.end
  %retval.0 = phi i32 [ %ret.6, %probe_free_dev_mem ], [ 0, %for.end216 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %5) #14
  %ccdc_irq0 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ccdc_irq0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ccdc_irq0, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #11
  %sd = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd, align 8
  tail call void @kfree(ptr noundef %9) #11
  %v4l2_dev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  tail call void @video_unregister_device(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  %10 = load ptr, ptr @ccdc_cfg, align 4
  tail call void @kfree(ptr noundef %10) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %field5 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 20, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %field5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %field5, align 4
  %started = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 28
  %3 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.clear_intr_crit_edge, label %if.end7

do.end3.clear_intr_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_intr

if.end7:                                          ; preds = %do.end3
  %5 = load ptr, ptr @ccdc_dev, align 4
  %reset = getelementptr inbounds %struct.ccdc_hw_device, ptr %5, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7() #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp13 = icmp eq i32 %2, 1
  br i1 %cmp13, label %do.body15, label %if.end32

do.body15:                                        ; preds = %if.end12
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16 = icmp sgt i32 %8, 0
  br i1 %cmp16, label %do.end20, label %do.body15.do.end28_crit_edge

do.body15.do.end28_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %name23 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 3, i32 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name23) #14
  br label %do.end28

do.end28:                                         ; preds = %do.end20, %do.body15.do.end28_crit_edge
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 17
  %9 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_frm, align 8
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 18
  %11 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_frm, align 4
  %cmp29.not = icmp eq ptr %10, %12
  br i1 %cmp29.not, label %do.end28.clear_intr_crit_edge, label %if.then30

do.end28.clear_intr_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_intr

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i64 @ktime_get() #11
  %13 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_frm, align 8
  %ts.i = getelementptr inbounds %struct.videobuf_buffer, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i, ptr %ts.i, align 8
  %16 = load ptr, ptr %cur_frm, align 8
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %state.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 20, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage.i, align 4
  %20 = load ptr, ptr %cur_frm, align 8
  %size.i = getelementptr inbounds %struct.videobuf_buffer, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %size.i, align 4
  %22 = load ptr, ptr %cur_frm, align 8
  %done.i = getelementptr inbounds %struct.videobuf_buffer, ptr %22, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %done.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %23 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_frm, align 4
  %25 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %cur_frm, align 8
  br label %clear_intr

if.end32:                                         ; preds = %if.end12
  %26 = load ptr, ptr @ccdc_dev, align 4
  %getfid = getelementptr inbounds %struct.ccdc_hw_device, ptr %26, i32 0, i32 2, i32 20
  %27 = ptrtoint ptr %getfid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %getfid, align 4
  %call34 = tail call i32 %28() #11
  %field_id = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 6
  %29 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field_id, align 8
  %xor = xor i32 %30, 1
  store i32 %xor, ptr %field_id, align 8
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp36 = icmp sgt i32 %31, 0
  br i1 %cmp36, label %do.end40, label %if.end32.do.end49_crit_edge

if.end32.do.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %name43 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 3, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name43, i32 noundef %call34, i32 noundef %xor) #14
  br label %do.end49

do.end49:                                         ; preds = %do.end40, %if.end32.do.end49_crit_edge
  %32 = ptrtoint ptr %field_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %33)
  %cmp51 = icmp eq i32 %call34, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp53 = icmp eq i32 %call34, 0
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %do.end49
  br i1 %cmp53, label %if.then54, label %if.end63

if.then54:                                        ; preds = %if.then52
  %cur_frm55 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 17
  %34 = ptrtoint ptr %cur_frm55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_frm55, align 8
  %next_frm56 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 18
  %36 = ptrtoint ptr %next_frm56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next_frm56, align 4
  %cmp57.not = icmp eq ptr %35, %37
  br i1 %cmp57.not, label %if.then54.if.end59_crit_edge, label %if.then58

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i112 = tail call i64 @ktime_get() #11
  %38 = ptrtoint ptr %cur_frm55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_frm55, align 8
  %ts.i114 = getelementptr inbounds %struct.videobuf_buffer, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %ts.i114 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i.i112, ptr %ts.i114, align 8
  %41 = load ptr, ptr %cur_frm55, align 8
  %state.i115 = getelementptr inbounds %struct.videobuf_buffer, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %state.i115 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %state.i115, align 4
  %sizeimage.i116 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 20, i32 1, i32 0, i32 5
  %43 = ptrtoint ptr %sizeimage.i116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sizeimage.i116, align 4
  %45 = load ptr, ptr %cur_frm55, align 8
  %size.i117 = getelementptr inbounds %struct.videobuf_buffer, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %size.i117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %size.i117, align 4
  %47 = load ptr, ptr %cur_frm55, align 8
  %done.i118 = getelementptr inbounds %struct.videobuf_buffer, ptr %47, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %done.i118, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %48 = ptrtoint ptr %next_frm56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %next_frm56, align 4
  %50 = ptrtoint ptr %cur_frm55 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %cur_frm55, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then54.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp60 = icmp eq i32 %2, 5
  br i1 %cmp60, label %if.then61, label %if.end59.clear_intr_crit_edge

if.end59.clear_intr_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_intr

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %cur_frm55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur_frm55, align 8
  %call.i = tail call i32 @videobuf_to_dma_contig(ptr noundef %52) #11
  %field_off.i = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 29
  %53 = ptrtoint ptr %field_off.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field_off.i, align 8
  %add.i = add i32 %54, %call.i
  %55 = load ptr, ptr @ccdc_dev, align 4
  %setfbaddr.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %55, i32 0, i32 2, i32 19
  %56 = ptrtoint ptr %setfbaddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %setfbaddr.i, align 4
  tail call void %57(i32 noundef %add.i) #11
  br label %clear_intr

if.end63:                                         ; preds = %if.then52
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %dma_queue_lock) #11
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 23
  %58 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %59, %dma_queue
  br i1 %cmp.i.not, label %if.end63.if.end70_crit_edge, label %land.lhs.true

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end63
  %cur_frm66 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 17
  %60 = ptrtoint ptr %cur_frm66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur_frm66, align 8
  %next_frm67 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 18
  %62 = ptrtoint ptr %next_frm67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %next_frm67, align 4
  %cmp68 = icmp eq ptr %61, %63
  br i1 %cmp68, label %if.then69, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vpfe_schedule_next_buffer(ptr noundef %dev_id)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %land.lhs.true.if.end70_crit_edge, %if.end63.if.end70_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dma_queue_lock) #11
  br label %clear_intr

if.else:                                          ; preds = %do.end49
  br i1 %cmp53, label %if.then73, label %if.else.clear_intr_crit_edge

if.else.clear_intr_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_intr

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %field_id, align 8
  br label %clear_intr

clear_intr:                                       ; preds = %if.then73, %if.else.clear_intr_crit_edge, %if.end70, %if.then61, %if.end59.clear_intr_crit_edge, %if.then30, %do.end28.clear_intr_crit_edge, %do.end3.clear_intr_crit_edge
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 2
  %65 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg, align 4
  %clr_intr = getelementptr inbounds %struct.vpfe_config, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %clr_intr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clr_intr, align 4
  %tobool77.not = icmp eq ptr %68, null
  br i1 %tobool77.not, label %clear_intr.if.end81_crit_edge, label %if.then78

clear_intr.if.end81_crit_edge:                    ; preds = %clear_intr
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then78:                                        ; preds = %clear_intr
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %68(i32 noundef %irq) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %clear_intr.if.end81_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpfe_schedule_next_buffer(ptr nocapture noundef %vpfe_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 23
  %0 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_queue, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -40
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 18
  %2 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %next_frm, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_frm, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %state, align 4
  %14 = load ptr, ptr %next_frm, align 4
  %call = tail call i32 @videobuf_to_dma_contig(ptr noundef %14) #11
  %15 = load ptr, ptr @ccdc_dev, align 4
  %setfbaddr = getelementptr inbounds %struct.ccdc_hw_device, ptr %15, i32 0, i32 2, i32 19
  %16 = ptrtoint ptr %setfbaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setfbaddr, align 4
  tail call void %17(i32 noundef %call) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_to_dma_contig(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.then5

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call6 = tail call i32 @videobuf_poll_stream(ptr noundef %file, ptr noundef %buffer_queue, ptr noundef %wait) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call5 = tail call i32 @videobuf_mmap_mapper(ptr noundef %buffer_queue, ptr noundef %vma) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #11
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end9, label %if.end15

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 200) #16
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %private_data, align 4
  %vpfe_dev20 = getelementptr inbounds %struct.vpfe_fh, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %vpfe_dev20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %vpfe_dev20, align 8
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i, ptr noundef %call1) #11
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %initialized = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then23:                                        ; preds = %if.end19
  %current_input.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %current_input.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %current_input.i, align 8
  %std_index.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %std_index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %std_index.i, align 8
  %call.i53 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %1, i64 noundef 63744) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then23.if.then26_crit_edge

if.then23.if.then26_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.i:                                         ; preds = %if.then23
  tail call void @mutex_lock_nested(ptr noundef nonnull @ccdc_lock, i32 noundef 0) #11
  %14 = load ptr, ptr @ccdc_dev, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.end.i.vpfe_initialize_device.exit.thread56_crit_edge, label %if.end5.i

if.end.i.vpfe_initialize_device.exit.thread56_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_initialize_device.exit.thread56

if.end5.i:                                        ; preds = %if.end.i
  %owner.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner.i, align 4
  %call6.i = tail call zeroext i1 @try_module_get(ptr noundef %16) #11
  br i1 %call6.i, label %if.end16.i, label %if.end5.i.vpfe_initialize_device.exit.thread56_crit_edge

if.end5.i.vpfe_initialize_device.exit.thread56_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_initialize_device.exit.thread56

if.end16.i:                                       ; preds = %if.end5.i
  %17 = load ptr, ptr @ccdc_dev, align 4
  %hw_ops.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops.i, align 4
  %pdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %call17.i = tail call i32 %19(ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %initialized, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 4
  %clr_intr.i = getelementptr inbounds %struct.vpfe_config, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %clr_intr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clr_intr.i, align 4
  %tobool21.not.i = icmp eq ptr %26, null
  br i1 %tobool21.not.i, label %if.end20.i.vpfe_initialize_device.exit_crit_edge, label %if.then22.i

if.end20.i.vpfe_initialize_device.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_initialize_device.exit

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %26(i32 noundef -1) #11
  br label %vpfe_initialize_device.exit

vpfe_initialize_device.exit.thread56:             ; preds = %if.end5.i.vpfe_initialize_device.exit.thread56_crit_edge, %if.end.i.vpfe_initialize_device.exit.thread56_crit_edge
  %.str.85.sink = phi ptr [ @.str.82, %if.end.i.vpfe_initialize_device.exit.thread56_crit_edge ], [ @.str.85, %if.end5.i.vpfe_initialize_device.exit.thread56_crit_edge ]
  %name13.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink, ptr noundef %name13.i) #14
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br label %if.then26

vpfe_initialize_device.exit:                      ; preds = %if.then22.i, %if.end20.i.vpfe_initialize_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ccdc_lock) #11
  br i1 %tobool18.not.i, label %vpfe_initialize_device.exit.if.end30_crit_edge, label %vpfe_initialize_device.exit.if.then26_crit_edge

vpfe_initialize_device.exit.if.then26_crit_edge:  ; preds = %vpfe_initialize_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

vpfe_initialize_device.exit.if.end30_crit_edge:   ; preds = %vpfe_initialize_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %vpfe_initialize_device.exit.if.then26_crit_edge, %vpfe_initialize_device.exit.thread56, %if.then23.if.then26_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end30:                                         ; preds = %vpfe_initialize_device.exit.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %usrs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usrs, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %usrs, align 4
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %call7.i, i32 0, i32 2
  %29 = ptrtoint ptr %io_allowed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %io_allowed, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then26, %if.end15.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -19, %if.then26 ], [ -19, %do.end9 ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %io_allowed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %io_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end4.if.end59_crit_edge, label %if.then5

do.end4.if.end59_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then5:                                         ; preds = %do.end4
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then5.if.end55_crit_edge, label %if.then7

if.then5.if.end55_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then7:                                         ; preds = %if.then5
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn114 = load ptr, ptr %subdevs, align 4
  %cmp13.not116 = icmp eq ptr %.pn114, %subdevs
  br i1 %cmp13.not116, label %if.then7.if.end53_crit_edge, label %for.body.lr.ph

if.then7.if.end53_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body.lr.ph:                                   ; preds = %if.then7
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_subdev, align 4
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %11, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn119 = phi ptr [ %.pn114, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.0120 = getelementptr i8, ptr %.pn119, i32 -80
  %12 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id15 = getelementptr i8, ptr %.pn119, i32 68
  %14 = ptrtoint ptr %grp_id15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %grp_id15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp17 = icmp eq i32 %15, %13
  br i1 %cmp17, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn119, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true19

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true19:                                  ; preds = %land.lhs.true
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_stream, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %land.lhs.true19.if.end28_crit_edge, label %if.then23

land.lhs.true19.if.end28_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 %21(ptr noundef %__sd.0120, i32 noundef 0) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true19.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %__err.1 = phi i32 [ %call27, %if.then23 ], [ %__err.0117, %land.lhs.true19.if.end28_crit_edge ], [ %__err.0117, %land.lhs.true.if.end28_crit_edge ], [ %__err.0117, %lor.lhs.false.if.end28_crit_edge ]
  %22 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__err.1, label %if.end28.do.end47_crit_edge [
    i32 0, label %if.end28.for.inc_crit_edge
    i32 -515, label %if.end28.for.inc_crit_edge125
  ]

if.end28.for.inc_crit_edge125:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.do.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end28.for.inc_crit_edge125
  %23 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp13.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp13.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %24 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %__err.1, label %for.end.do.end47_crit_edge [
    i32 -515, label %for.end.if.end53_crit_edge
    i32 0, label %for.end.if.end53_crit_edge126
  ]

for.end.if.end53_crit_edge126:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.end.do.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end47:                                         ; preds = %for.end.do.end47_crit_edge, %if.end28.do.end47_crit_edge
  %name50 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name50) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %for.end.if.end53_crit_edge, %for.end.if.end53_crit_edge126, %if.then7.if.end53_crit_edge
  %25 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %started, align 4
  %26 = load ptr, ptr @ccdc_dev, align 4
  %enable.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %26, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable.i, align 4
  tail call void %28(i32 noundef 0) #11
  %29 = load ptr, ptr @ccdc_dev, align 4
  %enable_out_to_sdram.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %29, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %enable_out_to_sdram.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enable_out_to_sdram.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end53.vpfe_stop_ccdc_capture.exit_crit_edge, label %if.then.i

if.end53.vpfe_stop_ccdc_capture.exit_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_stop_ccdc_capture.exit

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %31(i32 noundef 0) #11
  br label %vpfe_stop_ccdc_capture.exit

vpfe_stop_ccdc_capture.exit:                      ; preds = %if.then.i, %if.end53.vpfe_stop_ccdc_capture.exit_crit_edge
  %32 = load ptr, ptr @ccdc_dev, align 4
  %get_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %32, i32 0, i32 2, i32 12
  %33 = ptrtoint ptr %get_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_frame_format.i, align 4
  %call.i111 = tail call i32 %34() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i = icmp eq i32 %call.i111, 0
  br i1 %cmp.i, label %if.then.i112, label %vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge

vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge: ; preds = %vpfe_stop_ccdc_capture.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_detach_irq.exit

if.then.i112:                                     ; preds = %vpfe_stop_ccdc_capture.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ccdc_irq1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %ccdc_irq1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ccdc_irq1.i, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %36, ptr noundef %1) #11
  br label %vpfe_detach_irq.exit

vpfe_detach_irq.exit:                             ; preds = %if.then.i112, %vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call54 = tail call i32 @videobuf_streamoff(ptr noundef %buffer_queue) #11
  br label %if.end55

if.end55:                                         ; preds = %vpfe_detach_irq.exit, %if.then5.if.end55_crit_edge
  %io_usrs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 27
  %37 = ptrtoint ptr %io_usrs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %io_usrs, align 8
  %38 = load i8, ptr @config_params.1, align 4
  %conv = zext i8 %38 to i32
  %numbuffers = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %numbuffers to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %numbuffers, align 4
  %buffer_queue56 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  tail call void @videobuf_stop(ptr noundef %buffer_queue56) #11
  %call58 = tail call i32 @videobuf_mmap_free(ptr noundef %buffer_queue56) #11
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %do.end4.if.end59_crit_edge
  %usrs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usrs, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %usrs, align 4
  tail call void @v4l2_fh_del(ptr noundef %3) #11
  tail call void @v4l2_fh_exit(ptr noundef %3) #11
  %42 = ptrtoint ptr %usrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool63.not = icmp eq i32 %43, 0
  br i1 %tobool63.not, label %if.then64, label %if.end59.if.end71_crit_edge

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then64:                                        ; preds = %if.end59
  %initialized = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %initialized, align 4
  %45 = load ptr, ptr @ccdc_dev, align 4
  %close = getelementptr inbounds %struct.ccdc_hw_device, ptr %45, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %close, align 4
  %tobool65.not = icmp eq ptr %47, null
  br i1 %tobool65.not, label %if.then64.if.end70_crit_edge, label %if.then66

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call69 = tail call i32 %47(ptr noundef %49) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then64.if.end70_crit_edge
  %50 = load ptr, ptr @ccdc_dev, align 4
  %owner = getelementptr inbounds %struct.ccdc_hw_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %52) #11
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end59.if.end71_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %53 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_poll_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpfe_config_image_format(ptr noundef %vpfe_dev, i64 noundef %std_id) unnamed_addr #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 9
  %0 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #11
  %2 = getelementptr inbounds i8, ptr %fmt, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fmt, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %fmt2 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1
  %and = and i64 %std_id, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

for.inc:                                          ; preds = %entry
  %and.1 = and i64 %std_id, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %do.end, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name) #14
  br label %cleanup

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %entry.if.end12_crit_edge
  %i.0197.lcssa = phi i32 [ 0, %entry.if.end12_crit_edge ], [ 1, %for.inc.if.end12_crit_edge ]
  %width = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0197.lcssa, i32 1
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %std_info = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11
  %7 = ptrtoint ptr %std_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %std_info, align 4
  %height = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0197.lcssa, i32 2
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %active_lines = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %active_lines to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %active_lines, align 4
  %frame_format = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %i.0197.lcssa, i32 4
  %11 = ptrtoint ptr %frame_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_format, align 8
  %frame_format9 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %frame_format9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frame_format9, align 4
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 12
  %14 = ptrtoint ptr %std_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0197.lcssa, ptr %std_index, align 8
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 21
  %top = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %crop, align 8
  %std_info14 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11
  %17 = ptrtoint ptr %std_info14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %std_info14, align 4
  %width17 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 21, i32 2
  %19 = ptrtoint ptr %width17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width17, align 8
  %active_lines19 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %active_lines19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_lines19, align 4
  %height21 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 21, i32 3
  %22 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height21, align 4
  %23 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %fmt2, align 4
  %height27 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %height27, align 4
  %frame_format29 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %frame_format29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frame_format29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not = icmp eq i32 %26, 0
  %field32 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 3
  %. = select i1 %tobool30.not, i32 1, i32 4
  %.217 = select i1 %tobool30.not, i32 825770306, i32 1498831189
  %.218 = select i1 %tobool30.not, i32 12289, i32 8203
  %27 = ptrtoint ptr %field32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %field32, align 4
  %pixelformat33 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %pixelformat33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.217, ptr %pixelformat33, align 4
  %29 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %18, ptr %format, align 4
  %conv7.i.sink.in.in = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %conv7.i.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %conv7.i.sink.in = load i32, ptr %conv7.i.sink.in.in, align 4
  %conv7.i.sink = trunc i32 %conv7.i.sink.in to i16
  %conv5.i.sink.in.in = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %conv5.i.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %conv5.i.sink.in = load i32, ptr %conv5.i.sink.in.in, align 4
  %conv5.i.sink = trunc i32 %conv5.i.sink.in to i16
  %conv.i.sink.in.in = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %conv.i.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %conv.i.sink.in = load i32, ptr %conv.i.sink.in.in, align 4
  %conv.i.sink = trunc i32 %conv.i.sink.in to i16
  %.sink207.in = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %.sink207.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %.sink207 = load i32, ptr %.sink207.in, align 4
  %34 = ptrtoint ptr %height27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.sink209 = load i32, ptr %height27, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink209, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %., ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink207, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.sink, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i.sink, ptr %43, align 2
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv7.i.sink, ptr %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.218, ptr %47, align 4
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn198 = load ptr, ptr %subdevs, align 4
  %cmp41.not200 = icmp eq ptr %.pn198, %subdevs
  br i1 %cmp41.not200, label %if.end12.if.end84_crit_edge, label %for.body42.lr.ph

if.end12.if.end84_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.body42.lr.ph:                                 ; preds = %if.end12
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %1, i32 0, i32 1
  br label %for.body42

for.body42:                                       ; preds = %for.inc63.for.body42_crit_edge, %for.body42.lr.ph
  %.pn203 = phi ptr [ %.pn198, %for.body42.lr.ph ], [ %.pn, %for.inc63.for.body42_crit_edge ]
  %__err.0201 = phi i32 [ 0, %for.body42.lr.ph ], [ %__err.1, %for.inc63.for.body42_crit_edge ]
  %__sd.0204 = getelementptr i8, ptr %.pn203, i32 -80
  %50 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp43 = icmp eq i32 %51, 0
  br i1 %cmp43, label %for.body42.land.lhs.true_crit_edge, label %lor.lhs.false

for.body42.land.lhs.true_crit_edge:               ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body42
  %grp_id44 = getelementptr i8, ptr %.pn203, i32 68
  %52 = ptrtoint ptr %grp_id44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %grp_id44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp46 = icmp eq i32 %53, %51
  br i1 %cmp46, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body42.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn203, i32 24
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pad, align 4
  %tobool47.not = icmp eq ptr %57, null
  br i1 %tobool47.not, label %land.lhs.true.if.end57_crit_edge, label %land.lhs.true48

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true48:                                  ; preds = %land.lhs.true
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_fmt, align 4
  %tobool51.not = icmp eq ptr %59, null
  br i1 %tobool51.not, label %land.lhs.true48.if.end57_crit_edge, label %if.then52

land.lhs.true48.if.end57_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = call i32 %59(ptr noundef %__sd.0204, ptr noundef null, ptr noundef nonnull %fmt) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %land.lhs.true48.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %__err.1 = phi i32 [ %call56, %if.then52 ], [ %__err.0201, %land.lhs.true48.if.end57_crit_edge ], [ %__err.0201, %land.lhs.true.if.end57_crit_edge ], [ %__err.0201, %lor.lhs.false.if.end57_crit_edge ]
  %60 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %__err.1, label %if.end57.do.end78_crit_edge [
    i32 0, label %if.end57.for.inc63_crit_edge
    i32 -515, label %if.end57.for.inc63_crit_edge225
  ]

if.end57.for.inc63_crit_edge225:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

if.end57.for.inc63_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

if.end57.do.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

for.inc63:                                        ; preds = %if.end57.for.inc63_crit_edge, %if.end57.for.inc63_crit_edge225
  %61 = ptrtoint ptr %.pn203 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn203, align 4
  %cmp41.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp41.not, label %for.end69, label %for.inc63.for.body42_crit_edge

for.inc63.for.body42_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42

for.end69:                                        ; preds = %for.inc63
  %62 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %__err.1, label %for.end69.do.end78_crit_edge [
    i32 -515, label %for.end69.if.end84_crit_edge
    i32 0, label %for.end69.if.end84_crit_edge226
  ]

for.end69.if.end84_crit_edge226:                  ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.end69.if.end84_crit_edge:                     ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.end69.do.end78_crit_edge:                     ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

do.end78:                                         ; preds = %for.end69.do.end78_crit_edge, %if.end57.do.end78_crit_edge
  %name81 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 3, i32 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name81) #14
  br label %cleanup

if.end84:                                         ; preds = %for.end69.if.end84_crit_edge, %for.end69.if.end84_crit_edge226, %if.end12.if.end84_crit_edge
  %63 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %format, align 4
  %65 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %fmt2, align 4
  %66 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %35, align 4
  %68 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %height27, align 4
  %69 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %37, align 4
  %field3.i182 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 3
  %71 = ptrtoint ptr %field3.i182 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %field3.i182, align 4
  %72 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %39, align 4
  %colorspace4.i184 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %colorspace4.i184 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %colorspace4.i184, align 4
  %75 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %41, align 4
  %conv.i185 = zext i16 %76 to i32
  %77 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i185, ptr %77, align 4
  %79 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %43, align 2
  %conv5.i187 = zext i16 %80 to i32
  %quantization6.i188 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %quantization6.i188 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv5.i187, ptr %quantization6.i188, align 4
  %82 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %45, align 4
  %conv7.i190 = zext i16 %83 to i32
  %xfer_func8.i191 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5, i32 1, i32 1
  %84 = ptrtoint ptr %xfer_func8.i191 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv7.i190, ptr %xfer_func8.i191, align 4
  %mul = shl i32 %64, 1
  %bytesperline = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 4
  %85 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul, ptr %bytesperline, align 4
  %mul88 = mul i32 %67, %mul
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 5
  %86 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul88, ptr %sizeimage, align 4
  %87 = load ptr, ptr @ccdc_dev, align 4
  %set_pixel_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %87, i32 0, i32 2, i32 15
  %88 = ptrtoint ptr %set_pixel_format.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_pixel_format.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pixelformat.i, align 4
  %call.i = call i32 %89(i32 noundef %91) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 3, i32 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name.i) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end84
  %92 = load ptr, ptr @ccdc_dev, align 4
  %set_image_window.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %92, i32 0, i32 2, i32 16
  %93 = ptrtoint ptr %set_image_window.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_image_window.i, align 4
  %call4.i = call i32 %94(ptr noundef %crop) #11
  %95 = ptrtoint ptr %field3.i182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %field3.i182, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %96, label %if.end.i.cleanup_crit_edge [
    i32 4, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge
    i32 5, label %sw.bb10.i
  ]

if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_config_ccdc_image_format.exit

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb10.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ]
  %98 = load ptr, ptr @ccdc_dev, align 4
  %set_buftype12.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %98, i32 0, i32 2, i32 9
  %99 = ptrtoint ptr %set_buftype12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_buftype12.i, align 4
  %call13.i = call i32 %100(i32 noundef %.sink.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_config_ccdc_image_format.exit

vpfe_config_ccdc_image_format.exit:               ; preds = %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge, %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge
  %frm_fmt.026.i = phi i32 [ 1, %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge ], [ 0, %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge ]
  %101 = load ptr, ptr @ccdc_dev, align 4
  %set_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %101, i32 0, i32 2, i32 11
  %102 = ptrtoint ptr %set_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_frame_format.i, align 4
  %call16.i = call i32 %103(i32 noundef %frm_fmt.026.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool90.not = icmp eq i32 %call16.i, 0
  br i1 %tobool90.not, label %if.end92, label %vpfe_config_ccdc_image_format.exit.cleanup_crit_edge

vpfe_config_ccdc_image_format.exit.cleanup_crit_edge: ; preds = %vpfe_config_ccdc_image_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end92:                                         ; preds = %vpfe_config_ccdc_image_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %104 = load ptr, ptr @ccdc_dev, align 4
  %get_line_length = getelementptr inbounds %struct.ccdc_hw_device, ptr %104, i32 0, i32 2, i32 18
  %105 = ptrtoint ptr %get_line_length to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_line_length, align 4
  %call93 = call i32 %106() #11
  %107 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call93, ptr %bytesperline, align 4
  %108 = ptrtoint ptr %height27 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height27, align 4
  %mul97 = mul i32 %109, %call93
  %110 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul97, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %vpfe_config_ccdc_image_format.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i, %do.end78, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %__err.1, %do.end78 ], [ 0, %if.end92 ], [ %call16.i, %vpfe_config_ccdc_image_format.exit.cleanup_crit_edge ], [ %call13.i, %sw.epilog.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call6 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.16, i32 noundef 16) #11
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.101, i32 noundef 32) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %card_name = getelementptr inbounds %struct.vpfe_config, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card_name, align 4
  %call10 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %6, i32 noundef 32) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %pix = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pix) #11
  %2 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pix, align 4, !annotation !484
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = load ptr, ptr @ccdc_dev, align 4
  %enum_pix = getelementptr inbounds %struct.ccdc_hw_device, ptr %4, i32 0, i32 2, i32 13
  %5 = ptrtoint ptr %enum_pix to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enum_pix, align 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %call5 = call i32 %6(ptr noundef nonnull %pix, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %9 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pix, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %10, label %if.end8.cleanup_crit_edge [
    i32 825770306, label %if.end8.if.then10_crit_edge
    i32 844257602, label %cleanup.fold.split.i
    i32 808535106, label %cleanup.fold.split7.i
    i32 1498831189, label %cleanup.fold.split8.i
    i32 1448695129, label %cleanup.fold.split9.i
    i32 842094158, label %cleanup.fold.split10.i
  ]

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

cleanup.fold.split7.i:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

cleanup.fold.split8.i:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

cleanup.fold.split9.i:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

cleanup.fold.split10.i:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %if.end8.if.then10_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 5), %cleanup.fold.split10.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 4), %cleanup.fold.split9.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 3), %cleanup.fold.split8.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 2), %cleanup.fold.split7.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 1), %cleanup.fold.split.i ], [ @vpfe_pix_fmts, %if.end8.if.then10_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i.ph, align 4
  %pixelformat11 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt5 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20
  %3 = call ptr @memcpy(ptr %fmt, ptr %fmt5, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end14, label %do.end8

do.end8:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name11 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name11) #14
  br label %cleanup

if.end14:                                         ; preds = %do.end4
  %fmt15 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call16 = tail call fastcc ptr @vpfe_check_format(ptr noundef %1, ptr noundef %fmt15)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call20 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %5 = load ptr, ptr @ccdc_dev, align 4
  %get_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %5, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %get_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_frame_format.i, align 4
  %call.i40 = tail call i32 %7() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i = icmp eq i32 %call.i40, 0
  br i1 %cmp.i, label %if.then.i, label %if.end23.vpfe_detach_irq.exit_crit_edge

if.end23.vpfe_detach_irq.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_detach_irq.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %ccdc_irq1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %ccdc_irq1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccdc_irq1.i, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef %1) #11
  br label %vpfe_detach_irq.exit

vpfe_detach_irq.exit:                             ; preds = %if.then.i, %if.end23.vpfe_detach_irq.exit_crit_edge
  %fmt24 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20
  %10 = call ptr @memcpy(ptr %fmt24, ptr %fmt, i32 204)
  %11 = load ptr, ptr @ccdc_dev, align 4
  %set_pixel_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %11, i32 0, i32 2, i32 15
  %12 = ptrtoint ptr %set_pixel_format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_pixel_format.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat.i, align 4
  %call.i41 = tail call i32 %13(i32 noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %vpfe_detach_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name.i) #14
  br label %vpfe_config_ccdc_image_format.exit

if.end.i:                                         ; preds = %vpfe_detach_irq.exit
  %16 = load ptr, ptr @ccdc_dev, align 4
  %set_image_window.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %16, i32 0, i32 2, i32 16
  %17 = ptrtoint ptr %set_image_window.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_image_window.i, align 4
  %crop.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21
  %call4.i = tail call i32 %18(ptr noundef %crop.i) #11
  %field.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %20, label %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge [
    i32 4, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %if.end.i.if.then14.i_crit_edge
    i32 5, label %sw.bb10.i
  ]

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_config_ccdc_image_format.exit

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb10.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ]
  %22 = load ptr, ptr @ccdc_dev, align 4
  %set_buftype12.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %22, i32 0, i32 2, i32 9
  %23 = ptrtoint ptr %set_buftype12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_buftype12.i, align 4
  %call13.i = tail call i32 %24(i32 noundef %.sink.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.then14.i_crit_edge, label %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge

sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_config_ccdc_image_format.exit

sw.epilog.i.if.then14.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

if.then14.i:                                      ; preds = %sw.epilog.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge
  %frm_fmt.026.i = phi i32 [ 1, %sw.epilog.i.if.then14.i_crit_edge ], [ 0, %if.end.i.if.then14.i_crit_edge ]
  %25 = load ptr, ptr @ccdc_dev, align 4
  %set_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %25, i32 0, i32 2, i32 11
  %26 = ptrtoint ptr %set_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_frame_format.i, align 4
  %call16.i = tail call i32 %27(i32 noundef %frm_fmt.026.i) #11
  br label %vpfe_config_ccdc_image_format.exit

vpfe_config_ccdc_image_format.exit:               ; preds = %if.then14.i, %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge, %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %if.end.i.vpfe_config_ccdc_image_format.exit_crit_edge ], [ %call13.i, %sw.epilog.i.vpfe_config_ccdc_image_format.exit_crit_edge ], [ %call16.i, %if.then14.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %vpfe_config_ccdc_image_format.exit, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -16, %do.end8 ], [ %retval.0.i, %vpfe_config_ccdc_image_format.exit ], [ -22, %if.end14.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call5 = tail call fastcc ptr @vpfe_check_format(ptr noundef %1, ptr noundef %fmt)
  %tobool.not = icmp eq ptr %call5, null
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_reqbufs(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %req_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %req_buf, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5.not = icmp eq i32 %6, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call16 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %io_usrs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %io_usrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_usrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.not = icmp eq i32 %8, 0
  br i1 %cmp19.not, label %if.end29, label %do.end23

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %name26 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name26) #14
  br label %unlock_out

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %memory = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %req_buf, i32 0, i32 2
  %9 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memory, align 4
  %memory30 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %memory30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %memory30, align 8
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %pdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %irqlock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %field = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  tail call void @videobuf_queue_dma_contig_init(ptr noundef %buffer_queue, ptr noundef nonnull @vpfe_videobuf_qops, ptr noundef %13, ptr noundef %irqlock, i32 noundef %15, i32 noundef %17, i32 noundef 144, ptr noundef %3, ptr noundef null) #11
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %io_allowed to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %io_allowed, align 4
  %19 = ptrtoint ptr %io_usrs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %io_usrs, align 8
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dma_queue, ptr %prev.i, align 4
  %call35 = tail call i32 @videobuf_reqbufs(ptr noundef %buffer_queue, ptr noundef %req_buf) #11
  br label %unlock_out

unlock_out:                                       ; preds = %if.end29, %do.end23
  %ret.0 = phi i32 [ -16, %do.end23 ], [ %call35, %if.end29 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %if.end15.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %ret.0, %unlock_out ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_querybuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5.not = icmp eq i32 %4, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  %memory = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memory, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp16.not = icmp eq i32 %6, 1
  br i1 %cmp16.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name23 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name23) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call27 = tail call i32 @videobuf_querybuf(ptr noundef %buffer_queue, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end20, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end20 ], [ %call27, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_qbuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5.not = icmp eq i32 %6, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %io_allowed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %io_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end19, label %if.end25

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name22) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call26 = tail call i32 @videobuf_qbuf(ptr noundef %buffer_queue, ptr noundef %p) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end19, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %call26, %if.end25 ], [ -13, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_dqbuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5.not = icmp eq i32 %4, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and = and i32 %6, 2048
  %call16 = tail call i32 @videobuf_dqbuf(ptr noundef %buffer_queue, ptr noundef %buf, i32 noundef %and) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %call16, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_streamon(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %buf_type) #0 align 64 {
entry:
  %image_win.i = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_type)
  %cmp5.not = icmp eq i32 %buf_type, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %io_allowed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %io_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end19, label %if.end25

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name22) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn189 = load ptr, ptr %subdevs, align 4
  %cmp31.not191 = icmp eq ptr %.pn189, %subdevs
  br i1 %cmp31.not191, label %if.end25.if.end71_crit_edge, label %for.body.lr.ph

if.end25.if.end71_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

for.body.lr.ph:                                   ; preds = %if.end25
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_subdev, align 4
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn194 = phi ptr [ %.pn189, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.0192 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.0195 = getelementptr i8, ptr %.pn194, i32 -80
  %10 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32 = icmp eq i32 %11, 0
  br i1 %cmp32, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id33 = getelementptr i8, ptr %.pn194, i32 68
  %12 = ptrtoint ptr %grp_id33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %grp_id33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp35 = icmp eq i32 %13, %11
  br i1 %cmp35, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn194, i32 24
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool36.not = icmp eq ptr %17, null
  br i1 %tobool36.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true37

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true37:                                  ; preds = %land.lhs.true
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream, align 4
  %tobool40.not = icmp eq ptr %19, null
  br i1 %tobool40.not, label %land.lhs.true37.if.end46_crit_edge, label %if.then41

land.lhs.true37.if.end46_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 %19(ptr noundef %__sd.0195, i32 noundef 1) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %land.lhs.true37.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge
  %__err.1 = phi i32 [ %call45, %if.then41 ], [ %__err.0192, %land.lhs.true37.if.end46_crit_edge ], [ %__err.0192, %land.lhs.true.if.end46_crit_edge ], [ %__err.0192, %lor.lhs.false.if.end46_crit_edge ]
  %20 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %__err.1, label %if.end46.do.end65_crit_edge [
    i32 0, label %if.end46.for.inc_crit_edge
    i32 -515, label %if.end46.for.inc_crit_edge200
  ]

if.end46.for.inc_crit_edge200:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end46.do.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

for.inc:                                          ; preds = %if.end46.for.inc_crit_edge, %if.end46.for.inc_crit_edge200
  %21 = ptrtoint ptr %.pn194 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn194, align 4
  %cmp31.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp31.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %22 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %__err.1, label %for.end.do.end65_crit_edge [
    i32 -515, label %for.end.if.end71_crit_edge
    i32 0, label %for.end.if.end71_crit_edge201
  ]

for.end.if.end71_crit_edge201:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

for.end.do.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end65:                                         ; preds = %for.end.do.end65_crit_edge, %if.end46.do.end65_crit_edge
  %name68 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name68) #14
  br label %cleanup

if.end71:                                         ; preds = %for.end.if.end71_crit_edge, %for.end.if.end71_crit_edge201, %if.end25.if.end71_crit_edge
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %stream = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22, i32 13
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %stream, align 4
  %cmp.i.not = icmp eq ptr %24, %stream
  br i1 %cmp.i.not, label %do.end77, label %if.end83

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %name80 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %name80) #14
  br label %cleanup

if.end83:                                         ; preds = %if.end71
  %call85 = tail call i32 @videobuf_streamon(ptr noundef %buffer_queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call89 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.streamoff_crit_edge

if.end88.streamoff_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %streamoff

if.end92:                                         ; preds = %if.end88
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 23
  %25 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_queue, align 4
  %add.ptr96 = getelementptr i8, ptr %26, i32 -40
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr96, ptr %next_frm, align 4
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %cur_frm to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr96, ptr %cur_frm, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end92.list_del.exit_crit_edge

if.end92.list_del.exit_crit_edge:                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end92.list_del.exit_crit_edge
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %37 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_frm, align 8
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %state, align 4
  %field_id = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %field_id, align 8
  %41 = load ptr, ptr %cur_frm, align 8
  %call101 = tail call i32 @videobuf_to_dma_contig(ptr noundef %41) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %image_win.i) #11
  %42 = call ptr @memset(ptr %image_win.i, i32 255, i32 16)
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i180 = icmp sgt i32 %43, 0
  br i1 %cmp.i180, label %do.end.i, label %list_del.exit.vpfe_calculate_offsets.exit_crit_edge

list_del.exit.vpfe_calculate_offsets.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_calculate_offsets.exit

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %name.i) #14
  br label %vpfe_calculate_offsets.exit

vpfe_calculate_offsets.exit:                      ; preds = %do.end.i, %list_del.exit.vpfe_calculate_offsets.exit_crit_edge
  %44 = getelementptr inbounds %struct.v4l2_rect, ptr %image_win.i, i32 0, i32 3
  %45 = getelementptr inbounds %struct.v4l2_rect, ptr %image_win.i, i32 0, i32 2
  %46 = load ptr, ptr @ccdc_dev, align 4
  %get_image_window.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %46, i32 0, i32 2, i32 17
  %47 = ptrtoint ptr %get_image_window.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_image_window.i, align 4
  call void %48(ptr noundef nonnull %image_win.i) #11
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %44, align 4
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %45, align 4
  %mul.i = mul i32 %52, %50
  %field_off.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 29
  %53 = ptrtoint ptr %field_off.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.i, ptr %field_off.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %image_win.i) #11
  %54 = load ptr, ptr @ccdc_dev, align 4
  %get_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %54, i32 0, i32 2, i32 12
  %55 = ptrtoint ptr %get_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_frame_format.i, align 4
  %call.i182 = call i32 %56() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp eq i32 %call.i182, 0
  br i1 %cmp.i183, label %vpfe_attach_irq.exit, label %vpfe_calculate_offsets.exit.if.end113_crit_edge

vpfe_calculate_offsets.exit.if.end113_crit_edge:  ; preds = %vpfe_calculate_offsets.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

vpfe_attach_irq.exit:                             ; preds = %vpfe_calculate_offsets.exit
  %ccdc_irq1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 14
  %57 = ptrtoint ptr %ccdc_irq1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ccdc_irq1.i, align 8
  %call.i.i184 = call i32 @request_threaded_irq(i32 noundef %58, ptr noundef nonnull @vdint1_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp103 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp103, label %vpfe_attach_irq.exit.unlock_out_crit_edge, label %vpfe_attach_irq.exit.if.end113_crit_edge

vpfe_attach_irq.exit.if.end113_crit_edge:         ; preds = %vpfe_attach_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

vpfe_attach_irq.exit.unlock_out_crit_edge:        ; preds = %vpfe_attach_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.end113:                                        ; preds = %vpfe_attach_irq.exit.if.end113_crit_edge, %vpfe_calculate_offsets.exit.if.end113_crit_edge
  %59 = load ptr, ptr @ccdc_dev, align 4
  %configure = getelementptr inbounds %struct.ccdc_hw_device, ptr %59, i32 0, i32 2, i32 8
  %60 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %configure, align 4
  %call114 = call i32 %61() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.end113.unlock_out_crit_edge, label %if.end125

if.end113.unlock_out_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.end125:                                        ; preds = %if.end113
  %62 = load ptr, ptr @ccdc_dev, align 4
  %setfbaddr = getelementptr inbounds %struct.ccdc_hw_device, ptr %62, i32 0, i32 2, i32 19
  %63 = ptrtoint ptr %setfbaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %setfbaddr, align 4
  call void %64(i32 noundef %call101) #11
  %65 = load ptr, ptr @ccdc_dev, align 4
  %enable.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %65, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %enable.i, align 4
  call void %67(i32 noundef 1) #11
  %68 = load ptr, ptr @ccdc_dev, align 4
  %enable_out_to_sdram.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %68, i32 0, i32 2, i32 5
  %69 = ptrtoint ptr %enable_out_to_sdram.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %enable_out_to_sdram.i, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.end125.vpfe_start_ccdc_capture.exit_crit_edge, label %if.then.i185

if.end125.vpfe_start_ccdc_capture.exit_crit_edge: ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_start_ccdc_capture.exit

if.then.i185:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void %70(i32 noundef 1) #11
  br label %vpfe_start_ccdc_capture.exit

vpfe_start_ccdc_capture.exit:                     ; preds = %if.then.i185, %if.end125.vpfe_start_ccdc_capture.exit_crit_edge
  %started.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %71 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %started.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

unlock_out:                                       ; preds = %if.end113.unlock_out_crit_edge, %vpfe_attach_irq.exit.unlock_out_crit_edge
  %.str.172.sink = phi ptr [ @.str.169, %vpfe_attach_irq.exit.unlock_out_crit_edge ], [ @.str.172, %if.end113.unlock_out_crit_edge ]
  %ret.0 = phi i32 [ -14, %vpfe_attach_irq.exit.unlock_out_crit_edge ], [ -22, %if.end113.unlock_out_crit_edge ]
  %name122 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.172.sink, ptr noundef %name122) #14
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %streamoff

streamoff:                                        ; preds = %unlock_out, %if.end88.streamoff_crit_edge
  %ret.1 = phi i32 [ %call89, %if.end88.streamoff_crit_edge ], [ %ret.0, %unlock_out ]
  %call130 = call i32 @videobuf_streamoff(ptr noundef %buffer_queue) #11
  br label %cleanup

cleanup:                                          ; preds = %streamoff, %vpfe_start_ccdc_capture.exit, %if.end83.cleanup_crit_edge, %do.end77, %do.end65, %do.end19, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end65 ], [ -5, %do.end77 ], [ %ret.1, %streamoff ], [ 0, %vpfe_start_ccdc_capture.exit ], [ -13, %do.end19 ], [ %call85, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_streamoff(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %buf_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_type)
  %cmp5.not = icmp eq i32 %buf_type, 1
  br i1 %cmp5.not, label %if.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name12) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end4
  %io_allowed = getelementptr inbounds %struct.vpfe_fh, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %io_allowed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %io_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end19, label %if.end25

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name22) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %do.end30, label %if.end36

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %name33 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name33) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call37 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %9 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %started, align 4
  %10 = load ptr, ptr @ccdc_dev, align 4
  %enable.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %10, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable.i, align 4
  tail call void %12(i32 noundef 0) #11
  %13 = load ptr, ptr @ccdc_dev, align 4
  %enable_out_to_sdram.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %13, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %enable_out_to_sdram.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_out_to_sdram.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end40.vpfe_stop_ccdc_capture.exit_crit_edge, label %if.then.i

if.end40.vpfe_stop_ccdc_capture.exit_crit_edge:   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_stop_ccdc_capture.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(i32 noundef 0) #11
  br label %vpfe_stop_ccdc_capture.exit

vpfe_stop_ccdc_capture.exit:                      ; preds = %if.then.i, %if.end40.vpfe_stop_ccdc_capture.exit_crit_edge
  %16 = load ptr, ptr @ccdc_dev, align 4
  %get_frame_format.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %16, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %get_frame_format.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_frame_format.i, align 4
  %call.i122 = tail call i32 %18() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i = icmp eq i32 %call.i122, 0
  br i1 %cmp.i, label %if.then.i123, label %vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge

vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge: ; preds = %vpfe_stop_ccdc_capture.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_detach_irq.exit

if.then.i123:                                     ; preds = %vpfe_stop_ccdc_capture.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ccdc_irq1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %ccdc_irq1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ccdc_irq1.i, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %20, ptr noundef %1) #11
  br label %vpfe_detach_irq.exit

vpfe_detach_irq.exit:                             ; preds = %if.then.i123, %vpfe_stop_ccdc_capture.exit.vpfe_detach_irq.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn125 = load ptr, ptr %subdevs, align 4
  %cmp46.not127 = icmp eq ptr %.pn125, %subdevs
  br i1 %cmp46.not127, label %vpfe_detach_irq.exit.if.end86_crit_edge, label %for.body.lr.ph

vpfe_detach_irq.exit.if.end86_crit_edge:          ; preds = %vpfe_detach_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

for.body.lr.ph:                                   ; preds = %vpfe_detach_irq.exit
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %current_subdev, align 4
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %23, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn130 = phi ptr [ %.pn125, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.0131 = getelementptr i8, ptr %.pn130, i32 -80
  %24 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp47 = icmp eq i32 %25, 0
  br i1 %cmp47, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id48 = getelementptr i8, ptr %.pn130, i32 68
  %26 = ptrtoint ptr %grp_id48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %grp_id48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp50 = icmp eq i32 %27, %25
  br i1 %cmp50, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end61_crit_edge

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn130, i32 24
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %video, align 4
  %tobool51.not = icmp eq ptr %31, null
  br i1 %tobool51.not, label %land.lhs.true.if.end61_crit_edge, label %land.lhs.true52

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true52:                                  ; preds = %land.lhs.true
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_stream, align 4
  %tobool55.not = icmp eq ptr %33, null
  br i1 %tobool55.not, label %land.lhs.true52.if.end61_crit_edge, label %if.then56

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then56:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 %33(ptr noundef %__sd.0131, i32 noundef 0) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %land.lhs.true52.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  %__err.1 = phi i32 [ %call60, %if.then56 ], [ %__err.0128, %land.lhs.true52.if.end61_crit_edge ], [ %__err.0128, %land.lhs.true.if.end61_crit_edge ], [ %__err.0128, %lor.lhs.false.if.end61_crit_edge ]
  %34 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %__err.1, label %if.end61.do.end80_crit_edge [
    i32 0, label %if.end61.for.inc_crit_edge
    i32 -515, label %if.end61.for.inc_crit_edge136
  ]

if.end61.for.inc_crit_edge136:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61.do.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

for.inc:                                          ; preds = %if.end61.for.inc_crit_edge, %if.end61.for.inc_crit_edge136
  %35 = ptrtoint ptr %.pn130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn130, align 4
  %cmp46.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp46.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %36 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %__err.1, label %for.end.do.end80_crit_edge [
    i32 -515, label %for.end.if.end86_crit_edge
    i32 0, label %for.end.if.end86_crit_edge137
  ]

for.end.if.end86_crit_edge137:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

for.end.if.end86_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

for.end.do.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

do.end80:                                         ; preds = %for.end.do.end80_crit_edge, %if.end61.do.end80_crit_edge
  %name83 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name83) #14
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %for.end.if.end86_crit_edge, %for.end.if.end86_crit_edge137, %vpfe_detach_irq.exit.if.end86_crit_edge
  %buffer_queue = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 22
  %call87 = tail call i32 @videobuf_streamoff(ptr noundef %buffer_queue) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end36.cleanup_crit_edge, %do.end30, %do.end19, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %call87, %if.end86 ], [ -22, %do.end30 ], [ -13, %do.end19 ], [ %call37, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_index, align 8
  %arrayidx = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %7 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %std_id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_subdev, align 4
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end18, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %name15) #14
  br label %unlock_out

if.end18:                                         ; preds = %if.end7
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn93 = load ptr, ptr %subdevs, align 4
  %cmp24.not95 = icmp eq ptr %.pn93, %subdevs
  br i1 %cmp24.not95, label %if.end18.if.end62_crit_edge, label %for.body.lr.ph

if.end18.if.end62_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

for.body.lr.ph:                                   ; preds = %if.end18
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn98 = phi ptr [ %.pn93, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.096 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.099 = getelementptr i8, ptr %.pn98, i32 -80
  %8 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp25 = icmp eq i32 %9, 0
  br i1 %cmp25, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id26 = getelementptr i8, ptr %.pn98, i32 68
  %10 = ptrtoint ptr %grp_id26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grp_id26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp28 = icmp eq i32 %11, %9
  br i1 %cmp28, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn98, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true30

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true30:                                  ; preds = %land.lhs.true
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_std, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %land.lhs.true30.if.end39_crit_edge, label %if.then34

land.lhs.true30.if.end39_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 %17(ptr noundef %__sd.099, i64 noundef %std_id) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %land.lhs.true30.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %__err.1 = phi i32 [ %call38, %if.then34 ], [ %__err.096, %land.lhs.true30.if.end39_crit_edge ], [ %__err.096, %land.lhs.true.if.end39_crit_edge ], [ %__err.096, %lor.lhs.false.if.end39_crit_edge ]
  %18 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %__err.1, label %if.end39.for.end_crit_edge [
    i32 0, label %if.end39.for.inc_crit_edge
    i32 -515, label %if.end39.for.inc_crit_edge105
  ]

if.end39.for.inc_crit_edge105:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %if.end39.for.inc_crit_edge105
  %19 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn98, align 4
  %cmp24.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end39.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp51 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp5292 = icmp slt i32 %__err.1, 0
  %cmp52 = and i1 %cmp51, %cmp5292
  br i1 %cmp52, label %do.end56, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end56:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %name59 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name59) #14
  br label %unlock_out

if.end62:                                         ; preds = %for.end.if.end62_crit_edge, %if.end18.if.end62_crit_edge
  %call63 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %1, i64 noundef %std_id)
  br label %unlock_out

unlock_out:                                       ; preds = %if.end62, %do.end56, %do.end12
  %ret.0 = phi i32 [ -16, %do.end12 ], [ %__err.1, %do.end56 ], [ %call63, %if.end62 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock_out ], [ %call5, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %std_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %current_subdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_subdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %subdevs = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn63 = load ptr, ptr %subdevs, align 4
  %cmp13.not65 = icmp eq ptr %.pn63, %subdevs
  br i1 %cmp13.not65, label %if.end7.for.end.thread_crit_edge, label %for.body.lr.ph

if.end7.for.end.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end7
  %grp_id = getelementptr inbounds %struct.vpfe_subdev_info, ptr %4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn68 = phi ptr [ %.pn63, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.066 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.069 = getelementptr i8, ptr %.pn68, i32 -80
  %6 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %grp_id15 = getelementptr i8, ptr %.pn68, i32 68
  %8 = ptrtoint ptr %grp_id15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grp_id15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp17 = icmp eq i32 %9, %7
  br i1 %cmp17, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ops = getelementptr i8, ptr %.pn68, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true19

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true19:                                  ; preds = %land.lhs.true
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %querystd, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %land.lhs.true19.if.end28_crit_edge, label %if.then23

land.lhs.true19.if.end28_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 %15(ptr noundef %__sd.069, ptr noundef %std_id) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true19.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %__err.1 = phi i32 [ %call27, %if.then23 ], [ %__err.066, %land.lhs.true19.if.end28_crit_edge ], [ %__err.066, %land.lhs.true.if.end28_crit_edge ], [ %__err.066, %lor.lhs.false.if.end28_crit_edge ]
  %16 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %__err.1, label %if.end28.for.end.thread_crit_edge [
    i32 0, label %if.end28.for.inc_crit_edge
    i32 -515, label %if.end28.for.inc_crit_edge77
  ]

if.end28.for.inc_crit_edge77:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.for.end.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end28.for.inc_crit_edge77
  %17 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp13.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp13.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp40 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp40, i32 0, i32 %__err.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end28.for.end.thread_crit_edge, %if.end7.for.end.thread_crit_edge
  %18 = phi i32 [ 0, %if.end7.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end28.for.end.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %for.end.thread ], [ %call5, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inp, align 8
  %cfg1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18.i = icmp sgt i32 %8, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %do.end4.do.end11_crit_edge

do.end4.do.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

for.body.lr.ph.i:                                 ; preds = %do.end4
  %sub_devs.i = getelementptr inbounds %struct.vpfe_config, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %sub_devs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sub_devs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %num_inputs.i = getelementptr %struct.vpfe_subdev_info, ptr %10, i32 %i.019.i, i32 2
  %11 = ptrtoint ptr %num_inputs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_inputs.i, align 4
  %add.i = add i32 %12, %j.020.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp2.i = icmp sgt i32 %add.i, %4
  br i1 %cmp2.i, label %if.end17, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %if.end.i.do.end11_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.do.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end11:                                         ; preds = %if.end.i.do.end11_crit_edge, %do.end4.do.end11_crit_edge
  %name14 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %name14) #14
  br label %cleanup

if.end17:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %4, %j.020.i
  %13 = ptrtoint ptr %sub_devs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sub_devs.i, align 4
  %inputs = getelementptr %struct.vpfe_subdev_info, ptr %14, i32 %i.019.i, i32 3
  %15 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inputs, align 4
  %arrayidx18 = getelementptr %struct.v4l2_input, ptr %16, i32 %sub.i
  %17 = call ptr @memcpy(ptr %inp, ptr %arrayidx18, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cfg1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg1.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp24.i = icmp sgt i32 %6, 0
  br i1 %cmp24.i, label %for.body.lr.ph.i, label %do.end4.vpfe_get_app_input_index.exit_crit_edge

do.end4.vpfe_get_app_input_index.exit_crit_edge:  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_get_app_input_index.exit

for.body.lr.ph.i:                                 ; preds = %do.end4
  %sub_devs.i = getelementptr inbounds %struct.vpfe_config, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %sub_devs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sub_devs.i, align 4
  %current_subdev.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %current_subdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_subdev.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add9.i, %if.end7.i.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vpfe_subdev_info, ptr %8, i32 %i.025.i
  %call.i7 = tail call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef %10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %for.body.i
  %current_input.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %current_input.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_input.i, align 8
  %num_inputs.i = getelementptr %struct.vpfe_subdev_info, ptr %8, i32 %i.025.i, i32 2
  %13 = ptrtoint ptr %num_inputs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_inputs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp4.not.i = icmp slt i32 %12, %14
  br i1 %cmp4.not.i, label %if.end.i, label %if.then.i.vpfe_get_app_input_index.exit_crit_edge

if.then.i.vpfe_get_app_input_index.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_get_app_input_index.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %12, %j.026.i
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %index, align 4
  br label %vpfe_get_app_input_index.exit

if.end7.i:                                        ; preds = %for.body.i
  %num_inputs8.i = getelementptr %struct.vpfe_subdev_info, ptr %8, i32 %i.025.i, i32 2
  %16 = ptrtoint ptr %num_inputs8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_inputs8.i, align 4
  %add9.i = add i32 %17, %j.026.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %if.end7.i.vpfe_get_app_input_index.exit_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end7.i.vpfe_get_app_input_index.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_get_app_input_index.exit

vpfe_get_app_input_index.exit:                    ; preds = %if.end7.i.vpfe_get_app_input_index.exit_crit_edge, %if.end.i, %if.then.i.vpfe_get_app_input_index.exit_crit_edge, %do.end4.vpfe_get_app_input_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -1, %if.then.i.vpfe_get_app_input_index.exit_crit_edge ], [ -22, %do.end4.vpfe_get_app_input_index.exit_crit_edge ], [ -22, %if.end7.i.vpfe_get_app_input_index.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  br i1 %tobool8.not, label %if.end18, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %name15) #14
  br label %unlock_out

if.end18:                                         ; preds = %if.end7
  %cfg1.i = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18.i = icmp sgt i32 %8, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

for.body.lr.ph.i:                                 ; preds = %if.end18
  %sub_devs.i = getelementptr inbounds %struct.vpfe_config, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %sub_devs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sub_devs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %num_inputs.i = getelementptr %struct.vpfe_subdev_info, ptr %10, i32 %i.019.i, i32 2
  %11 = ptrtoint ptr %num_inputs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_inputs.i, align 4
  %add.i = add i32 %12, %j.020.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %index)
  %cmp2.i = icmp sgt i32 %add.i, %index
  br i1 %cmp2.i, label %if.end30, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %if.end.i.do.end24_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.do.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end24:                                         ; preds = %if.end.i.do.end24_crit_edge, %if.end18.do.end24_crit_edge
  %name27 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %name27) #14
  br label %unlock_out

if.end30:                                         ; preds = %for.body.i
  %sub.i = sub i32 %index, %j.020.i
  %13 = ptrtoint ptr %sub_devs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sub_devs.i, align 4
  %arrayidx = getelementptr %struct.vpfe_subdev_info, ptr %14, i32 %i.019.i
  %sd31 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %sd31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd31, align 8
  %arrayidx32 = getelementptr ptr, ptr %16, i32 %i.019.i
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx32, align 4
  %routes = getelementptr %struct.vpfe_subdev_info, ptr %14, i32 %i.019.i, i32 4
  %19 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %routes, align 4
  %arrayidx33 = getelementptr %struct.vpfe_route, ptr %20, i32 %sub.i
  %tobool34.not = icmp eq ptr %arrayidx33, null
  br i1 %tobool34.not, label %if.end30.if.end39_crit_edge, label %land.lhs.true

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end30
  %can_route = getelementptr %struct.vpfe_subdev_info, ptr %14, i32 %i.019.i, i32 5
  %21 = ptrtoint ptr %can_route to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %can_route, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end39_crit_edge, label %if.then36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx33, align 4
  %output38 = getelementptr %struct.vpfe_route, ptr %20, i32 %sub.i, i32 1
  %25 = ptrtoint ptr %output38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %input.0 = phi i32 [ %24, %if.then36 ], [ 0, %land.lhs.true.if.end39_crit_edge ], [ 0, %if.end30.if.end39_crit_edge ]
  %output.0 = phi i32 [ %26, %if.then36 ], [ 0, %land.lhs.true.if.end39_crit_edge ], [ 0, %if.end30.if.end39_crit_edge ]
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %if.end79.thread, label %if.else44

if.end79.thread:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %current_subdev150 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %current_subdev150 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %current_subdev150, align 4
  br label %if.end84

if.else44:                                        ; preds = %if.end39
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 6
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %video, align 4
  %tobool45.not = icmp eq ptr %31, null
  br i1 %tobool45.not, label %if.else44.do.end73_crit_edge, label %land.lhs.true46

if.else44.do.end73_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

land.lhs.true46:                                  ; preds = %if.else44
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %land.lhs.true46.do.end73_crit_edge, label %if.else51

land.lhs.true46.do.end73_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

if.else51:                                        ; preds = %land.lhs.true46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool52.not = icmp eq ptr %34, null
  br i1 %tobool52.not, label %if.else51.if.else59_crit_edge, label %land.lhs.true53

if.else51.if.else59_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else59

land.lhs.true53:                                  ; preds = %if.else51
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool55.not = icmp eq ptr %36, null
  br i1 %tobool55.not, label %land.lhs.true53.if.else59_crit_edge, label %land.lhs.true53.if.end68_crit_edge

land.lhs.true53.if.end68_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true53.if.else59_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else59

if.else59:                                        ; preds = %land.lhs.true53.if.else59_crit_edge, %if.else51.if.else59_crit_edge
  br label %if.end68

if.end68:                                         ; preds = %if.else59, %land.lhs.true53.if.end68_crit_edge
  %.sink = phi ptr [ %33, %if.else59 ], [ %36, %land.lhs.true53.if.end68_crit_edge ]
  %call58 = tail call i32 %.sink(ptr noundef nonnull %18, i32 noundef %input.0, i32 noundef %output.0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool69.not = icmp eq i32 %call58, 0
  br i1 %tobool69.not, label %if.then81, label %if.end68.do.end73_crit_edge

if.end68.do.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

do.end73:                                         ; preds = %if.end68.do.end73_crit_edge, %land.lhs.true46.do.end73_crit_edge, %if.else44.do.end73_crit_edge
  %name76 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef %name76) #14
  br label %unlock_out

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %current_subdev = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %current_subdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx, ptr %current_subdev, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 8
  %38 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler83 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %ctrl_handler83 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ctrl_handler83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end79.thread
  %current_input = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %current_input to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %index, ptr %current_input, align 8
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %std_index to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %std_index, align 8
  %43 = load ptr, ptr @ccdc_dev, align 4
  %set_hw_if_params = getelementptr inbounds %struct.ccdc_hw_device, ptr %43, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %set_hw_if_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_hw_if_params, align 4
  %ccdc_if_params = getelementptr %struct.vpfe_subdev_info, ptr %14, i32 %i.019.i, i32 6
  %call85 = tail call i32 %45(ptr noundef %ccdc_if_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.unlock_out_crit_edge

if.end84.unlock_out_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.end88:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %std_index, align 8
  %arrayidx90 = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx90, align 8
  %call91 = tail call fastcc i32 @vpfe_config_image_format(ptr noundef %1, i64 noundef %49)
  br label %unlock_out

unlock_out:                                       ; preds = %if.end88, %if.end84.unlock_out_crit_edge, %do.end73, %do.end24, %do.end12
  %ret.1 = phi i32 [ -16, %do.end12 ], [ -22, %do.end24 ], [ -22, %do.end73 ], [ %call85, %if.end84.unlock_out_crit_edge ], [ %call91, %if.end88 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock_out ], [ %call5, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp5.not = icmp eq i32 %type, 1
  br i1 %cmp5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8 = icmp ugt i32 %4, 1
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %pixelaspect = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %4, i32 3
  %5 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pixelaspect, align 8
  %7 = ptrtoint ptr %f to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5.not = icmp eq i32 %4, 1
  br i1 %cmp5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %6, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end7.sw.bb8_crit_edge
    i32 2, label %if.end7.sw.bb8_crit_edge22
  ]

if.end7.sw.bb8_crit_edge22:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end7.sw.bb8_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21
  %8 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7.sw.bb8_crit_edge, %if.end7.sw.bb8_crit_edge22
  %std_index = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %std_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %std_index, align 8
  %width = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %10, i32 1
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 8
  %width10 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %width10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width10, align 4
  %14 = load i32, ptr %std_index, align 8
  %height = getelementptr [2 x %struct.vpfe_standard], ptr @vpfe_standards, i32 0, i32 %14, i32 2
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height14, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_s_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %rect = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #11
  %2 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %rect, i32 0, i32 3
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %rect, ptr %r, i32 16)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5.not = icmp eq i32 %8, 1
  br i1 %cmp5.not, label %lor.lhs.false, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.not = icmp eq i32 %10, 0
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %started = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end18, label %do.end12

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name15) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %lock = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 26
  %call19 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp slt i32 %14, 0
  br i1 %cmp23, label %if.end22.do.end29_crit_edge, label %lor.lhs.false24

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

lor.lhs.false24:                                  ; preds = %if.end22
  %15 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25 = icmp slt i32 %16, 0
  br i1 %cmp25, label %lor.lhs.false24.do.end29_crit_edge, label %if.end35

lor.lhs.false24.do.end29_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false24.do.end29_crit_edge, %if.end22.do.end29_crit_edge
  %name32 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %name32) #14
  br label %unlock_out

if.end35:                                         ; preds = %lor.lhs.false24
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %add = add i32 %18, 15
  %and = and i32 %add, -16
  store i32 %and, ptr %3, align 4
  %add39 = add i32 %and, %16
  %std_info = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %std_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %std_info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %20)
  %cmp40 = icmp ugt i32 %add39, %20
  br i1 %cmp40, label %if.end35.do.end49_crit_edge, label %lor.lhs.false41

if.end35.do.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

lor.lhs.false41:                                  ; preds = %if.end35
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %add43 = add i32 %22, %14
  %active_lines = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %active_lines to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_lines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %24)
  %cmp45 = icmp ugt i32 %add43, %24
  br i1 %cmp45, label %lor.lhs.false41.do.end49_crit_edge, label %if.end55

lor.lhs.false41.do.end49_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end49:                                         ; preds = %lor.lhs.false41.do.end49_crit_edge, %if.end35.do.end49_crit_edge
  %name52 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 3, i32 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %name52) #14
  br label %unlock_out

if.end55:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  %25 = load ptr, ptr @ccdc_dev, align 4
  %set_image_window = getelementptr inbounds %struct.ccdc_hw_device, ptr %25, i32 0, i32 2, i32 16
  %26 = ptrtoint ptr %set_image_window to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_image_window, align 4
  %call56 = call i32 %27(ptr noundef nonnull %rect) #11
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %fmt58 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %fmt58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fmt58, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %height63 = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height63, align 4
  %34 = load ptr, ptr @ccdc_dev, align 4
  %get_line_length = getelementptr inbounds %struct.ccdc_hw_device, ptr %34, i32 0, i32 2, i32 18
  %35 = ptrtoint ptr %get_line_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_line_length, align 4
  %call65 = call i32 %36() #11
  %bytesperline = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call65, ptr %bytesperline, align 4
  %38 = ptrtoint ptr %height63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height63, align 4
  %mul = mul i32 %39, %call65
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 20, i32 1, i32 0, i32 5
  %40 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %sizeimage, align 4
  %crop = getelementptr inbounds %struct.vpfe_device, ptr %1, i32 0, i32 21
  %41 = call ptr @memcpy(ptr %crop, ptr %rect, i32 16)
  %42 = call ptr @memcpy(ptr %r, ptr %rect, i32 16)
  br label %unlock_out

unlock_out:                                       ; preds = %if.end55, %do.end49, %do.end29
  %ret.0 = phi i32 [ -22, %do.end29 ], [ -22, %do.end49 ], [ 0, %if.end55 ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock_out, %if.end18.cleanup_crit_edge, %do.end12, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end12 ], [ %ret.0, %unlock_out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vpfe_check_format(ptr noundef %vpfe_dev, ptr nocapture noundef %pixfmt) unnamed_addr #0 align 64 {
entry:
  %pix = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pix) #11
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pix, align 4, !annotation !484
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 2
  %1 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pixelformat, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %2, label %if.then [
    i32 825770306, label %entry.if.end_crit_edge
    i32 844257602, label %cleanup.fold.split.i
    i32 808535106, label %cleanup.fold.split7.i
    i32 1498831189, label %cleanup.fold.split8.i
    i32 1448695129, label %cleanup.fold.split9.i
    i32 842094158, label %cleanup.fold.split10.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split7.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %pixelformat2 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat2, align 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %5, label %for.cond.5.i188 [
    i32 825770306, label %if.then.if.end_crit_edge
    i32 844257602, label %cleanup.fold.split.i189
    i32 808535106, label %cleanup.fold.split7.i190
    i32 1498831189, label %cleanup.fold.split8.i191
    i32 1448695129, label %cleanup.fold.split9.i192
    i32 842094158, label %cleanup.fold.split10.i193
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.5.i188:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split.i189:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split7.i190:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split8.i191:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split9.i192:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.fold.split10.i193:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %cleanup.fold.split10.i193, %cleanup.fold.split9.i192, %cleanup.fold.split8.i191, %cleanup.fold.split7.i190, %cleanup.fold.split.i189, %for.cond.5.i188, %if.then.if.end_crit_edge, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %entry.if.end_crit_edge
  %vpfe_pix_fmt.0 = phi ptr [ @vpfe_pix_fmts, %if.then.if.end_crit_edge ], [ null, %for.cond.5.i188 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 1), %cleanup.fold.split.i189 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 2), %cleanup.fold.split7.i190 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 3), %cleanup.fold.split8.i191 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 4), %cleanup.fold.split9.i192 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 5), %cleanup.fold.split10.i193 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 5), %cleanup.fold.split10.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 4), %cleanup.fold.split9.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 3), %cleanup.fold.split8.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 2), %cleanup.fold.split7.i ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 1), %cleanup.fold.split.i ], [ @vpfe_pix_fmts, %entry.if.end_crit_edge ]
  %8 = load ptr, ptr @ccdc_dev, align 4
  %enum_pix206 = getelementptr inbounds %struct.ccdc_hw_device, ptr %8, i32 0, i32 2, i32 13
  %9 = ptrtoint ptr %enum_pix206 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enum_pix206, align 4
  %call6207 = call i32 %10(ptr noundef nonnull %pix, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6207)
  %cmp208 = icmp sgt i32 %call6207, -1
  br i1 %cmp208, label %if.end.while.body_crit_edge, label %if.end.if.then12.critedge_crit_edge

if.end.if.then12.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.critedge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.cond:                                       ; preds = %while.body
  %inc = add i32 %temp.0209, 1
  %11 = load ptr, ptr @ccdc_dev, align 4
  %enum_pix = getelementptr inbounds %struct.ccdc_hw_device, ptr %11, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %enum_pix to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enum_pix, align 4
  %call6 = call i32 %13(ptr noundef nonnull %pix, i32 noundef %inc) #11
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.if.then12.critedge_crit_edge

while.cond.if.then12.critedge_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.critedge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end.while.body_crit_edge
  %temp.0209 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %vpfe_pix_fmt.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vpfe_pix_fmt.0, align 4
  %16 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pix, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8 = icmp eq i32 %15, %17
  br i1 %cmp8, label %while.body.if.end19_crit_edge, label %while.cond

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12.critedge:                               ; preds = %while.cond.if.then12.critedge_crit_edge, %if.end.if.then12.critedge_crit_edge
  %pixelformat15 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat15, align 4
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat, align 4
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %19, label %for.cond.5.i196 [
    i32 825770306, label %if.then12.critedge.if.end19_crit_edge
    i32 844257602, label %cleanup.fold.split.i197
    i32 808535106, label %cleanup.fold.split7.i198
    i32 1498831189, label %cleanup.fold.split8.i199
    i32 1448695129, label %cleanup.fold.split9.i200
    i32 842094158, label %cleanup.fold.split10.i201
  ]

if.then12.critedge.if.end19_crit_edge:            ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.5.i196:                                  ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

cleanup.fold.split.i197:                          ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

cleanup.fold.split7.i198:                         ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

cleanup.fold.split8.i199:                         ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

cleanup.fold.split9.i200:                         ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

cleanup.fold.split10.i201:                        ; preds = %if.then12.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %cleanup.fold.split10.i201, %cleanup.fold.split9.i200, %cleanup.fold.split8.i199, %cleanup.fold.split7.i198, %cleanup.fold.split.i197, %for.cond.5.i196, %if.then12.critedge.if.end19_crit_edge, %while.body.if.end19_crit_edge
  %vpfe_pix_fmt.1 = phi ptr [ @vpfe_pix_fmts, %if.then12.critedge.if.end19_crit_edge ], [ null, %for.cond.5.i196 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 1), %cleanup.fold.split.i197 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 2), %cleanup.fold.split7.i198 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 3), %cleanup.fold.split8.i199 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 4), %cleanup.fold.split9.i200 ], [ getelementptr inbounds ([6 x %struct.vpfe_pixel_format], ptr @vpfe_pix_fmts, i32 0, i32 5), %cleanup.fold.split10.i201 ], [ %vpfe_pix_fmt.0, %while.body.if.end19_crit_edge ]
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp20 = icmp eq i32 %23, 0
  br i1 %cmp20, label %if.then21, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %field24 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field24, align 4
  %26 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %field, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %27 = phi i32 [ %25, %if.then21 ], [ %23, %if.end19.if.end26_crit_edge ]
  %field29 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 20, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp31.not = icmp eq i32 %29, %27
  br i1 %cmp31.not, label %if.end26.if.end49_crit_edge, label %if.then32

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then32:                                        ; preds = %if.end26
  %30 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %27, label %if.then32.if.end49.sink.split_crit_edge [
    i32 4, label %if.then32.sw.bb_crit_edge
    i32 5, label %if.then32.sw.bb_crit_edge210
    i32 1, label %sw.bb38
  ]

if.then32.sw.bb_crit_edge210:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then32.sw.bb_crit_edge:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then32.if.end49.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.sink.split

sw.bb:                                            ; preds = %if.then32.sw.bb_crit_edge, %if.then32.sw.bb_crit_edge210
  %frame_format = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 2
  %31 = ptrtoint ptr %frame_format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool34.not = icmp eq i32 %32, 0
  br i1 %tobool34.not, label %sw.bb.if.end49.sink.split_crit_edge, label %sw.bb.if.end49_crit_edge

sw.bb.if.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

sw.bb.if.end49.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.sink.split

sw.bb38:                                          ; preds = %if.then32
  %frame_format40 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %frame_format40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frame_format40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool41.not = icmp eq i32 %34, 0
  br i1 %tobool41.not, label %sw.bb38.if.end49_crit_edge, label %sw.bb38.if.end49.sink.split_crit_edge

sw.bb38.if.end49.sink.split_crit_edge:            ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.sink.split

sw.bb38.if.end49_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end49.sink.split:                              ; preds = %sw.bb38.if.end49.sink.split_crit_edge, %sw.bb.if.end49.sink.split_crit_edge, %if.then32.if.end49.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.if.end49.sink.split_crit_edge ], [ 4, %sw.bb38.if.end49.sink.split_crit_edge ], [ %29, %if.then32.if.end49.sink.split_crit_edge ]
  %35 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %field, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %sw.bb38.if.end49_crit_edge, %sw.bb.if.end49_crit_edge, %if.end26.if.end49_crit_edge
  %36 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %field, align 4
  %38 = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %switch = icmp eq i32 %38, 4
  %spec.select = select i1 %switch, i32 2, i32 1
  %std_info56 = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11
  %39 = ptrtoint ptr %std_info56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %std_info56, align 4
  %active_lines = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 11, i32 1
  %41 = ptrtoint ptr %active_lines to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_lines, align 4
  %bpp = getelementptr inbounds %struct.vpfe_pixel_format, ptr %vpfe_pix_fmt.1, i32 0, i32 1
  %43 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bpp, align 4
  %div = udiv i32 32, %44
  %name = getelementptr inbounds %struct.vpfe_device, ptr %vpfe_dev, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixfmt, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 1
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name, i32 noundef %46, i32 noundef %48, i32 noundef %44) #14
  %49 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixfmt, align 4
  %51 = call i32 @llvm.umax.i32(i32 %50, i32 %div)
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %40)
  %53 = ptrtoint ptr %pixfmt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %pixfmt, align 4
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  %56 = call i32 @llvm.umax.i32(i32 %55, i32 %spec.select)
  %57 = call i32 @llvm.umin.i32(i32 %56, i32 %42)
  %58 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %height, align 4
  %59 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp85 = icmp eq i32 %60, 4
  br i1 %cmp85, label %if.then86, label %if.end49.if.end88_crit_edge

if.end49.if.end88_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %57, -2
  %61 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and, ptr %height, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end49.if.end88_crit_edge
  %62 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bpp, align 4
  %mul = mul i32 %63, %52
  %add = add i32 %mul, 31
  %and91 = and i32 %add, -32
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 4
  %64 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and91, ptr %bytesperline, align 4
  %65 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %66)
  %cmp93 = icmp eq i32 %66, 842094158
  %67 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height, align 4
  %mul97 = mul i32 %68, %and91
  %shr = lshr exact i32 %mul97, 1
  %add101 = select i1 %cmp93, i32 %shr, i32 0
  %mul104.sink = add i32 %mul97, %add101
  %69 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pixfmt, i32 0, i32 5
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul104.sink, ptr %69, align 4
  %71 = load i32, ptr %height, align 4
  %72 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bpp, align 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name, i32 noundef %52, i32 noundef %71, i32 noundef %73, i32 noundef %and91, i32 noundef %mul104.sink) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pix) #11
  ret ptr %vpfe_pix_fmt.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_dma_contig_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_videobuf_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %count, ptr nocapture noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %vpfe_dev1 = getelementptr inbounds %struct.vpfe_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vpfe_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpfe_dev1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 5
  %5 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeimage, align 4
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %size, align 4
  %memory = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %memory, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %land.lhs.true, label %do.end4.if.end12_crit_edge

do.end4.if.end12_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end4
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage, align 4
  %12 = load i32, ptr @config_params.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp10 = icmp ugt i32 %11, %12
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %do.end4.if.end12_crit_edge
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp13 = icmp ult i32 %15, 3
  br i1 %cmp13, label %if.then15, label %if.end12.do.body18_crit_edge

if.end12.do.body18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %count, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %if.end12.do.body18_crit_edge
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp sgt i32 %17, 0
  br i1 %cmp19, label %do.end24, label %do.body18.do.end32_crit_edge

do.body18.do.end32_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %name27 = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name27, i32 noundef %19, i32 noundef %21) #14
  br label %do.end32

do.end32:                                         ; preds = %do.end24, %do.body18.do.end32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpfe_videobuf_prepare(ptr noundef %vq, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %vpfe_dev1 = getelementptr inbounds %struct.vpfe_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vpfe_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpfe_dev1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %do.end4
  %fmt7 = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt7, align 4
  %width8 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width8, align 8
  %height = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height11 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %12 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height11, align 4
  %sizeimage = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 20, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage, align 4
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %size, align 4
  %field14 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %16 = ptrtoint ptr %field14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %field, ptr %field14, align 8
  %call15 = tail call i32 @videobuf_iolock(ptr noundef %vq, ptr noundef %vb, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then6.cleanup_crit_edge, label %if.end18

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then6
  %call19 = tail call i32 @videobuf_to_dma_contig(ptr noundef %vb) #11
  %add = add i32 %call19, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %tobool.not = icmp ult i32 %add, 32
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then6.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ 0, %if.end21 ], [ 0, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_videobuf_queue(ptr nocapture noundef readonly %vq, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %vpfe_dev1 = getelementptr inbounds %struct.vpfe_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vpfe_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpfe_dev1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name) #14
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 25
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #11
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %6, ptr noundef %dma_queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body6.list_add_tail.exit_crit_edge

do.body6.list_add_tail.exit_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %prev.i, align 4
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dma_queue, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queue, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body6.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call10) #11
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpfe_videobuf_release(ptr noundef %vq, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %vq, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %vpfe_dev1 = getelementptr inbounds %struct.vpfe_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vpfe_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpfe_dev1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name) #14
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 25
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_queue_lock) #11
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %dma_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dma_queue, ptr %dma_queue, align 4
  %prev.i = getelementptr inbounds %struct.vpfe_device, ptr %3, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dma_queue, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_queue_lock, i32 noundef %call10) #11
  tail call void @videobuf_dma_contig_free(ptr noundef %vq, ptr noundef %vb) #11
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_dma_contig_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdint1_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %started = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 28
  %1 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then4, label %if.end10

if.then4:                                         ; preds = %do.end3
  %cfg = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %clr_intr = getelementptr inbounds %struct.vpfe_config, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %clr_intr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clr_intr, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end3
  %dma_queue_lock = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %dma_queue_lock) #11
  %field = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 20, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp12 = icmp eq i32 %8, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %dma_queue = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 23
  %9 = ptrtoint ptr %dma_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %dma_queue, align 4
  %cmp.i.not = icmp eq ptr %10, %dma_queue
  br i1 %cmp.i.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true15:                                  ; preds = %land.lhs.true
  %cur_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 17
  %11 = ptrtoint ptr %cur_frm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_frm, align 8
  %next_frm = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 18
  %13 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_frm, align 4
  %cmp16 = icmp eq ptr %12, %14
  br i1 %cmp16, label %if.then17, label %land.lhs.true15.if.end18_crit_edge

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  %add.ptr.i = getelementptr i8, ptr %10, i32 -40
  %15 = ptrtoint ptr %next_frm to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %next_frm, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then17.vpfe_schedule_next_buffer.exit_crit_edge

if.then17.vpfe_schedule_next_buffer.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %vpfe_schedule_next_buffer.exit

if.end.i.i.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %vpfe_schedule_next_buffer.exit

vpfe_schedule_next_buffer.exit:                   ; preds = %if.end.i.i.i, %if.then17.vpfe_schedule_next_buffer.exit_crit_edge
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %next_frm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next_frm, align 4
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %state.i, align 4
  %27 = load ptr, ptr %next_frm, align 4
  %call.i = tail call i32 @videobuf_to_dma_contig(ptr noundef %27) #11
  %28 = load ptr, ptr @ccdc_dev, align 4
  %setfbaddr.i = getelementptr inbounds %struct.ccdc_hw_device, ptr %28, i32 0, i32 2, i32 19
  %29 = ptrtoint ptr %setfbaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setfbaddr.i, align 4
  tail call void %30(i32 noundef %call.i) #11
  br label %if.end18

if.end18:                                         ; preds = %vpfe_schedule_next_buffer.exit, %land.lhs.true15.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dma_queue_lock) #11
  %cfg20 = getelementptr inbounds %struct.vpfe_device, ptr %dev_id, i32 0, i32 2
  %31 = ptrtoint ptr %cfg20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg20, align 4
  %clr_intr21 = getelementptr inbounds %struct.vpfe_config, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %clr_intr21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clr_intr21, align 4
  %tobool22.not = icmp eq ptr %34, null
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %6, %if.then4.cleanup.sink.split_crit_edge ], [ %34, %if.end18.cleanup.sink.split_crit_edge ]
  tail call void %.sink(i32 noundef %irq) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpfe_suspend(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpfe_resume(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !215, !216, !217, !218, !220, !222, !223, !224, !225, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !317, !318, !319, !321, !322, !323, !324, !326, !327, !329, !330, !331, !332, !334, !335, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !359, !361, !363, !364, !365, !366, !368, !369, !370, !371, !373, !374, !376, !377, !379, !380, !381, !383, !384, !386, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !443, !445, !446, !447, !448, !450, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !469, !470, !471, !472}
!llvm.module.flags = !{!474, !475, !476, !477, !478, !479, !480, !481}
!llvm.ident = !{!482}

!0 = !{ptr @__param_numbuffers, !1, !"__param_numbuffers", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_numbufferstype294, !1, !"__UNIQUE_ID_numbufferstype294", i1 false, i1 false}
!3 = !{ptr @__param_bufsize, !4, !"__param_bufsize", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 70, i32 1}
!5 = !{ptr @__UNIQUE_ID_bufsizetype295, !4, !"__UNIQUE_ID_bufsizetype295", i1 false, i1 false}
!6 = !{ptr @__param_debug, !7, !"__param_debug", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 71, i32 1}
!8 = !{ptr @__UNIQUE_ID_debugtype296, !7, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_numbuffers297, !10, !"__UNIQUE_ID_numbuffers297", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 73, i32 1}
!11 = !{ptr @__UNIQUE_ID_bufsize298, !12, !"__UNIQUE_ID_bufsize298", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 74, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug299, !14, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 75, i32 1}
!15 = !{ptr @__UNIQUE_ID_description300, !16, !"__UNIQUE_ID_description300", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 77, i32 1}
!17 = !{ptr @__UNIQUE_ID_file301, !18, !"__UNIQUE_ID_file301", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 78, i32 1}
!19 = !{ptr @__UNIQUE_ID_license302, !18, !"__UNIQUE_ID_license302", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author303, !21, !"__UNIQUE_ID_author303", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 79, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 169, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vpfe_register_ccdc_device._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @vpfe_register_ccdc_device._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 195, i32 3}
!30 = !{ptr @vpfe_register_ccdc_device._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vpfe_register_ccdc_device._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 207, i32 3}
!34 = !{ptr @vpfe_register_ccdc_device._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vpfe_register_ccdc_device._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_vpfe_register_ccdc_device, !37, !"__ksymtab_vpfe_register_ccdc_device", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 217, i32 1}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 226, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vpfe_unregister_ccdc_device._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @vpfe_unregister_ccdc_device._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 230, i32 2}
!45 = !{ptr @vpfe_unregister_ccdc_device._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vpfe_unregister_ccdc_device._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_vpfe_unregister_ccdc_device, !48, !"__ksymtab_vpfe_unregister_ccdc_device", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 242, i32 1}
!49 = !{ptr @__initcall__kmod_vpfe_capture__312_1902_vpfe_driver_init6, !50, !"__initcall__kmod_vpfe_capture__312_1902_vpfe_driver_init6", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1902, i32 1}
!51 = !{ptr @__exitcall_vpfe_driver_exit, !50, !"__exitcall_vpfe_driver_exit", i1 false, i1 false}
!52 = !{ptr @debug, !53, !"debug", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 65, i32 12}
!54 = !{ptr @ccdc_dev, !55, !"ccdc_dev", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 108, i32 37}
!56 = !{ptr @ccdc_cfg, !57, !"ccdc_cfg", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 112, i32 28}
!58 = !{ptr @__param_str_numbuffers, !1, !"__param_str_numbuffers", i1 false, i1 false}
!59 = !{ptr @numbuffers, !60, !"numbuffers", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 66, i32 12}
!61 = !{ptr @__param_str_bufsize, !4, !"__param_str_bufsize", i1 false, i1 false}
!62 = !{ptr @bufsize, !63, !"bufsize", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 67, i32 12}
!64 = !{ptr @__param_str_debug, !7, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 110, i32 8}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ccdc_lock, !66, !"ccdc_lock", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1895, i32 11}
!71 = !{ptr @vpfe_driver, !72, !"vpfe_driver", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1893, i32 31}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1688, i32 3}
!75 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vpfe_probe._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @vpfe_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1696, i32 3}
!80 = !{ptr @vpfe_probe._entry.19, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vpfe_probe._entry_ptr.21, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1704, i32 3}
!84 = !{ptr @vpfe_probe._entry.22, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @vpfe_probe._entry_ptr.24, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1722, i32 3}
!88 = !{ptr @vpfe_probe._entry.25, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vpfe_probe._entry_ptr.27, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1732, i32 3}
!92 = !{ptr @vpfe_probe._entry.28, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vpfe_probe._entry_ptr.30, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1740, i32 6}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1743, i32 3}
!98 = !{ptr @vpfe_probe._entry.32, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vpfe_probe._entry_ptr.34, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1756, i32 4}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1764, i32 3}
!104 = !{ptr @vpfe_probe._entry.36, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @vpfe_probe._entry_ptr.38, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1768, i32 2}
!108 = !{ptr @vpfe_probe._entry.39, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @vpfe_probe._entry_ptr.41, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @vpfe_probe.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1769, i32 2}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vpfe_probe.__key.43, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1770, i32 2}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @vpfe_probe.__key.45, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1771, i32 2}
!118 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1777, i32 2}
!121 = !{ptr @vpfe_probe._entry.47, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @vpfe_probe._entry_ptr.49, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1779, i32 2}
!125 = !{ptr @vpfe_probe._entry.50, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vpfe_probe._entry_ptr.52, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1786, i32 3}
!129 = !{ptr @vpfe_probe._entry.53, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @vpfe_probe._entry_ptr.55, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1791, i32 2}
!133 = !{ptr @vpfe_probe._entry.56, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @vpfe_probe._entry_ptr.58, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1818, i32 4}
!137 = !{ptr @vpfe_probe._entry.59, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @vpfe_probe._entry_ptr.61, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1828, i32 4}
!141 = !{ptr @vpfe_probe._entry.62, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vpfe_probe._entry_ptr.64, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 496, i32 2}
!145 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @vpfe_isr._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @vpfe_isr._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 509, i32 3}
!150 = !{ptr @vpfe_isr._entry.67, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @vpfe_isr._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 521, i32 2}
!154 = !{ptr @vpfe_isr._entry.70, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @vpfe_isr._entry_ptr.72, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @vpfe_fops, !157, !"vpfe_fops", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 707, i32 42}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 698, i32 2}
!160 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @vpfe_poll._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @vpfe_poll._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 686, i32 2}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @vpfe_mmap._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @vpfe_mmap._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 423, i32 2}
!170 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @vpfe_open._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @vpfe_open._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 426, i32 3}
!175 = !{ptr @vpfe_open._entry.79, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @vpfe_open._entry_ptr.81, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 390, i32 3}
!179 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @vpfe_initialize_device._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @vpfe_initialize_device._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 396, i32 3}
!184 = !{ptr @vpfe_initialize_device._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @vpfe_initialize_device._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 320, i32 3}
!188 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @vpfe_config_image_format._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @vpfe_config_image_format._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 351, i32 3}
!193 = !{ptr @vpfe_config_image_format._entry.89, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @vpfe_config_image_format._entry_ptr.91, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 255, i32 3}
!197 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @vpfe_config_ccdc_image_format._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @vpfe_config_ccdc_image_format._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @vpfe_standards, !201, !"vpfe_standards", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 114, i32 35}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 635, i32 2}
!204 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @vpfe_release._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @vpfe_release._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 647, i32 5}
!209 = !{ptr @vpfe_release._entry.96, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @vpfe_release._entry_ptr.98, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @vpfe_ioctl_ops, !212, !"vpfe_ioctl_ops", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1618, i32 36}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 849, i32 2}
!215 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @vpfe_querycap._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @vpfe_querycap._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 852, i32 25}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 875, i32 2}
!222 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @vpfe_enum_fmt_vid_cap._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @vpfe_enum_fmt_vid_cap._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @vpfe_pix_fmts, !226, !"vpfe_pix_fmts", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 120, i32 39}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 862, i32 2}
!229 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @vpfe_g_fmt_vid_cap._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @vpfe_g_fmt_vid_cap._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.106, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 896, i32 2}
!234 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @vpfe_s_fmt_vid_cap._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @vpfe_s_fmt_vid_cap._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 900, i32 3}
!239 = !{ptr @vpfe_s_fmt_vid_cap._entry.108, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @vpfe_s_fmt_vid_cap._entry_ptr.110, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 816, i32 2}
!243 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vpfe_check_format._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vpfe_check_format._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 838, i32 2}
!248 = !{ptr @vpfe_check_format._entry.113, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @vpfe_check_format._entry_ptr.115, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 929, i32 2}
!252 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @vpfe_try_fmt_vid_cap._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @vpfe_try_fmt_vid_cap._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1265, i32 2}
!257 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @vpfe_reqbufs._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @vpfe_reqbufs._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1268, i32 3}
!262 = !{ptr @vpfe_reqbufs._entry.120, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @vpfe_reqbufs._entry_ptr.122, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1277, i32 3}
!266 = !{ptr @vpfe_reqbufs._entry.123, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @vpfe_reqbufs._entry_ptr.125, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @vpfe_videobuf_qops, !269, !"vpfe_videobuf_qops", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1247, i32 40}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1163, i32 2}
!272 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vpfe_videobuf_setup._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @vpfe_videobuf_setup._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1171, i32 2}
!277 = !{ptr @vpfe_videobuf_setup._entry.128, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @vpfe_videobuf_setup._entry_ptr.130, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1185, i32 2}
!281 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vpfe_videobuf_prepare._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @vpfe_videobuf_prepare._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.133, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1216, i32 2}
!286 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @vpfe_videobuf_queue._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @vpfe_videobuf_queue._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.135, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1234, i32 2}
!291 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @vpfe_videobuf_release._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @vpfe_videobuf_release._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.137, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1306, i32 2}
!296 = !{ptr @.str.138, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @vpfe_querybuf._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @vpfe_querybuf._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.140, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1309, i32 3}
!301 = !{ptr @vpfe_querybuf._entry.139, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @vpfe_querybuf._entry_ptr.141, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.143, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1314, i32 3}
!305 = !{ptr @vpfe_querybuf._entry.142, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @vpfe_querybuf._entry_ptr.144, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.145, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1327, i32 2}
!309 = !{ptr @.str.146, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @vpfe_qbuf._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @vpfe_qbuf._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @vpfe_qbuf._entry.147, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1330, i32 3}
!314 = !{ptr @vpfe_qbuf._entry_ptr.148, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.150, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1339, i32 3}
!317 = !{ptr @vpfe_qbuf._entry.149, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @vpfe_qbuf._entry_ptr.151, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.152, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1350, i32 2}
!321 = !{ptr @.str.153, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @vpfe_dqbuf._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @vpfe_dqbuf._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @vpfe_dqbuf._entry.154, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1353, i32 3}
!326 = !{ptr @vpfe_dqbuf._entry_ptr.155, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.156, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1397, i32 2}
!329 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @vpfe_streamon._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @vpfe_streamon._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @vpfe_streamon._entry.158, !333, !"_entry", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1400, i32 3}
!334 = !{ptr @vpfe_streamon._entry_ptr.159, !333, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @vpfe_streamon._entry.160, !336, !"_entry", i1 false, i1 false}
!336 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1406, i32 3}
!337 = !{ptr @vpfe_streamon._entry_ptr.161, !336, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1415, i32 3}
!340 = !{ptr @vpfe_streamon._entry.162, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @vpfe_streamon._entry_ptr.164, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.166, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1421, i32 3}
!344 = !{ptr @vpfe_streamon._entry.165, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @vpfe_streamon._entry_ptr.167, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.169, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1450, i32 3}
!348 = !{ptr @vpfe_streamon._entry.168, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @vpfe_streamon._entry_ptr.170, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1456, i32 3}
!352 = !{ptr @vpfe_streamon._entry.171, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @vpfe_streamon._entry_ptr.173, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.174, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1368, i32 2}
!356 = !{ptr @.str.175, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @vpfe_calculate_offsets._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @vpfe_calculate_offsets._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.176, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 609, i32 12}
!361 = !{ptr @.str.177, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 571, i32 2}
!363 = !{ptr @.str.178, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @vdint1_isr._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @vdint1_isr._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1480, i32 2}
!368 = !{ptr @.str.180, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @vpfe_streamoff._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @vpfe_streamoff._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @vpfe_streamoff._entry.181, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1483, i32 3}
!373 = !{ptr @vpfe_streamoff._entry_ptr.182, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @vpfe_streamoff._entry.183, !375, !"_entry", i1 false, i1 false}
!375 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1489, i32 3}
!376 = !{ptr @vpfe_streamoff._entry_ptr.184, !375, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.186, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1495, i32 3}
!379 = !{ptr @vpfe_streamoff._entry.185, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @vpfe_streamoff._entry_ptr.187, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @vpfe_streamoff._entry.188, !382, !"_entry", i1 false, i1 false}
!382 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1511, i32 3}
!383 = !{ptr @vpfe_streamoff._entry_ptr.189, !382, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.190, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1148, i32 2}
!386 = !{ptr @.str.191, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @vpfe_g_std._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @vpfe_g_std._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.192, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1116, i32 2}
!391 = !{ptr @.str.193, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @vpfe_s_std._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @vpfe_s_std._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.195, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1126, i32 3}
!396 = !{ptr @vpfe_s_std._entry.194, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @vpfe_s_std._entry_ptr.196, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.198, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1134, i32 3}
!400 = !{ptr @vpfe_s_std._entry.197, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @vpfe_s_std._entry_ptr.199, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.200, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1097, i32 2}
!404 = !{ptr @.str.201, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @vpfe_querystd._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @vpfe_querystd._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.202, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 994, i32 2}
!409 = !{ptr @.str.203, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @vpfe_enum_input._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @vpfe_enum_input._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.205, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1000, i32 3}
!414 = !{ptr @vpfe_enum_input._entry.204, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @vpfe_enum_input._entry_ptr.206, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.207, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1012, i32 2}
!418 = !{ptr @.str.208, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @vpfe_g_input._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @vpfe_g_input._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.209, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1028, i32 2}
!423 = !{ptr @.str.210, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @vpfe_s_input._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @vpfe_s_input._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.212, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1039, i32 3}
!428 = !{ptr @vpfe_s_input._entry.211, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @vpfe_s_input._entry_ptr.213, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.215, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1048, i32 3}
!432 = !{ptr @vpfe_s_input._entry.214, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @vpfe_s_input._entry_ptr.216, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.218, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1067, i32 3}
!436 = !{ptr @vpfe_s_input._entry.217, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @vpfe_s_input._entry_ptr.219, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.220, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1522, i32 2}
!440 = !{ptr @.str.221, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @vpfe_g_pixelaspect._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @vpfe_g_pixelaspect._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.222, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1539, i32 2}
!445 = !{ptr @.str.223, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @vpfe_g_selection._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @vpfe_g_selection._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.224, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1566, i32 2}
!450 = !{ptr @.str.225, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @vpfe_s_selection._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @vpfe_s_selection._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.227, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1574, i32 3}
!455 = !{ptr @vpfe_s_selection._entry.226, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @vpfe_s_selection._entry_ptr.228, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.230, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1584, i32 3}
!459 = !{ptr @vpfe_s_selection._entry.229, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @vpfe_s_selection._entry_ptr.231, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.233, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1598, i32 3}
!463 = !{ptr @vpfe_s_selection._entry.232, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @vpfe_s_selection._entry_ptr.234, !462, !"_entry_ptr", i1 false, i1 false}
!465 = distinct !{null, !466, !"config_params", i1 false, i1 false}
!466 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 100, i32 34}
!467 = !{ptr @.str.235, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1867, i32 2}
!469 = !{ptr @.str.236, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @vpfe_remove._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @vpfe_remove._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @vpfe_dev_pm_ops, !473, !"vpfe_dev_pm_ops", i1 false, i1 false}
!473 = !{!"../drivers/media/platform/davinci/vpfe_capture.c", i32 1888, i32 32}
!474 = !{i32 1, !"wchar_size", i32 2}
!475 = !{i32 1, !"min_enum_size", i32 4}
!476 = !{i32 8, !"branch-target-enforcement", i32 0}
!477 = !{i32 8, !"sign-return-address", i32 0}
!478 = !{i32 8, !"sign-return-address-all", i32 0}
!479 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!480 = !{i32 7, !"uwtable", i32 1}
!481 = !{i32 7, !"frame-pointer", i32 2}
!482 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!483 = !{!"branch_weights", i32 1, i32 2000}
!484 = !{!"auto-init"}
