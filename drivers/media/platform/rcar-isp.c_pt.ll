; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar-isp.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-isp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_isp_format = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rcar_isp = type { ptr, ptr, ptr, i32, %struct.v4l2_subdev, [9 x %struct.media_pad], %struct.v4l2_async_notifier, ptr, %struct.mutex, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__initcall__kmod_rcar_isp__296_511_rcar_isp_driver_init6 = internal global ptr @rcar_isp_driver_init, section ".initcall6.init", align 4
@rcar_isp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @risp_probe, ptr @risp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @risp_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_isp_driver_exit = internal global ptr @rcar_isp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [66 x i8] c"rcar_isp.author=Niklas S\C3\B6derlund <niklas.soderlund@ragnatech.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [63 x i8] c"rcar_isp.description=Renesas R-Car ISP Channel Selector driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [46 x i8] c"rcar_isp.file=drivers/media/platform/rcar-isp\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"rcar_isp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar-isp\00", [23 x i8] zeroinitializer }, align 32
@risp_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-isp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@risp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&isp->lock\00", [21 x i8] zeroinitializer }, align 32
@risp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 436, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get resources\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"risp_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/platform/rcar-isp.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@risp_probe._entry_ptr = internal global ptr @risp_probe._entry, section ".printk_index", align 4
@rcar_isp_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @risp_video_ops, ptr null, ptr null, ptr null, ptr @risp_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_isp\00", [23 x i8] zeroinitializer }, align 32
@risp_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@risp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 472, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Using CSI-2 input: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@risp_probe._entry_ptr.12 = internal global ptr @risp_probe._entry.9, section ".printk_index", align 4
@risp_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not connected to subdevice\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"risp_parse_dt\00", [18 x i8] zeroinitializer }, align 32
@risp_parse_dt._entry_ptr = internal global ptr @risp_parse_dt._entry, section ".printk_index", align 4
@risp_parse_dt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Found '%pOF'\0A\00", [18 x i8] zeroinitializer }, align 32
@risp_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @risp_notify_bound, ptr null, ptr @risp_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@risp_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find pad for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"risp_notify_bound\00", [46 x i8] zeroinitializer }, align 32
@risp_notify_bound._entry_ptr = internal global ptr @risp_notify_bound._entry, section ".printk_index", align 4
@risp_notify_bound.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bound %s pad: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@risp_notify_unbind.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"risp_notify_unbind\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Unbind %s\0A\00", [21 x i8] zeroinitializer }, align 32
@risp_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @risp_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@risp_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr @risp_get_pad_format, ptr @risp_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_subdev_link_validate_default, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@risp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported bus format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"risp_start\00", [21 x i8] zeroinitializer }, align 32
@risp_start._entry_ptr = internal global ptr @risp_start._entry, section ".printk_index", align 4
@risp_start._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to power on ISP\0A\00", [40 x i8] zeroinitializer }, align 32
@risp_start._entry_ptr.25 = internal global ptr @risp_start._entry.23, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rcar_isp_formats = internal constant { [6 x %struct.rcar_isp_format], [56 x i8] } { [6 x %struct.rcar_isp_format] [%struct.rcar_isp_format { i32 4106, i32 36, i32 21 }, %struct.rcar_isp_format { i32 8202, i32 43, i32 16 }, %struct.rcar_isp_format { i32 8207, i32 30, i32 12 }, %struct.rcar_isp_format { i32 8209, i32 30, i32 12 }, %struct.rcar_isp_format { i32 8198, i32 30, i32 12 }, %struct.rcar_isp_format { i32 8203, i32 30, i32 12 }], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4106, i64 8198, i64 8202, i64 8203, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 4106, i64 8198, i64 8202, i64 8203, i64 8207, i64 8209]
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"rcar_isp_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 502, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 504, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"risp_of_id_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 414, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 432, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 436, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"rcar_isp_subdev_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 298, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 452, i32 52 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 453, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"risp_entity_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 395, i32 45 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 472, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 363, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 373, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"risp_notify_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 342, i32 52 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 317, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 323, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 339, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"risp_video_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 246, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"risp_pad_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 292, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 162, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 168, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"rcar_isp_formats\00", align 1
@___asan_gen_.137 = private constant [37 x i8] c"../drivers/media/platform/rcar-isp.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 53, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 998, i32 6 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_rcar_isp_driver_exit, ptr @__initcall__kmod_rcar_isp__296_511_rcar_isp_driver_init6, ptr @rcar_isp_driver_exit, ptr @risp_notify_bound._entry, ptr @risp_notify_bound._entry_ptr, ptr @risp_parse_dt._entry, ptr @risp_parse_dt._entry_ptr, ptr @risp_probe._entry, ptr @risp_probe._entry.9, ptr @risp_probe._entry_ptr, ptr @risp_probe._entry_ptr.12, ptr @risp_start._entry, ptr @risp_start._entry.23, ptr @risp_start._entry_ptr, ptr @risp_start._entry_ptr.25, ptr @rcar_isp_driver, ptr @.str, ptr @risp_of_id_table, ptr @risp_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rcar_isp_subdev_ops, ptr @.str.7, ptr @.str.8, ptr @risp_entity_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @risp_notify_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @risp_video_ops, ptr @risp_pad_ops, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @rcar_isp_formats, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_isp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_isp_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @risp_start._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_isp_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_isp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_isp_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_isp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_isp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 696, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @risp_probe.__key) #7
  %call.i94 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call1.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call.i94) #7
  %base.i = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.risp_probe_resources.exit_crit_edge, label %if.end.i

if.end.risp_probe_resources.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %risp_probe_resources.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc.i = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i.i, ptr %rstc.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.risp_probe_resources.exit_crit_edge, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i.risp_probe_resources.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %risp_probe_resources.exit

risp_probe_resources.exit:                        ; preds = %if.end.i.risp_probe_resources.exit_crit_edge, %if.end.risp_probe_resources.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i.i, %if.end.i.risp_probe_resources.exit_crit_edge ], [ %call1.i, %if.end.risp_probe_resources.exit_crit_edge ]
  %tobool4.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool4.not, label %risp_probe_resources.exit.if.end10_crit_edge, label %do.end8

risp_probe_resources.exit.if.end10_crit_edge:     ; preds = %risp_probe_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end8:                                          ; preds = %risp_probe_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  br label %error_mutex

if.end10:                                         ; preds = %risp_probe_resources.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call12 = tail call fastcc i32 @risp_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.error_pm_crit_edge

if.end10.error_pm_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_pm

if.end15:                                         ; preds = %if.end10
  %subdev = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4
  %owner = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 4
  %dev18 = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 14
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev18, align 4
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @rcar_isp_subdev_ops) #7
  %dev_priv.i = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 11
  %8 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i95, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i95:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i95, %if.end15.dev_name.exit_crit_edge
  %retval.0.i96 = phi ptr [ %12, %if.end.i95 ], [ %10, %if.end15.dev_name.exit_crit_edge ]
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i96)
  %flags = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %flags, align 4
  %function = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %14 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20481, ptr %function, align 4
  %ops = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 4, i32 0, i32 11
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @risp_entity_ops, ptr %ops, align 4
  %flags30 = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 0, i32 4
  %16 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags30, align 4
  %flags33 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 1, i32 4
  %17 = ptrtoint ptr %flags33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %flags33, align 4
  %flags33.1 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 2, i32 4
  %18 = ptrtoint ptr %flags33.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags33.1, align 4
  %flags33.2 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 3, i32 4
  %19 = ptrtoint ptr %flags33.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %flags33.2, align 4
  %flags33.3 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 4, i32 4
  %20 = ptrtoint ptr %flags33.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %flags33.3, align 4
  %flags33.4 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 5, i32 4
  %21 = ptrtoint ptr %flags33.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %flags33.4, align 4
  %flags33.5 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 6, i32 4
  %22 = ptrtoint ptr %flags33.5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %flags33.5, align 4
  %flags33.6 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 7, i32 4
  %23 = ptrtoint ptr %flags33.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %flags33.6, align 4
  %flags33.7 = getelementptr %struct.rcar_isp, ptr %call.i, i32 0, i32 5, i32 8, i32 4
  %24 = ptrtoint ptr %flags33.7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags33.7, align 4
  %pads = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 5
  %call38 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 9, ptr noundef %pads) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %dev_name.exit.error_notifier_crit_edge

dev_name.exit.error_notifier_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_notifier

if.end41:                                         ; preds = %dev_name.exit
  %call43 = tail call i32 @v4l2_async_register_subdev(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.error_notifier_crit_edge, label %do.end49

if.end41.error_notifier_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_notifier

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %csi_input = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %csi_input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csi_input, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %28) #10
  br label %cleanup

error_notifier:                                   ; preds = %if.end41.error_notifier_crit_edge, %dev_name.exit.error_notifier_crit_edge
  %ret.0 = phi i32 [ %call38, %dev_name.exit.error_notifier_crit_edge ], [ %call43, %if.end41.error_notifier_crit_edge ]
  %notifier = getelementptr inbounds %struct.rcar_isp, ptr %call.i, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  br label %error_pm

error_pm:                                         ; preds = %error_notifier, %if.end10.error_pm_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end10.error_pm_crit_edge ], [ %ret.0, %error_notifier ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %error_mutex

error_mutex:                                      ; preds = %error_pm, %do.end8
  %ret.2 = phi i32 [ %retval.0.i, %do.end8 ], [ %ret.1, %error_pm ]
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %error_mutex, %do.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_mutex ], [ 0, %do.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.rcar_isp, ptr %1, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  %subdev = getelementptr inbounds %struct.rcar_isp, ptr %1, i32 0, i32 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %subdev) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %lock = getelementptr inbounds %struct.rcar_isp, ptr %1, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @risp_parse_dt(ptr noundef %isp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp, align 4
  %call = tail call ptr @dev_fwnode(ptr noundef %1) #7
  %call1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.inc, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc:                                          ; preds = %entry
  %2 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp, align 4
  %call.1 = tail call ptr @dev_fwnode(ptr noundef %3) #7
  %call1.1 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call.1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  %tobool.not.1 = icmp eq ptr %call1.1, null
  br i1 %tobool.not.1, label %for.inc.1, label %if.then7

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.then7:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %csi_input = getelementptr inbounds %struct.rcar_isp, ptr %isp, i32 0, i32 3
  %6 = ptrtoint ptr %csi_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %csi_input, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %call1.lcssa76 = phi ptr [ %call1.1, %if.then7 ], [ %call1, %entry.if.end8_crit_edge ]
  %call9 = tail call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %call1.lcssa76) #7
  tail call void @fwnode_handle_put(ptr noundef nonnull %call1.lcssa76) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @risp_parse_dt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@risp_parse_dt, %if.then15)) #7
          to label %do.end22 [label %if.then15], !srcloc !88

if.then15:                                        ; preds = %if.end8
  %7 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp, align 4
  %tobool.not.i.i = icmp eq ptr %call9, null
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then15.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.then15.is_of_node.exit.thread_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %10, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %call9, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.then15.is_of_node.exit.thread_crit_edge
  %11 = phi ptr [ null, %if.then15.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @risp_parse_dt.__UNIQUE_ID_ddebug295, ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %11) #7
  br label %do.end22

do.end22:                                         ; preds = %is_of_node.exit.thread, %if.end8
  %notifier = getelementptr inbounds %struct.rcar_isp, ptr %isp, i32 0, i32 6
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #7
  %12 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @risp_notify_ops, ptr %notifier, align 4
  %call25 = tail call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %call9, i32 noundef 28) #7
  tail call void @fwnode_handle_put(ptr noundef %call9) #7
  %cmp.i60 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %do.end22
  %subdev = getelementptr inbounds %struct.rcar_isp, ptr %isp, i32 0, i32 4
  %call31 = tail call i32 @v4l2_async_subdev_nf_register(ptr noundef %subdev, ptr noundef %notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.then33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29.cleanup_crit_edge, %if.then27, %for.inc.1
  %retval.0 = phi i32 [ %13, %if.then27 ], [ -22, %for.inc.1 ], [ %call31, %if.then33 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_notify_bound(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -500
  %match = getelementptr inbounds %struct.v4l2_async_subdev, ptr %asd, i32 0, i32 1
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %call1 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote = getelementptr i8, ptr %notifier, i32 48
  %4 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %subdev, ptr %remote, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @risp_notify_bound.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@risp_notify_bound, %if.then6)) #7
          to label %do.end12 [label %if.then6], !srcloc !88

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %name8 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @risp_notify_bound.__UNIQUE_ID_ddebug293, ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %name8, i32 noundef %call1) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %if.end
  %conv = trunc i32 %call1 to i16
  %subdev14 = getelementptr i8, ptr %notifier, i32 -484
  %call16 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %subdev14, i16 noundef zeroext 0, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call16, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @risp_notify_unbind(ptr nocapture noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remote = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %remote, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @risp_notify_unbind.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@risp_notify_unbind, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -500
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @risp_notify_unbind.__UNIQUE_ID_ddebug294, ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %lock = getelementptr i8, ptr %sd, i32 536
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %remote = getelementptr i8, ptr %sd, i32 532
  %0 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  %stream_count9 = getelementptr i8, ptr %sd, i32 676
  %2 = ptrtoint ptr %stream_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_count9, align 4
  br i1 %tobool1.not, label %land.lhs.true8.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %land.lhs.true
  %code.i = getelementptr i8, ptr %sd, i32 636
  %4 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end.i [
    i32 4106, label %if.then2.if.end.i_crit_edge
    i32 8202, label %cleanup.fold.split.i.i
    i32 8207, label %cleanup.fold.split8.i.i
    i32 8209, label %cleanup.fold.split9.i.i
    i32 8198, label %cleanup.fold.split10.i.i
    i32 8203, label %cleanup.fold.split11.i.i
  ]

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split.i.i:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split8.i.i:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split9.i.i:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split10.i.i:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split11.i.i:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21) #10
  br label %out

if.end.i:                                         ; preds = %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %if.then2.if.end.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([6 x %struct.rcar_isp_format], ptr @rcar_isp_formats, i32 0, i32 5), %cleanup.fold.split11.i.i ], [ getelementptr inbounds ([6 x %struct.rcar_isp_format], ptr @rcar_isp_formats, i32 0, i32 4), %cleanup.fold.split10.i.i ], [ getelementptr inbounds ([6 x %struct.rcar_isp_format], ptr @rcar_isp_formats, i32 0, i32 3), %cleanup.fold.split9.i.i ], [ getelementptr inbounds ([6 x %struct.rcar_isp_format], ptr @rcar_isp_formats, i32 0, i32 2), %cleanup.fold.split8.i.i ], [ getelementptr inbounds ([6 x %struct.rcar_isp_format], ptr @rcar_isp_formats, i32 0, i32 1), %cleanup.fold.split.i.i ], [ @rcar_isp_formats, %if.then2.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #7, !srcloc !90
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.do.end6.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.do.end6.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  br label %do.end6.i

if.end.i.i:                                       ; preds = %if.end.i
  %rstc.i.i = getelementptr i8, ptr %sd, i32 -8
  %12 = ptrtoint ptr %rstc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rstc.i.i, align 4
  %call1.i.i = tail call i32 @reset_control_deassert(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end8.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %call.i12.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #7
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then3.i.i, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.do.end6.i_crit_edge
  %retval.0.i117.ph.i = phi i32 [ %call.i.i.i, %do.end11.i.i.i.i.i.i.i ], [ %call.i.i.i, %if.then.i.i.i.do.end6.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.24) #10
  br label %out

if.end8.i:                                        ; preds = %if.end.i.i
  %csi_input.i = getelementptr i8, ptr %sd, i32 -4
  %18 = ptrtoint ptr %csi_input.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csi_input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  %spec.select.i = select i1 %cmp.i, i32 -2147483648, i32 0
  %base.i.i = getelementptr i8, ptr %sd, i32 -12
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !92
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %or.i = or i32 %23, %spec.select.i
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %26) #7, !srcloc !95
  %datatype.i = getelementptr inbounds %struct.rcar_isp_format, ptr %retval.0.i.ph.i, i32 0, i32 1
  %27 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %datatype.i, align 4
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %30, i32 13312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 16777216) #7, !srcloc !95
  %and.i = and i32 %28, 63
  %or32.i = mul nuw nsw i32 %and.i, 16843009
  %or35.i = add nuw nsw i32 %or32.i, -2139062144
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %32, i32 13320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %33) #7, !srcloc !95
  %34 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %datatype.i, align 4
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i121.1.i = getelementptr i8, ptr %37, i32 13568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.1.i, i32 33554432) #7, !srcloc !95
  %and.1.i = and i32 %35, 63
  %or32.1.i = mul nuw nsw i32 %and.1.i, 16843009
  %or35.1.i = add nuw nsw i32 %or32.1.i, -2139062144
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i123.1.i = getelementptr i8, ptr %39, i32 13576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or35.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.1.i, i32 %40) #7, !srcloc !95
  %41 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %datatype.i, align 4
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i121.2.i = getelementptr i8, ptr %44, i32 13824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.2.i, i32 67108864) #7, !srcloc !95
  %and.2.i = and i32 %42, 63
  %or32.2.i = mul nuw nsw i32 %and.2.i, 16843009
  %or35.2.i = add nuw nsw i32 %or32.2.i, -2139062144
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i123.2.i = getelementptr i8, ptr %46, i32 13832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or35.2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.2.i, i32 %47) #7, !srcloc !95
  %48 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %datatype.i, align 4
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i121.3.i = getelementptr i8, ptr %51, i32 14080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.3.i, i32 134217728) #7, !srcloc !95
  %and.3.i = and i32 %49, 63
  %or32.3.i = mul nuw nsw i32 %and.3.i, 16843009
  %or35.3.i = add nuw nsw i32 %or32.3.i, -2139062144
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i123.3.i = getelementptr i8, ptr %53, i32 14088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or35.3.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.3.i, i32 %54) #7, !srcloc !95
  %55 = ptrtoint ptr %datatype.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %datatype.i, align 4
  %mul37.i = shl i32 %56, 2
  %add38.i = add i32 %mul37.i, 4352
  %procmode.i = getelementptr inbounds %struct.rcar_isp_format, ptr %retval.0.i.ph.i, i32 0, i32 2
  %57 = ptrtoint ptr %procmode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %procmode.i, align 4
  %and39.i = and i32 %58, 63
  %or51.i = mul nuw nsw i32 %and39.i, 16843009
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %60, i32 %add38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or51.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %61) #7, !srcloc !95
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %63, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 -65536) #7, !srcloc !95
  %64 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %remote, align 4
  %tobool52.not.i = icmp eq ptr %65, null
  br i1 %tobool52.not.i, label %if.end8.i.if.then76.i_crit_edge, label %if.else.i

if.end8.i.if.then76.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i

if.else.i:                                        ; preds = %if.end8.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %video.i, align 4
  %tobool54.not.i = icmp eq ptr %69, null
  br i1 %tobool54.not.i, label %if.else.i.if.then76.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then76.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_stream.i, align 4
  %tobool57.not.i = icmp eq ptr %71, null
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.then76.i_crit_edge, label %if.else59.i

land.lhs.true.i.if.then76.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i

if.else59.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool60.not.i = icmp eq ptr %72, null
  br i1 %tobool60.not.i, label %if.else59.i.if.else67.i_crit_edge, label %land.lhs.true61.i

if.else59.i.if.else67.i_crit_edge:                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else67.i

land.lhs.true61.i:                                ; preds = %if.else59.i
  %s_stream62.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %s_stream62.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_stream62.i, align 4
  %tobool63.not.i = icmp eq ptr %74, null
  br i1 %tobool63.not.i, label %land.lhs.true61.i.if.else67.i_crit_edge, label %land.lhs.true61.i.if.end74.i_crit_edge

land.lhs.true61.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

land.lhs.true61.i.if.else67.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else67.i

if.else67.i:                                      ; preds = %land.lhs.true61.i.if.else67.i_crit_edge, %if.else59.i.if.else67.i_crit_edge
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else67.i, %land.lhs.true61.i.if.end74.i_crit_edge
  %.sink.i = phi ptr [ %71, %if.else67.i ], [ %74, %land.lhs.true61.i.if.end74.i_crit_edge ]
  %call71.i = tail call i32 %.sink.i(ptr noundef nonnull %65, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool75.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool75.not.i, label %if.end74.i.if.end13_crit_edge, label %if.end74.i.if.then76.i_crit_edge

if.end74.i.if.then76.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76.i

if.end74.i.if.end13_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then76.i:                                      ; preds = %if.end74.i.if.then76.i_crit_edge, %land.lhs.true.i.if.then76.i_crit_edge, %if.else.i.if.then76.i_crit_edge, %if.end8.i.if.then76.i_crit_edge
  %__result.0138.i = phi i32 [ %call71.i, %if.end74.i.if.then76.i_crit_edge ], [ -515, %if.else.i.if.then76.i_crit_edge ], [ -515, %land.lhs.true.i.if.then76.i_crit_edge ], [ -19, %if.end8.i.if.then76.i_crit_edge ]
  %75 = ptrtoint ptr %rstc.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rstc.i.i, align 4
  %call.i.i = tail call i32 @reset_control_assert(ptr noundef %76) #7
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i129.i = tail call i32 @__pm_runtime_idle(ptr noundef %78, i32 noundef 5) #7
  br label %out

land.lhs.true8.critedge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.else.i30, label %land.lhs.true8.critedge.if.end13_crit_edge

land.lhs.true8.critedge.if.end13_crit_edge:       ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else.i30:                                      ; preds = %land.lhs.true8.critedge
  %ops.i28 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i28, align 4
  %video.i29 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %video.i29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %video.i29, align 4
  %tobool1.not.i = icmp eq ptr %82, null
  br i1 %tobool1.not.i, label %if.else.i30.risp_stop.exit_crit_edge, label %land.lhs.true.i32

if.else.i30.risp_stop.exit_crit_edge:             ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %risp_stop.exit

land.lhs.true.i32:                                ; preds = %if.else.i30
  %s_stream.i31 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %s_stream.i31 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_stream.i31, align 4
  %tobool4.not.i = icmp eq ptr %84, null
  br i1 %tobool4.not.i, label %land.lhs.true.i32.risp_stop.exit_crit_edge, label %if.else6.i

land.lhs.true.i32.risp_stop.exit_crit_edge:       ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %risp_stop.exit

if.else6.i:                                       ; preds = %land.lhs.true.i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not.i = icmp eq ptr %85, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %s_stream9.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %s_stream9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_stream9.i, align 4
  %tobool10.not.i = icmp eq ptr %87, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i33 = phi ptr [ %84, %if.else13.i ], [ %87, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i33(ptr noundef nonnull %1, i32 noundef 0) #7
  br label %risp_stop.exit

risp_stop.exit:                                   ; preds = %if.end19.sink.split.i, %land.lhs.true.i32.risp_stop.exit_crit_edge, %if.else.i30.risp_stop.exit_crit_edge
  %base.i.i34 = getelementptr i8, ptr %sd, i32 -12
  %88 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %89, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 0) #7, !srcloc !95
  %rstc.i.i36 = getelementptr i8, ptr %sd, i32 -8
  %90 = ptrtoint ptr %rstc.i.i36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rstc.i.i36, align 4
  %call.i.i37 = tail call i32 @reset_control_assert(ptr noundef %91) #7
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i38 = tail call i32 @__pm_runtime_idle(ptr noundef %93, i32 noundef 5) #7
  br label %if.end13

if.end13:                                         ; preds = %risp_stop.exit, %land.lhs.true8.critedge.if.end13_crit_edge, %if.end74.i.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %cond = phi i32 [ 1, %if.end74.i.if.end13_crit_edge ], [ 1, %land.lhs.true.if.end13_crit_edge ], [ -1, %land.lhs.true8.critedge.if.end13_crit_edge ], [ -1, %risp_stop.exit ]
  %stream_count15 = getelementptr i8, ptr %sd, i32 676
  %94 = ptrtoint ptr %stream_count15 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stream_count15, align 4
  %add = add i32 %95, %cond
  store i32 %add, ptr %stream_count15, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.then76.i, %do.end6.i, %do.end.i, %entry.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end13 ], [ -19, %entry.out_crit_edge ], [ %__result.0138.i, %if.then76.i ], [ -22, %do.end.i ], [ %retval.0.i117.ph.i, %do.end6.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_get_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 536
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mf = getelementptr i8, ptr %sd, i32 628
  br label %if.end

if.else:                                          ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !96

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_state, align 4
  br label %if.end

if.end:                                           ; preds = %v4l2_subdev_get_try_format.exit, %if.then
  %.sink = phi ptr [ %5, %v4l2_subdev_get_try_format.exit ], [ %mf, %if.then ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %format1, ptr %.sink, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @risp_set_pad_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 536
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %if.then [
    i32 4106, label %entry.if.end_crit_edge
    i32 8202, label %entry.if.end_crit_edge20
    i32 8207, label %entry.if.end_crit_edge21
    i32 8209, label %entry.if.end_crit_edge22
    i32 8198, label %entry.if.end_crit_edge23
    i32 8203, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4106, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mf = getelementptr i8, ptr %sd, i32 628
  br label %if.end9

if.else:                                          ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.v4l2_subdev_get_try_format.exit_crit_edge, !prof !96

if.else.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.else.v4l2_subdev_get_try_format.exit_crit_edge
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  br label %if.end9

if.end9:                                          ; preds = %v4l2_subdev_get_try_format.exit, %if.then5
  %.sink = phi ptr [ %9, %v4l2_subdev_get_try_format.exit ], [ %mf, %if.then5 ]
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %.sink, ptr %format1, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_rcar_isp__296_511_rcar_isp_driver_init6, !1, !"__initcall__kmod_rcar_isp__296_511_rcar_isp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar-isp.c", i32 511, i32 1}
!2 = !{ptr @__exitcall_rcar_isp_driver_exit, !1, !"__exitcall_rcar_isp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar-isp.c", i32 513, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar-isp.c", i32 514, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/rcar-isp.c", i32 515, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rcar-isp.c", i32 504, i32 11}
!12 = !{ptr @rcar_isp_driver, !13, !"rcar_isp_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar-isp.c", i32 502, i32 31}
!14 = !{ptr @risp_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar-isp.c", i32 432, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/rcar-isp.c", i32 436, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @risp_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @risp_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rcar-isp.c", i32 452, i32 52}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rcar-isp.c", i32 453, i32 4}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rcar-isp.c", i32 472, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @risp_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @risp_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rcar-isp.c", i32 363, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @risp_parse_dt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @risp_parse_dt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/rcar-isp.c", i32 373, i32 2}
!41 = !{ptr @risp_parse_dt.__UNIQUE_ID_ddebug295, !40, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!42 = !{ptr @risp_notify_ops, !43, !"risp_notify_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rcar-isp.c", i32 342, i32 52}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/rcar-isp.c", i32 317, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @risp_notify_bound._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @risp_notify_bound._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/rcar-isp.c", i32 323, i32 2}
!51 = !{ptr @risp_notify_bound.__UNIQUE_ID_ddebug293, !50, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/rcar-isp.c", i32 339, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @risp_notify_unbind.__UNIQUE_ID_ddebug294, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!56 = !{ptr @rcar_isp_subdev_ops, !57, !"rcar_isp_subdev_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/rcar-isp.c", i32 298, i32 37}
!58 = !{ptr @risp_video_ops, !59, !"risp_video_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/rcar-isp.c", i32 246, i32 43}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/rcar-isp.c", i32 162, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @risp_start._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @risp_start._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rcar-isp.c", i32 168, i32 3}
!67 = !{ptr @risp_start._entry.23, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @risp_start._entry_ptr.25, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @rcar_isp_formats, !70, !"rcar_isp_formats", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/rcar-isp.c", i32 53, i32 37}
!71 = !{ptr @risp_pad_ops, !72, !"risp_pad_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/rcar-isp.c", i32 292, i32 41}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!75 = !{ptr @risp_entity_ops, !76, !"risp_entity_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/rcar-isp.c", i32 395, i32 45}
!77 = !{ptr @risp_of_id_table, !78, !"risp_of_id_table", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rcar-isp.c", i32 414, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148964003, i64 2148964008, i64 2148964021, i64 2148964065, i64 2148964099, i64 2148964120}
!89 = !{i64 2148350045}
!90 = !{i64 835665, i64 835690, i64 835712, i64 835728, i64 835740, i64 835760, i64 835784, i64 835800, i64 835812}
!91 = !{i64 2148350233}
!92 = !{i64 7358370}
!93 = !{i64 2154891229}
!94 = !{i64 2154892584}
!95 = !{i64 7357952}
!96 = !{!"branch_weights", i32 1, i32 2000}
