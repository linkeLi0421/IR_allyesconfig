; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-timb.c_pt.bc'
source_filename = "../drivers/media/radio/radio-timb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.timbradio = type { %struct.timb_radio_platform_data, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.mutex }
%struct.timb_radio_platform_data = type { i32, ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_radio_timb__292_171_timbradio_platform_driver_init6 = internal global ptr @timbradio_platform_driver_init, section ".initcall6.init", align 4
@timbradio_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @timbradio_probe, ptr @timbradio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_timbradio_platform_driver_exit = internal global ptr @timbradio_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [47 x i8] c"radio_timb.description=Timberdale Radio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [61 x i8] c"radio_timb.author=Mocean Laboratories <info@mocean-labs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [47 x i8] c"radio_timb.file=drivers/media/radio/radio-timb\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [26 x i8] c"radio_timb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version297 = internal constant [25 x i8] c"radio_timb.version=0.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radio_timb\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias298 = internal constant [37 x i8] c"radio_timb.alias=platform:timb-radio\00", section ".modinfo", align 1
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timb-radio\00", [21 x i8] zeroinitializer }, align 32
@timbradio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 94, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timbradio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/radio/radio-timb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@timbradio_probe._entry_ptr = internal global ptr @timbradio_probe._entry, section ".printk_index", align 4
@timbradio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tr->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Timberdale Radio\00", [47 x i8] zeroinitializer }, align 32
@timbradio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@timbradio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @timbradio_vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timbradio_vidioc_g_tuner, ptr @timbradio_vidioc_s_tuner, ptr @timbradio_vidioc_g_frequency, ptr @timbradio_vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@timbradio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Error reg video\0A\00", [47 x i8] zeroinitializer }, align 32
@timbradio_probe._entry_ptr.13 = internal global ptr @timbradio_probe._entry.11, section ".printk_index", align 4
@timbradio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 149, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to register: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@timbradio_probe._entry_ptr.16 = internal global ptr @timbradio_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:timb-radio\00", [44 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"timbradio_platform_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 163, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 176, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 165, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 94, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 106, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 108, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"timbradio_fops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 79, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"timbradio_ioctl_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 68, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 137, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 149, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [36 x i8] c"../drivers/media/radio/radio-timb.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 36, i32 45 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_version297, ptr @__exitcall_timbradio_platform_driver_exit, ptr @__initcall__kmod_radio_timb__292_171_timbradio_platform_driver_init6, ptr @__modver_attr, ptr @timbradio_platform_driver_exit, ptr @timbradio_probe._entry, ptr @timbradio_probe._entry.11, ptr @timbradio_probe._entry.14, ptr @timbradio_probe._entry_ptr, ptr @timbradio_probe._entry_ptr.13, ptr @timbradio_probe._entry_ptr.16, ptr @timbradio_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @timbradio_probe.__key, ptr @.str.9, ptr @.str.10, ptr @timbradio_fops, ptr @timbradio_ioctl_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbradio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @timbradio_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @timbradio_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @timbradio_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %do.end59

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1600, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.do.end59_crit_edge, label %if.end5

if.end.do.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59

if.end5:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %call.i, ptr %1, i32 12)
  %lock = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @timbradio_probe.__key) #4
  %video_dev = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3
  %name = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 12
  %call10 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef 32) #4
  %fops = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @timbradio_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @timbradio_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 23
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @video_device_release_empty, ptr %release, align 8
  %minor = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %minor, align 8
  %lock17 = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 26
  %7 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lock, ptr %lock17, align 8
  %device_caps = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327680, ptr %device_caps, align 8
  %v4l2_dev = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 4
  %name19 = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 4, i32 4
  %call21 = tail call i32 @strscpy(ptr noundef %name19, ptr noundef nonnull @.str.3, i32 noundef 36) #4
  %call23 = tail call i32 @v4l2_device_register(ptr noundef null, ptr noundef %v4l2_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end5.do.end59_crit_edge

if.end5.do.end59_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59

if.end26:                                         ; preds = %if.end5
  %v4l2_dev29 = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %v4l2_dev29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %v4l2_dev, ptr %v4l2_dev29, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %call31 = tail call ptr @i2c_get_adapter(i32 noundef %11) #4
  %tuner = getelementptr inbounds %struct.timb_radio_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner, align 4
  %call32 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %call31, ptr noundef %13, ptr noundef null) #4
  %sd_tuner = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %sd_tuner, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %call35 = tail call ptr @i2c_get_adapter(i32 noundef %16) #4
  %dsp = getelementptr inbounds %struct.timb_radio_platform_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsp, align 4
  %call36 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %call35, ptr noundef %18, ptr noundef null) #4
  %sd_dsp = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %sd_dsp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %sd_dsp, align 8
  %20 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_tuner, align 4
  %cmp = icmp eq ptr %21, null
  %cmp39 = icmp eq ptr %call36, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp39
  br i1 %or.cond, label %if.end26.err_video_req_crit_edge, label %if.end41

if.end26.err_video_req_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_video_req

if.end41:                                         ; preds = %if.end26
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call36, i32 0, i32 8
  %22 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler44 = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %ctrl_handler44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %ctrl_handler44, align 4
  %25 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i103 = tail call i32 @__video_register_device(ptr noundef %video_dev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool47.not = icmp eq i32 %call.i103, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %err_video_req

if.end53:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.timbradio, ptr %call.i, i32 0, i32 3, i32 5, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i104 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i104 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i104, align 4
  br label %cleanup

err_video_req:                                    ; preds = %do.end51, %if.end26.err_video_req_crit_edge
  %err.0 = phi i32 [ %call.i103, %do.end51 ], [ -19, %if.end26.err_video_req_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #4
  br label %do.end59

do.end59:                                         ; preds = %err_video_req, %if.end5.do.end59_crit_edge, %if.end.do.end59_crit_edge, %do.end
  %err.1 = phi i32 [ %call23, %if.end5.do.end59_crit_edge ], [ %err.0, %err_video_req ], [ -22, %do.end ], [ -12, %if.end.do.end59_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %err.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end53
  %retval.0 = phi i32 [ %err.1, %do.end59 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %video_dev = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %video_dev) #4
  %v4l2_dev = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 4
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.3, i32 noundef 16) #4
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.10, i32 noundef 32) #4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %bus_info, ptr @.str.17, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd_tuner = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_tuner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_tuner, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_tuner9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %g_tuner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_tuner9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %v) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd_tuner = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_tuner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_tuner, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_tuner9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_tuner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_tuner9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %v) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd_tuner = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_tuner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %g_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %f) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbradio_vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %sd_tuner = getelementptr inbounds %struct.timbradio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_tuner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %f) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_radio_timb__292_171_timbradio_platform_driver_init6, !1, !"__initcall__kmod_radio_timb__292_171_timbradio_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-timb.c", i32 171, i32 1}
!2 = !{ptr @__exitcall_timbradio_platform_driver_exit, !1, !"__exitcall_timbradio_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/radio-timb.c", i32 173, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/radio-timb.c", i32 174, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-timb.c", i32 175, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version297, !11, !"__UNIQUE_ID_version297", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/radio-timb.c", i32 176, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias298, !17, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-timb.c", i32 177, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-timb.c", i32 165, i32 11}
!20 = !{ptr @timbradio_platform_driver, !21, !"timbradio_platform_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/radio-timb.c", i32 163, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-timb.c", i32 94, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @timbradio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @timbradio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @timbradio_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-timb.c", i32 106, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-timb.c", i32 108, i32 30}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-timb.c", i32 137, i32 3}
!37 = !{ptr @timbradio_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @timbradio_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-timb.c", i32 149, i32 2}
!41 = !{ptr @timbradio_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @timbradio_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @timbradio_fops, !44, !"timbradio_fops", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-timb.c", i32 79, i32 42}
!45 = !{ptr @timbradio_ioctl_ops, !46, !"timbradio_ioctl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-timb.c", i32 68, i32 36}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-timb.c", i32 36, i32 45}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
