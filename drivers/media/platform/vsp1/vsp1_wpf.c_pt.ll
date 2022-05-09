; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_wpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_wpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
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
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.96, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.anon.96 = type { %struct.spinlock, %struct.anon.97, i32, i32, i8 }
%struct.anon.97 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }

@wpf_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr @vsp1_wpf_destroy, ptr @wpf_configure_stream, ptr @wpf_configure_frame, ptr @wpf_configure_partition, ptr @wpf_max_width, ptr @wpf_partition }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wpf.%u\00", [25 x i8] zeroinitializer }, align 32
@wpf_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @wpf_video_ops, ptr null, ptr null, ptr null, ptr @vsp1_rwpf_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vsp1_wpf_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wpf%u: failed to initialize controls\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsp1_wpf_create\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_wpf.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_wpf_create._entry_ptr = internal global ptr @vsp1_wpf_create._entry, section ".printk_index", align 4
@wpf_configure_writeback_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to obtain a dl list, disabling writeback\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wpf_configure_writeback_chain\00", [34 x i8] zeroinitializer }, align 32
@wpf_configure_writeback_chain._entry_ptr = internal global ptr @wpf_configure_writeback_chain._entry, section ".printk_index", align 4
@wpf_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wpf_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vsp1_rwpf_pad_ops = external dso_local constant %struct.v4l2_subdev_pad_ops, align 4
@wpf_init_controls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wpf->flip.lock\00", [16 x i8] zeroinitializer }, align 32
@vsp1_wpf_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vsp1_wpf_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@wpf_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wpf_init_controls\00", [46 x i8] zeroinitializer }, align 32
@wpf_init_controls._entry_ptr = internal global ptr @wpf_init_controls._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 180, i64 270]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"wpf_entity_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 550, i32 44 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 585, i32 16 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"wpf_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 219, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 601, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 244, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"wpf_video_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 215, i32 43 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 139, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"vsp1_wpf_ctrl_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 130, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_wpf.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 180, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @vsp1_wpf_create._entry, ptr @vsp1_wpf_create._entry_ptr, ptr @wpf_configure_writeback_chain._entry, ptr @wpf_configure_writeback_chain._entry_ptr, ptr @wpf_init_controls._entry, ptr @wpf_init_controls._entry_ptr, ptr @wpf_entity_ops, ptr @.str, ptr @wpf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wpf_video_ops, ptr @wpf_init_controls.__key, ptr @.str.8, ptr @vsp1_wpf_ctrl_ops, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_wpf_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_configure_writeback_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_init_controls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_wpf_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpf_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_wpf_create(ptr noundef %vsp1, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 6)
  %1 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 848, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2 = icmp eq i32 %6, 2
  %spec.select = select i1 %cmp2, i32 2048, i32 8190
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wpf_entity_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %type, align 4
  %index9 = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %index9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %index, ptr %index9, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %index)
  %call13 = call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull %name, i32 noundef 2, ptr noundef nonnull @wpf_ops, i32 noundef 16386) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = call ptr @vsp1_dlm_create(ptr noundef %vsp1, i32 noundef %index, i32 noundef 64) #8
  %dlm = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %dlm to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %dlm, align 4
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %if.end17.error_crit_edge, label %if.end21

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end21:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %flip.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %flip.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @wpf_init_controls.__key, i16 noundef signext 3) #8
  %18 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.end12.thread70.i

if.end12.thread70.i:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call1374.i = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end21
  %info.i = getelementptr inbounds %struct.vsp1_device, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.vsp1_device_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %features.i, align 4
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end12.thread.i

if.end12.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1367.i = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %call.i, i32 noundef 3) #8
  %ctrls.c.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 1
  %call16.c.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.c.i, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %ctrls18.c.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %ctrls18.c.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16.c.i, ptr %ctrls18.c.i, align 4
  %call23.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.c.i, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %hflip.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %25 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call23.i, ptr %hflip.i, align 4
  %call27.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.c.i, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #8
  %rotate.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 11, i32 1, i32 2
  %26 = ptrtoint ptr %rotate.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call27.i, ptr %rotate.i, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %ctrls18.c.i) #8
  br label %if.end33.i

if.end12.i:                                       ; preds = %if.else.i
  %and7.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %not.tobool8.not76.i = xor i1 %tobool8.not.i, true
  %.63.i = zext i1 %not.tobool8.not76.i to i32
  %call13.i = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %call.i, i32 noundef %.63.i) #8
  br i1 %tobool8.not.i, label %if.end12.i.if.end33.i_crit_edge, label %if.end19.i

if.end12.i.if.end33.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrls.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 1
  %call16.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %ctrls18.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %ctrls18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call16.i, ptr %ctrls18.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end19.i, %if.end12.i.if.end33.i_crit_edge, %if.end12.thread.i, %if.end12.thread70.i
  %error.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool35.not.i = icmp eq i32 %29, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end26_crit_edge, label %wpf_init_controls.exit

if.end33.i.if.end26_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

wpf_init_controls.exit:                           ; preds = %if.end33.i
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 8
  %32 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef %33) #11
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %do.end, label %wpf_init_controls.exit.if.end26_crit_edge

wpf_init_controls.exit.if.end26_crit_edge:        ; preds = %wpf_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %wpf_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsp1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %index) #11
  %phi.cast = inttoptr i32 %35 to ptr
  br label %error

if.end26:                                         ; preds = %wpf_init_controls.exit.if.end26_crit_edge, %if.end33.i.if.end26_crit_edge
  %ctrls = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 1
  %call27 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #8
  br label %cleanup

error:                                            ; preds = %do.end, %if.end17.error_crit_edge
  %ret.0 = phi ptr [ %phi.cast, %do.end ], [ inttoptr (i32 -12 to ptr), %if.end17.error_crit_edge ]
  call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end26, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then15 ], [ %ret.0, %error ], [ %call.i, %if.end26 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dlm_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsp1_wpf_destroy(ptr nocapture noundef readonly %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm, align 4
  tail call void @vsp1_dlm_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wpf_configure_stream(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr noundef %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %index4 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %2 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index4, align 4
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %call11 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %7, i32 noundef 1) #8
  %lif = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 16
  %8 = ptrtoint ptr %lif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lif, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %writeback = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 13
  %10 = ptrtoint ptr %writeback to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %writeback, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %fmtinfo14 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 6
  %12 = ptrtoint ptr %fmtinfo14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmtinfo14, align 4
  %hwfmt = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %hwfmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwfmt, align 4
  %rotate = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %16 = ptrtoint ptr %rotate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rotate, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  %or = or i32 %15, 262144
  %spec.select = select i1 %tobool15.not, i32 %15, i32 %or
  %alpha = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %alpha to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alpha, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  %or19 = or i32 %spec.select, 8388608
  %outfmt.1 = select i1 %tobool17.not, i32 %spec.select, i32 %or19
  %swap_yc = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %swap_yc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %swap_yc, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  %or23 = or i32 %outfmt.1, 32768
  %outfmt.2 = select i1 %tobool21.not, i32 %outfmt.1, i32 %or23
  %swap_uv = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 7
  %22 = ptrtoint ptr %swap_uv to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swap_uv, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  %or27 = or i32 %outfmt.2, 16384
  %outfmt.3 = select i1 %tobool25.not, i32 %outfmt.2, i32 %or27
  %bytesperline = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bytesperline, align 1
  %26 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index4, align 4
  %mul.i = shl i32 %27, 8
  %add.i = add i32 %mul.i, 4124
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %25) #8
  %num_planes = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp = icmp ugt i8 %29, 1
  br i1 %cmp, label %if.then30, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline33 = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %bytesperline33 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bytesperline33, align 1
  %32 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index4, align 4
  %mul.i154 = shl i32 %33, 8
  %add.i155 = add i32 %mul.i154, 4128
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i155, i32 noundef %31) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then.if.end34_crit_edge
  %swap = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 3
  %34 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %swap, align 4
  %36 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index4, align 4
  %mul.i157 = shl i32 %37, 8
  %add.i158 = add i32 %mul.i157, 4112
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i158, i32 noundef %35) #8
  %info = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %features = getelementptr inbounds %struct.vsp1_device_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %features, align 4
  %and = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36 = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool35.not, i1 %cmp36, i1 false
  br i1 %or.cond, label %if.then38, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index4, align 4
  %mul.i160 = shl i32 %43, 8
  %add.i161 = add i32 %mul.i160, 4120
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i161, i32 noundef 131328) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge, %lor.lhs.false.if.end40_crit_edge
  %outfmt.4 = phi i32 [ 0, %lor.lhs.false.if.end40_crit_edge ], [ %outfmt.3, %if.then38 ], [ %outfmt.3, %if.end34.if.end40_crit_edge ]
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call7, i32 0, i32 2
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code, align 4
  %code41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 2
  %46 = ptrtoint ptr %code41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %code41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp42.not = icmp eq i32 %45, %47
  %or45 = or i32 %outfmt.4, 256
  %spec.select152 = select i1 %cmp42.not, i32 %outfmt.4, i32 %or45
  %outfmt47 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 10
  %48 = ptrtoint ptr %outfmt47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select152, ptr %outfmt47, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 8212
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add, i32 noundef 1280) #8
  %info48 = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %info48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info48, align 4
  %rpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %rpf_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rpf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp49169.not = icmp eq i32 %52, 0
  br i1 %cmp49169.not, label %if.end40.for.end_crit_edge, label %for.body.lr.ph

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end40
  %brx = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 13
  %num_inputs = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %srcrpf.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %srcrpf.1, %cleanup.for.body_crit_edge ]
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx51 = getelementptr %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 11, i32 %i.0170
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %54, null
  br i1 %tobool52.not, label %for.body.cleanup_crit_edge, label %if.end54

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %for.body
  %55 = ptrtoint ptr %brx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %brx, align 4
  %tobool55.not = icmp eq ptr %56, null
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end54.cond.false_crit_edge

if.end54.cond.false_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true56:                                  ; preds = %if.end54
  %57 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp57 = icmp eq i32 %58, 1
  br i1 %cmp57, label %land.lhs.true56.cond.end_crit_edge, label %land.lhs.true56.cond.false_crit_edge

land.lhs.true56.cond.false_crit_edge:             ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true56.cond.end_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true56.cond.false_crit_edge, %if.end54.cond.false_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true56.cond.end_crit_edge
  %.sink = phi i32 [ 1, %cond.false ], [ 2, %land.lhs.true56.cond.end_crit_edge ]
  %index64 = getelementptr inbounds %struct.vsp1_entity, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %index64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index64, align 4
  %mul65 = shl i32 %60, 1
  %shl66 = shl i32 %.sink, %mul65
  %or67 = or i32 %shl66, %srcrpf.0171
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %for.body.cleanup_crit_edge
  %srcrpf.1 = phi i32 [ %or67, %cond.end ], [ %srcrpf.0171, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %52
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end40.for.end_crit_edge
  %srcrpf.0.lcssa = phi i32 [ 0, %if.end40.for.end_crit_edge ], [ %srcrpf.1, %cleanup.for.end_crit_edge ]
  %brx68 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 13
  %61 = ptrtoint ptr %brx68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %brx68, align 4
  %tobool69.not = icmp eq ptr %62, null
  br i1 %tobool69.not, label %for.end.if.end76_crit_edge, label %if.then70

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp72 = icmp eq i32 %64, 1
  %cond74 = select i1 %cmp72, i32 536870912, i32 33554432
  %or75 = or i32 %cond74, %srcrpf.0.lcssa
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %for.end.if.end76_crit_edge
  %srcrpf.2 = phi i32 [ %or75, %if.then70 ], [ %srcrpf.0.lcssa, %for.end.if.end76_crit_edge ]
  %65 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index4, align 4
  %mul.i163 = shl i32 %66, 8
  %add.i164 = add i32 %mul.i163, 4096
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i164, i32 noundef %srcrpf.2) #8
  %mul77 = mul i32 %3, 12
  %add78 = add i32 %mul77, 76
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add78, i32 noundef 0) #8
  %add80 = add i32 %mul77, 72
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add80, i32 noundef 2) #8
  %writeback81 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 13
  %67 = ptrtoint ptr %writeback81 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %writeback81, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool82.not = icmp eq i8 %68, 0
  br i1 %tobool82.not, label %if.end76.if.end90_crit_edge, label %if.then83

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then83:                                        ; preds = %if.end76
  %69 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index4, align 4
  %dlm.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 14
  %71 = ptrtoint ptr %dlm.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dlm.i, align 4
  %call.i = tail call ptr @vsp1_dl_list_get(ptr noundef %72) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then87, label %wpf_configure_writeback_chain.exit

wpf_configure_writeback_chain.exit:               ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @vsp1_dl_list_get_body0(ptr noundef nonnull %call.i) #8
  %mul.i165 = shl i32 %70, 8
  %add.i166 = add i32 %mul.i165, 4148
  tail call void @vsp1_dl_body_write(ptr noundef %call3.i, i32 noundef %add.i166, i32 noundef 0) #8
  %call4.i = tail call i32 @vsp1_dl_list_add_chain(ptr noundef %dl, ptr noundef nonnull %call.i) #8
  br label %if.end90

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %entity, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.6) #11
  %77 = ptrtoint ptr %writeback81 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %writeback81, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %wpf_configure_writeback_chain.exit, %if.end76.if.end90_crit_edge
  %mul91 = shl i32 %3, 8
  %add92 = add i32 %mul91, 4148
  %78 = ptrtoint ptr %writeback81 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %writeback81, align 4, !range !39
  %80 = zext i8 %79 to i32
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add92, i32 noundef %80) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wpf_configure_frame(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flip = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flip) #8
  %active = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  %and = and i32 %1, -4
  %pending = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending, align 4
  %and8 = and i32 %3, 3
  %or = or i32 %and8, %and
  store i32 %or, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flip, i32 noundef %call3) #8
  %alpha = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 8
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alpha, align 4
  %shl = shl i32 %5, 24
  %outfmt13 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 10
  %6 = ptrtoint ptr %outfmt13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outfmt13, align 4
  %or14 = or i32 %shl, %7
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active, align 4
  %and17 = shl i32 %9, 16
  %10 = and i32 %and17, 65536
  %11 = or i32 %or14, %10
  %12 = and i32 %and17, 131072
  %13 = or i32 %11, %12
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %15, 8
  %add.i = add i32 %mul.i, 4108
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wpf_configure_partition(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  %mem = alloca %struct.vsp1_rwpf_memory, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem) #8
  %2 = getelementptr inbounds [3 x i32], ptr %mem, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i32], ptr %mem, i32 0, i32 2
  %mem3 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 12
  %4 = call ptr @memcpy(ptr %mem, ptr %mem3, i32 12)
  %format4 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5
  %fmtinfo5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 6
  %5 = ptrtoint ptr %fmtinfo5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmtinfo5, align 4
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %call8 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %8, i32 noundef 0) #8
  %height10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call8, i32 0, i32 1
  %9 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height10, align 4
  %partitions = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 23
  %11 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %partition = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 24
  %13 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %partition, align 4
  %wpf11 = getelementptr inbounds %struct.vsp1_partition, ptr %14, i32 0, i32 4
  %width12 = getelementptr inbounds %struct.vsp1_partition, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %wpf11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wpf11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %width.0.in = phi ptr [ %width12, %if.then ], [ %call8, %entry.if.end_crit_edge ]
  %left.0 = phi i32 [ %16, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %17 = ptrtoint ptr %width.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %width.0 = load i32, ptr %width.0.in, align 4
  %or = or i32 %width.0, 268435456
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %19, 8
  %add.i = add i32 %mul.i, 4100
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %or) #8
  %or17 = or i32 %10, 268435456
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  %mul.i258 = shl i32 %21, 8
  %add.i259 = add i32 %mul.i258, 4104
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i259, i32 noundef %or17) #8
  %lif = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 16
  %22 = ptrtoint ptr %lif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lif, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %land.lhs.true

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %writeback = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 13
  %24 = ptrtoint ptr %writeback to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %writeback, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %active = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.if.else_crit_edge, label %land.lhs.true23

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true23:                                  ; preds = %if.end20
  %rotate = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %28 = ptrtoint ptr %rotate to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rotate, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool25.not = icmp eq i8 %29, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.end41.sink.split_crit_edge, label %land.lhs.true23.if.else_crit_edge

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true23.if.end41.sink.split_crit_edge:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %if.end20.if.else_crit_edge
  %and29 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else.if.end41_crit_edge, label %land.lhs.true31

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true31:                                  ; preds = %if.else
  %rotate33 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %rotate33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rotate33, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool34.not = icmp eq i8 %31, 0
  br i1 %tobool34.not, label %land.lhs.true31.if.end41_crit_edge, label %if.then35

land.lhs.true31.if.end41_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  %height36 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 1
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then35, %land.lhs.true23.if.end41.sink.split_crit_edge
  %height36.sink = phi ptr [ %height36, %if.then35 ], [ %format4, %land.lhs.true23.if.end41.sink.split_crit_edge ]
  %32 = ptrtoint ptr %height36.sink to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %height36.sink, align 1
  %34 = add i32 %width.0, %left.0
  %sub38 = sub i32 %33, %34
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %land.lhs.true31.if.end41_crit_edge, %if.else.if.end41_crit_edge
  %offset.0 = phi i32 [ %left.0, %land.lhs.true31.if.end41_crit_edge ], [ %left.0, %if.else.if.end41_crit_edge ], [ %sub38, %if.end41.sink.split ]
  %num_planes = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 6
  %35 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp42273.not = icmp eq i8 %36, 0
  br i1 %cmp42273.not, label %if.end41.for.end_crit_edge, label %cond.end52.peel

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.end52.peel:                                  ; preds = %if.end41
  %hsub46 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 8
  %vsub50 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 9
  %rotate55 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %37 = ptrtoint ptr %rotate55 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rotate55, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool56.not = icmp eq i8 %38, 0
  br i1 %tobool56.not, label %if.else59.peel, label %if.then57.peel

if.then57.peel:                                   ; preds = %cond.end52.peel
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline.peel = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %bytesperline.peel, align 1
  %mul.peel = mul i32 %40, %offset.0
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mem, align 4
  %add.peel = add i32 %42, %mul.peel
  br label %if.end67.peel

if.else59.peel:                                   ; preds = %cond.end52.peel
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx61.peel = getelementptr %struct.vsp1_format_info, ptr %6, i32 0, i32 5, i32 0
  %43 = ptrtoint ptr %arrayidx61.peel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx61.peel, align 4
  %mul62.peel = mul i32 %44, %offset.0
  %div63256.peel = lshr i32 %mul62.peel, 3
  %45 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem, align 4
  %add66.peel = add i32 %div63256.peel, %46
  br label %if.end67.peel

if.end67.peel:                                    ; preds = %if.else59.peel, %if.then57.peel
  %storemerge = phi i32 [ %add.peel, %if.then57.peel ], [ %add66.peel, %if.else59.peel ]
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %exitcond.peel.not = icmp eq i8 %36, 1
  br i1 %exitcond.peel.not, label %if.end67.peel.for.end_crit_edge, label %for.body.peel.next

if.end67.peel.for.end_crit_edge:                  ; preds = %if.end67.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.peel.next:                               ; preds = %if.end67.peel
  %48 = ptrtoint ptr %hsub46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hsub46, align 4
  %50 = ptrtoint ptr %vsub50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vsub50, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %if.end67.cond.end52_crit_edge, %for.body.peel.next
  %i.0274 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end67.cond.end52_crit_edge ]
  br i1 %tobool56.not, label %if.else59, label %if.then57

if.then57:                                        ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %offset.0, %51
  %bytesperline = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 %i.0274, i32 1
  %52 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %bytesperline, align 1
  %mul = mul i32 %53, %div
  %arrayidx58 = getelementptr [3 x i32], ptr %mem, i32 0, i32 %i.0274
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx58, align 4
  br label %if.end67

if.else59:                                        ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  %div60 = udiv i32 %offset.0, %49
  %arrayidx61 = getelementptr %struct.vsp1_format_info, ptr %6, i32 0, i32 5, i32 %i.0274
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx61, align 4
  %mul62 = mul i32 %57, %div60
  %div63256 = lshr i32 %mul62, 3
  %arrayidx65 = getelementptr [3 x i32], ptr %mem, i32 0, i32 %i.0274
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else59, %if.then57
  %.sink = phi i32 [ %59, %if.else59 ], [ %mul, %if.then57 ]
  %div63256.sink = phi i32 [ %div63256, %if.else59 ], [ %55, %if.then57 ]
  %arrayidx65.sink = phi ptr [ %arrayidx65, %if.else59 ], [ %arrayidx58, %if.then57 ]
  %add66 = add i32 %div63256.sink, %.sink
  %60 = ptrtoint ptr %arrayidx65.sink to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add66, ptr %arrayidx65.sink, align 4
  %inc = add nuw nsw i32 %i.0274, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end67.for.end_crit_edge, label %if.end67.cond.end52_crit_edge, !llvm.loop !40

if.end67.cond.end52_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end52

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end67.for.end_crit_edge, %if.end67.peel.for.end_crit_edge, %if.end41.for.end_crit_edge
  %and68 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.end.if.end105_crit_edge, label %if.then70

for.end.if.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then70:                                        ; preds = %for.end
  %rotate72 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %61 = ptrtoint ptr %rotate72 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rotate72, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool73.not = icmp eq i8 %62, 0
  br i1 %tobool73.not, label %if.else75, label %if.then70.if.end77_crit_edge

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.else75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %height76 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %height76 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %height76, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then70.if.end77_crit_edge
  %height.0 = phi i32 [ %64, %if.else75 ], [ %width.0, %if.then70.if.end77_crit_edge ]
  %sub78 = add i32 %height.0, -1
  %bytesperline81 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 0, i32 1
  %65 = ptrtoint ptr %bytesperline81 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %bytesperline81, align 1
  %mul82 = mul i32 %sub78, %66
  %67 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mem, align 4
  %add85 = add i32 %68, %mul82
  store i32 %add85, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp88 = icmp ugt i8 %36, 1
  br i1 %cmp88, label %if.then90, label %if.end77.if.end105_crit_edge

if.end77.if.end105_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then90:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %vsub91 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 9
  %69 = ptrtoint ptr %vsub91 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vsub91, align 4
  %div92 = udiv i32 %height.0, %70
  %sub93 = add i32 %div92, -1
  %bytesperline96 = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %bytesperline96 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %bytesperline96, align 1
  %mul97 = mul i32 %sub93, %72
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %2, align 4
  %add100 = add i32 %74, %mul97
  store i32 %add100, ptr %2, align 4
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %3, align 4
  %add103 = add i32 %76, %mul97
  store i32 %add103, ptr %3, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then90, %if.end77.if.end105_crit_edge, %for.end.if.end105_crit_edge
  %rotate107 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %77 = ptrtoint ptr %rotate107 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rotate107, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool108.not = icmp eq i8 %78, 0
  %tobool22.not.not = xor i1 %tobool22.not, true
  %brmerge = select i1 %tobool108.not, i1 true, i1 %tobool22.not.not
  br i1 %brmerge, label %if.end105.if.end147_crit_edge, label %if.then113

if.end105.if.end147_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then113:                                       ; preds = %if.end105
  %79 = ptrtoint ptr %format4 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %format4, align 1
  %sub115 = add i32 %80, -16
  %81 = tail call i32 @llvm.smax.i32(i32 %sub115, i32 0)
  br i1 %cmp42273.not, label %if.then113.if.end167_crit_edge, label %cond.end134.peel

if.then113.if.end167_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

cond.end134.peel:                                 ; preds = %if.then113
  %arrayidx138.peel = getelementptr %struct.vsp1_format_info, ptr %6, i32 0, i32 5, i32 0
  %82 = ptrtoint ptr %arrayidx138.peel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx138.peel, align 4
  %mul139.peel = mul i32 %83, %81
  %div140255.peel = lshr i32 %mul139.peel, 3
  %84 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mem, align 4
  %add143.peel = add i32 %div140255.peel, %85
  store i32 %add143.peel, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %exitcond280.peel.not = icmp eq i8 %36, 1
  br i1 %exitcond280.peel.not, label %cond.end134.peel.if.end167_crit_edge, label %for.body127.peel.next

cond.end134.peel.if.end167_crit_edge:             ; preds = %cond.end134.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

for.body127.peel.next:                            ; preds = %cond.end134.peel
  %hsub132 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 8
  %86 = ptrtoint ptr %hsub132 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hsub132, align 4
  %div136 = udiv i32 %81, %87
  br label %cond.end134

cond.end134:                                      ; preds = %cond.end134.cond.end134_crit_edge, %for.body127.peel.next
  %i.1278 = phi i32 [ 1, %for.body127.peel.next ], [ %inc145, %cond.end134.cond.end134_crit_edge ]
  %arrayidx138 = getelementptr %struct.vsp1_format_info, ptr %6, i32 0, i32 5, i32 %i.1278
  %88 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx138, align 4
  %mul139 = mul i32 %89, %div136
  %div140255 = lshr i32 %mul139, 3
  %arrayidx142 = getelementptr [3 x i32], ptr %mem, i32 0, i32 %i.1278
  %90 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %div140255, %91
  store i32 %add143, ptr %arrayidx142, align 4
  %inc145 = add nuw nsw i32 %i.1278, 1
  %exitcond280.not = icmp eq i32 %inc145, %conv
  br i1 %exitcond280.not, label %cond.end134.if.end147_crit_edge, label %cond.end134.cond.end134_crit_edge, !llvm.loop !42

cond.end134.cond.end134_crit_edge:                ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end134

cond.end134.if.end147_crit_edge:                  ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.end147:                                        ; preds = %cond.end134.if.end147_crit_edge, %if.end105.if.end147_crit_edge
  %info = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp148 = icmp eq i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp153 = icmp eq i8 %36, 3
  %or.cond = select i1 %cmp148, i1 %cmp153, i1 false
  br i1 %or.cond, label %land.lhs.true155, label %if.end147.if.end167_crit_edge

if.end147.if.end167_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

land.lhs.true155:                                 ; preds = %if.end147
  %swap_uv = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 7
  %96 = ptrtoint ptr %swap_uv to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %swap_uv, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool156.not = icmp eq i8 %97, 0
  br i1 %tobool156.not, label %land.lhs.true155.if.end167_crit_edge, label %do.body

land.lhs.true155.if.end167_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

do.body:                                          ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %2, align 4
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %3, align 4
  store i32 %101, ptr %2, align 4
  store i32 %99, ptr %3, align 4
  br label %if.end167

if.end167:                                        ; preds = %do.body, %land.lhs.true155.if.end167_crit_edge, %if.end147.if.end167_crit_edge, %cond.end134.peel.if.end167_crit_edge, %if.then113.if.end167_crit_edge
  %102 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mem, align 4
  %104 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index.i, align 4
  %mul.i261 = shl i32 %105, 8
  %add.i262 = add i32 %mul.i261, 4132
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i262, i32 noundef %103) #8
  %106 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %2, align 4
  %108 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i, align 4
  %mul.i264 = shl i32 %109, 8
  %add.i265 = add i32 %mul.i264, 4136
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i265, i32 noundef %107) #8
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %3, align 4
  %112 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index.i, align 4
  %mul.i267 = shl i32 %113, 8
  %add.i268 = add i32 %mul.i267, 4140
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i268, i32 noundef %111) #8
  %writeback174 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 13
  %114 = ptrtoint ptr %writeback174 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %writeback174, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wpf_max_width(ptr nocapture noundef readonly %entity, ptr nocapture noundef readnone %pipe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rotate = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %rotate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rotate, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_width = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 3
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 256, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wpf_partition(ptr nocapture noundef readnone %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef writeonly %partition, i32 noundef %partition_idx, ptr nocapture noundef readonly %window) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wpf = getelementptr inbounds %struct.vsp1_partition, ptr %partition, i32 0, i32 4
  %0 = ptrtoint ptr %window to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %window, align 4
  %2 = ptrtoint ptr %wpf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %wpf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dlm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get_body0(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wpf_s_stream(ptr nocapture noundef readonly %subdev, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %index = getelementptr i8, ptr %subdev, i32 -48
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul = mul i32 %3, 12
  %add = add i32 %mul, 72
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #8, !srcloc !44
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %mul5 = shl i32 %7, 8
  %add6 = add i32 %mul5, 4096
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 %add6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #8, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_wpf_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -352
  %flip1 = getelementptr i8, ptr %1, i32 408
  %ctrls = getelementptr i8, ptr %1, i32 452
  %rotate = getelementptr i8, ptr %1, i32 460
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rotate, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %cond)
  %cmp.i = icmp eq i32 %cond, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %cond)
  %cmp2.i = icmp eq i32 %cond, 270
  %spec.select.i = or i1 %cmp.i, %cmp2.i
  %frombool.i = zext i1 %spec.select.i to i8
  %rotate3.i = getelementptr i8, ptr %1, i32 472
  %6 = ptrtoint ptr %rotate3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rotate3.i, align 4, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool.i)
  %cmp6.i = icmp eq i8 %7, %frombool.i
  br i1 %cmp6.i, label %cond.end.if.end_crit_edge, label %if.end.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %cond.end
  %video1.i = getelementptr i8, ptr %1, i32 184
  %8 = ptrtoint ptr %video1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video1.i, align 4
  %lock.i = getelementptr inbounds %struct.vsp1_video, ptr %9, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %num_buffers.i.i = getelementptr inbounds %struct.vsp1_video, ptr %9, i32 0, i32 8, i32 21
  %10 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i, label %if.end9.i, label %vsp1_wpf_set_rotation.exit.thread51

vsp1_wpf_set_rotation.exit.thread51:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %config.i = getelementptr i8, ptr %1, i32 -96
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %call11.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr, ptr noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %call15.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr, ptr noundef %15, i32 noundef 1) #8
  %lock17.i = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock17.i, i32 noundef 0) #8
  %16 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %if.else.i [
    i32 270, label %if.end9.i.if.then19.i_crit_edge
    i32 90, label %if.end9.i.if.then19.i_crit_edge54
  ]

if.end9.i.if.then19.i_crit_edge54:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.end9.i.if.then19.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end9.i.if.then19.i_crit_edge, %if.end9.i.if.then19.i_crit_edge54
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11.i, i32 0, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %19 = ptrtoint ptr %call15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call15.i, align 4
  br label %vsp1_wpf_set_rotation.exit

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call11.i, align 4
  %22 = ptrtoint ptr %call15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call15.i, align 4
  %height24.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11.i, i32 0, i32 1
  br label %vsp1_wpf_set_rotation.exit

vsp1_wpf_set_rotation.exit:                       ; preds = %if.else.i, %if.then19.i
  %height24.sink.i = phi ptr [ %height24.i, %if.else.i ], [ %call11.i, %if.then19.i ]
  %23 = ptrtoint ptr %height24.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height24.sink.i, align 4
  %height25.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call15.i, i32 0, i32 1
  %25 = ptrtoint ptr %height25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height25.i, align 4
  %26 = ptrtoint ptr %rotate3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %rotate3.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock17.i) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %if.end

if.end:                                           ; preds = %vsp1_wpf_set_rotation.exit, %cond.end.if.end_crit_edge
  %27 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrls, align 4
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool8.not = icmp ne i32 %30, 0
  %spec.select = zext i1 %tobool8.not to i32
  %hflip = getelementptr i8, ptr %1, i32 456
  %31 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hflip, align 4
  %tobool13.not = icmp eq ptr %32, null
  br i1 %tobool13.not, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool18.not = icmp eq i32 %34, 0
  %or20 = or i32 %spec.select, 2
  %spec.select48 = select i1 %tobool18.not, i32 %spec.select, i32 %or20
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.end.if.end21_crit_edge
  %flip.1 = phi i32 [ %spec.select, %if.end.if.end21_crit_edge ], [ %spec.select48, %land.lhs.true ]
  %35 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cond, label %if.end21.if.end25_crit_edge [
    i32 180, label %if.end21.if.then24_crit_edge
    i32 270, label %if.end21.if.then24_crit_edge55
  ]

if.end21.if.then24_crit_edge55:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end21.if.then24_crit_edge, %if.end21.if.then24_crit_edge55
  %xor = xor i32 %flip.1, 3
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %flip.2 = phi i32 [ %xor, %if.then24 ], [ %flip.1, %if.end21.if.end25_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %flip1) #8
  %pending = getelementptr i8, ptr %1, i32 464
  %36 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flip.2, ptr %pending, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %flip1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %vsp1_wpf_set_rotation.exit.thread51
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -16, %vsp1_wpf_set_rotation.exit.thread51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 585, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 601, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vsp1_wpf_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vsp1_wpf_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @wpf_entity_ops, !11, !"wpf_entity_ops", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 550, i32 44}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 244, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wpf_configure_writeback_chain._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @wpf_configure_writeback_chain._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @wpf_ops, !18, !"wpf_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 219, i32 37}
!19 = !{ptr @wpf_video_ops, !20, !"wpf_video_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 215, i32 43}
!21 = !{ptr @wpf_init_controls.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 139, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 180, i32 3}
!26 = !{ptr @wpf_init_controls._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wpf_init_controls._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @vsp1_wpf_ctrl_ops, !29, !"vsp1_wpf_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/vsp1/vsp1_wpf.c", i32 130, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = distinct !{!42, !41}
!43 = !{i64 2154768901}
!44 = !{i64 7234269}
