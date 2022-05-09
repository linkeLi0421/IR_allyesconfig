; ModuleID = '/llk/IR_all_yes/samples/v4l/v4l2-pci-skeleton.c_pt.bc'
source_filename = "../samples/v4l/v4l2-pci-skeleton.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.skeleton = type { ptr, %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.mutex, i64, %struct.v4l2_dv_timings, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.85 }
%union.anon.85 = type { [32 x i32] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.99, i32, i32 }
%union.anon.99 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.97, i32 }
%union.anon.97 = type { i32 }
%struct.skel_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.100, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.100 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@__UNIQUE_ID_description300 = internal constant [55 x i8] c"v4l2_pci_skeleton.description=V4L2 PCI Skeleton Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [38 x i8] c"v4l2_pci_skeleton.author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [53 x i8] c"v4l2_pci_skeleton.file=samples/v4l/v4l2-pci-skeleton\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [33 x i8] c"v4l2_pci_skeleton.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_v4l2_pci_skeleton__304_915_skeleton_driver_init6 = internal global ptr @skeleton_driver_init, section ".initcall6.init", align 4
@skeleton_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @skeleton_pci_tbl, ptr @skeleton_probe, ptr @skeleton_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_skeleton_driver_exit = internal global ptr @skeleton_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"v4l2_pci_skeleton\00", [46 x i8] zeroinitializer }, align 32
@skeleton_pci_tbl = internal constant { [1 x %struct.pci_device_id], [32 x i8] } zeroinitializer, align 32
@skeleton_probe.timings_def = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@skeleton_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no suitable DMA available.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"skeleton_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samples/v4l/v4l2-pci-skeleton.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@skeleton_probe._entry_ptr = internal global ptr @skeleton_probe._entry, section ".printk_index", align 4
@skeleton_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@skeleton_probe._entry_ptr.8 = internal global ptr @skeleton_probe._entry.6, section ".printk_index", align 4
@skeleton_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&skel->lock\00", [20 x i8] zeroinitializer }, align 32
@skeleton_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"v4l2_pci_skeleton:805:(hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@skel_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @skeleton_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@skel_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@skeleton_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&skel->qlock\00", [19 x i8] zeroinitializer }, align 32
@skel_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@skel_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @skeleton_querycap, ptr @skeleton_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skeleton_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skeleton_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skeleton_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @skeleton_g_std, ptr @skeleton_s_std, ptr @skeleton_querystd, ptr @skeleton_enum_input, ptr @skeleton_g_input, ptr @skeleton_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skeleton_s_dv_timings, ptr @skeleton_g_dv_timings, ptr @skeleton_query_dv_timings, ptr @skeleton_enum_dv_timings, ptr @skeleton_dv_timings_cap, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@skeleton_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 886, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"V4L2 PCI Skeleton Driver loaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@skeleton_probe._entry_ptr.16 = internal global ptr @skeleton_probe._entry.13, section ".printk_index", align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer too small (%lu < %lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"V4L2 PCI Skeleton\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@skel_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.117 { %struct.v4l2_bt_timings_cap { i32 720, i32 1920, i32 480, i32 1080, i64 27000000, i64 74250000, i32 1, i32 3, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"skeleton_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 908, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 915, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"skeleton_pci_tbl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 93, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"timings_def\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 757, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 771, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 786, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 801, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 805, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"skel_ctrl_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 686, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"skel_qops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 287, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 856, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"skel_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 739, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"skel_ioctl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 700, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 886, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 202, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 307, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 308, i32 49 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 612, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 616, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"skel_timings_cap\00", align 1
@___asan_gen_.121 = private constant [35 x i8] c"../samples/v4l/v4l2-pci-skeleton.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 104, i32 41 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_skeleton_driver_exit, ptr @__initcall__kmod_v4l2_pci_skeleton__304_915_skeleton_driver_init6, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @skeleton_driver_exit, ptr @skeleton_probe._entry, ptr @skeleton_probe._entry.13, ptr @skeleton_probe._entry.6, ptr @skeleton_probe._entry_ptr, ptr @skeleton_probe._entry_ptr.16, ptr @skeleton_probe._entry_ptr.8, ptr @skeleton_driver, ptr @.str, ptr @skeleton_pci_tbl, ptr @skeleton_probe.timings_def, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @skeleton_probe.__key, ptr @.str.9, ptr @skeleton_probe._key, ptr @.str.10, ptr @skel_ctrl_ops, ptr @skel_qops, ptr @skeleton_probe.__key.11, ptr @.str.12, ptr @skel_fops, ptr @skel_ioctl_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @skel_timings_cap], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_pci_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe.timings_def to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skeleton_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skel_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @skeleton_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skeleton_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @skeleton_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #14
  br label %disable_pci

if.end4:                                          ; preds = %if.end
  %call.i140 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 2536, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call.i140, null
  br i1 %tobool7.not, label %if.end4.disable_pci_crit_edge, label %if.end9

if.end4.disable_pci_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_pci

if.end9:                                          ; preds = %if.end4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i141 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %1, ptr noundef nonnull @skeleton_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i140) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool12.not = icmp eq i32 %call.i141, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.7) #14
  br label %disable_pci

if.end18:                                         ; preds = %if.end9
  %2 = ptrtoint ptr %call.i140 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i140, align 8
  %timings = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 6
  %3 = call ptr @memcpy(ptr %timings, ptr @skeleton_probe.timings_def, i32 132)
  %std = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 5
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 16713471, ptr %std, align 8
  %format = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7
  %pixelformat.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1448695129, ptr %pixelformat.i, align 4
  %input.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 8
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 576, ptr %height.i, align 4
  br label %skeleton_fill_pix_format.exit

if.else.i:                                        ; preds = %if.end18
  %10 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format, align 4
  %height4.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 6, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height4.i, align 4
  %height5.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height5.i, align 4
  %interlaced.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 6, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %if.else.i.skeleton_fill_pix_format.exit_crit_edge, label %if.then8.i

if.else.i.skeleton_fill_pix_format.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skeleton_fill_pix_format.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %div39.i = lshr i32 %15, 1
  %19 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div39.i, ptr %height5.i, align 4
  br label %skeleton_fill_pix_format.exit

skeleton_fill_pix_format.exit:                    ; preds = %if.then8.i, %if.else.i.skeleton_fill_pix_format.exit_crit_edge, %if.then.i
  %.sink.sink.i = phi i32 [ 4, %if.then.i ], [ 7, %if.then8.i ], [ 1, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %.sink40.i = phi i32 [ 1, %if.then.i ], [ 3, %if.then8.i ], [ 3, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %20 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.sink.i, ptr %20, align 4
  %colorspace13.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink40.i, ptr %colorspace13.i, align 4
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format, align 4
  %mul.i = shl i32 %24, 1
  %bytesperline.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %height17.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height17.i, align 4
  %mul18.i = mul i32 %27, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul18.i, ptr %sizeimage.i, align 4
  %priv.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 7, i32 7
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %priv.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 1
  %call21 = tail call i32 @v4l2_device_register(ptr noundef %dev1.i, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body25, label %skeleton_fill_pix_format.exit.disable_pci_crit_edge

skeleton_fill_pix_format.exit.disable_pci_crit_edge: ; preds = %skeleton_fill_pix_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_pci

do.body25:                                        ; preds = %skeleton_fill_pix_format.exit
  %lock = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @skeleton_probe.__key) #11
  %ctrl_handler = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 3
  %call28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @skeleton_probe._key, ptr noundef nonnull @.str.10) #11
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @skel_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #11
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @skel_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 16) #11
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @skel_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #11
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @skel_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #11
  %error = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.end36, label %do.body25.free_hdl_crit_edge

do.body25.free_hdl_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdl

if.end36:                                         ; preds = %do.body25
  %ctrl_handler38 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %ctrl_handler38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctrl_handler, ptr %ctrl_handler38, align 4
  %queue = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 21, ptr %io_modes, align 4
  %dev40 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1.i, ptr %dev40, align 4
  %drv_priv = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 10
  %36 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i140, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 12
  %37 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 7
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @skel_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 8
  %39 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 13
  %40 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 15
  %41 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %min_buffers_needed, align 4
  %lock42 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 5
  %42 = ptrtoint ptr %lock42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %lock, ptr %lock42, align 4
  %gfp_flags = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 9, i32 14
  %43 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %gfp_flags, align 4
  %call43 = tail call i32 @vb2_queue_init(ptr noundef %queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end36.free_hdl_crit_edge

if.end36.free_hdl_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdl

if.end46:                                         ; preds = %if.end36
  %buf_list = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 11
  %44 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 11, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf_list, ptr %prev.i, align 4
  %qlock = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @skeleton_probe.__key.11, i16 noundef signext 3) #11
  %vdev51 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2
  %name = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 12
  %call52 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #11
  %release = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 23
  %46 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @video_device_release_empty, ptr %release, align 8
  %fops = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @skel_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 24
  %48 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @skel_ioctl_ops, ptr %ioctl_ops, align 4
  %device_caps = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 83886081, ptr %device_caps, align 8
  %lock54 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 26
  %50 = ptrtoint ptr %lock54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %lock, ptr %lock54, align 8
  %queue55 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 10
  %51 = ptrtoint ptr %queue55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %queue, ptr %queue55, align 8
  %v4l2_dev57 = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %v4l2_dev57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %v4l2_dev, ptr %v4l2_dev57, align 4
  %tvnorms = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 22
  %53 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 16777215, ptr %tvnorms, align 8
  %driver_data.i.i = getelementptr inbounds %struct.skeleton, ptr %call.i140, i32 0, i32 2, i32 5, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i140, ptr %driver_data.i.i, align 4
  %call.i142 = tail call i32 @__video_register_device(ptr noundef %vdev51, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool59.not = icmp eq i32 %call.i142, 0
  br i1 %tobool59.not, label %do.end64, label %if.end46.free_hdl_crit_edge

if.end46.free_hdl_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdl

do.end64:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.14) #14
  br label %cleanup

free_hdl:                                         ; preds = %if.end46.free_hdl_crit_edge, %if.end36.free_hdl_crit_edge, %do.body25.free_hdl_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end36.free_hdl_crit_edge ], [ %call.i142, %if.end46.free_hdl_crit_edge ], [ %31, %do.body25.free_hdl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %disable_pci

disable_pci:                                      ; preds = %free_hdl, %skeleton_fill_pix_format.exit.disable_pci_crit_edge, %do.end16, %if.end4.disable_pci_crit_edge, %do.end
  %ret.1 = phi i32 [ %call.i, %do.end ], [ %call.i141, %do.end16 ], [ %call21, %skeleton_fill_pix_format.exit.disable_pci_crit_edge ], [ %ret.0, %free_hdl ], [ -12, %if.end4.disable_pci_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %disable_pci, %do.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %disable_pci ], [ 0, %do.end64 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skeleton_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %vdev = getelementptr i8, ptr %1, i32 132
  tail call void @video_unregister_device(ptr noundef %vdev) #11
  %ctrl_handler = getelementptr i8, ptr %1, i32 1484
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  tail call void @v4l2_device_unregister(ptr noundef %1) #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void @pci_disable_device(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skeleton_irq(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skeleton_s_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %2 = and i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %2)
  %switch = icmp eq i32 %2, 9963776
  %. = select i1 %switch, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %field = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  %field1 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %field1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %field1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %fileio.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 29
  %5 = ptrtoint ptr %fileio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fileio.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %field1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %field1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbuffers, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp7 = icmp ult i32 %add, 3
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 3, %9
  %12 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp13 = icmp ult i32 %16, %18
  %cond = select i1 %cmp13, i32 -22, i32 0
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %nplanes, align 4
  %sizeimage16 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %sizeimage16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage16, align 4
  %22 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then11 ], [ 0, %if.end14 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit15

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp21 = icmp ult i32 %9, %5
  br i1 %cmp21, label %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit15

vb2_plane_size.exit15:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge
  %retval.0.i14 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %3, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %.pn, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i14, i32 noundef %5) #14
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit15, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit15 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %qlock.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #11
  %buf_list.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_list.i, align 4
  %cmp12.not2.i = icmp eq ptr %3, %buf_list.i
  br i1 %cmp12.not2.i, label %entry.return_all_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_all_buffers.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in3.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in3.i, i32 -736
  %4 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in3.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in3.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp12.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %entry.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %qlock = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 10
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #11
  %list = getelementptr inbounds %struct.skel_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.skel_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strlcpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strlcpy(ptr noundef %card, ptr noundef nonnull @.str.20, i32 noundef 32) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @skeleton_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1448695129
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1448695129, ptr %pixelformat.i, align 4
  %input.i.i = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %fmt.i, align 4
  %std.i.i = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %std.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std.i.i, align 8
  %and.i.i = and i64 %11, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 576, i32 480
  %height.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i.i, ptr %height.i.i, align 4
  br label %if.end

if.else.i.i:                                      ; preds = %if.end.i
  %13 = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fmt.i, align 4
  %height4.i.i = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 6, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height4.i.i, align 4
  %height5.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height5.i.i, align 4
  %interlaced.i.i = getelementptr inbounds %struct.skeleton, ptr %3, i32 0, i32 6, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %interlaced.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interlaced.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.if.end_crit_edge, label %if.then8.i.i

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %div39.i.i = lshr i32 %18, 1
  %22 = ptrtoint ptr %height5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div39.i.i, ptr %height5.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i.i, %if.else.i.i.if.end_crit_edge, %if.then.i.i
  %.sink.sink.i.i = phi i32 [ 4, %if.then.i.i ], [ 7, %if.then8.i.i ], [ 1, %if.else.i.i.if.end_crit_edge ]
  %.sink40.i.i = phi i32 [ 1, %if.then.i.i ], [ 3, %if.then8.i.i ], [ 3, %if.else.i.i.if.end_crit_edge ]
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.sink.i.i, ptr %23, align 4
  %colorspace13.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace13.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink40.i.i, ptr %colorspace13.i.i, align 4
  %26 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt.i, align 4
  %mul.i.i = shl i32 %27, 1
  %bytesperline.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i.i, ptr %bytesperline.i.i, align 4
  %height17.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %height17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height17.i.i, align 4
  %mul18.i.i = mul i32 %30, %mul.i.i
  %sizeimage.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul18.i.i, ptr %sizeimage.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %32 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %priv.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 9, i32 21
  %33 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.not = icmp eq i32 %34, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %format = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7
  %35 = call ptr @memcpy(ptr %format, ptr %fmt.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %3)
  %cmp.not = icmp eq i32 %3, 1448695129
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1448695129, ptr %pixelformat, align 4
  %input.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %fmt, align 4
  %std.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std.i, align 8
  %and.i = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %height.i, align 4
  br label %skeleton_fill_pix_format.exit

if.else.i:                                        ; preds = %if.end
  %11 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height4.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height4.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5.i, align 4
  %interlaced.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %if.else.i.skeleton_fill_pix_format.exit_crit_edge, label %if.then8.i

if.else.i.skeleton_fill_pix_format.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skeleton_fill_pix_format.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %div39.i = lshr i32 %16, 1
  %20 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div39.i, ptr %height5.i, align 4
  br label %skeleton_fill_pix_format.exit

skeleton_fill_pix_format.exit:                    ; preds = %if.then8.i, %if.else.i.skeleton_fill_pix_format.exit_crit_edge, %if.then.i
  %.sink.sink.i = phi i32 [ 4, %if.then.i ], [ 7, %if.then8.i ], [ 1, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %.sink40.i = phi i32 [ 1, %if.then.i ], [ 3, %if.then8.i ], [ 3, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.sink.i, ptr %21, align 4
  %colorspace13.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink40.i, ptr %colorspace13.i, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %mul.i = shl i32 %25, 1
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %height17.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height17.i, align 4
  %mul18.i = mul i32 %28, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul18.i, ptr %sizeimage.i, align 4
  %priv.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %skeleton_fill_pix_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skeleton_fill_pix_format.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %std1 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std1, align 8
  %6 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %std1 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %std)
  %cmp = icmp eq i64 %5, %std
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 9, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %skeleton_fill_pix_format.exit, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skeleton_fill_pix_format.exit:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %std, ptr %std1, align 8
  %format = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7
  %pixelformat.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1448695129, ptr %pixelformat.i, align 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %format, align 4
  %and.i = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %height.i, align 4
  %12 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %12, align 4
  %colorspace13.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %colorspace13.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1440, ptr %bytesperline.i, align 4
  %mul18.i = mul nuw nsw i32 %cond.i, 1440
  %sizeimage.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul18.i, ptr %sizeimage.i, align 4
  %priv.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 7
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %skeleton_fill_pix_format.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skeleton_fill_pix_format.exit ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 0, i32 -61
  ret i32 %.
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %. = select i1 %cmp2, i64 16777215, i64 0
  %.str.22..str.23 = select i1 %cmp2, ptr @.str.22, ptr @.str.23
  %.19 = select i1 %cmp2, i32 4, i32 2
  %3 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %., ptr %std, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %.str.22..str.23, i32 noundef 32) #11
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.19, ptr %capabilities, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i)
  %cmp = icmp ugt i32 %i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 9, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i64 16777215, i64 0
  %tvnorms = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 2, i32 22
  %5 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %cond, ptr %tvnorms, align 8
  %format = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7
  %pixelformat.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1448695129, ptr %pixelformat.i, align 4
  br i1 %tobool.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %format, align 4
  %std.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std.i, align 8
  %and.i = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %height.i, align 4
  br label %skeleton_fill_pix_format.exit

if.else.i:                                        ; preds = %if.end3
  %11 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %format, align 4
  %height4.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height4.i, align 4
  %height5.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5.i, align 4
  %interlaced.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %if.else.i.skeleton_fill_pix_format.exit_crit_edge, label %if.then8.i

if.else.i.skeleton_fill_pix_format.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skeleton_fill_pix_format.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %div39.i = lshr i32 %16, 1
  %20 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div39.i, ptr %height5.i, align 4
  br label %skeleton_fill_pix_format.exit

skeleton_fill_pix_format.exit:                    ; preds = %if.then8.i, %if.else.i.skeleton_fill_pix_format.exit_crit_edge, %if.then.i
  %.sink.sink.i = phi i32 [ 4, %if.then.i ], [ 7, %if.then8.i ], [ 1, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %.sink40.i = phi i32 [ 1, %if.then.i ], [ 3, %if.then8.i ], [ 3, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %21 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.sink.i, ptr %21, align 4
  %colorspace13.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink40.i, ptr %colorspace13.i, align 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format, align 4
  %mul.i = shl i32 %25, 1
  %bytesperline.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %height17.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height17.i, align 4
  %mul18.i = mul i32 %28, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul18.i, ptr %sizeimage.i, align 4
  %priv.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 7
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %skeleton_fill_pix_format.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skeleton_fill_pix_format.exit ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @skel_timings_cap, ptr noundef null, ptr noundef null) #11
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @skel_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %timings7 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6
  %call8 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef %timings7, i32 noundef 0, i1 noundef zeroext false) #11
  br i1 %call8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %num_buffers.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 9, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %6 = call ptr @memcpy(ptr %timings7, ptr %timings, i32 132)
  %format = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7
  %pixelformat.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1448695129, ptr %pixelformat.i, align 4
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i23 = icmp eq i32 %9, 0
  br i1 %cmp.i23, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %format, align 4
  %std.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %std.i, align 8
  %and.i = and i64 %12, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %height.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %height.i, align 4
  br label %skeleton_fill_pix_format.exit

if.else.i:                                        ; preds = %if.end13
  %14 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format, align 4
  %height4.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height4.i, align 4
  %height5.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height5.i, align 4
  %interlaced.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i = icmp eq i32 %22, 0
  br i1 %tobool7.not.i, label %if.else.i.skeleton_fill_pix_format.exit_crit_edge, label %if.then8.i

if.else.i.skeleton_fill_pix_format.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skeleton_fill_pix_format.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %div39.i = lshr i32 %19, 1
  %23 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div39.i, ptr %height5.i, align 4
  br label %skeleton_fill_pix_format.exit

skeleton_fill_pix_format.exit:                    ; preds = %if.then8.i, %if.else.i.skeleton_fill_pix_format.exit_crit_edge, %if.then.i
  %.sink.sink.i = phi i32 [ 4, %if.then.i ], [ 7, %if.then8.i ], [ 1, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %.sink40.i = phi i32 [ 1, %if.then.i ], [ 3, %if.then8.i ], [ 3, %if.else.i.skeleton_fill_pix_format.exit_crit_edge ]
  %24 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.sink.i, ptr %24, align 4
  %colorspace13.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink40.i, ptr %colorspace13.i, align 4
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %format, align 4
  %mul.i = shl i32 %28, 1
  %bytesperline.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %height17.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height17.i, align 4
  %mul18.i = mul i32 %31, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul18.i, ptr %sizeimage.i, align 4
  %priv.i = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 7, i32 7
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %skeleton_fill_pix_format.exit, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skeleton_fill_pix_format.exit ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -16, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %timings1 = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %timings, ptr %timings1, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr nocapture noundef readnone %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = select i1 %cmp, i32 -61, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @skel_timings_cap, ptr noundef null, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skeleton_dv_timings_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.skeleton, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %cap, ptr @skel_timings_cap, i32 144)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file302, !5, !"__UNIQUE_ID_file302", i1 false, i1 false}
!5 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_license303, !5, !"__UNIQUE_ID_license303", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_v4l2_pci_skeleton__304_915_skeleton_driver_init6, !8, !"__initcall__kmod_v4l2_pci_skeleton__304_915_skeleton_driver_init6", i1 false, i1 false}
!8 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 915, i32 1}
!9 = !{ptr @__exitcall_skeleton_driver_exit, !8, !"__exitcall_skeleton_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @skeleton_driver, !12, !"skeleton_driver", i1 false, i1 false}
!12 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 908, i32 26}
!13 = !{ptr @skeleton_pci_tbl, !14, !"skeleton_pci_tbl", i1 false, i1 false}
!14 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 93, i32 35}
!15 = !{ptr @skeleton_probe.timings_def, !16, !"timings_def", i1 false, i1 false}
!16 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 757, i32 38}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 771, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @skeleton_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @skeleton_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 786, i32 3}
!27 = !{ptr @skeleton_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @skeleton_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @skeleton_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 801, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @skeleton_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 805, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @skeleton_probe.__key.11, !36, !"__key", i1 false, i1 false}
!36 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 856, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 886, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @skeleton_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @skeleton_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @skel_ctrl_ops, !44, !"skel_ctrl_ops", i1 false, i1 false}
!44 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 686, i32 35}
!45 = !{ptr @skel_qops, !46, !"skel_qops", i1 false, i1 false}
!46 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 287, i32 29}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 202, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @buffer_prepare._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @buffer_prepare._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!54 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @skel_fops, !56, !"skel_fops", i1 false, i1 false}
!56 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 739, i32 42}
!57 = !{ptr @skel_ioctl_ops, !58, !"skel_ioctl_ops", i1 false, i1 false}
!58 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 700, i32 36}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 307, i32 21}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 308, i32 49}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 612, i32 20}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 616, i32 20}
!67 = !{ptr @skel_timings_cap, !68, !"skel_timings_cap", i1 false, i1 false}
!68 = !{!"../samples/v4l/v4l2-pci-skeleton.c", i32 104, i32 41}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
