; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/delta/delta-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.delta_dec = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.delta_frameinfo, i8, i32, ptr, i32, i32, i32, i64, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.91, i32 }
%union.anon.91 = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.delta_au = type { %struct.vb2_v4l2_buffer, %struct.list_head, i8, i32, ptr, i32, i32, i64 }
%struct.delta_dts = type { %struct.list_head, i64 }
%struct.v4l2_event = type { i32, %union.anon.118, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.118 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.119, i32, i32, i32, i32, i32 }
%union.anon.119 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105, [56 x i8] }
%struct.anon.105 = type { i64 }

@delta_get_free_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s no frame available\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_get_free_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/sti/delta/delta-v4l2.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@delta_get_free_frame._entry_ptr = internal global ptr @delta_get_free_frame._entry, section ".printk_index", align 4
@delta_get_free_frame._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s frame[%d] is not free\0A\00", [38 x i8] zeroinitializer }, align 32
@delta_get_free_frame._entry_ptr.7 = internal global ptr @delta_get_free_frame._entry.5, section ".printk_index", align 4
@delta_get_free_frame.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 1, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_delta\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s get free frame[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@delta_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s pm_runtime_resume_and_get failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"delta_get_sync\00", [17 x i8] zeroinitializer }, align 32
@delta_get_sync._entry_ptr = internal global ptr @delta_get_sync._entry, section ".printk_index", align 4
@__initcall__kmod_st_delta__338_1970_delta_driver_init6 = internal global ptr @delta_driver_init, section ".initcall6.init", align 4
@delta_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @delta_probe, ptr @delta_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.26, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @delta_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_delta_driver_exit = internal global ptr @delta_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file339 = internal constant [56 x i8] c"st_delta.file=drivers/media/platform/sti/delta/st-delta\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [21 x i8] c"st_delta.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [55 x i8] c"st_delta.author=Hugues Fruchet <hugues.fruchet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [72 x i8] c"st_delta.description=STMicroelectronics DELTA video decoder V4L2 driver\00", section ".modinfo", align 1
@dump_frames_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1226, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s dumping frames status...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dump_frames_status\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dump_frames_status._entry_ptr = internal global ptr @dump_frames_status._entry, section ".printk_index", align 4
@dump_frames_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1234, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s frame[%d] %s\0A\00", [47 x i8] zeroinitializer }, align 32
@dump_frames_status._entry_ptr.17 = internal global ptr @dump_frames_status._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s %s %s %s %s %s\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsy\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dec\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"m2m\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdy\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st-delta\00", [23 x i8] zeroinitializer }, align 32
@delta_match_types = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-delta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@delta_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_runtime_suspend, ptr @delta_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@delta_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&delta->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delta\00", [26 x i8] zeroinitializer }, align 32
@delta_probe.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delta_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s can't get delta clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[---:----]\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delta-st231\00", [20 x i8] zeroinitializer }, align 32
@delta_probe.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 1, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s can't get delta-st231 clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta-flash-promip\00", [45 x i8] zeroinitializer }, align 32
@delta_probe.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.35, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s can't get delta-flash-promip clock\0A\00", [57 x i8] zeroinitializer }, align 32
@delta_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 1861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s failed to initialize firmware ipc channel\0A\00", [50 x i8] zeroinitializer }, align 32
@delta_probe._entry_ptr = internal global ptr @delta_probe._entry, section ".printk_index", align 4
@delta_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.2, i32 1875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to register V4L2 device\0A\00", [61 x i8] zeroinitializer }, align 32
@delta_probe._entry_ptr.39 = internal global ptr @delta_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@delta_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.2, i32 1882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s failed to allocate work queue\0A\00", [62 x i8] zeroinitializer }, align 32
@delta_probe._entry_ptr.43 = internal global ptr @delta_probe._entry.41, section ".printk_index", align 4
@delta_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.2, i32 1893, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s %s registered as /dev/video%d\0A\00", [62 x i8] zeroinitializer }, align 32
@delta_probe._entry_ptr.46 = internal global ptr @delta_probe._entry.44, section ".printk_index", align 4
@register_decoders.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_decoders\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s failed to register %s decoder (%d maximum reached)\0A\00", [41 x i8] zeroinitializer }, align 32
@register_decoders._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 338, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %s decoder registered\0A\00", [38 x i8] zeroinitializer }, align 32
@register_decoders._entry_ptr = internal global ptr @register_decoders._entry, section ".printk_index", align 4
@mjpegdec = external dso_local constant %struct.delta_dec, align 4
@delta_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @delta_device_run, ptr @delta_job_ready, ptr @delta_job_abort }, [20 x i8] zeroinitializer }, align 32
@delta_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"delta_register_device\00", [42 x i8] zeroinitializer }, align 32
@delta_register_device._entry_ptr = internal global ptr @delta_register_device._entry, section ".printk_index", align 4
@delta_register_device._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to allocate video device\0A\00", [60 x i8] zeroinitializer }, align 32
@delta_register_device._entry_ptr.54 = internal global ptr @delta_register_device._entry.52, section ".printk_index", align 4
@delta_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @delta_open, ptr @delta_release }, [60 x i8] zeroinitializer }, align 32
@delta_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @delta_querycap, ptr @delta_enum_fmt_frame, ptr null, ptr @delta_enum_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr @delta_g_fmt_frame, ptr null, ptr @delta_g_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_s_fmt_frame, ptr null, ptr @delta_s_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_try_fmt_frame, ptr null, ptr @delta_try_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_decoder_cmd, ptr @delta_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"21.1-3\00", [25 x i8] zeroinitializer }, align 32
@delta_register_device._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.2, i32 1786, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to register video device\0A\00", [60 x i8] zeroinitializer }, align 32
@delta_register_device._entry_ptr.59 = internal global ptr @delta_register_device._entry.57, section ".printk_index", align 4
@delta_job_ready.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"delta_job_ready\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s not ready: not enough video buffers.\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_job_ready.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s not ready: not enough video capture buffers.\0A\00", [47 x i8] zeroinitializer }, align 32
@delta_job_ready.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s job not ready: aborting\0A\00", [36 x i8] zeroinitializer }, align 32
@delta_job_ready.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s job ready\0A\00", [18 x i8] zeroinitializer }, align 32
@delta_job_abort.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"delta_job_abort\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s aborting job\0A\00", [47 x i8] zeroinitializer }, align 32
@delta_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ctx->run_work)\00", [62 x i8] zeroinitializer }, align 32
@delta_open.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@delta_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1651, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delta_open\00", [21 x i8] zeroinitializer }, align 32
@delta_open._entry_ptr = internal global ptr @delta_open._entry, section ".printk_index", align 4
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%3d:----]\00", [21 x i8] zeroinitializer }, align 32
@delta_open._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.2, i32 1674, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable st231 clk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@delta_open._entry_ptr.76 = internal global ptr @delta_open._entry.73, section ".printk_index", align 4
@delta_open._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.71, ptr @.str.2, i32 1679, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable delta promip clk\0A\00", [61 x i8] zeroinitializer }, align 32
@delta_open._entry_ptr.79 = internal global ptr @delta_open._entry.77, section ".printk_index", align 4
@delta_open.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.71, ptr @.str.2, ptr @.str.80, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s decoder instance created\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@delta_run_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s no decoder opened yet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"delta_run_work\00", [17 x i8] zeroinitializer }, align 32
@delta_run_work._entry_ptr = internal global ptr @delta_run_work._entry, section ".printk_index", align 4
@delta_run_work._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 943, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s no buffer to decode\0A\00", [40 x i8] zeroinitializer }, align 32
@delta_run_work._entry_ptr.85 = internal global ptr @delta_run_work._entry.83, section ".printk_index", align 4
@delta_run_work._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s decoding failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@delta_run_work._entry_ptr.88 = internal global ptr @delta_run_work._entry.86, section ".printk_index", align 4
@delta_run_work._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 1003, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s  cannot get decoded frame (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@delta_run_work._entry_ptr.91 = internal global ptr @delta_run_work._entry.89, section ".printk_index", align 4
@delta_run_work._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.82, ptr @.str.2, i32 1009, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s  NULL decoded frame\0A\00", [40 x i8] zeroinitializer }, align 32
@delta_run_work._entry_ptr.94 = internal global ptr @delta_run_work._entry.92, section ".printk_index", align 4
@dump_au.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_au\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s dump au[%d] dts=%lld size=%d data=%*ph\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_au.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.95, ptr @.str.2, ptr @.str.97, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s dump au[%d] dts=%lld size=%d data=%*ph..%*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@delta_pop_dts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 188, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s no dts to pop ... output dts = 0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"delta_pop_dts\00", [18 x i8] zeroinitializer }, align 32
@delta_pop_dts._entry_ptr = internal global ptr @delta_pop_dts._entry, section ".printk_index", align 4
@dump_frame.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_frame\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s dump frame[%d] dts=%lld type=%s field=%s data=%*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EOS\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TB\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BT\00", [29 x i8] zeroinitializer }, align 32
@delta_vb2_au_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @delta_vb2_au_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @delta_vb2_au_prepare, ptr null, ptr null, ptr @delta_vb2_au_start_streaming, ptr @delta_vb2_au_stop_streaming, ptr @delta_vb2_au_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@delta_vb2_frame_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @delta_vb2_frame_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @delta_vb2_frame_prepare, ptr @delta_vb2_frame_finish, ptr null, ptr null, ptr @delta_vb2_frame_stop_streaming, ptr @delta_vb2_frame_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@delta_vb2_au_prepare.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_vb2_au_prepare\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s au[%d] prepared; virt=0x%p, phy=0x%pad\0A\00", [53 x i8] zeroinitializer }, align 32
@delta_vb2_au_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s failed to start streaming, no stream header buffer enqueued\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"delta_vb2_au_start_streaming\00", [35 x i8] zeroinitializer }, align 32
@delta_vb2_au_start_streaming._entry_ptr = internal global ptr @delta_vb2_au_start_streaming._entry, section ".printk_index", align 4
@delta_vb2_au_start_streaming._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 1357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s failed to start streaming, header decoding failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@delta_vb2_au_start_streaming._entry_ptr.117 = internal global ptr @delta_vb2_au_start_streaming._entry.115, section ".printk_index", align 4
@delta_vb2_au_start_streaming._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.118, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@delta_vb2_au_start_streaming.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.114, ptr @.str.2, ptr @.str.119, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s failed to start streaming, valid stream header not yet decoded\0A\00", [61 x i8] zeroinitializer }, align 32
@delta_vb2_au_start_streaming.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.114, ptr @.str.2, ptr @.str.120, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %s => %s\0A\00", [19 x i8] zeroinitializer }, align 32
@delta_open_decoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s no decoder found matching %4.4s => %4.4s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_open_decoder\00", [45 x i8] zeroinitializer }, align 32
@delta_open_decoder._entry_ptr = internal global ptr @delta_open_decoder._entry, section ".printk_index", align 4
@delta_open_decoder.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s one decoder matching %4.4s => %4.4s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[%3d:%4.4s]\00", [20 x i8] zeroinitializer }, align 32
@delta_open_decoder._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.122, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s failed to open decoder instance (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_open_decoder._entry_ptr.127 = internal global ptr @delta_open_decoder._entry.125, section ".printk_index", align 4
@delta_open_decoder.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.122, ptr @.str.2, ptr @.str.128, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s decoder opened\0A\00", [42 x i8] zeroinitializer }, align 32
@delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.129, ptr @.str.2, ptr @.str.130, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"delta_vb2_frame_queue_setup\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s num_buffers too low (%d), increasing to %d\0A\00", [49 x i8] zeroinitializer }, align 32
@delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.129, ptr @.str.2, ptr @.str.131, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s output frame count too high (%d), cut to %d\0A\00", [48 x i8] zeroinitializer }, align 32
@delta_vb2_frame_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s setup_frame() failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"delta_vb2_frame_prepare\00", [40 x i8] zeroinitializer }, align 32
@delta_vb2_frame_prepare._entry_ptr = internal global ptr @delta_vb2_frame_prepare._entry, section ".printk_index", align 4
@delta_vb2_frame_prepare.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s frame[%d] prepared; virt=0x%p, phy=0x%pad\0A\00", [50 x i8] zeroinitializer }, align 32
@delta_setup_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s frame index=%d exceeds output frame count (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delta_setup_frame\00", [46 x i8] zeroinitializer }, align 32
@delta_setup_frame._entry_ptr = internal global ptr @delta_setup_frame._entry, section ".printk_index", align 4
@delta_setup_frame._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 1154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s number of frames exceeds output frame count (%d > %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@delta_setup_frame._entry_ptr.139 = internal global ptr @delta_setup_frame._entry.137, section ".printk_index", align 4
@delta_setup_frame._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.2, i32 1161, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s frame index discontinuity detected, expected %d, got %d\0A\00", [36 x i8] zeroinitializer }, align 32
@delta_setup_frame._entry_ptr.142 = internal global ptr @delta_setup_frame._entry.140, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@delta_complete_eos.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_complete_eos\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s EOS completed\0A\00", [46 x i8] zeroinitializer }, align 32
@delta_release.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.146, ptr @.str.2, ptr @.str.147, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"delta_release\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s decoder instance released\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@delta_g_fmt_frame.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.149, ptr @.str.2, ptr @.str.150, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delta_g_fmt_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s V4L2 GET_FMT (CAPTURE): no frame information available, default to %s\0A\00", [54 x i8] zeroinitializer }, align 32
@delta_g_fmt_stream.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.151, ptr @.str.2, ptr @.str.152, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_g_fmt_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s V4L2 GET_FMT (OUTPUT): no stream information available, default to %s\0A\00", [54 x i8] zeroinitializer }, align 32
@delta_s_fmt_frame.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.153, ptr @.str.2, ptr @.str.154, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delta_s_fmt_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s V4L2 S_FMT (CAPTURE): queue busy\0A\00", [59 x i8] zeroinitializer }, align 32
@delta_s_fmt_frame.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.153, ptr @.str.2, ptr @.str.155, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s V4L2 S_FMT (CAPTURE): unsupported format %4.4s\0A\00", [45 x i8] zeroinitializer }, align 32
@delta_s_fmt_frame.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.153, ptr @.str.2, ptr @.str.156, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s V4L2 SET_FMT (CAPTURE): frameinfo updated to %s\0A\00", [44 x i8] zeroinitializer }, align 32
@delta_s_fmt_stream.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.157, ptr @.str.2, ptr @.str.158, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_s_fmt_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s V4L2 S_FMT (OUTPUT): unsupported format %4.4s\0A\00", [46 x i8] zeroinitializer }, align 32
@delta_s_fmt_stream.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.157, ptr @.str.2, ptr @.str.159, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s V4L2 S_FMT (OUTPUT): queue busy\0A\00", [60 x i8] zeroinitializer }, align 32
@delta_try_fmt_frame.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.160, ptr @.str.2, ptr @.str.161, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"delta_try_fmt_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s V4L2 TRY_FMT (CAPTURE): unsupported format %4.4s\0A\00", [43 x i8] zeroinitializer }, align 32
@delta_try_fmt_frame.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.160, ptr @.str.2, ptr @.str.162, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", [41 x i8] zeroinitializer }, align 32
@delta_try_fmt_frame.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.160, ptr @.str.2, ptr @.str.163, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit decoder alignment\0A\00", [41 x i8] zeroinitializer }, align 32
@delta_try_fmt_stream.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.164, ptr @.str.2, ptr @.str.165, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_try_fmt_stream\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s V4L2 TRY_FMT (OUTPUT): unsupported format %4.4s\0A\00", [44 x i8] zeroinitializer }, align 32
@delta_try_fmt_stream.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.164, ptr @.str.2, ptr @.str.166, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s V4L2 TRY_FMT (OUTPUT): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", [42 x i8] zeroinitializer }, align 32
@delta_try_fmt_stream.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.164, ptr @.str.2, ptr @.str.167, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s V4L2 TRY_FMT (OUTPUT): size updated %d -> %d to fit estimated size\0A\00", [57 x i8] zeroinitializer }, align 32
@delta_decoder_stop_cmd.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.168, ptr @.str.2, ptr @.str.169, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"delta_decoder_stop_cmd\00", [41 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s EOS received\0A\00", [47 x i8] zeroinitializer }, align 32
@delta_decoder_stop_cmd.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.168, ptr @.str.2, ptr @.str.170, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s drain frame[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@delta_decoder_stop_cmd.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.168, ptr @.str.2, ptr @.str.171, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s EOS delayed\0A\00", [16 x i8] zeroinitializer }, align 32
@delta_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 1939, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to prepare/enable delta clk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@delta_runtime_resume._entry_ptr = internal global ptr @delta_runtime_resume._entry, section ".printk_index", align 4
@switch.table.delta_frame_done = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.104, ptr @.str.102, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.109, ptr @.str.110], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.175 = internal global [6 x i64] [i64 4, i64 32, i64 256, i64 257, i64 258, i64 259]
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1249, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1257, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1264, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1279, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [13 x i8] c"delta_driver\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1961, i32 31 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1225, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1230, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 545, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 546, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 546, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 547, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 548, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 549, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 550, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 551, i32 33 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1965, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant [18 x i8] c"delta_match_types\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1950, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"delta_pm_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1945, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1829, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1832, i32 39 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1834, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1838, i32 39 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1840, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1844, i32 46 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1846, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1860, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1874, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1879, i32 22 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1881, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1892, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 329, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 337, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"delta_m2m_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1081, i32 34 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1759, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1767, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [11 x i8] c"delta_fops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1736, i32 42 }
@___asan_gen_.359 = private unnamed_addr constant [16 x i8] c"delta_ioctl_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 893, i32 36 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1780, i32 43 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1781, i32 16 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1785, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1059, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1065, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1071, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1075, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1047, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1643, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1644, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1650, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1665, i32 41 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1674, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1679, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1683, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 934, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 943, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 976, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1002, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1007, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 68, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 72, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 187, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 83, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 516, i32 10 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 518, i32 10 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 520, i32 10 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 522, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 523, i32 9 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 529, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 531, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 537, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant [44 x i8] c"../drivers/media/platform/sti/delta/delta.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 539, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"delta_vb2_au_ops\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1558, i32 29 }
@___asan_gen_.524 = private unnamed_addr constant [20 x i8] c"delta_vb2_frame_ops\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1568, i32 29 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1128, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1339, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1356, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1363, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1377, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 351, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 356, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 360, i32 41 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 366, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 371, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1432, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1441, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1477, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1483, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1145, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1152, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1159, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1163, i32 7 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 787, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1727, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 390, i32 49 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 463, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 434, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 655, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 669, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 702, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 616, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 624, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 558, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 575, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 583, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 504, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 524, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 531, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 813, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 830, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 861, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.720 = private constant [49 x i8] c"../drivers/media/platform/sti/delta/delta-v4l2.c\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 1939, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant [30 x i8] c"switch.table.delta_frame_done\00", align 1
@llvm.compiler.used = appending global [221 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__exitcall_delta_driver_exit, ptr @__initcall__kmod_st_delta__338_1970_delta_driver_init6, ptr @delta_driver_exit, ptr @delta_get_free_frame._entry, ptr @delta_get_free_frame._entry.5, ptr @delta_get_free_frame._entry_ptr, ptr @delta_get_free_frame._entry_ptr.7, ptr @delta_get_sync._entry, ptr @delta_get_sync._entry_ptr, ptr @delta_open._entry, ptr @delta_open._entry.73, ptr @delta_open._entry.77, ptr @delta_open._entry_ptr, ptr @delta_open._entry_ptr.76, ptr @delta_open._entry_ptr.79, ptr @delta_open_decoder._entry, ptr @delta_open_decoder._entry.125, ptr @delta_open_decoder._entry_ptr, ptr @delta_open_decoder._entry_ptr.127, ptr @delta_pop_dts._entry, ptr @delta_pop_dts._entry_ptr, ptr @delta_probe._entry, ptr @delta_probe._entry.37, ptr @delta_probe._entry.41, ptr @delta_probe._entry.44, ptr @delta_probe._entry_ptr, ptr @delta_probe._entry_ptr.39, ptr @delta_probe._entry_ptr.43, ptr @delta_probe._entry_ptr.46, ptr @delta_register_device._entry, ptr @delta_register_device._entry.52, ptr @delta_register_device._entry.57, ptr @delta_register_device._entry_ptr, ptr @delta_register_device._entry_ptr.54, ptr @delta_register_device._entry_ptr.59, ptr @delta_run_work._entry, ptr @delta_run_work._entry.83, ptr @delta_run_work._entry.86, ptr @delta_run_work._entry.89, ptr @delta_run_work._entry.92, ptr @delta_run_work._entry_ptr, ptr @delta_run_work._entry_ptr.85, ptr @delta_run_work._entry_ptr.88, ptr @delta_run_work._entry_ptr.91, ptr @delta_run_work._entry_ptr.94, ptr @delta_runtime_resume._entry, ptr @delta_runtime_resume._entry_ptr, ptr @delta_setup_frame._entry, ptr @delta_setup_frame._entry.137, ptr @delta_setup_frame._entry.140, ptr @delta_setup_frame._entry_ptr, ptr @delta_setup_frame._entry_ptr.139, ptr @delta_setup_frame._entry_ptr.142, ptr @delta_vb2_au_start_streaming._entry, ptr @delta_vb2_au_start_streaming._entry.115, ptr @delta_vb2_au_start_streaming._entry_ptr, ptr @delta_vb2_au_start_streaming._entry_ptr.117, ptr @delta_vb2_frame_prepare._entry, ptr @delta_vb2_frame_prepare._entry_ptr, ptr @dump_frames_status._entry, ptr @dump_frames_status._entry.15, ptr @dump_frames_status._entry_ptr, ptr @dump_frames_status._entry_ptr.17, ptr @register_decoders._entry, ptr @register_decoders._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @delta_driver, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @delta_match_types, ptr @delta_pm_ops, ptr @delta_probe.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @delta_m2m_ops, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @delta_fops, ptr @delta_ioctl_ops, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @delta_open.__key, ptr @.str.67, ptr @delta_open.__key.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @delta_vb2_au_ops, ptr @delta_vb2_frame_ops, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @delta_vb2_au_start_streaming._rs, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @switch.table.delta_frame_done], section "llvm.metadata"
@0 = internal global [183 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_get_free_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_get_free_frame._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_frames_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_frames_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_match_types to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_decoders._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_register_device._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_register_device._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_run_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_run_work._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_run_work._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_run_work._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_run_work._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_pop_dts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_au_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_frame_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_au_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_au_start_streaming._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_au_start_streaming._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open_decoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_open_decoder._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_vb2_frame_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_setup_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_setup_frame._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_setup_frame._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.delta_frame_done to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @delta_get_frameinfo_default(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %frameinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streaminfo1 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9
  %0 = call ptr @memset(ptr %frameinfo, i32 0, i32 72)
  %pixelformat = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 1
  %1 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 842094158, ptr %pixelformat, align 4
  %width = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %width2 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 2
  %4 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %width2, align 4
  %height = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 3
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %8 = load i32, ptr %width, align 4
  %add = add i32 %8, 31
  %and = and i32 %add, -32
  %aligned_width = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 4
  %9 = ptrtoint ptr %aligned_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %aligned_width, align 4
  %10 = load i32, ptr %height, align 4
  %add6 = add i32 %10, 31
  %and7 = and i32 %add6, -32
  %aligned_height = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 5
  %11 = ptrtoint ptr %aligned_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %aligned_height, align 4
  %mul.i = mul i32 %and, 3
  %mul1.i = mul i32 %mul.i, %and7
  %div2.i = lshr exact i32 %mul1.i, 1
  %size = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 6
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div2.i, ptr %size, align 4
  %13 = ptrtoint ptr %streaminfo1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %streaminfo1, align 4
  %and11 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %frameinfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frameinfo, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %frameinfo, align 4
  %crop = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 7
  %crop13 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 5
  %17 = call ptr @memcpy(ptr %crop, ptr %crop13, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %streaminfo1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %streaminfo1, align 4
  %and15 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end21_crit_edge, label %if.then17

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %frameinfo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frameinfo, align 4
  %or19 = or i32 %21, 2
  store i32 %or19, ptr %frameinfo, align 4
  %pixelaspect = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 8
  %pixelaspect20 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 6
  %22 = ptrtoint ptr %pixelaspect20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %pixelaspect20, align 4
  %24 = ptrtoint ptr %pixelaspect to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %pixelaspect, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end.if.end21_crit_edge
  %field = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 9, i32 7
  %25 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field, align 4
  %field22 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 9
  %27 = ptrtoint ptr %field22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %field22, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @delta_recycle_default(ptr nocapture noundef readnone %pctx, ptr nocapture noundef %frame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, -5
  store i32 %and, ptr %state, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_get_free_frame(ptr noundef %ctx, ptr nocapture noundef writeonly %pframe) local_unnamed_addr #3 align 64 {
entry:
  %str.i = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %pframe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pframe, align 4
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef %name) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.delta_frame, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %and = and i32 %8, -33
  store i32 %and, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body11, label %do.end6

do.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %name8 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %index = getelementptr inbounds %struct.delta_frame, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %name8, i32 noundef %12) #15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str.i) #12
  %15 = call ptr @memset(ptr %str.i, i32 0, i32 100)
  %dev1.i = getelementptr inbounds %struct.delta_dev, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef %name8) #15
  %nb_of_frames.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 11
  %18 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nb_of_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.not.i = icmp eq i32 %19, 0
  br i1 %cmp17.not.i, label %do.end6.dump_frames_status.exit_crit_edge, label %do.end6.for.body.i_crit_edge

do.end6.for.body.i_crit_edge:                     ; preds = %do.end6
  br label %for.body.i

do.end6.dump_frames_status.exit_crit_edge:        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump_frames_status.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end6.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_ctx, ptr %ctx, i32 0, i32 12, i32 %i.018.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  %index.i = getelementptr inbounds %struct.delta_frame, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i, align 4
  %state.i = getelementptr inbounds %struct.delta_frame, ptr %21, i32 0, i32 7
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i, align 8
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.20, ptr @.str.19
  %and1.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %cond3.i.i = select i1 %tobool2.not.i.i, ptr @.str.20, ptr @.str.21
  %and4.i.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %cond6.i.i = select i1 %tobool5.not.i.i, ptr @.str.20, ptr @.str.22
  %and7.i.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond9.i.i = select i1 %tobool8.not.i.i, ptr @.str.20, ptr @.str.23
  %and10.i.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %cond12.i.i = select i1 %tobool11.not.i.i, ptr @.str.20, ptr @.str.24
  %and13.i.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %cond15.i.i = select i1 %tobool14.not.i.i, ptr @.str.20, ptr @.str.25
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 100, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %cond3.i.i, ptr noundef nonnull %cond6.i.i, ptr noundef nonnull %cond9.i.i, ptr noundef nonnull %cond12.i.i, ptr noundef nonnull %cond15.i.i) #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef %name8, i32 noundef %25, ptr noundef nonnull %str.i) #15
  %inc.i = add nuw i32 %i.018.i, 1
  %28 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_of_frames.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dump_frames_status.exit_crit_edge

for.body.i.dump_frames_status.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump_frames_status.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dump_frames_status.exit:                          ; preds = %for.body.i.dump_frames_status.exit_crit_edge, %do.end6.dump_frames_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str.i) #12
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_get_free_frame.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_get_free_frame, %if.then17)) #12
          to label %do.end24 [label %if.then17], !srcloc !385

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev18, align 4
  %name19 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %index21 = getelementptr inbounds %struct.delta_frame, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_get_free_frame.__UNIQUE_ID_ddebug328, ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %name19, i32 noundef %33) #12
  br label %do.end24

do.end24:                                         ; preds = %if.then17, %do.body11
  %34 = ptrtoint ptr %pframe to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %pframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %dump_frames_status.exit, %do.end
  %retval.0 = phi i32 [ -61, %dump_frames_status.exit ], [ 0, %do.end24 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_get_sync(ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !387
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !388
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delta_put_autosuspend(ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @delta_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @delta_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @delta_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 484, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %pdev3 = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @delta_probe.__key) #12
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #12
  %clk_delta = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %clk_delta to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %clk_delta, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body8, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_probe.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_probe, %if.then13)) #12
          to label %do.end16 [label %if.then13], !srcloc !385

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_probe.__UNIQUE_ID_ddebug335, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  %4 = ptrtoint ptr %clk_delta to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clk_delta, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end.if.end18_crit_edge
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.32) #12
  %clk_st231 = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %clk_st231 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %clk_st231, align 4
  %cmp.i152 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.body23, label %if.end18.if.end40_crit_edge

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.body23:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_probe.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_probe, %if.then35)) #12
          to label %do.end38 [label %if.then35], !srcloc !385

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_probe.__UNIQUE_ID_ddebug336, ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  %6 = ptrtoint ptr %clk_st231 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %clk_st231, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end18.if.end40_crit_edge
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.34) #12
  %clk_flash_promip = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %clk_flash_promip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call41, ptr %clk_flash_promip, align 4
  %cmp.i153 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %do.body45, label %if.end40.if.end62_crit_edge

if.end40.if.end62_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body45:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_probe.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_probe, %if.then57)) #12
          to label %do.end60 [label %if.then57], !srcloc !385

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_probe.__UNIQUE_ID_ddebug337, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45
  %8 = ptrtoint ptr %clk_flash_promip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clk_flash_promip, align 4
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.end40.if.end62_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 5) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #12
  %call.i154 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #12
  tail call void @pm_runtime_enable(ptr noundef %dev1) #12
  %call64 = tail call i32 @delta_ipc_init(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end71:                                         ; preds = %if.end62
  %nb_of_decoders.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_of_decoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %cmp1.i = icmp ugt i32 %12, 9
  br i1 %cmp1.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_decoders.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_probe, %if.then4.i)) #12
          to label %register_decoders.exit [label %if.then4.i], !srcloc !385

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mjpegdec to i32))
  %15 = load ptr, ptr @mjpegdec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @register_decoders.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.31, ptr noundef %15, i32 noundef 10) #12
  br label %register_decoders.exit

if.end5.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add nuw nsw i32 %12, 1
  %16 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i, ptr %nb_of_decoders.i, align 4
  %arrayidx8.i = getelementptr %struct.delta_dev, ptr %call.i, i32 0, i32 9, i32 %12
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mjpegdec, ptr %arrayidx8.i, align 4
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mjpegdec to i32))
  %20 = load ptr, ptr @mjpegdec, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.31, ptr noundef %20) #15
  br label %register_decoders.exit

register_decoders.exit:                           ; preds = %if.end5.i, %if.then4.i, %do.body.i
  %21 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nb_of_decoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp25.not.i = icmp eq i32 %22, 0
  br i1 %cmp25.not.i, label %register_decoders.exit.register_formats.exit_crit_edge, label %for.body.lr.ph.i

register_decoders.exit.register_formats.exit_crit_edge: ; preds = %register_decoders.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_formats.exit

for.body.lr.ph.i:                                 ; preds = %register_decoders.exit
  %pixelformats.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 11
  %nb_of_pixelformats.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 12
  %streamformats.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 13
  %nb_of_streamformats.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %register_format.exit24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i156, %register_format.exit24.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_dev, ptr %call.i, i32 0, i32 9, i32 %i.026.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.delta_dec, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat.i, align 4
  %27 = ptrtoint ptr %nb_of_pixelformats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nb_of_pixelformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp10.not.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %28
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %pixelformats.i, i32 %i.011.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %26)
  %cmp1.i.i = icmp eq i32 %30, %26
  br i1 %cmp1.i.i, label %for.body.i.i.register_format.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.register_format.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_format.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %inc2.i.i = add i32 %28, 1
  %31 = ptrtoint ptr %nb_of_pixelformats.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc2.i.i, ptr %nb_of_pixelformats.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %pixelformats.i, i32 %28
  %32 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %arrayidx3.i.i, align 4
  br label %register_format.exit.i

register_format.exit.i:                           ; preds = %for.end.i.i, %for.body.i.i.register_format.exit.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %streamformat.i = getelementptr inbounds %struct.delta_dec, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %streamformat.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %streamformat.i, align 4
  %37 = ptrtoint ptr %nb_of_streamformats.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nb_of_streamformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp10.not.i13.i = icmp eq i32 %38, 0
  br i1 %cmp10.not.i13.i, label %register_format.exit.i.for.end.i23.i_crit_edge, label %register_format.exit.i.for.body.i20.i_crit_edge

register_format.exit.i.for.body.i20.i_crit_edge:  ; preds = %register_format.exit.i
  br label %for.body.i20.i

register_format.exit.i.for.end.i23.i_crit_edge:   ; preds = %register_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i23.i

for.cond.i16.i:                                   ; preds = %for.body.i20.i
  %inc.i14.i = add nuw i32 %i.011.i17.i, 1
  %exitcond.not.i15.i = icmp eq i32 %inc.i14.i, %38
  br i1 %exitcond.not.i15.i, label %for.cond.i16.i.for.end.i23.i_crit_edge, label %for.cond.i16.i.for.body.i20.i_crit_edge

for.cond.i16.i.for.body.i20.i_crit_edge:          ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i20.i

for.cond.i16.i.for.end.i23.i_crit_edge:           ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i23.i

for.body.i20.i:                                   ; preds = %for.cond.i16.i.for.body.i20.i_crit_edge, %register_format.exit.i.for.body.i20.i_crit_edge
  %i.011.i17.i = phi i32 [ %inc.i14.i, %for.cond.i16.i.for.body.i20.i_crit_edge ], [ 0, %register_format.exit.i.for.body.i20.i_crit_edge ]
  %arrayidx.i18.i = getelementptr i32, ptr %streamformats.i, i32 %i.011.i17.i
  %39 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %36)
  %cmp1.i19.i = icmp eq i32 %40, %36
  br i1 %cmp1.i19.i, label %for.body.i20.i.register_format.exit24.i_crit_edge, label %for.cond.i16.i

for.body.i20.i.register_format.exit24.i_crit_edge: ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_format.exit24.i

for.end.i23.i:                                    ; preds = %for.cond.i16.i.for.end.i23.i_crit_edge, %register_format.exit.i.for.end.i23.i_crit_edge
  %inc2.i21.i = add i32 %38, 1
  %41 = ptrtoint ptr %nb_of_streamformats.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc2.i21.i, ptr %nb_of_streamformats.i, align 4
  %arrayidx3.i22.i = getelementptr i32, ptr %streamformats.i, i32 %38
  %42 = ptrtoint ptr %arrayidx3.i22.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %36, ptr %arrayidx3.i22.i, align 4
  br label %register_format.exit24.i

register_format.exit24.i:                         ; preds = %for.end.i23.i, %for.body.i20.i.register_format.exit24.i_crit_edge
  %inc.i156 = add nuw i32 %i.026.i, 1
  %43 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nb_of_decoders.i, align 4
  %cmp.i157 = icmp ult i32 %inc.i156, %44
  br i1 %cmp.i157, label %register_format.exit24.i.for.body.i_crit_edge, label %register_format.exit24.i.register_formats.exit_crit_edge

register_format.exit24.i.register_formats.exit_crit_edge: ; preds = %register_format.exit24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_formats.exit

register_format.exit24.i.for.body.i_crit_edge:    ; preds = %register_format.exit24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

register_formats.exit:                            ; preds = %register_format.exit24.i.register_formats.exit_crit_edge, %register_decoders.exit.register_formats.exit_crit_edge
  %call72 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %register_formats.exit
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end79:                                         ; preds = %register_formats.exit
  %call80 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.26) #12
  %work_queue = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 16
  %47 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call80, ptr %work_queue, align 4
  %tobool82.not = icmp eq ptr %call80, null
  br i1 %tobool82.not, label %do.end86, label %if.end.i

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31) #15
  br label %err_v4l2

if.end.i:                                         ; preds = %if.end79
  %call.i158 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @delta_m2m_ops) #12
  %m2m_dev.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i158, ptr %m2m_dev.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %delta_register_device.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @video_device_alloc() #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.31) #15
  br label %delta_register_device.exit.thread166

if.end14.i:                                       ; preds = %if.end6.i
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 3
  %53 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @delta_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 24
  %54 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @delta_ioctl_ops, ptr %ioctl_ops.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 23
  %55 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @video_device_release, ptr %release.i, align 8
  %lock15.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 26
  %56 = ptrtoint ptr %lock15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %lock, ptr %lock15.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 14
  %57 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %vfl_dir.i, align 4
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 4
  %58 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 67141632, ptr %device_caps.i, align 8
  %v4l2_dev16.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 7
  %59 = ptrtoint ptr %v4l2_dev16.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %v4l2_dev16.i, align 4
  %name.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 12
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.56) #12
  %60 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fops.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef nonnull %call7.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not.i, label %delta_register_device.exit.thread, label %do.end23.i

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.31) #15
  tail call void @video_device_release(ptr noundef nonnull %call7.i) #12
  br label %delta_register_device.exit.thread166

delta_register_device.exit.thread:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %vdev26.i = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %vdev26.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i, ptr %vdev26.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call7.i, i32 0, i32 5, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  br label %do.end95

delta_register_device.exit.thread166:             ; preds = %do.end23.i, %do.end12.i
  %ret.0.i = phi i32 [ %call.i.i, %do.end23.i ], [ -12, %do.end12.i ]
  %68 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m2m_dev.i, align 4
  tail call void @v4l2_m2m_release(ptr noundef %69) #12
  br label %err_work_queue

delta_register_device.exit:                       ; preds = %if.end.i
  %70 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.31) #15
  %72 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %m2m_dev.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %tobool90.not = icmp eq ptr %73, null
  br i1 %tobool90.not, label %delta_register_device.exit.do.end95_crit_edge, label %delta_register_device.exit.err_work_queue_crit_edge

delta_register_device.exit.err_work_queue_crit_edge: ; preds = %delta_register_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_work_queue

delta_register_device.exit.do.end95_crit_edge:    ; preds = %delta_register_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

do.end95:                                         ; preds = %delta_register_device.exit.do.end95_crit_edge, %delta_register_device.exit.thread
  %vdev = getelementptr inbounds %struct.delta_dev, ptr %call.i, i32 0, i32 1
  %75 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vdev, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 12
  %num = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %num, align 4
  %conv = zext i16 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %conv) #15
  br label %cleanup

err_work_queue:                                   ; preds = %delta_register_device.exit.err_work_queue_crit_edge, %delta_register_device.exit.thread166
  %retval.0.i160169 = phi i32 [ %ret.0.i, %delta_register_device.exit.thread166 ], [ %74, %delta_register_device.exit.err_work_queue_crit_edge ]
  %79 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %80) #12
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_work_queue, %do.end86
  %ret.0 = phi i32 [ %retval.0.i160169, %err_work_queue ], [ -12, %do.end86 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %do.end95, %do.end77, %do.end69, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end95 ], [ %call64, %do.end69 ], [ %call72, %do.end77 ], [ %ret.0, %err_v4l2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @delta_ipc_exit(ptr noundef %1) #12
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.delta_unregister_device.exit_crit_edge, label %if.end.i

entry.delta_unregister_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_unregister_device.exit

if.end.i:                                         ; preds = %entry
  %m2m_dev.i = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l2_m2m_release(ptr noundef nonnull %3) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %vdev.i = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev.i, align 4
  tail call void @video_unregister_device(ptr noundef %5) #12
  br label %delta_unregister_device.exit

delta_unregister_device.exit:                     ; preds = %if.end4.i, %entry.delta_unregister_device.exit_crit_edge
  %work_queue = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #12
  %dev = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #12
  tail call void @v4l2_device_unregister(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_device_run(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %work_queue = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work_queue, align 4
  %run_work = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %run_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_job_ready(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_job_ready.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_job_ready, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !385

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev6 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_job_ready.__UNIQUE_ID_ddebug323, ptr noundef %7, ptr noundef nonnull @.str.61, ptr noundef %name) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %num_rdy.i95 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %num_rdy.i95 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rdy.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_job_ready.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_job_ready, %if.then25)) #12
          to label %cleanup [label %if.then25], !srcloc !385

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 4
  %name27 = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_job_ready.__UNIQUE_ID_ddebug324, ptr noundef %11, ptr noundef nonnull @.str.62, ptr noundef %name27) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %aborting = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 23
  %12 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aborting, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool33.not = icmp eq i8 %13, 0
  br i1 %tobool33.not, label %do.body55, label %do.body35

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_job_ready.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_job_ready, %if.then47)) #12
          to label %cleanup [label %if.then47], !srcloc !385

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev48, align 4
  %name49 = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_job_ready.__UNIQUE_ID_ddebug325, ptr noundef %15, ptr noundef nonnull @.str.63, ptr noundef %name49) #12
  br label %cleanup

do.body55:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_job_ready.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_job_ready, %if.then67)) #12
          to label %cleanup [label %if.then67], !srcloc !385

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %dev68 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev68, align 4
  %name69 = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_job_ready.__UNIQUE_ID_ddebug326, ptr noundef %17, ptr noundef nonnull @.str.64, ptr noundef %name69) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %do.body55, %if.then47, %do.body35, %if.then25, %do.body13, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then25 ], [ 0, %if.then47 ], [ 1, %if.then67 ], [ 0, %do.body ], [ 0, %do.body13 ], [ 0, %do.body35 ], [ 1, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_job_abort(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_job_abort.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_job_abort, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev3 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_job_abort.__UNIQUE_ID_ddebug322, ptr noundef %3, ptr noundef nonnull @.str.66, ptr noundef %name) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %aborting = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 23
  %4 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %aborting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_open(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 904) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev, align 4
  %fh = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #12
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call2) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #12
  %run_work = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %run_work, i32 noundef 0) #12
  %5 = ptrtoint ptr %run_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %run_work, align 8
  %lockdep_map = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.67, ptr noundef nonnull @delta_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8 = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @delta_run_work, ptr %func, align 4
  %lock11 = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %lock11, ptr noundef nonnull @.str.69, ptr noundef nonnull @delta_open.__key.68) #12
  %m2m_dev = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_dev, align 4
  %call14 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %10, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call14 to i32
  %dev26 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.31, i32 noundef %12) #15
  tail call void @v4l2_fh_del(ptr noundef %fh) #12
  tail call void @v4l2_fh_exit(ptr noundef %fh) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err

if.end27:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 4
  %dts = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %dts to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %dts, ptr %dts, align 4
  %prev.i112 = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dts, ptr %prev.i112, align 8
  %instance_id = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %instance_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %instance_id, align 4
  %inc = add i8 %19, 1
  store i8 %inc, ptr %instance_id, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 20
  %conv = zext i8 %inc to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 100, ptr noundef nonnull @.str.72, i32 noundef %conv)
  %frameinfo1.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10
  %streaminfo2.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9
  %20 = call ptr @memset(ptr %frameinfo1.i, i32 0, i32 52)
  %pixelformat.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 842094158, ptr %pixelformat.i, align 8
  %width.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %height.i, align 8
  %aligned_width.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 4
  %24 = ptrtoint ptr %aligned_width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %aligned_width.i, align 4
  %aligned_height.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 5
  %25 = ptrtoint ptr %aligned_height.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %aligned_height.i, align 8
  %size.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 6
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1536, ptr %size.i, align 4
  %field.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 9
  %27 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field.i, align 8
  %colorspace.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 10
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %colorspace.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 11
  %29 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %xfer_func.i, align 8
  %ycbcr_enc.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 12
  %30 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ycbcr_enc.i, align 4
  %quantization.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 10, i32 13
  %31 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %quantization.i, align 8
  %32 = call ptr @memset(ptr %streaminfo2.i, i32 0, i32 144)
  %streamformat.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %streamformat.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1196444237, ptr %streamformat.i, align 8
  %width10.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %width10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %width10.i, align 4
  %height11.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 3
  %35 = ptrtoint ptr %height11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %height11.i, align 8
  %field12.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 7
  %36 = ptrtoint ptr %field12.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field12.i, align 8
  %colorspace13.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 11
  %37 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %colorspace13.i, align 4
  %xfer_func14.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 12
  %38 = ptrtoint ptr %xfer_func14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %xfer_func14.i, align 8
  %ycbcr_enc15.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 13
  %39 = ptrtoint ptr %ycbcr_enc15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ycbcr_enc15.i, align 4
  %quantization16.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 9, i32 14
  %40 = ptrtoint ptr %quantization16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %quantization16.i, align 8
  %max_au_size.i = getelementptr inbounds %struct.delta_ctx, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %max_au_size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1024, ptr %max_au_size.i, align 8
  %clk_st231 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %clk_st231 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_st231, align 4
  %tobool30.not = icmp eq ptr %43, null
  br i1 %tobool30.not, label %if.end27.if.end41_crit_edge, label %if.then31

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then31:                                        ; preds = %if.end27
  %call.i113 = tail call i32 @clk_prepare(ptr noundef nonnull %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.do.end38_crit_edge

if.then31.do.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

if.end.i:                                         ; preds = %if.then31
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end41_crit_edge, label %if.then3.i

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %43) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.then31.do.end38_crit_edge
  %dev39 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.74) #15
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end.i.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %clk_flash_promip = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %clk_flash_promip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_flash_promip, align 4
  %tobool42.not = icmp eq ptr %47, null
  br i1 %tobool42.not, label %if.end41.if.end53_crit_edge, label %if.then43

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then43:                                        ; preds = %if.end41
  %call.i115 = tail call i32 @clk_prepare(ptr noundef nonnull %47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %if.end.i119, label %if.then43.do.end50_crit_edge

if.then43.do.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.end.i119:                                      ; preds = %if.then43
  %call1.i117 = tail call i32 @clk_enable(ptr noundef nonnull %47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117)
  %tobool2.not.i118 = icmp eq i32 %call1.i117, 0
  br i1 %tobool2.not.i118, label %if.end.i119.if.end53_crit_edge, label %if.then3.i120

if.end.i119.if.end53_crit_edge:                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then3.i120:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %47) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then3.i120, %if.then43.do.end50_crit_edge
  %dev51 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.78) #15
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.end.i119.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_open.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_open, %if.then60)) #12
          to label %cleanup [label %if.then60], !srcloc !385

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %dev61 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_open.__UNIQUE_ID_ddebug333, ptr noundef %51, ptr noundef nonnull @.str.80, ptr noundef %name) #12
  br label %cleanup

err:                                              ; preds = %if.then19, %entry.err_crit_edge
  %ret.0 = phi i32 [ %12, %if.then19 ], [ -12, %entry.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then60, %if.end53
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then60 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_release(ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dec1 = getelementptr i8, ptr %1, i32 196
  %4 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec1, align 4
  %lock = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.delta_dec, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %7(ptr noundef %add.ptr) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  tail call void @delta_trace_summary(ptr noundef %add.ptr) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %9) #12
  tail call void @v4l2_fh_del(ptr noundef %1) #12
  tail call void @v4l2_fh_exit(ptr noundef %1) #12
  %clk_st231 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %clk_st231 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_st231, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %11) #12
  tail call void @clk_unprepare(ptr noundef nonnull %11) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %clk_flash_promip = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %clk_flash_promip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_flash_promip, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end.do.body_crit_edge, label %if.then9

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %13) #12
  tail call void @clk_unprepare(ptr noundef nonnull %13) #12
  br label %do.body

do.body:                                          ; preds = %if.then9, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_release.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_release, %if.then17)) #12
          to label %do.end [label %if.then17], !srcloc !385

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 4
  %name = getelementptr i8, ptr %1, i32 656
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_release.__UNIQUE_ID_ddebug334, ptr noundef %15, ptr noundef nonnull @.str.147, ptr noundef %name) #12
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_run_work(ptr noundef %work) #3 align 64 {
entry:
  %frame = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -760
  %dev = getelementptr i8, ptr %work, i32 -564
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dec1 = getelementptr i8, ptr %work, i32 -560
  %2 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame) #12
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %frame, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %name = getelementptr i8, ptr %work, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.81, ptr noundef %name) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %m2m_ctx = getelementptr i8, ptr %work, i32 -568
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #12
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  %name9 = getelementptr i8, ptr %work, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.84, ptr noundef %name9) #15
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end12.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end12.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end12.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end12.vb2_get_plane_payload.exit_crit_edge ]
  %size = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %size, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp, align 8
  %dts = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %dts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %dts, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %vaddr.i = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %retval.0.i)
  %cmp.i = icmp ult i32 %retval.0.i, 21
  br i1 %cmp.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_au.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_run_work, %if.then4.i)) #12
          to label %dump_au.exit [label %if.then4.i], !srcloc !385

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i = getelementptr inbounds %struct.delta_dev, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5.i, align 4
  %name.i = getelementptr i8, ptr %work, i32 -100
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  %27 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dts, align 8
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_au.__UNIQUE_ID_ddebug299, ptr noundef %24, ptr noundef nonnull @.str.96, ptr noundef %name.i, i32 noundef %26, i64 noundef %28, i32 noundef %30, i32 noundef %30, ptr noundef %22) #12
  br label %dump_au.exit

do.body8.i:                                       ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_au.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_run_work, %if.then20.i)) #12
          to label %dump_au.exit [label %if.then20.i], !srcloc !385

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev21.i = getelementptr inbounds %struct.delta_dev, ptr %20, i32 0, i32 3
  %31 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21.i, align 4
  %name22.i = getelementptr i8, ptr %work, i32 -100
  %index26.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %index26.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index26.i, align 4
  %35 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dts, align 8
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %38
  %add.ptr30.i = getelementptr i8, ptr %add.ptr.i, i32 -10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_au.__UNIQUE_ID_ddebug300, ptr noundef %32, ptr noundef nonnull @.str.97, ptr noundef %name22.i, i32 noundef %34, i64 noundef %36, i32 noundef %38, i32 noundef 10, ptr noundef %22, i32 noundef 10, ptr noundef %add.ptr30.i) #12
  br label %dump_au.exit

dump_au.exit:                                     ; preds = %if.then20.i, %do.body8.i, %if.then4.i, %do.body.i
  %pm = getelementptr inbounds %struct.delta_dec, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pm, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool18.not = icmp eq i8 %40, 0
  br i1 %tobool18.not, label %if.then19, label %dump_au.exit.land.lhs.true_crit_edge

dump_au.exit.land.lhs.true_crit_edge:             ; preds = %dump_au.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then19:                                        ; preds = %dump_au.exit
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %dev1.i = getelementptr inbounds %struct.delta_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %44, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then19.land.lhs.true_crit_edge

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then.i.i:                                      ; preds = %if.then19
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !387
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.delta_get_sync.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.delta_get_sync.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_get_sync.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !388
  br label %delta_get_sync.exit

delta_get_sync.exit:                              ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.delta_get_sync.exit_crit_edge
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #15
  br label %err

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %dump_au.exit.land.lhs.true_crit_edge
  %decode = getelementptr inbounds %struct.delta_dec, ptr %3, i32 0, i32 12
  %48 = ptrtoint ptr %decode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %decode, align 4
  %tobool26.not = icmp eq ptr %49, null
  br i1 %tobool26.not, label %land.lhs.true.if.end43_crit_edge, label %cond.end

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

cond.end:                                         ; preds = %land.lhs.true
  %call28 = tail call i32 %49(ptr noundef %add.ptr, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call28)
  %cmp = icmp eq i32 %call28, -61
  %50 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %do.end34 [
    i32 -61, label %cond.end.if.end43_crit_edge
    i32 0, label %cond.end.if.end43_crit_edge210
  ]

cond.end.if.end43_crit_edge210:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

cond.end.if.end43_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end34:                                         ; preds = %cond.end
  %dev35 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev35, align 4
  %name36 = getelementptr i8, ptr %work, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.87, ptr noundef %name36, i32 noundef %call28) #15
  %53 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pm, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool39.not = icmp eq i8 %54, 0
  br i1 %tobool39.not, label %if.then40, label %do.end34.err_crit_edge

do.end34.err_crit_edge:                           ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.then40:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %dev1.i163 = getelementptr inbounds %struct.delta_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %dev1.i163 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i163, align 4
  %call.i.i164 = tail call i32 @__pm_runtime_suspend(ptr noundef %58, i32 noundef 13) #12
  br label %err

if.end43:                                         ; preds = %cond.end.if.end43_crit_edge, %cond.end.if.end43_crit_edge210, %land.lhs.true.if.end43_crit_edge
  %cmp202 = phi i1 [ %cmp, %cond.end.if.end43_crit_edge ], [ %cmp, %cond.end.if.end43_crit_edge210 ], [ false, %land.lhs.true.if.end43_crit_edge ]
  %59 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pm, align 4, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool45.not = icmp eq i8 %60, 0
  br i1 %tobool45.not, label %if.then46, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %dev1.i166 = getelementptr inbounds %struct.delta_dev, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %dev1.i166 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1.i166, align 4
  %call.i.i167 = tail call i32 @__pm_runtime_suspend(ptr noundef %64, i32 noundef 13) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  br i1 %cmp202, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  %65 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %dts, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then49.if.end51_crit_edge, label %if.end.i

if.then49.if.end51_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end.i:                                         ; preds = %if.then49
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %val1.i = getelementptr inbounds %struct.delta_dts, ptr %call7.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %val1.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %66, ptr %val1.i, align 8
  %dts3.i = getelementptr i8, ptr %work, i32 -108
  %prev.i7.i = getelementptr i8, ptr %work, i32 -104
  %71 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i7.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %72, ptr noundef %dts3.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end51_crit_edge

if.end.i.if.end51_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i, ptr %prev.i7.i, align 4
  %74 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dts3.i, ptr %call7.i.i.i, align 8
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call7.i.i.i, ptr %72, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end.i.i.i, %if.end.i.if.end51_crit_edge, %if.then49.if.end51_crit_edge, %if.end47.if.end51_crit_edge
  %get_frame = getelementptr inbounds %struct.delta_dec, ptr %3, i32 0, i32 13
  %dts1.i = getelementptr i8, ptr %work, i32 -108
  %name.i169 = getelementptr i8, ptr %work, i32 -100
  br label %while.cond

while.cond:                                       ; preds = %delta_pop_dts.exit, %if.end51
  %77 = ptrtoint ptr %get_frame to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_frame, align 4
  %tobool54.not = icmp eq ptr %78, null
  br i1 %tobool54.not, label %while.cond.if.end72_crit_edge, label %cond.end59

while.cond.if.end72_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

cond.end59:                                       ; preds = %while.cond
  %call57 = call i32 %78(ptr noundef %add.ptr, ptr noundef nonnull %frame) #12
  %79 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call57, label %do.end68 [
    i32 -61, label %cond.end59.out_crit_edge
    i32 0, label %cond.end59.if.end72_crit_edge
  ]

cond.end59.if.end72_crit_edge:                    ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

cond.end59.out_crit_edge:                         ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end68:                                         ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #14
  %dev69 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.90, ptr noundef %name.i169, i32 noundef %call57) #15
  br label %out

if.end72:                                         ; preds = %cond.end59.if.end72_crit_edge, %while.cond.if.end72_crit_edge
  %82 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %frame, align 4
  %tobool73.not = icmp eq ptr %83, null
  br i1 %tobool73.not, label %do.end77, label %if.end81

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %dev78 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.93, ptr noundef %name.i169) #15
  br label %out

if.end81:                                         ; preds = %if.end72
  %dts82 = getelementptr inbounds %struct.delta_frame, ptr %83, i32 0, i32 9
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %dts1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %dts1.i, align 4
  %cmp.i.not.i = icmp eq ptr %89, %dts1.i
  br i1 %cmp.i.not.i, label %do.end.i170, label %if.end.i172

do.end.i170:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i = getelementptr inbounds %struct.delta_dev, ptr %87, i32 0, i32 3
  %90 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.98, ptr noundef %name.i169) #15
  %92 = ptrtoint ptr %dts82 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 0, ptr %dts82, align 8
  br label %delta_pop_dts.exit

if.end.i172:                                      ; preds = %if.end81
  %call.i.i.i171 = call zeroext i1 @__list_del_entry_valid(ptr noundef %89) #12
  br i1 %call.i.i.i171, label %if.end.i.i.i173, label %if.end.i172.list_del.exit.i_crit_edge

if.end.i172.list_del.exit.i_crit_edge:            ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i173:                                  ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i, align 4
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %89, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i173, %if.end.i172.list_del.exit.i_crit_edge
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %89, align 4
  %prev.i.i174 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i174, align 4
  %val4.i = getelementptr inbounds %struct.delta_dts, ptr %89, i32 0, i32 1
  %101 = ptrtoint ptr %val4.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %val4.i, align 8
  %103 = ptrtoint ptr %dts82 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %dts82, align 8
  call void @kfree(ptr noundef %89) #12
  br label %delta_pop_dts.exit

delta_pop_dts.exit:                               ; preds = %list_del.exit.i, %do.end.i170
  %104 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %frame, align 4
  call fastcc void @delta_frame_done(ptr noundef %add.ptr, ptr noundef %105)
  br label %while.cond

out:                                              ; preds = %do.end77, %do.end68, %cond.end59.out_crit_edge
  %nb_of_frames.i = getelementptr i8, ptr %work, i32 -220
  %106 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nb_of_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp10.not.i = icmp eq i32 %107, 0
  br i1 %cmp10.not.i, label %out.requeue_free_frames.exit_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.requeue_free_frames.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_free_frames.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %out.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_ctx, ptr %add.ptr, i32 0, i32 12, i32 %i.011.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 4
  %state.i = getelementptr inbounds %struct.delta_frame, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp1.i = icmp eq i32 %111, 0
  br i1 %cmp1.i, label %if.then.i175, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i175:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_buf_queue(ptr noundef %113, ptr noundef %109) #12
  %114 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 32, ptr %state.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i175, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %115 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nb_of_frames.i, align 4
  %cmp.i176 = icmp ult i32 %inc.i, %116
  br i1 %cmp.i176, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.requeue_free_frames.exit_crit_edge

for.inc.i.requeue_free_frames.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_free_frames.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

requeue_free_frames.exit:                         ; preds = %for.inc.i.requeue_free_frames.exit_crit_edge, %out.requeue_free_frames.exit_crit_edge
  %au_num.i = getelementptr i8, ptr %work, i32 -460
  %117 = ptrtoint ptr %au_num.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %au_num.i, align 4
  %inc.i177 = add i32 %118, 1
  store i32 %inc.i177, ptr %au_num.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %119 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %sequence.i, align 8
  %cond.i = select i1 %cmp202, i32 6, i32 5
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %cond.i) #12
  call void @mutex_unlock(ptr noundef %lock) #12
  %m2m_dev = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 4
  %120 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %m2m_dev, align 4
  %122 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_job_finish(ptr noundef %121, ptr noundef %123) #12
  br label %cleanup

err:                                              ; preds = %if.then40, %do.end34.err_crit_edge, %delta_get_sync.exit
  %ret.0 = phi i32 [ %call28, %do.end34.err_crit_edge ], [ %call28, %if.then40 ], [ 1, %delta_get_sync.exit ]
  %nb_of_frames.i179 = getelementptr i8, ptr %work, i32 -220
  %124 = ptrtoint ptr %nb_of_frames.i179 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nb_of_frames.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp10.not.i180 = icmp eq i32 %125, 0
  br i1 %cmp10.not.i180, label %err.requeue_free_frames.exit192_crit_edge, label %err.for.body.i187_crit_edge

err.for.body.i187_crit_edge:                      ; preds = %err
  br label %for.body.i187

err.requeue_free_frames.exit192_crit_edge:        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_free_frames.exit192

for.body.i187:                                    ; preds = %for.inc.i191.for.body.i187_crit_edge, %err.for.body.i187_crit_edge
  %i.011.i183 = phi i32 [ %inc.i189, %for.inc.i191.for.body.i187_crit_edge ], [ 0, %err.for.body.i187_crit_edge ]
  %arrayidx.i184 = getelementptr %struct.delta_ctx, ptr %add.ptr, i32 0, i32 12, i32 %i.011.i183
  %126 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i184, align 4
  %state.i185 = getelementptr inbounds %struct.delta_frame, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %state.i185 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %state.i185, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp1.i186 = icmp eq i32 %129, 0
  br i1 %cmp1.i186, label %if.then.i188, label %for.body.i187.for.inc.i191_crit_edge

for.body.i187.for.inc.i191_crit_edge:             ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i191

if.then.i188:                                     ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %131, ptr noundef %127) #12
  %132 = ptrtoint ptr %state.i185 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 32, ptr %state.i185, align 8
  br label %for.inc.i191

for.inc.i191:                                     ; preds = %if.then.i188, %for.body.i187.for.inc.i191_crit_edge
  %inc.i189 = add nuw i32 %i.011.i183, 1
  %133 = ptrtoint ptr %nb_of_frames.i179 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nb_of_frames.i179, align 4
  %cmp.i190 = icmp ult i32 %inc.i189, %134
  br i1 %cmp.i190, label %for.inc.i191.for.body.i187_crit_edge, label %for.inc.i191.requeue_free_frames.exit192_crit_edge

for.inc.i191.requeue_free_frames.exit192_crit_edge: ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue_free_frames.exit192

for.inc.i191.for.body.i187_crit_edge:             ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i187

requeue_free_frames.exit192:                      ; preds = %for.inc.i191.requeue_free_frames.exit192_crit_edge, %err.requeue_free_frames.exit192_crit_edge
  %au_num.i193 = getelementptr i8, ptr %work, i32 -460
  %135 = ptrtoint ptr %au_num.i193 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %au_num.i193, align 4
  %inc.i194 = add i32 %136, 1
  store i32 %inc.i194, ptr %au_num.i193, align 4
  %sequence.i195 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %137 = ptrtoint ptr %sequence.i195 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %sequence.i195, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not.i196 = icmp eq i32 %ret.0, 0
  %cond.i197 = select i1 %tobool.not.i196, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %cond.i197) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %m2m_dev89 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 4
  %138 = ptrtoint ptr %m2m_dev89 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %m2m_dev89, align 4
  %140 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %139, ptr noundef %141) #12
  br label %cleanup

cleanup:                                          ; preds = %requeue_free_frames.exit192, %requeue_free_frames.exit, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 776, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @delta_vb2_au_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %7 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 5
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock1, align 4
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %14 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %15 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %16 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 956, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @delta_vb2_frame_ops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %19 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16384, ptr %timestamp_flags10, align 4
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %20 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock, ptr %lock12, align 4
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  %dev14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %23 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev14, align 4
  %call15 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delta_frame_done(ptr noundef %ctx, ptr noundef %frame) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %vaddr.i = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 5
  %2 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_frame.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_frame_done, %if.then.i)) #12
          to label %dump_frame.exit [label %if.then.i], !srcloc !385

if.then.i:                                        ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %index.i = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 4
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %dts.i = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 9
  %8 = ptrtoint ptr %dts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dts.i, align 8
  %flags.i = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.frame_type_str.exit.i_crit_edge

if.then.i.frame_type_str.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %frame_type_str.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %and1.i.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.frame_type_str.exit.i_crit_edge

if.end.i.i.frame_type_str.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %frame_type_str.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %and5.i.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.frame_type_str.exit.i_crit_edge

if.end4.i.i.frame_type_str.exit.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %frame_type_str.exit.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and9.i.i = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %.str.106..str.105.i.i = select i1 %tobool10.not.i.i, ptr @.str.106, ptr @.str.105
  br label %frame_type_str.exit.i

frame_type_str.exit.i:                            ; preds = %if.end8.i.i, %if.end4.i.i.frame_type_str.exit.i_crit_edge, %if.end.i.i.frame_type_str.exit.i_crit_edge, %if.then.i.frame_type_str.exit.i_crit_edge
  %retval.0.i11.i = phi ptr [ @.str.102, %if.then.i.frame_type_str.exit.i_crit_edge ], [ @.str.103, %if.end.i.i.frame_type_str.exit.i_crit_edge ], [ @.str.104, %if.end4.i.i.frame_type_str.exit.i_crit_edge ], [ %.str.106..str.105.i.i, %if.end8.i.i ]
  %field.i = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 10
  %12 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field.i, align 8
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 9
  br i1 %14, label %switch.lookup, label %frame_type_str.exit.i.frame_field_str.exit.i_crit_edge

frame_type_str.exit.i.frame_field_str.exit.i_crit_edge: ; preds = %frame_type_str.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %frame_field_str.exit.i

switch.lookup:                                    ; preds = %frame_type_str.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.delta_frame_done, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %frame_field_str.exit.i

frame_field_str.exit.i:                           ; preds = %switch.lookup, %frame_type_str.exit.i.frame_field_str.exit.i_crit_edge
  %retval.0.i12.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.106, %frame_type_str.exit.i.frame_field_str.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_frame.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.101, ptr noundef %name.i, i32 noundef %7, i64 noundef %9, ptr noundef nonnull %retval.0.i11.i, ptr noundef nonnull %retval.0.i12.i, i32 noundef 10, ptr noundef %3) #12
  br label %dump_frame.exit

dump_frame.exit:                                  ; preds = %frame_field_str.exit.i, %entry
  %state = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 7
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  %or = or i32 %17, 8
  store i32 %or, ptr %state, align 8
  %frame_num = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 6
  %18 = ptrtoint ptr %frame_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_num, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %frame_num, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %frame, i32 0, i32 4
  %20 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sequence, align 8
  tail call void @vb2_buffer_done(ptr noundef %frame, i32 noundef 5) #12
  %size = getelementptr inbounds %struct.delta_frame, ptr %frame, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not = icmp eq i32 %22, 0
  br i1 %tobool2.not, label %dump_frame.exit.if.end_crit_edge, label %if.then

dump_frame.exit.if.end_crit_edge:                 ; preds = %dump_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %dump_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  %output_frames = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 14
  %23 = ptrtoint ptr %output_frames to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %output_frames, align 4
  %inc3 = add i32 %24, 1
  store i32 %inc3, ptr %output_frames, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dump_frame.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_vb2_au_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %max_au_size = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %max_au_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_au_size, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_planes, align 4
  %9 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.end.if.end6.sink.split_crit_edge, label %if.end3

if.end.if.end6.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp4 = icmp ugt i32 %10, 10
  br i1 %cmp4, label %if.end3.if.end6.sink.split_crit_edge, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end3.if.end6.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end3.if.end6.sink.split_crit_edge, %if.end.if.end6.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end.if.end6.sink.split_crit_edge ], [ 10, %if.end3.if.end6.sink.split_crit_edge ]
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %num_buffers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end3.if.end6_crit_edge
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_vb2_au_prepare(ptr noundef %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %prepared = getelementptr inbounds %struct.delta_au, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prepared, align 8, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #12
  %vaddr = getelementptr inbounds %struct.delta_au, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %vaddr, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #12
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %paddr = getelementptr inbounds %struct.delta_au, ptr %vb, i32 0, i32 5
  %11 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %paddr, align 4
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %prepared, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_au_prepare.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_au_prepare, %if.then15)) #12
          to label %if.end19 [label %if.then15], !srcloc !385

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %17 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_au_prepare.__UNIQUE_ID_ddebug327, ptr noundef %14, ptr noundef nonnull @.str.112, ptr noundef %name, i32 noundef %16, ptr noundef %18, ptr noundef %paddr) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then, %entry.if.end19_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then20, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end19.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_vb2_au_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #3 align 64 {
entry:
  %dec = alloca ptr, align 4
  %str1 = alloca [100 x i8], align 1
  %str2 = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dec) #12
  %dec1 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec1, align 4
  %6 = ptrtoint ptr %dec to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dec, align 4
  %streaminfo2 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 9
  %frameinfo3 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str1) #12
  %7 = call ptr @memset(ptr %str1, i32 0, i32 100)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str2) #12
  %8 = call ptr @memset(ptr %str2, i32 0, i32 100)
  %state = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp ult i32 %10, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then8:                                         ; preds = %if.end
  %streamformat = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %streamformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %streamformat, align 4
  %pixelformat = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %call11 = call fastcc i32 @delta_open_decoder(ptr noundef %1, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %dec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.then8.if.end107_crit_edge

if.then8.if.end107_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec, align 4
  %17 = ptrtoint ptr %dec1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dec1, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end.if.end16_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #12
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %dev20 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.113, ptr noundef %name) #15
  br label %if.end107

if.end21:                                         ; preds = %if.end16
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %if.end21.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end21.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %25 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end21.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i178 = phi i32 [ %26, %if.then.i ], [ 0, %if.end21.vb2_get_plane_payload.exit_crit_edge ]
  %size = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i178, ptr %size, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp, align 8
  %dts = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %dts to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %dts, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %vb2_get_plane_payload.exit.delta_push_dts.exit_crit_edge, label %if.end.i

vb2_get_plane_payload.exit.delta_push_dts.exit_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_push_dts.exit

if.end.i:                                         ; preds = %vb2_get_plane_payload.exit
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %val1.i = getelementptr inbounds %struct.delta_dts, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %val1.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %29, ptr %val1.i, align 8
  %dts3.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19
  %prev.i7.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i7.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %36, ptr noundef %dts3.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.delta_push_dts.exit_crit_edge

if.end.i.delta_push_dts.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_push_dts.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %prev.i7.i, align 4
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dts3.i, ptr %call7.i.i.i, align 8
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i.i, ptr %36, align 4
  br label %delta_push_dts.exit

delta_push_dts.exit:                              ; preds = %if.end.i.i.i, %if.end.i.delta_push_dts.exit_crit_edge, %vb2_get_plane_payload.exit.delta_push_dts.exit_crit_edge
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %vaddr.i = getelementptr inbounds %struct.delta_au, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vaddr.i, align 8
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %46)
  %cmp.i = icmp ult i32 %46, 21
  br i1 %cmp.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %delta_push_dts.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_au.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_au_start_streaming, %if.then4.i)) #12
          to label %dump_au.exit [label %if.then4.i], !srcloc !385

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i = getelementptr inbounds %struct.delta_dev, ptr %42, i32 0, i32 3
  %47 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev5.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i, align 4
  %51 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dts, align 8
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_au.__UNIQUE_ID_ddebug299, ptr noundef %48, ptr noundef nonnull @.str.96, ptr noundef %name.i, i32 noundef %50, i64 noundef %52, i32 noundef %54, i32 noundef %54, ptr noundef %44) #12
  br label %dump_au.exit

do.body8.i:                                       ; preds = %delta_push_dts.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_au.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_au_start_streaming, %if.then20.i)) #12
          to label %dump_au.exit [label %if.then20.i], !srcloc !385

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev21.i = getelementptr inbounds %struct.delta_dev, ptr %42, i32 0, i32 3
  %55 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev21.i, align 4
  %name22.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  %index26.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %57 = ptrtoint ptr %index26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index26.i, align 4
  %59 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dts, align 8
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 %62
  %add.ptr30.i = getelementptr i8, ptr %add.ptr.i, i32 -10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_au.__UNIQUE_ID_ddebug300, ptr noundef %56, ptr noundef nonnull @.str.97, ptr noundef %name22.i, i32 noundef %58, i64 noundef %60, i32 noundef %62, i32 noundef 10, ptr noundef %44, i32 noundef 10, ptr noundef %add.ptr30.i) #12
  br label %dump_au.exit

dump_au.exit:                                     ; preds = %if.then20.i, %do.body8.i, %if.then4.i, %do.body.i
  %63 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dec, align 4
  %tobool25.not = icmp eq ptr %64, null
  br i1 %tobool25.not, label %if.end66.thread188, label %land.lhs.true26

if.end66.thread188:                               ; preds = %dump_au.exit
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %or189 = or i32 %66, 1
  store i32 %or189, ptr %1, align 4
  br label %if.end78

land.lhs.true26:                                  ; preds = %dump_au.exit
  %decode = getelementptr inbounds %struct.delta_dec, ptr %64, i32 0, i32 12
  %67 = ptrtoint ptr %decode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %decode, align 4
  %tobool27.not = icmp eq ptr %68, null
  br i1 %tobool27.not, label %land.lhs.true26.land.lhs.true40_crit_edge, label %cond.end

land.lhs.true26.land.lhs.true40_crit_edge:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true40

cond.end:                                         ; preds = %land.lhs.true26
  %call29 = tail call i32 %68(ptr noundef %1, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cond.end.land.lhs.true40_crit_edge, label %do.end34

cond.end.land.lhs.true40_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true40

do.end34:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev35 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %69 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev35, align 4
  %name36 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.116, ptr noundef %name36, i32 noundef %call29) #15
  br label %if.then106

land.lhs.true40:                                  ; preds = %cond.end.land.lhs.true40_crit_edge, %land.lhs.true26.land.lhs.true40_crit_edge
  %get_streaminfo = getelementptr inbounds %struct.delta_dec, ptr %64, i32 0, i32 9
  %71 = ptrtoint ptr %get_streaminfo to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_streaminfo, align 4
  %tobool41.not = icmp eq ptr %72, null
  br i1 %tobool41.not, label %land.lhs.true40.land.lhs.true68_crit_edge, label %cond.end46

land.lhs.true40.land.lhs.true68_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true68

cond.end46:                                       ; preds = %land.lhs.true40
  %call44 = tail call i32 %72(ptr noundef %1, ptr noundef %streaminfo2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool48.not = icmp eq i32 %call44, 0
  br i1 %tobool48.not, label %cond.end46.land.lhs.true68_crit_edge, label %do.body50

cond.end46.land.lhs.true68_crit_edge:             ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true68

do.body50:                                        ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_au_start_streaming.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_au_start_streaming, %land.lhs.true56)) #12
          to label %if.then106 [label %land.lhs.true56], !srcloc !385

land.lhs.true56:                                  ; preds = %do.body50
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @delta_vb2_au_start_streaming._rs, ptr noundef nonnull @.str.114) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.then106_crit_edge, label %if.then59

land.lhs.true56.if.then106_crit_edge:             ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  %dev60 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev60, align 4
  %name61 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_au_start_streaming.descriptor, ptr noundef %74, ptr noundef nonnull @.str.119, ptr noundef %name61) #12
  br label %if.then106

land.lhs.true68:                                  ; preds = %cond.end46.land.lhs.true68_crit_edge, %land.lhs.true40.land.lhs.true68_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %storemerge.in = load i32, ptr %1, align 4
  %storemerge = or i32 %storemerge.in, 1
  store i32 %storemerge, ptr %1, align 4
  %get_frameinfo = getelementptr inbounds %struct.delta_dec, ptr %64, i32 0, i32 10
  %76 = ptrtoint ptr %get_frameinfo to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_frameinfo, align 4
  %tobool69.not = icmp eq ptr %77, null
  br i1 %tobool69.not, label %land.lhs.true68.if.end78_crit_edge, label %cond.end74

land.lhs.true68.if.end78_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

cond.end74:                                       ; preds = %land.lhs.true68
  %call72 = tail call i32 %77(ptr noundef %1, ptr noundef %frameinfo3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool76.not = icmp eq i32 %call72, 0
  br i1 %tobool76.not, label %cond.end74.if.end78_crit_edge, label %cond.end74.if.then106_crit_edge

cond.end74.if.then106_crit_edge:                  ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

cond.end74.if.end78_crit_edge:                    ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.end78:                                         ; preds = %cond.end74.if.end78_crit_edge, %land.lhs.true68.if.end78_crit_edge, %if.end66.thread188
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %1, align 4
  %or80 = or i32 %79, 2
  store i32 %or80, ptr %1, align 4
  %80 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_au_start_streaming.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_au_start_streaming, %if.then94)) #12
          to label %do.end104 [label %if.then94], !srcloc !385

if.then94:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %dev95 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %81 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev95, align 4
  %name96 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  %call99 = call ptr @delta_streaminfo_str(ptr noundef %streaminfo2, ptr noundef nonnull %str1, i32 noundef 100) #12
  %call101 = call ptr @delta_frameinfo_str(ptr noundef %frameinfo3, ptr noundef nonnull %str2, i32 noundef 100) #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_au_start_streaming.__UNIQUE_ID_ddebug329, ptr noundef %82, ptr noundef nonnull @.str.120, ptr noundef %name96, ptr noundef %call99, ptr noundef %call101) #12
  br label %do.end104

do.end104:                                        ; preds = %if.then94, %if.end78
  %au_num.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 7
  %83 = ptrtoint ptr %au_num.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %au_num.i, align 4
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %au_num.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %85 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %sequence.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 5) #12
  br label %cleanup

if.then106:                                       ; preds = %cond.end74.if.then106_crit_edge, %if.then59, %land.lhs.true56.if.then106_crit_edge, %do.body50, %do.end34
  %ret.0197 = phi i32 [ %call44, %do.body50 ], [ %call72, %cond.end74.if.then106_crit_edge ], [ %call44, %land.lhs.true56.if.then106_crit_edge ], [ %call44, %if.then59 ], [ %call29, %do.end34 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 3) #12
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %do.end, %if.then8.if.end107_crit_edge
  %ret.0198 = phi i32 [ %ret.0197, %if.then106 ], [ -22, %do.end ], [ %call11, %if.then8.if.end107_crit_edge ]
  %m2m_ctx109 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 1, i32 10
  %86 = ptrtoint ptr %m2m_ctx109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %m2m_ctx109, align 4
  %out_q_ctx.i179205 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %87, i32 0, i32 8
  %call.i180206 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i179205) #12
  %tobool111.not207 = icmp eq ptr %call.i180206, null
  br i1 %tobool111.not207, label %if.end107.cleanup_crit_edge, label %if.end107.while.body_crit_edge

if.end107.while.body_crit_edge:                   ; preds = %if.end107
  br label %while.body

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end107.while.body_crit_edge
  %call.i180208 = phi ptr [ %call.i180, %while.body.while.body_crit_edge ], [ %call.i180206, %if.end107.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i180208, i32 noundef 3) #12
  %88 = ptrtoint ptr %m2m_ctx109 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %m2m_ctx109, align 4
  %out_q_ctx.i179 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %89, i32 0, i32 8
  %call.i180 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i179) #12
  %tobool111.not = icmp eq ptr %call.i180, null
  br i1 %tobool111.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %do.end104, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end104 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0198, %if.end107.cleanup_crit_edge ], [ %ret.0198, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str2) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dec) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_vb2_au_stop_streaming(ptr nocapture noundef readonly %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dts1.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %dts1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dts1.i, align 4
  %cmp.not20.i = icmp eq ptr %3, %dts1.i
  br i1 %cmp.not20.i, label %entry.delta_flush_dts.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.delta_flush_dts.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_flush_dts.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dts.021.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dts.021.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0.i = load ptr, ptr %dts.021.i, align 8
  tail call void @kfree(ptr noundef %dts.021.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %dts1.i
  br i1 %cmp.not.i, label %for.body.i.delta_flush_dts.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.delta_flush_dts.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_flush_dts.exit

delta_flush_dts.exit:                             ; preds = %for.body.i.delta_flush_dts.exit_crit_edge, %entry.delta_flush_dts.exit_crit_edge
  %5 = ptrtoint ptr %dts1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dts1.i, ptr %dts1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dts1.i, ptr %prev.i.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i5 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %call.i6 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i5) #12
  %tobool.not7 = icmp eq ptr %call.i6, null
  br i1 %tobool.not7, label %delta_flush_dts.exit.while.end_crit_edge, label %delta_flush_dts.exit.while.body_crit_edge

delta_flush_dts.exit.while.body_crit_edge:        ; preds = %delta_flush_dts.exit
  br label %while.body

delta_flush_dts.exit.while.end_crit_edge:         ; preds = %delta_flush_dts.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %delta_flush_dts.exit.while.body_crit_edge
  %call.i8 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i6, %delta_flush_dts.exit.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i8, i32 noundef 6) #12
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %delta_flush_dts.exit.while.end_crit_edge
  %au_num = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %au_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %au_num, align 4
  %aborting = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %aborting, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_vb2_au_queue(ptr noundef %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @delta_open_decoder(ptr noundef %ctx, i32 noundef %streamformat, i32 noundef %pixelformat, ptr nocapture noundef writeonly %pdec) unnamed_addr #3 align 64 {
entry:
  %streamformat.addr = alloca i32, align 4
  %pixelformat.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %streamformat.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %streamformat, ptr %streamformat.addr, align 4
  %1 = ptrtoint ptr %pixelformat.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pixelformat, ptr %pixelformat.addr, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pixelformat1 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %pixelformat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat1, align 4
  %nb_of_decoders.i = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_decoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 9, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.delta_dec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp2.i = icmp eq i32 %11, %5
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.delta_dec, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %streamformat)
  %cmp4.i = icmp eq i32 %13, %streamformat
  br i1 %cmp4.i, label %delta_find_decoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

delta_find_decoder.exit:                          ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %delta_find_decoder.exit.do.end_crit_edge, label %do.body3

delta_find_decoder.exit.do.end_crit_edge:         ; preds = %delta_find_decoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %delta_find_decoder.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.121, ptr noundef %name, ptr noundef nonnull %streamformat.addr, ptr noundef nonnull %pixelformat.addr) #15
  br label %cleanup

do.body3:                                         ; preds = %delta_find_decoder.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_open_decoder.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_open_decoder, %if.then8)) #12
          to label %do.end14 [label %if.then8], !srcloc !385

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %dev9 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  %name10 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_open_decoder.__UNIQUE_ID_ddebug303, ptr noundef %17, ptr noundef nonnull @.str.123, ptr noundef %name10, ptr noundef nonnull %streamformat.addr, ptr noundef nonnull %pixelformat.addr) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3
  %name15 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %instance_id = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %instance_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %instance_id, align 4
  %conv = zext i8 %19 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name15, i32 noundef 100, ptr noundef nonnull @.str.124, i32 noundef %conv, ptr noundef nonnull %streamformat.addr)
  %open = getelementptr inbounds %struct.delta_dec, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %open, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %do.end14.do.body31_crit_edge, label %cond.end

do.end14.do.body31_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

cond.end:                                         ; preds = %do.end14
  %call21 = call i32 %21(ptr noundef %ctx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cond.end.do.body31_crit_edge, label %do.end26

cond.end.do.body31_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

do.end26:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev27 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.126, ptr noundef %name15, i32 noundef %call21) #15
  br label %cleanup

do.body31:                                        ; preds = %cond.end.do.body31_crit_edge, %do.end14.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_open_decoder.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_open_decoder, %if.then43)) #12
          to label %do.end50 [label %if.then43], !srcloc !385

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  %dev44 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev44, align 4
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_open_decoder.__UNIQUE_ID_ddebug304, ptr noundef %25, ptr noundef nonnull @.str.128, ptr noundef %name15, ptr noundef %27) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body31
  %28 = ptrtoint ptr %pdec to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %9, ptr %pdec, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.end26, %do.end
  %retval.0 = phi i32 [ %call21, %do.end26 ], [ 0, %do.end50 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @delta_streaminfo_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @delta_frameinfo_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_vb2_frame_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %size3 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 10, i32 6
  %4 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size3, align 4
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_frame_queue_setup, %if.then7)) #12
          to label %do.end [label %if.then7], !srcloc !385

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug330, ptr noundef %9, ptr noundef nonnull @.str.130, ptr noundef %name, i32 noundef %11, i32 noundef 1) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %12 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_buffers, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %dpb = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %dpb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dpb, align 4
  %add = add i32 %14, 2
  %15 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers, align 4
  %add10 = add i32 %add, %16
  store i32 %add10, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %add10)
  %cmp11 = icmp ugt i32 %add10, 21
  br i1 %cmp11, label %do.body13, label %if.end9.if.end32_crit_edge

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body13:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_frame_queue_setup, %if.then25)) #12
          to label %do.end31 [label %if.then25], !srcloc !385

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev26, align 4
  %name27 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_buffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug331, ptr noundef %18, ptr noundef nonnull @.str.131, ptr noundef %name27, i32 noundef %20, i32 noundef 21) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body13
  %21 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21, ptr %num_buffers, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.end9.if.end32_crit_edge
  %22 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %5)
  %cmp35 = icmp ult i32 %25, %5
  %cond = select i1 %cmp35, i32 -22, i32 0
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %num_planes, align 4
  %27 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %5, ptr %sizes, align 4
  %nb_of_frames = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %nb_of_frames to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %nb_of_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34
  %retval.0 = phi i32 [ %cond, %if.then34 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_vb2_frame_prepare(ptr noundef %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %prepared = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 3
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prepared, align 8, !range !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %index4 = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index4, align 4
  %call6 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #12
  %vaddr = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 5
  %11 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %vaddr, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #12
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %paddr = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 6
  %14 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %paddr, align 4
  %info = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 2
  %frameinfo = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 10
  %15 = call ptr @memcpy(ptr %info, ptr %frameinfo, i32 72)
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dec1.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %dec1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dec1.i, align 4
  %20 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %21)
  %cmp.i = icmp ugt i32 %21, 20
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i = getelementptr inbounds %struct.delta_dev, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.135, ptr noundef %name.i, i32 noundef %21, i32 noundef 21) #15
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %nb_of_frames.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nb_of_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %25)
  %cmp4.i = icmp ugt i32 %25, 20
  br i1 %cmp4.i, label %do.end8.i, label %if.end13.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev9.i = getelementptr inbounds %struct.delta_dev, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev9.i, align 4
  %name10.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.138, ptr noundef %name10.i, i32 noundef %25, i32 noundef 21) #15
  br label %do.end

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp16.not.i = icmp eq i32 %21, %25
  br i1 %cmp16.not.i, label %if.end13.i.if.end26.i_crit_edge, label %do.end20.i

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev21.i = getelementptr inbounds %struct.delta_dev, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev21.i, align 4
  %name22.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.141, ptr noundef %name22.i, i32 noundef %25, i32 noundef %21) #15
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %if.end13.i.if.end26.i_crit_edge
  %state.i = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 7
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state.i, align 8
  %31 = ptrtoint ptr %nb_of_frames.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nb_of_frames.i, align 4
  %arrayidx.i = getelementptr %struct.delta_ctx, ptr %3, i32 0, i32 12, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vb, ptr %arrayidx.i, align 4
  %34 = load i32, ptr %nb_of_frames.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %nb_of_frames.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end26.i.if.end_crit_edge, label %land.lhs.true.i

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end26.i
  %setup_frame.i = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 8
  %35 = ptrtoint ptr %setup_frame.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %setup_frame.i, align 4
  %tobool29.not.i = icmp eq ptr %36, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.end_crit_edge, label %delta_setup_frame.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

delta_setup_frame.exit:                           ; preds = %land.lhs.true.i
  %call.i59 = tail call i32 %36(ptr noundef %3, ptr noundef %vb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool10.not = icmp eq i32 %call.i59, 0
  br i1 %tobool10.not, label %delta_setup_frame.exit.if.end_crit_edge, label %delta_setup_frame.exit.do.end_crit_edge

delta_setup_frame.exit.do.end_crit_edge:          ; preds = %delta_setup_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

delta_setup_frame.exit.if.end_crit_edge:          ; preds = %delta_setup_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %delta_setup_frame.exit.do.end_crit_edge, %do.end8.i, %do.end.i
  %retval.0.i6067 = phi i32 [ %call.i59, %delta_setup_frame.exit.do.end_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end8.i ]
  %dev12 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.132, ptr noundef %name, i32 noundef %retval.0.i6067) #15
  br label %cleanup

if.end:                                           ; preds = %delta_setup_frame.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end26.i.if.end_crit_edge
  %39 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %prepared, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_vb2_frame_prepare.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_frame_prepare, %if.then20)) #12
          to label %if.end30 [label %if.then20], !srcloc !385

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev21 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %40 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev21, align 4
  %name22 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  %44 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vaddr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_vb2_frame_prepare.__UNIQUE_ID_ddebug332, ptr noundef %41, ptr noundef nonnull @.str.134, ptr noundef %name22, i32 noundef %43, ptr noundef %45, ptr noundef %paddr) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then20, %if.end, %entry.if.end30_crit_edge
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %flags31 = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 8
  %48 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %flags31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %retval.0.i6067, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_vb2_frame_finish(ptr nocapture noundef %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  %size = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.i = icmp ult i32 %5, %3
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !390

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.143, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %7, %if.then38.i ], [ %3, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %entry.vb2_set_plane_payload.exit_crit_edge
  %dts = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 9
  %9 = ptrtoint ptr %dts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dts, align 8
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 5
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %timestamp, align 8
  %field = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 10
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 8
  %field4 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %14 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field4, align 4
  %flags = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %17 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags5, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_vb2_frame_stop_streaming(ptr nocapture noundef readonly %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dec1 = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec1, align 4
  %dts1.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %dts1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dts1.i, align 4
  %cmp.not20.i = icmp eq ptr %5, %dts1.i
  br i1 %cmp.not20.i, label %entry.delta_flush_dts.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.delta_flush_dts.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_flush_dts.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dts.021.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %dts.021.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %next.0.i = load ptr, ptr %dts.021.i, align 8
  tail call void @kfree(ptr noundef %dts.021.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %dts1.i
  br i1 %cmp.not.i, label %for.body.i.delta_flush_dts.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.delta_flush_dts.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_flush_dts.exit

delta_flush_dts.exit:                             ; preds = %for.body.i.delta_flush_dts.exit_crit_edge, %entry.delta_flush_dts.exit_crit_edge
  %7 = ptrtoint ptr %dts1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dts1.i, ptr %dts1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dts1.i, ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %delta_flush_dts.exit.cond.end_crit_edge, label %land.lhs.true

delta_flush_dts.exit.cond.end_crit_edge:          ; preds = %delta_flush_dts.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true:                                    ; preds = %delta_flush_dts.exit
  %flush = getelementptr inbounds %struct.delta_dec, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flush, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 %10(ptr noundef %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %delta_flush_dts.exit.cond.end_crit_edge
  %nb_of_frames = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %nb_of_frames to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_of_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp21.not = icmp eq i32 %12, 0
  br i1 %cmp21.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.delta_ctx, ptr %1, i32 0, i32 12, i32 %i.022
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.delta_frame, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef %14, i32 noundef 6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %state, align 8
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %nb_of_frames to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nb_of_frames, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %cond.end.for.end_crit_edge
  %frame_num = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %frame_num to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %frame_num, align 4
  %aborting = getelementptr inbounds %struct.delta_ctx, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %aborting, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_vb2_frame_queue(ptr noundef %vb) #3 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %8 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %9 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %ev.i, align 8
  %size.i = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %size.i, align 8
  %flags.i = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 8
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %12, 1048576
  store i32 %or.i, ptr %flags.i, align 4
  tail call fastcc void @delta_frame_done(ptr noundef %3, ptr noundef %vb) #12
  %fh.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 1
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull %ev.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_complete_eos.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_vb2_frame_queue, %if.then.i)) #12
          to label %delta_complete_eos.exit [label %if.then.i], !srcloc !385

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev3.i = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 20
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_complete_eos.__UNIQUE_ID_ddebug318, ptr noundef %14, ptr noundef nonnull @.str.145, ptr noundef %name.i) #12
  br label %delta_complete_eos.exit

delta_complete_eos.exit:                          ; preds = %if.then.i, %if.then
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %state, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec1.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dec1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dec1.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %land.lhs.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %recycle.i = getelementptr inbounds %struct.delta_dec, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %recycle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recycle.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.end.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %19(ptr noundef %3, ptr noundef %vb) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %land.lhs.true.i.cond.end.i_crit_edge, %if.end.cond.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 7
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 8
  %and.i = and i32 %21, -9
  store i32 %and.i, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i14, label %cond.end.i.delta_recycle.exit_crit_edge

cond.end.i.delta_recycle.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delta_recycle.exit

if.then.i14:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %m2m_ctx.i = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx.i, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %23, ptr noundef %vb) #12
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %state.i, align 8
  br label %delta_recycle.exit

delta_recycle.exit:                               ; preds = %if.then.i14, %cond.end.i.delta_recycle.exit_crit_edge
  %flags.i15 = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 8
  %25 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i15, align 4
  %dts.i = getelementptr inbounds %struct.delta_frame, ptr %vb, i32 0, i32 9
  %26 = ptrtoint ptr %dts.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %dts.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %delta_recycle.exit, %delta_complete_eos.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_trace_summary(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.26, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %vdev = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.148, ptr noundef %9)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_enum_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %nb_of_pixelformats = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %nb_of_pixelformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_pixelformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !390

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 11, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_enum_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %nb_of_streamformats = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %nb_of_streamformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_streamformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !390

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 13, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_g_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #3 align 64 {
entry:
  %str = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %frameinfo1 = getelementptr i8, ptr %1, i32 464
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #12
  %4 = call ptr @memset(ptr %str, i32 0, i32 100)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_g_fmt_frame.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_g_fmt_frame, %if.then7)) #12
          to label %if.end11 [label %if.then7], !srcloc !385

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev8, align 4
  %name = getelementptr i8, ptr %1, i32 656
  %call10 = call ptr @delta_frameinfo_str(ptr noundef %frameinfo1, ptr noundef nonnull %str, i32 noundef 100) #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_g_fmt_frame.__UNIQUE_ID_ddebug306, ptr noundef %8, ptr noundef nonnull @.str.150, ptr noundef %name, ptr noundef %call10) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body, %entry.if.end11_crit_edge
  %pixelformat = getelementptr i8, ptr %1, i32 468
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %pixelformat12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pixelformat12, align 4
  %aligned_width = getelementptr i8, ptr %1, i32 480
  %12 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aligned_width, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %aligned_height = getelementptr i8, ptr %1, i32 484
  %15 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aligned_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height, align 4
  %field = getelementptr i8, ptr %1, i32 516
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field13, align 4
  %21 = load i32, ptr %aligned_width, align 4
  %22 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %22)
  %cond.i = icmp eq i32 %22, 842094158
  %w..i = select i1 %cond.i, i32 %21, i32 0
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %w..i, ptr %bytesperline, align 4
  %size = getelementptr i8, ptr %1, i32 488
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sizeimage, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %and18 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end11.if.end25_crit_edge, label %if.then20

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %colorspace = getelementptr i8, ptr %1, i32 448
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace, align 4
  %colorspace21 = getelementptr i8, ptr %1, i32 520
  %31 = ptrtoint ptr %colorspace21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace21, align 4
  %xfer_func = getelementptr i8, ptr %1, i32 452
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func, align 4
  %xfer_func22 = getelementptr i8, ptr %1, i32 524
  %34 = ptrtoint ptr %xfer_func22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xfer_func22, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 456
  %35 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ycbcr_enc, align 4
  %ycbcr_enc23 = getelementptr i8, ptr %1, i32 528
  %37 = ptrtoint ptr %ycbcr_enc23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ycbcr_enc23, align 4
  %quantization = getelementptr i8, ptr %1, i32 460
  %38 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quantization, align 4
  %quantization24 = getelementptr i8, ptr %1, i32 532
  %40 = ptrtoint ptr %quantization24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %quantization24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end11.if.end25_crit_edge
  %colorspace26 = getelementptr i8, ptr %1, i32 520
  %41 = ptrtoint ptr %colorspace26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorspace26, align 4
  %colorspace27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %colorspace27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %colorspace27, align 4
  %xfer_func28 = getelementptr i8, ptr %1, i32 524
  %44 = ptrtoint ptr %xfer_func28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xfer_func28, align 4
  %xfer_func29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %xfer_func29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %xfer_func29, align 4
  %ycbcr_enc30 = getelementptr i8, ptr %1, i32 528
  %47 = ptrtoint ptr %ycbcr_enc30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ycbcr_enc30, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %49, align 4
  %quantization31 = getelementptr i8, ptr %1, i32 532
  %51 = ptrtoint ptr %quantization31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %quantization31, align 4
  %quantization32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %quantization32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %quantization32, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_g_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #3 align 64 {
entry:
  %str = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %streaminfo1 = getelementptr i8, ptr %1, i32 304
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #12
  %4 = call ptr @memset(ptr %str, i32 0, i32 100)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_g_fmt_stream.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_g_fmt_stream, %if.then6)) #12
          to label %if.end10 [label %if.then6], !srcloc !385

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 4
  %name = getelementptr i8, ptr %1, i32 656
  %call9 = call ptr @delta_streaminfo_str(ptr noundef %streaminfo1, ptr noundef nonnull %str, i32 noundef 100) #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_g_fmt_stream.__UNIQUE_ID_ddebug305, ptr noundef %8, ptr noundef nonnull @.str.152, ptr noundef %name, ptr noundef %call9) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body, %entry.if.end10_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %streamformat = getelementptr i8, ptr %1, i32 308
  %9 = ptrtoint ptr %streamformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streamformat, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pixelformat, align 4
  %width = getelementptr i8, ptr %1, i32 312
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr i8, ptr %1, i32 316
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height12, align 4
  %field = getelementptr i8, ptr %1, i32 348
  %18 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field, align 4
  %field13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field13, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bytesperline, align 4
  %max_au_size = getelementptr i8, ptr %1, i32 300
  %22 = ptrtoint ptr %max_au_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_au_size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sizeimage, align 4
  %colorspace = getelementptr i8, ptr %1, i32 448
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %colorspace14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %colorspace14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace14, align 4
  %xfer_func = getelementptr i8, ptr %1, i32 452
  %28 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_func, align 4
  %xfer_func15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xfer_func15, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 456
  %31 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ycbcr_enc, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  %quantization = getelementptr i8, ptr %1, i32 460
  %35 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %quantization, align 4
  %quantization16 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %quantization16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %quantization16, align 4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_s_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #3 align 64 {
entry:
  %frameinfo = alloca %struct.delta_frameinfo, align 4
  %str = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dec1 = getelementptr i8, ptr %1, i32 196
  %4 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %frameinfo) #12
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #12
  %6 = call ptr @memset(ptr %str, i32 0, i32 100)
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %8, i32 noundef %10) #12
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 28
  %11 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_s_fmt_frame, %if.then8)) #12
          to label %cleanup [label %if.then8], !srcloc !385

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev9 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %name = getelementptr i8, ptr %1, i32 656
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_s_fmt_frame.__UNIQUE_ID_ddebug315, ptr noundef %13, ptr noundef nonnull @.str.154, ptr noundef %name) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 288
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp ult i32 %15, 2
  br i1 %cmp, label %if.then11, label %if.end35

if.then11:                                        ; preds = %if.end10
  %call12 = tail call i32 @delta_try_fmt_frame(ptr noundef %file, ptr noundef %fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.body15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_s_fmt_frame, %if.then27)) #12
          to label %cleanup [label %if.then27], !srcloc !385

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %dev28 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 4
  %name29 = getelementptr i8, ptr %1, i32 656
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_s_fmt_frame.__UNIQUE_ID_ddebug316, ptr noundef %17, ptr noundef nonnull @.str.155, ptr noundef %name29, ptr noundef %pixelformat) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end10
  %18 = call ptr @memset(ptr %frameinfo, i32 0, i32 52)
  %pixelformat36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixelformat36, align 4
  %pixelformat37 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 1
  %21 = ptrtoint ptr %pixelformat37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pixelformat37, align 4
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt, align 4
  %width38 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 2
  %24 = ptrtoint ptr %width38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %width38, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %height39 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 3
  %27 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height39, align 4
  %aligned_width = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 4
  %28 = ptrtoint ptr %aligned_width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %aligned_width, align 4
  %aligned_height = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 5
  %29 = ptrtoint ptr %aligned_height to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %aligned_height, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sizeimage, align 4
  %size = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 6
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %size, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field, align 4
  %field42 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 9
  %35 = ptrtoint ptr %field42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %field42, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %colorspace, align 4
  %colorspace43 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 10
  %38 = ptrtoint ptr %colorspace43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %colorspace43, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xfer_func, align 4
  %xfer_func44 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 11
  %41 = ptrtoint ptr %xfer_func44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %xfer_func44, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %ycbcr_enc = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 12
  %45 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quantization, align 4
  %quantization45 = getelementptr inbounds %struct.delta_frameinfo, ptr %frameinfo, i32 0, i32 13
  %48 = ptrtoint ptr %quantization45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %quantization45, align 4
  %tobool46.not = icmp eq ptr %5, null
  br i1 %tobool46.not, label %if.end35.if.end64_crit_edge, label %land.lhs.true

if.end35.if.end64_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end35
  %set_frameinfo = getelementptr inbounds %struct.delta_dec, ptr %5, i32 0, i32 11
  %49 = ptrtoint ptr %set_frameinfo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_frameinfo, align 4
  %tobool47.not = icmp eq ptr %50, null
  br i1 %tobool47.not, label %land.lhs.true.land.lhs.true54_crit_edge, label %cond.end

land.lhs.true.land.lhs.true54_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true54

cond.end:                                         ; preds = %land.lhs.true
  %call49 = call i32 %50(ptr noundef %add.ptr, ptr noundef nonnull %frameinfo) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cond.end.land.lhs.true54_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end.land.lhs.true54_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true54

land.lhs.true54:                                  ; preds = %cond.end.land.lhs.true54_crit_edge, %land.lhs.true.land.lhs.true54_crit_edge
  %get_frameinfo = getelementptr inbounds %struct.delta_dec, ptr %5, i32 0, i32 10
  %51 = ptrtoint ptr %get_frameinfo to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_frameinfo, align 4
  %tobool55.not = icmp eq ptr %52, null
  br i1 %tobool55.not, label %land.lhs.true54.if.end64_crit_edge, label %cond.end60

land.lhs.true54.if.end64_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

cond.end60:                                       ; preds = %land.lhs.true54
  %call58 = call i32 %52(ptr noundef %add.ptr, ptr noundef nonnull %frameinfo) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool62.not = icmp eq i32 %call58, 0
  br i1 %tobool62.not, label %cond.end60.if.end64_crit_edge, label %cond.end60.cleanup_crit_edge

cond.end60.cleanup_crit_edge:                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end60.if.end64_crit_edge:                    ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end64:                                         ; preds = %cond.end60.if.end64_crit_edge, %land.lhs.true54.if.end64_crit_edge, %if.end35.if.end64_crit_edge
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr, align 4
  %or = or i32 %54, 2
  store i32 %or, ptr %add.ptr, align 4
  %frameinfo65 = getelementptr i8, ptr %1, i32 464
  %55 = call ptr @memcpy(ptr %frameinfo65, ptr %frameinfo, i32 72)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_s_fmt_frame, %if.then78)) #12
          to label %do.end86 [label %if.then78], !srcloc !385

if.then78:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %dev79 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %56 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev79, align 4
  %name80 = getelementptr i8, ptr %1, i32 656
  %call83 = call ptr @delta_frameinfo_str(ptr noundef nonnull %frameinfo, ptr noundef nonnull %str, i32 noundef 100) #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_s_fmt_frame.__UNIQUE_ID_ddebug317, ptr noundef %57, ptr noundef nonnull @.str.156, ptr noundef %name80, ptr noundef %call83) #12
  br label %do.end86

do.end86:                                         ; preds = %if.then78, %if.end64
  %58 = ptrtoint ptr %pixelformat37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixelformat37, align 4
  %60 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %pixelformat36, align 4
  %61 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aligned_width, align 4
  %63 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %fmt, align 4
  %64 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %aligned_height, align 4
  %66 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %59)
  %cond.i = icmp eq i32 %59, 842094158
  %w..i = select i1 %cond.i, i32 %62, i32 0
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %67 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %w..i, ptr %bytesperline, align 4
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size, align 4
  %70 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sizeimage, align 4
  %71 = ptrtoint ptr %field42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %field42, align 4
  %73 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %field, align 4
  %74 = ptrtoint ptr %colorspace43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %colorspace43, align 4
  %76 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %colorspace, align 4
  %77 = ptrtoint ptr %xfer_func44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xfer_func44, align 4
  %79 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %xfer_func, align 4
  %80 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ycbcr_enc, align 4
  %82 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %42, align 4
  %83 = ptrtoint ptr %quantization45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %quantization45, align 4
  %85 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %quantization, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %cond.end60.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.then27, %do.body15, %if.then11.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %do.end86 ], [ -16, %if.then8 ], [ %call12, %if.then27 ], [ 0, %if.then11.cleanup_crit_edge ], [ %call49, %cond.end.cleanup_crit_edge ], [ %call58, %cond.end60.cleanup_crit_edge ], [ -16, %do.body ], [ %call12, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %frameinfo) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_s_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call = tail call i32 @delta_try_fmt_stream(ptr noundef %file, ptr noundef %fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_s_fmt_stream.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_s_fmt_stream, %if.then6)) #12
          to label %cleanup [label %if.then6], !srcloc !385

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  %name = getelementptr i8, ptr %1, i32 656
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_s_fmt_stream.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.158, ptr noundef %name, ptr noundef %pixelformat) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %call10 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef %9) #12
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call10, i32 0, i32 28
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_s_fmt_stream.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_s_fmt_stream, %if.then25)) #12
          to label %cleanup [label %if.then25], !srcloc !385

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev26, align 4
  %name27 = getelementptr i8, ptr %1, i32 656
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_s_fmt_stream.__UNIQUE_ID_ddebug314, ptr noundef %12, ptr noundef nonnull @.str.159, ptr noundef %name27) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage, align 4
  %max_au_size = getelementptr i8, ptr %1, i32 300
  %15 = ptrtoint ptr %max_au_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_au_size, align 4
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt, align 4
  %width33 = getelementptr i8, ptr %1, i32 312
  %18 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width33, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height35 = getelementptr i8, ptr %1, i32 316
  %21 = ptrtoint ptr %height35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height35, align 4
  %pixelformat36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat36, align 4
  %streamformat = getelementptr i8, ptr %1, i32 308
  %24 = ptrtoint ptr %streamformat to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %streamformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %colorspace39 = getelementptr i8, ptr %1, i32 448
  %27 = ptrtoint ptr %colorspace39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace39, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_func, align 4
  %xfer_func41 = getelementptr i8, ptr %1, i32 452
  %30 = ptrtoint ptr %xfer_func41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xfer_func41, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 456
  %34 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %quantization, align 4
  %quantization44 = getelementptr i8, ptr %1, i32 460
  %37 = ptrtoint ptr %quantization44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %quantization44, align 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 4
  %or = or i32 %39, 1
  store i32 %or, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then25, %do.body13, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %call, %if.then6 ], [ -16, %if.then25 ], [ %call, %do.body ], [ -16, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_try_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #3 align 64 {
entry:
  %pixelformat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixelformat) #12
  %pixelformat1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat1, align 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  %streamformat = getelementptr i8, ptr %1, i32 308
  %7 = ptrtoint ptr %streamformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streamformat, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %nb_of_decoders.i = getelementptr inbounds %struct.delta_dev, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_of_decoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.not.i = icmp eq i32 %12, 0
  br i1 %cmp12.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_dev, ptr %10, i32 0, i32 9, i32 %i.013.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.delta_dec, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp2.i = icmp eq i32 %16, %5
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.delta_dec, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp4.i = icmp eq i32 %18, %8
  br i1 %cmp4.i, label %delta_find_decoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

delta_find_decoder.exit:                          ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %delta_find_decoder.exit.do.body_crit_edge, label %if.end9

delta_find_decoder.exit.do.body_crit_edge:        ; preds = %delta_find_decoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %delta_find_decoder.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_frame, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !385

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev8, align 4
  %name = getelementptr i8, ptr %1, i32 656
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_frame.__UNIQUE_ID_ddebug310, ptr noundef %20, ptr noundef nonnull @.str.161, ptr noundef %name, ptr noundef nonnull %pixelformat) #12
  br label %cleanup

if.end9:                                          ; preds = %delta_find_decoder.exit
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %5)
  %switch.selectcmp.case1.i = icmp eq i32 %5, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %5)
  %switch.selectcmp.case2.i = icmp eq i32 %5, 825382478
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %sub = zext i1 %switch.selectcmp.i to i32
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef 4096, i32 noundef %sub, ptr noundef %height11, i32 noundef 32, i32 noundef 2400, i32 noundef %sub, i32 noundef 0) #12
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp.not = icmp eq i32 %26, %22
  br i1 %cmp.not, label %lor.lhs.false, label %if.end9.do.body21_crit_edge

if.end9.do.body21_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

lor.lhs.false:                                    ; preds = %if.end9
  %27 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp19.not = icmp eq i32 %28, %24
  br i1 %cmp19.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.body21:                                        ; preds = %lor.lhs.false.do.body21_crit_edge, %if.end9.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_frame, %if.then33)) #12
          to label %if.end42 [label %if.then33], !srcloc !385

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %dev34 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev34, align 4
  %name35 = getelementptr i8, ptr %1, i32 656
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt, align 4
  %33 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_frame.__UNIQUE_ID_ddebug311, ptr noundef %30, ptr noundef nonnull @.str.162, ptr noundef %name35, i32 noundef %22, i32 noundef %24, i32 noundef %32, i32 noundef %34) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %do.body21, %lor.lhs.false.if.end42_crit_edge
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt, align 4
  %add = add i32 %36, 31
  %and = and i32 %add, -32
  %37 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height11, align 4
  %add45 = add i32 %38, 31
  %and46 = and i32 %add45, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %and)
  %cmp48.not = icmp eq i32 %36, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and46)
  %cmp51.not = icmp eq i32 %38, %and46
  %or.cond = select i1 %cmp48.not, i1 %cmp51.not, i1 false
  br i1 %or.cond, label %if.end42.if.end74_crit_edge, label %do.body53

if.end42.if.end74_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

do.body53:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_frame, %if.then65)) #12
          to label %if.end74 [label %if.then65], !srcloc !385

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %dev66 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev66, align 4
  %name67 = getelementptr i8, ptr %1, i32 656
  %41 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmt, align 4
  %43 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_frame.__UNIQUE_ID_ddebug312, ptr noundef %40, ptr noundef nonnull @.str.163, ptr noundef %name67, i32 noundef %and, i32 noundef %and46, i32 noundef %42, i32 noundef %44) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then65, %do.body53, %if.end42.if.end74_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool75.not = icmp eq i32 %46, 0
  br i1 %tobool75.not, label %if.then76, label %if.end74.if.end78_crit_edge

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %colorspace, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %48 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %xfer_func, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %quantization, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74.if.end78_crit_edge
  %52 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and, ptr %fmt, align 4
  %53 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and46, ptr %height11, align 4
  %54 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %55)
  %cond.i = icmp eq i32 %55, 842094158
  %w..i = select i1 %cond.i, i32 %and, i32 0
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %56 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %w..i, ptr %bytesperline, align 4
  %mul.i = mul i32 %and, 3
  %mul1.i = mul i32 %mul.i, %and46
  %div2.i = lshr exact i32 %mul1.i, 1
  %retval.0.i150 = select i1 %cond.i, i32 %div2.i, i32 0
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %57 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i150, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp86 = icmp eq i32 %59, 0
  br i1 %cmp86, label %if.then87, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end78.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -22, %if.then7 ], [ 0, %if.then87 ], [ 0, %if.end78.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixelformat) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_try_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %pixelformat1 = getelementptr i8, ptr %1, i32 468
  %6 = ptrtoint ptr %pixelformat1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat1, align 4
  %nb_of_decoders.i = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %nb_of_decoders.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nb_of_decoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not.i = icmp eq i32 %9, 0
  br i1 %cmp12.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 9, i32 %i.013.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.delta_dec, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp2.i = icmp eq i32 %13, %7
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.delta_dec, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp4.i = icmp eq i32 %15, %5
  br i1 %cmp4.i, label %delta_find_decoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

delta_find_decoder.exit:                          ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %delta_find_decoder.exit.do.body_crit_edge, label %if.end10

delta_find_decoder.exit.do.body_crit_edge:        ; preds = %delta_find_decoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %delta_find_decoder.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_stream, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !385

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev8, align 4
  %name = getelementptr i8, ptr %1, i32 656
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_stream.__UNIQUE_ID_ddebug307, ptr noundef %17, ptr noundef nonnull @.str.165, ptr noundef %name, ptr noundef %pixelformat) #12
  br label %cleanup

if.end10:                                         ; preds = %delta_find_decoder.exit
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  %height12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height12, align 4
  %max_width = getelementptr inbounds %struct.delta_dec, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  %spec.select = select i1 %tobool14.not, i32 4096, i32 %23
  %max_height = getelementptr inbounds %struct.delta_dec, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  %cond22 = select i1 %tobool17.not, i32 2400, i32 %25
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef %spec.select, i32 noundef 0, ptr noundef %height12, i32 noundef 32, i32 noundef %cond22, i32 noundef 0, i32 noundef 0) #12
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp.not = icmp eq i32 %27, %19
  br i1 %cmp.not, label %lor.lhs.false, label %if.end10.do.body27_crit_edge

if.end10.do.body27_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

lor.lhs.false:                                    ; preds = %if.end10
  %28 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp25.not = icmp eq i32 %29, %21
  br i1 %cmp25.not, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false.do.body27_crit_edge

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.body27:                                        ; preds = %lor.lhs.false.do.body27_crit_edge, %if.end10.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_stream, %if.then39)) #12
          to label %if.end48 [label %if.then39], !srcloc !385

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %dev40 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev40, align 4
  %name41 = getelementptr i8, ptr %1, i32 656
  %32 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt, align 4
  %34 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_stream.__UNIQUE_ID_ddebug308, ptr noundef %31, ptr noundef nonnull @.str.166, ptr noundef %name41, i32 noundef %19, i32 noundef %21, i32 noundef %33, i32 noundef %35) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %do.body27, %lor.lhs.false.if.end48_crit_edge
  %36 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmt, align 4
  %38 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height12, align 4
  %mul.i = mul i32 %39, %37
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %40 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul.i)
  %cmp52 = icmp ult i32 %41, %mul.i
  br i1 %cmp52, label %do.body54, label %if.end48.if.end75_crit_edge

if.end48.if.end75_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.body54:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_try_fmt_stream, %if.then66)) #12
          to label %do.end73 [label %if.then66], !srcloc !385

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %dev67 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev67, align 4
  %name68 = getelementptr i8, ptr %1, i32 656
  %44 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sizeimage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_try_fmt_stream.__UNIQUE_ID_ddebug309, ptr noundef %43, ptr noundef nonnull @.str.167, ptr noundef %name68, i32 noundef %45, i32 noundef %mul.i) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then66, %do.body54
  %46 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.i, ptr %sizeimage, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.end48.if.end75_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bytesperline, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp76 = icmp eq i32 %49, 0
  br i1 %cmp76, label %if.then77, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end75.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -22, %if.then7 ], [ 0, %if.then77 ], [ 0, %if.end75.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %s) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frameinfo1 = getelementptr i8, ptr %fh, i32 464
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %fh, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %frameinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frameinfo1, align 4
  %and3 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %crop6 = getelementptr i8, ptr %fh, i32 492
  %6 = ptrtoint ptr %crop6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %crop.sroa.0.0.copyload = load i32, ptr %crop6, align 4
  %crop.sroa.6.0.crop6.sroa_idx = getelementptr i8, ptr %fh, i32 496
  %7 = ptrtoint ptr %crop.sroa.6.0.crop6.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %crop.sroa.6.0.copyload = load i32, ptr %crop.sroa.6.0.crop6.sroa_idx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %.sink37 = phi i32 [ 500, %if.then5 ], [ 472, %land.lhs.true.if.end9_crit_edge ], [ 472, %if.end.if.end9_crit_edge ]
  %.sink = phi i32 [ 504, %if.then5 ], [ 476, %land.lhs.true.if.end9_crit_edge ], [ 476, %if.end.if.end9_crit_edge ]
  %crop.sroa.6.0 = phi i32 [ %crop.sroa.6.0.copyload, %if.then5 ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  %crop.sroa.0.0 = phi i32 [ %crop.sroa.0.0.copyload, %if.then5 ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %9, label %if.end9.cleanup_crit_edge [
    i32 256, label %if.end9.sw.bb_crit_edge
    i32 257, label %if.end9.sw.bb_crit_edge38
    i32 259, label %if.end9.sw.bb10_crit_edge
    i32 258, label %if.end9.sw.bb10_crit_edge39
  ]

if.end9.sw.bb10_crit_edge39:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

if.end9.sw.bb10_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

if.end9.sw.bb_crit_edge38:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge38
  %height = getelementptr i8, ptr %fh, i32 %.sink
  %width = getelementptr i8, ptr %fh, i32 %.sink37
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %crop.sroa.8.0 = load i32, ptr %width, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %crop.sroa.10.0 = load i32, ptr %height, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %crop.sroa.0.0, ptr %r, align 4
  %crop.sroa.6.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %crop.sroa.6.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %crop.sroa.6.0, ptr %crop.sroa.6.0.r.sroa_idx, align 4
  %crop.sroa.8.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %crop.sroa.8.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %crop.sroa.8.0, ptr %crop.sroa.8.0.r.sroa_idx, align 4
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end9.sw.bb10_crit_edge, %if.end9.sw.bb10_crit_edge39
  %r11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %r11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %r11, align 4
  %top14 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %top14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %top14, align 4
  %aligned_width = getelementptr i8, ptr %fh, i32 480
  %18 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aligned_width, align 4
  %width16 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width16, align 4
  %aligned_height = getelementptr i8, ptr %fh, i32 484
  %21 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aligned_height, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %sw.bb
  %crop.sroa.10.0.sink = phi i32 [ %crop.sroa.10.0, %sw.bb ], [ %22, %sw.bb10 ]
  %crop.sroa.10.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %crop.sroa.10.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %crop.sroa.10.0.sink, ptr %crop.sroa.10.0.r.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_decoder_cmd(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end3.i
  %4 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp7.not.i = icmp eq i64 %6, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %fh, i32 -4
  tail call fastcc void @delta_decoder_stop_cmd(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_try_decoder_cmd(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %cmd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %4 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp7.not = icmp eq i64 %6, 0
  br i1 %cmp7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_subscribe_event(ptr noundef %fh, ptr noundef %sub) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #12
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delta_decoder_stop_cmd(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  %frame = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dec1 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %dec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec1, align 4
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_decoder_stop_cmd, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !385

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug319, ptr noundef %5, ptr noundef nonnull @.str.169, ptr noundef %name) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end6.cond.end_crit_edge, label %land.lhs.true

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end6
  %drain = getelementptr inbounds %struct.delta_dec, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drain, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 %9(ptr noundef %ctx) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.end6.cond.end_crit_edge
  %get_frame = getelementptr inbounds %struct.delta_dec, ptr %1, i32 0, i32 13
  %dev38 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %name39 = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 20
  %dts1.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %cond.end
  %10 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %frame, align 4
  br i1 %tobool7.not, label %while.cond.while.cond.backedge_crit_edge, label %while.cond.land.lhs.true12_crit_edge

while.cond.land.lhs.true12_crit_edge:             ; preds = %while.cond
  br label %land.lhs.true12

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %delta_pop_dts.exit, %land.lhs.true12.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge
  br label %while.cond

land.lhs.true12.critedge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %frame, align 4
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true12.critedge, %while.cond.land.lhs.true12_crit_edge
  %12 = ptrtoint ptr %get_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_frame, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true12.while.cond.backedge_crit_edge, label %cond.end18

land.lhs.true12.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

cond.end18:                                       ; preds = %land.lhs.true12
  %call16 = call i32 %13(ptr noundef %ctx, ptr noundef nonnull %frame) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call16)
  %cmp20 = icmp eq i32 %call16, -61
  br i1 %cmp20, label %while.end, label %if.end22

if.end22:                                         ; preds = %cond.end18
  %14 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %frame, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %land.lhs.true12.critedge, label %do.body25

do.body25:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_decoder_stop_cmd, %if.then37)) #12
          to label %do.end43 [label %if.then37], !srcloc !385

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev38, align 4
  %17 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frame, align 4
  %index = getelementptr inbounds %struct.delta_frame, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug320, ptr noundef %16, ptr noundef nonnull @.str.170, ptr noundef %name39, i32 noundef %20) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body25
  %21 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frame, align 4
  %dts = getelementptr inbounds %struct.delta_frame, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %dts1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %dts1.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %dts1.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i = getelementptr inbounds %struct.delta_dev, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.98, ptr noundef %name39) #15
  %29 = ptrtoint ptr %dts to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %dts, align 8
  br label %delta_pop_dts.exit

if.end.i:                                         ; preds = %do.end43
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %val4.i = getelementptr inbounds %struct.delta_dts, ptr %26, i32 0, i32 1
  %38 = ptrtoint ptr %val4.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %val4.i, align 8
  %40 = ptrtoint ptr %dts to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %dts, align 8
  call void @kfree(ptr noundef %26) #12
  br label %delta_pop_dts.exit

delta_pop_dts.exit:                               ; preds = %list_del.exit.i, %do.end.i
  %41 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %frame, align 4
  call fastcc void @delta_frame_done(ptr noundef %ctx, ptr noundef %42)
  br label %while.cond.backedge

while.end:                                        ; preds = %cond.end18
  %call45 = call i32 @delta_get_free_frame(ptr noundef %ctx, ptr noundef nonnull %frame)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %delay_eos

if.end48:                                         ; preds = %while.end
  %43 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %frame, align 4
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %47 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %48 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %ev.i, align 8
  %size.i = getelementptr inbounds %struct.delta_frame, ptr %44, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %size.i, align 8
  %flags.i = getelementptr inbounds %struct.delta_frame, ptr %44, i32 0, i32 8
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %51, 1048576
  store i32 %or.i, ptr %flags.i, align 4
  call fastcc void @delta_frame_done(ptr noundef %ctx, ptr noundef %44) #12
  %fh.i = getelementptr inbounds %struct.delta_ctx, ptr %ctx, i32 0, i32 1
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull %ev.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_complete_eos.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_decoder_stop_cmd, %if.then.i)) #12
          to label %delta_complete_eos.exit [label %if.then.i], !srcloc !385

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %dev3.i = getelementptr inbounds %struct.delta_dev, ptr %46, i32 0, i32 3
  %52 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev3.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_complete_eos.__UNIQUE_ID_ddebug318, ptr noundef %53, ptr noundef nonnull @.str.145, ptr noundef %name39) #12
  br label %delta_complete_eos.exit

delta_complete_eos.exit:                          ; preds = %if.then.i, %if.end48
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %state, align 4
  br label %cleanup

delay_eos:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_decoder_stop_cmd, %if.then63)) #12
          to label %cleanup [label %if.then63], !srcloc !385

if.then63:                                        ; preds = %delay_eos
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug321, ptr noundef %57, ptr noundef nonnull @.str.171, ptr noundef %name39) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %delay_eos, %delta_complete_eos.exit, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_ipc_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_delta = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk_delta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_delta, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %3) #12
  tail call void @clk_unprepare(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_runtime_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_delta = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk_delta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_delta, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef nonnull %3) #12
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.172) #15
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 183)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !70, !71, !73, !75, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !252, !253, !254, !255, !257, !258, !260, !262, !263, !264, !266, !267, !269, !271, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !302, !303, !304, !306, !307, !308, !310, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !329, !330, !332, !333, !334, !336, !337, !339, !340, !341, !343, !344, !346, !347, !349, !350, !351, !353, !354, !356, !357, !359, !360, !361, !363, !364, !366, !367, !369, !371, !373, !374, !375}
!llvm.module.flags = !{!376, !377, !378, !379, !380, !381, !382, !383}
!llvm.ident = !{!384}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1249, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @delta_get_free_frame._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @delta_get_free_frame._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1257, i32 3}
!10 = !{ptr @delta_get_free_frame._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @delta_get_free_frame._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1264, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @delta_get_free_frame.__UNIQUE_ID_ddebug328, !13, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1279, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @delta_get_sync._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @delta_get_sync._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_st_delta__338_1970_delta_driver_init6, !22, !"__initcall__kmod_st_delta__338_1970_delta_driver_init6", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1970, i32 1}
!23 = !{ptr @__exitcall_delta_driver_exit, !22, !"__exitcall_delta_driver_exit", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_file339, !25, !"__UNIQUE_ID_file339", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1972, i32 1}
!26 = !{ptr @__UNIQUE_ID_license340, !25, !"__UNIQUE_ID_license340", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_author341, !28, !"__UNIQUE_ID_author341", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1973, i32 1}
!29 = !{ptr @__UNIQUE_ID_description342, !30, !"__UNIQUE_ID_description342", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1974, i32 1}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1225, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dump_frames_status._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @dump_frames_status._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1230, i32 3}
!39 = !{ptr @dump_frames_status._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dump_frames_status._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 545, i32 21}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 546, i32 33}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 546, i32 41}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 547, i32 33}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 548, i32 33}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 549, i32 33}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 550, i32 33}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 551, i32 33}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1965, i32 14}
!59 = !{ptr @delta_driver, !60, !"delta_driver", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1961, i32 31}
!61 = !{ptr @delta_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1829, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1832, i32 39}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1834, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @delta_probe.__UNIQUE_ID_ddebug335, !67, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!70 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1838, i32 39}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1840, i32 3}
!75 = !{ptr @delta_probe.__UNIQUE_ID_ddebug336, !74, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1844, i32 46}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1846, i32 3}
!80 = !{ptr @delta_probe.__UNIQUE_ID_ddebug337, !79, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1860, i32 3}
!83 = !{ptr @delta_probe._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @delta_probe._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1874, i32 3}
!87 = !{ptr @delta_probe._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @delta_probe._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1879, i32 22}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1881, i32 3}
!93 = !{ptr @delta_probe._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @delta_probe._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1892, i32 2}
!97 = !{ptr @delta_probe._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @delta_probe._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 329, i32 4}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @register_decoders.__UNIQUE_ID_ddebug302, !100, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 337, i32 3}
!105 = !{ptr @register_decoders._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @register_decoders._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"delta_decoders", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 35, i32 32}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1759, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @delta_register_device._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @delta_register_device._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1767, i32 3}
!116 = !{ptr @delta_register_device._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @delta_register_device._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1780, i32 43}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1781, i32 16}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1785, i32 3}
!124 = !{ptr @delta_register_device._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @delta_register_device._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @delta_m2m_ops, !127, !"delta_m2m_ops", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1081, i32 34}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1059, i32 3}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @delta_job_ready.__UNIQUE_ID_ddebug323, !129, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1065, i32 3}
!134 = !{ptr @delta_job_ready.__UNIQUE_ID_ddebug324, !133, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1071, i32 3}
!137 = !{ptr @delta_job_ready.__UNIQUE_ID_ddebug325, !136, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1075, i32 2}
!140 = !{ptr @delta_job_ready.__UNIQUE_ID_ddebug326, !139, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1047, i32 2}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @delta_job_abort.__UNIQUE_ID_ddebug322, !142, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!145 = !{ptr @delta_fops, !146, !"delta_fops", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1736, i32 42}
!147 = !{ptr @delta_open.__key, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1643, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @delta_open.__key.68, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1644, i32 2}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1650, i32 3}
!155 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @delta_open._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @delta_open._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1665, i32 41}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1674, i32 4}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @delta_open._entry.73, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @delta_open._entry_ptr.76, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1679, i32 4}
!167 = !{ptr @delta_open._entry.77, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @delta_open._entry_ptr.79, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1683, i32 2}
!171 = !{ptr @delta_open.__UNIQUE_ID_ddebug333, !170, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 934, i32 3}
!174 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @delta_run_work._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @delta_run_work._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 943, i32 3}
!179 = !{ptr @delta_run_work._entry.83, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @delta_run_work._entry_ptr.85, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 976, i32 3}
!183 = !{ptr @delta_run_work._entry.86, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @delta_run_work._entry_ptr.88, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1002, i32 4}
!187 = !{ptr @delta_run_work._entry.89, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @delta_run_work._entry_ptr.91, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1007, i32 4}
!191 = !{ptr @delta_run_work._entry.92, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @delta_run_work._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 68, i32 3}
!195 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @dump_au.__UNIQUE_ID_ddebug299, !194, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 72, i32 3}
!199 = !{ptr @dump_au.__UNIQUE_ID_ddebug300, !198, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 187, i32 3}
!202 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @delta_pop_dts._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @delta_pop_dts._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 83, i32 2}
!207 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @dump_frame.__UNIQUE_ID_ddebug301, !206, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 516, i32 10}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 518, i32 10}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 520, i32 10}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 522, i32 10}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 523, i32 9}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 529, i32 10}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 531, i32 10}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 537, i32 10}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/sti/delta/delta.h", i32 539, i32 10}
!227 = !{ptr @delta_vb2_au_ops, !228, !"delta_vb2_au_ops", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1558, i32 29}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1128, i32 3}
!231 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @delta_vb2_au_prepare.__UNIQUE_ID_ddebug327, !230, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1339, i32 3}
!235 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @delta_vb2_au_start_streaming._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @delta_vb2_au_start_streaming._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1356, i32 3}
!240 = !{ptr @delta_vb2_au_start_streaming._entry.115, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @delta_vb2_au_start_streaming._entry_ptr.117, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1363, i32 3}
!244 = !{ptr @delta_vb2_au_start_streaming._rs, !243, !"_rs", i1 false, i1 false}
!245 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @delta_vb2_au_start_streaming.descriptor, !243, !"descriptor", i1 false, i1 false}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1377, i32 2}
!249 = !{ptr @delta_vb2_au_start_streaming.__UNIQUE_ID_ddebug329, !248, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 351, i32 3}
!252 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @delta_open_decoder._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @delta_open_decoder._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 356, i32 2}
!257 = !{ptr @delta_open_decoder.__UNIQUE_ID_ddebug303, !256, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 360, i32 41}
!260 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 366, i32 3}
!262 = !{ptr @delta_open_decoder._entry.125, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @delta_open_decoder._entry_ptr.127, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 371, i32 2}
!266 = !{ptr @delta_open_decoder.__UNIQUE_ID_ddebug304, !265, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!267 = !{ptr @delta_vb2_frame_ops, !268, !"delta_vb2_frame_ops", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1568, i32 29}
!269 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1432, i32 3}
!271 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug330, !270, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1441, i32 3}
!275 = !{ptr @delta_vb2_frame_queue_setup.__UNIQUE_ID_ddebug331, !274, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1477, i32 4}
!278 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @delta_vb2_frame_prepare._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @delta_vb2_frame_prepare._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1483, i32 3}
!283 = !{ptr @delta_vb2_frame_prepare.__UNIQUE_ID_ddebug332, !282, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1145, i32 3}
!286 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @delta_setup_frame._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @delta_setup_frame._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1152, i32 3}
!291 = !{ptr @delta_setup_frame._entry.137, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @delta_setup_frame._entry_ptr.139, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1159, i32 3}
!295 = !{ptr @delta_setup_frame._entry.140, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @delta_setup_frame._entry_ptr.142, !294, !"_entry_ptr", i1 false, i1 false}
!297 = distinct !{null, !298, !"__already_done", i1 false, i1 false}
!298 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!299 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 787, i32 2}
!302 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @delta_complete_eos.__UNIQUE_ID_ddebug318, !301, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1727, i32 2}
!306 = !{ptr @.str.147, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @delta_release.__UNIQUE_ID_ddebug334, !305, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!308 = !{ptr @delta_ioctl_ops, !309, !"delta_ioctl_ops", i1 false, i1 false}
!309 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 893, i32 36}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 390, i32 49}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 463, i32 3}
!314 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @delta_g_fmt_frame.__UNIQUE_ID_ddebug306, !313, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 434, i32 3}
!318 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @delta_g_fmt_stream.__UNIQUE_ID_ddebug305, !317, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 655, i32 3}
!322 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug315, !321, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!324 = !{ptr @.str.155, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 669, i32 4}
!326 = !{ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug316, !325, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!327 = !{ptr @.str.156, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 702, i32 2}
!329 = !{ptr @delta_s_fmt_frame.__UNIQUE_ID_ddebug317, !328, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!330 = !{ptr @.str.157, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 616, i32 3}
!332 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @delta_s_fmt_stream.__UNIQUE_ID_ddebug313, !331, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!334 = !{ptr @.str.159, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 624, i32 3}
!336 = !{ptr @delta_s_fmt_stream.__UNIQUE_ID_ddebug314, !335, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!337 = !{ptr @.str.160, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 558, i32 3}
!339 = !{ptr @.str.161, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug310, !338, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!341 = !{ptr @.str.162, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 575, i32 3}
!343 = !{ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug311, !342, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!344 = !{ptr @.str.163, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 583, i32 3}
!346 = !{ptr @delta_try_fmt_frame.__UNIQUE_ID_ddebug312, !345, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!347 = !{ptr @.str.164, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 504, i32 3}
!349 = !{ptr @.str.165, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug307, !348, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!351 = !{ptr @.str.166, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 524, i32 3}
!353 = !{ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug308, !352, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!354 = !{ptr @.str.167, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 531, i32 3}
!356 = !{ptr @delta_try_fmt_stream.__UNIQUE_ID_ddebug309, !355, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!357 = !{ptr @.str.168, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 813, i32 2}
!359 = !{ptr @.str.169, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug319, !358, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!361 = !{ptr @.str.170, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 830, i32 4}
!363 = !{ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug320, !362, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!364 = !{ptr @.str.171, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 861, i32 2}
!366 = !{ptr @delta_decoder_stop_cmd.__UNIQUE_ID_ddebug321, !365, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!367 = !{ptr @delta_match_types, !368, !"delta_match_types", i1 false, i1 false}
!368 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1950, i32 34}
!369 = !{ptr @delta_pm_ops, !370, !"delta_pm_ops", i1 false, i1 false}
!370 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1945, i32 32}
!371 = !{ptr @.str.172, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/platform/sti/delta/delta-v4l2.c", i32 1939, i32 4}
!373 = !{ptr @.str.173, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @delta_runtime_resume._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @delta_runtime_resume._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{i32 1, !"wchar_size", i32 2}
!377 = !{i32 1, !"min_enum_size", i32 4}
!378 = !{i32 8, !"branch-target-enforcement", i32 0}
!379 = !{i32 8, !"sign-return-address", i32 0}
!380 = !{i32 8, !"sign-return-address-all", i32 0}
!381 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!382 = !{i32 7, !"uwtable", i32 1}
!383 = !{i32 7, !"frame-pointer", i32 2}
!384 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!385 = !{i64 2148769711, i64 2148769716, i64 2148769729, i64 2148769773, i64 2148769807, i64 2148769828}
!386 = !{i64 2148287315}
!387 = !{i64 772138, i64 772163, i64 772185, i64 772201, i64 772213, i64 772233, i64 772257, i64 772273, i64 772285}
!388 = !{i64 2148287503}
!389 = !{i8 0, i8 2}
!390 = !{!"branch_weights", i32 2000, i32 1}
