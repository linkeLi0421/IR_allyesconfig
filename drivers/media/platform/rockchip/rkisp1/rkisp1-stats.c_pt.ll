; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_stats_ops = type { ptr, ptr, ptr }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.114, %struct.anon.115 }
%struct.anon.114 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.115 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.rkisp1_stat_buffer = type { i32, i32, %struct.rkisp1_cif_isp_stat }
%struct.rkisp1_cif_isp_stat = type { %struct.rkisp1_cif_isp_awb_stat, %struct.rkisp1_cif_isp_ae_stat, %struct.rkisp1_cif_isp_af_stat, %struct.rkisp1_cif_isp_hist_stat }
%struct.rkisp1_cif_isp_awb_stat = type { [1 x %struct.rkisp1_cif_isp_awb_meas] }
%struct.rkisp1_cif_isp_awb_meas = type { i32, i8, i8, i8 }
%struct.rkisp1_cif_isp_ae_stat = type { [81 x i8], %struct.rkisp1_cif_isp_bls_meas_val }
%struct.rkisp1_cif_isp_bls_meas_val = type { i16, i16, i16, i16 }
%struct.rkisp1_cif_isp_af_stat = type { [3 x %struct.rkisp1_cif_isp_af_meas_val] }
%struct.rkisp1_cif_isp_af_meas_val = type { i32, i32 }
%struct.rkisp1_cif_isp_hist_stat = type { [32 x i32] }
%struct.rkisp1_isp_mbus_info = type { i32, i32, i32, i32, i8, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.rkisp1_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, [8 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@rkisp1_stats_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&node->vlock\00", [19 x i8] zeroinitializer }, align 32
@rkisp1_stats_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rkisp1_stats\00", [19 x i8] zeroinitializer }, align 32
@rkisp1_stats_ioctl = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rkisp1_stats_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_stats_enum_fmt_meta_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_stats_g_fmt_meta_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_stats_g_fmt_meta_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_stats_g_fmt_meta_cap, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rkisp1_stats_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rkisp1_stats_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 471, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register %s, ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rkisp1_stats_register\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_stats_register._entry_ptr = internal global ptr @rkisp1_stats_register._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rkisp1\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:rkisp1\00", [16 x i8] zeroinitializer }, align 32
@rkisp1_stats_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rkisp1_stats_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rkisp1_stats_vb2_buf_prepare, ptr null, ptr null, ptr null, ptr @rkisp1_stats_vb2_stop_streaming, ptr @rkisp1_stats_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rkisp1_v12_stats_ops = internal global { %struct.rkisp1_stats_ops, [20 x i8] } { %struct.rkisp1_stats_ops { ptr @rkisp1_stats_get_awb_meas_v12, ptr @rkisp1_stats_get_aec_meas_v12, ptr @rkisp1_stats_get_hst_meas_v12 }, [20 x i8] zeroinitializer }, align 32
@rkisp1_v10_stats_ops = internal constant { %struct.rkisp1_stats_ops, [20 x i8] } { %struct.rkisp1_stats_ops { ptr @rkisp1_stats_get_awb_meas_v10, ptr @rkisp1_stats_get_aec_meas_v10, ptr @rkisp1_stats_get_hst_meas_v10 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 444, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 446, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 448, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"rkisp1_stats_ioctl\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 64, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"rkisp1_stats_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 83, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 470, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1163, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 56, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 58, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"rkisp1_stats_vb2_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 149, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"rkisp1_v12_stats_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 357, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"rkisp1_v10_stats_ops\00", align 1
@___asan_gen_.67 = private constant [57 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 351, i32 38 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @rkisp1_stats_register._entry, ptr @rkisp1_stats_register._entry_ptr, ptr @rkisp1_stats_register.__key, ptr @.str, ptr @rkisp1_stats_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @rkisp1_stats_ioctl, ptr @rkisp1_stats_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rkisp1_stats_vb2_ops, ptr @rkisp1_v12_stats_ops, ptr @rkisp1_v10_stats_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_ioctl to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_stats_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_v12_stats_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_v10_stats_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_stats_isr(ptr noundef %stats, i32 noundef %isp_ris) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %lock = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 281019392) #5, !srcloc !43
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 1476
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, 281019392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stats_error = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 15, i32 7
  %8 = ptrtoint ptr %stats_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_error, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %stats_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %isp_ris, 311312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp11, align 8
  %frame_sequence1.i = getelementptr inbounds %struct.rkisp1_device, ptr %11, i32 0, i32 8, i32 7
  %12 = ptrtoint ptr %frame_sequence1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_sequence1.i, align 4
  %call.i.i = tail call i64 @ktime_get() #5
  %stat.i = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 4
  %14 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %stat.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %stat.i
  br i1 %cmp.i.not.i, label %if.then4.if.end5_crit_edge, label %if.then.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.then.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool4.not.i = icmp eq ptr %add.ptr.i14, null
  br i1 %tobool4.not.i, label %if.end.i.if.end5_crit_edge, label %if.end6.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i14, i32 noundef 0) #5
  %and.i = and i32 %isp_ris, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %stats, ptr noundef %call7.i) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %and11.i = and i32 %isp_ris, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp11, align 8
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i, align 4
  %or.i.i = or i32 %31, 4
  store i32 %or.i.i, ptr %call7.i, align 4
  %af2.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 8228
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %36 = ptrtoint ptr %af2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %af2.i.i, align 4
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %29, align 8
  %add.ptr.i33.i.i = getelementptr i8, ptr %38, i32 8240
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #5, !srcloc !44
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %lum.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %lum.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %lum.i.i, align 4
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %29, align 8
  %add.ptr.i34.i.i = getelementptr i8, ptr %43, i32 8232
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i.i) #5, !srcloc !44
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx8.i.i = getelementptr %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx8.i.i, align 4
  %47 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %29, align 8
  %add.ptr.i35.i.i = getelementptr i8, ptr %48, i32 8244
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i.i) #5, !srcloc !44
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %lum13.i.i = getelementptr %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %lum13.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %lum13.i.i, align 4
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %29, align 8
  %add.ptr.i36.i.i = getelementptr i8, ptr %53, i32 8236
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i.i) #5, !srcloc !44
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx16.i.i = getelementptr %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx16.i.i, align 4
  %57 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %29, align 8
  %add.ptr.i37.i.i = getelementptr i8, ptr %58, i32 8248
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i.i) #5, !srcloc !44
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %lum21.i.i = getelementptr %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 2, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %lum21.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %lum21.i.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %and15.i = and i32 %isp_ris, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then17.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  %ops18.i = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 2
  %62 = ptrtoint ptr %ops18.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops18.i, align 4
  %get_aec_meas.i = getelementptr inbounds %struct.rkisp1_stats_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %get_aec_meas.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_aec_meas.i, align 4
  tail call void %65(ptr noundef %stats, ptr noundef %call7.i) #5
  %66 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rkisp11, align 8
  %sink_fmt.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %67, i32 0, i32 8, i32 3
  %68 = ptrtoint ptr %sink_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sink_fmt.i.i, align 4
  %bls_val2.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1
  %bayer_pat.i.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %bayer_pat.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bayer_pat.i.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %if.then17.i.if.end19.i_crit_edge [
    i32 3, label %if.then.i.i
    i32 2, label %if.then12.i.i
    i32 1, label %if.then29.i.i
    i32 0, label %if.then46.i.i
  ]

if.then17.i.if.end19.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %67, align 8
  %add.ptr.i.i60.i = getelementptr i8, ptr %74, i32 10040
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60.i) #5, !srcloc !44
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv.i61.i = trunc i32 %76 to i16
  %meas_b.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 3
  %77 = ptrtoint ptr %meas_b.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i61.i, ptr %meas_b.i.i, align 2
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %67, align 8
  %add.ptr.i96.i.i = getelementptr i8, ptr %79, i32 10044
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i.i) #5, !srcloc !44
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv4.i.i = trunc i32 %81 to i16
  %meas_gb.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 2
  %82 = ptrtoint ptr %meas_gb.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv4.i.i, ptr %meas_gb.i.i, align 2
  %83 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %67, align 8
  %add.ptr.i97.i.i = getelementptr i8, ptr %84, i32 10048
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i.i) #5, !srcloc !44
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv6.i.i = trunc i32 %86 to i16
  %meas_gr.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 1
  %87 = ptrtoint ptr %meas_gr.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv6.i.i, ptr %meas_gr.i.i, align 2
  %88 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %67, align 8
  %add.ptr.i98.i.i = getelementptr i8, ptr %89, i32 10052
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i.i) #5, !srcloc !44
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv8.i.i = trunc i32 %91 to i16
  %92 = ptrtoint ptr %bls_val2.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv8.i.i, ptr %bls_val2.i.i, align 2
  br label %if.end19.i

if.then12.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %67, align 8
  %add.ptr.i99.i.i = getelementptr i8, ptr %94, i32 10040
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i.i) #5, !srcloc !44
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv14.i.i = trunc i32 %96 to i16
  %meas_gb15.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 2
  %97 = ptrtoint ptr %meas_gb15.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv14.i.i, ptr %meas_gb15.i.i, align 2
  %98 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %67, align 8
  %add.ptr.i100.i.i = getelementptr i8, ptr %99, i32 10044
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i.i) #5, !srcloc !44
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv17.i.i = trunc i32 %101 to i16
  %meas_b18.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 3
  %102 = ptrtoint ptr %meas_b18.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv17.i.i, ptr %meas_b18.i.i, align 2
  %103 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %67, align 8
  %add.ptr.i101.i.i = getelementptr i8, ptr %104, i32 10048
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.i.i) #5, !srcloc !44
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv20.i.i = trunc i32 %106 to i16
  %107 = ptrtoint ptr %bls_val2.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv20.i.i, ptr %bls_val2.i.i, align 2
  %108 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %67, align 8
  %add.ptr.i102.i.i = getelementptr i8, ptr %109, i32 10052
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i.i) #5, !srcloc !44
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv23.i.i = trunc i32 %111 to i16
  %meas_gr24.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 1
  %112 = ptrtoint ptr %meas_gr24.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv23.i.i, ptr %meas_gr24.i.i, align 2
  br label %if.end19.i

if.then29.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %67, align 8
  %add.ptr.i103.i.i = getelementptr i8, ptr %114, i32 10040
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i.i) #5, !srcloc !44
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv31.i.i = trunc i32 %116 to i16
  %meas_gr32.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 1
  %117 = ptrtoint ptr %meas_gr32.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv31.i.i, ptr %meas_gr32.i.i, align 2
  %118 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %67, align 8
  %add.ptr.i104.i.i = getelementptr i8, ptr %119, i32 10044
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i.i) #5, !srcloc !44
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv34.i.i = trunc i32 %121 to i16
  %122 = ptrtoint ptr %bls_val2.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv34.i.i, ptr %bls_val2.i.i, align 2
  %123 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %67, align 8
  %add.ptr.i105.i.i = getelementptr i8, ptr %124, i32 10048
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105.i.i) #5, !srcloc !44
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv37.i.i = trunc i32 %126 to i16
  %meas_b38.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 3
  %127 = ptrtoint ptr %meas_b38.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv37.i.i, ptr %meas_b38.i.i, align 2
  %128 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %67, align 8
  %add.ptr.i106.i.i = getelementptr i8, ptr %129, i32 10052
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i.i) #5, !srcloc !44
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv40.i.i = trunc i32 %131 to i16
  %meas_gb41.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 2
  %132 = ptrtoint ptr %meas_gb41.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv40.i.i, ptr %meas_gb41.i.i, align 2
  br label %if.end19.i

if.then46.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %67, align 8
  %add.ptr.i107.i.i = getelementptr i8, ptr %134, i32 10040
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107.i.i) #5, !srcloc !44
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv48.i.i = trunc i32 %136 to i16
  %137 = ptrtoint ptr %bls_val2.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv48.i.i, ptr %bls_val2.i.i, align 2
  %138 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %67, align 8
  %add.ptr.i108.i.i = getelementptr i8, ptr %139, i32 10044
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i.i) #5, !srcloc !44
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv51.i.i = trunc i32 %141 to i16
  %meas_gr52.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 1
  %142 = ptrtoint ptr %meas_gr52.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv51.i.i, ptr %meas_gr52.i.i, align 2
  %143 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %67, align 8
  %add.ptr.i109.i.i = getelementptr i8, ptr %144, i32 10048
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109.i.i) #5, !srcloc !44
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv54.i.i = trunc i32 %146 to i16
  %meas_gb55.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 2
  %147 = ptrtoint ptr %meas_gb55.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv54.i.i, ptr %meas_gb55.i.i, align 2
  %148 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %67, align 8
  %add.ptr.i110.i.i = getelementptr i8, ptr %149, i32 10052
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i.i) #5, !srcloc !44
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv57.i.i = trunc i32 %151 to i16
  %meas_b58.i.i = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %call7.i, i32 0, i32 2, i32 1, i32 1, i32 3
  %152 = ptrtoint ptr %meas_b58.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv57.i.i, ptr %meas_b58.i.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then46.i.i, %if.then29.i.i, %if.then12.i.i, %if.then.i.i, %if.then17.i.if.end19.i_crit_edge, %if.end14.i.if.end19.i_crit_edge
  %and20.i = and i32 %isp_ris, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then22.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops23.i = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 2
  %153 = ptrtoint ptr %ops23.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops23.i, align 4
  %get_hst_meas.i = getelementptr inbounds %struct.rkisp1_stats_ops, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %get_hst_meas.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %get_hst_meas.i, align 4
  tail call void %156(ptr noundef %stats, ptr noundef %call7.i) #5
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end24.i_crit_edge
  %num_planes.i.i = getelementptr i8, ptr %15, i32 -720
  %157 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.not.i.i = icmp eq i32 %158, 0
  br i1 %cmp.not.i.i, label %if.end24.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i62.i

if.end24.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit.i

if.then.i62.i:                                    ; preds = %if.end24.i
  %length.i.i = getelementptr i8, ptr %15, i32 -648
  %159 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %160)
  %cmp1.i.i = icmp ult i32 %160, 260
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i62.i.if.end42.i.i_crit_edge

if.then.i62.i.if.end42.i.i_crit_edge:             ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i62.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !46

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %161 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i62.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %162, %if.then38.i.i ], [ 260, %if.then.i62.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr i8, ptr %15, i32 -652
  %163 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.end24.i.vb2_set_plane_payload.exit.i_crit_edge
  %sequence.i = getelementptr i8, ptr %15, i32 -272
  %164 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %13, ptr %sequence.i, align 8
  %timestamp30.i = getelementptr i8, ptr %15, i32 -712
  %165 = ptrtoint ptr %timestamp30.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %call.i.i, ptr %timestamp30.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i14, i32 noundef 5) #5
  br label %if.end5

if.end5:                                          ; preds = %vb2_set_plane_payload.exit.i, %if.end.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_stats_register(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11
  %vdev2 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2
  %rkisp13 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %rkisp13 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rkisp1, ptr %rkisp13, align 8
  %vlock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %vlock, ptr noundef nonnull @.str, ptr noundef nonnull @rkisp1_stats_register.__key) #5
  %stat = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 4
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %stat, ptr %stat, align 4
  %prev.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stat, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rkisp1_stats_register.__key.1, i16 noundef signext 3) #5
  %name = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 32) #5
  %driver_data.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %stats1, ptr %driver_data.i.i, align 4
  %ioctl_ops = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 24
  %4 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rkisp1_stats_ioctl, ptr %ioctl_ops, align 4
  %fops = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rkisp1_stats_fops, ptr %fops, align 4
  %release = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 23
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock9 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 26
  %7 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vlock, ptr %lock9, align 8
  %v4l2_dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4
  %v4l2_dev10 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %v4l2_dev10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v4l2_dev, ptr %v4l2_dev10, align 4
  %queue = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 10
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %stats1, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 75497472, ptr %device_caps, align 8
  %vfl_dir = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 14
  %11 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vfl_dir, align 4
  %12 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %stats1, align 4
  %io_modes.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 19, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 10
  %14 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %stats1, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 7
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rkisp1_stats_vb2_ops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 8
  %16 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 776, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 13
  %18 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %lock.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vlock, ptr %lock.i, align 4
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %stats1) #5
  %fmt.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 5, i32 1
  %20 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1395739474, ptr %fmt.i, align 4
  %buffersize.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 5, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %buffersize.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 260, ptr %buffersize.i, align 4
  %22 = ptrtoint ptr %rkisp13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp13, align 8
  %hw_revision.i = getelementptr inbounds %struct.rkisp1_device, ptr %23, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp.i = icmp eq i32 %25, 12
  %spec.select.i = select i1 %cmp.i, ptr @rkisp1_v12_stats_ops, ptr @rkisp1_v10_stats_ops
  %26 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select.i, ptr %26, align 4
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %stats1, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %flags, align 4
  %call14 = tail call i32 @media_entity_pads_init(ptr noundef %vdev2, i16 noundef zeroext 1, ptr noundef %pad) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %entry.err_mutex_destroy_crit_edge

entry.err_mutex_destroy_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mutex_destroy

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i64 = tail call i32 @__video_register_device(ptr noundef %vdev2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool16.not = icmp eq i32 %call.i64, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %do.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %call.i64) #8
  br label %err_mutex_destroy

err_mutex_destroy:                                ; preds = %do.end20, %entry.err_mutex_destroy_crit_edge
  %ret.0 = phi i32 [ %call14, %entry.err_mutex_destroy_crit_edge ], [ %call.i64, %do.end20 ]
  tail call void @mutex_destroy(ptr noundef %vlock) #5
  br label %cleanup

cleanup:                                          ; preds = %err_mutex_destroy, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_mutex_destroy ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_stats_unregister(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev2 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev2) #5
  %vlock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 11, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %vlock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_stats_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #5
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.10, i32 noundef 16) #5
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #5
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.11, i32 noundef 32) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_stats_enum_fmt_meta_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp3.not = icmp eq i32 %5, %9
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %fmt = getelementptr inbounds %struct.rkisp1_stats, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_stats_g_fmt_meta_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #5
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %fmt, align 1
  %fmt3 = getelementptr inbounds %struct.rkisp1_stats, ptr %7, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt3, align 4
  store i32 %10, ptr %fmt, align 1
  %buffersize = getelementptr inbounds %struct.rkisp1_stats, ptr %7, i32 0, i32 5, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffersize, align 4
  %buffersize7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %buffersize7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
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
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkisp1_stats_vb2_queue_setup(ptr nocapture noundef readnone %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_planes, align 4
  %1 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_buffers, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 2)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 8)
  %5 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_buffers, align 4
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 260, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_stats_vb2_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.return_crit_edge, label %vb2_plane_size.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

vb2_plane_size.exit:                              ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %3)
  %cmp = icmp ult i32 %3, 260
  br i1 %cmp, label %vb2_plane_size.exit.return_crit_edge, label %if.then.i5

vb2_plane_size.exit.return_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i5:                                       ; preds = %vb2_plane_size.exit
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %5)
  %cmp1.i = icmp ult i32 %5, 260
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i5.vb2_set_plane_payload.exit_crit_edge

if.then.i5.vb2_set_plane_payload.exit_crit_edge:  ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i5
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !46

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i5.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %7, %if.then38.i ], [ 260, %if.then.i5.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %return

return:                                           ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_vb2_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %lock = getelementptr inbounds %struct.rkisp1_stats, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %stat = getelementptr inbounds %struct.rkisp1_stats, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not = icmp eq ptr %3, %stat
  br i1 %cmp.i.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #5
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.1 = icmp eq ptr %13, %stat
  br i1 %cmp.i.not.1, label %list_del.exit.for.end_crit_edge, label %if.end.1

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.1:                                         ; preds = %list_del.exit
  %add.ptr.1 = getelementptr i8, ptr %13, i32 -736
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #5
  br i1 %call.i.i.1, label %if.end.i.i.1, label %if.end.1.list_del.exit.1_crit_edge

if.end.1.list_del.exit.1_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.1

if.end.i.i.1:                                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.1, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.1, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.1

list_del.exit.1:                                  ; preds = %if.end.i.i.1, %if.end.1.list_del.exit.1_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.1 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.1, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.1, i32 noundef 6) #5
  %22 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.2 = icmp eq ptr %23, %stat
  br i1 %cmp.i.not.2, label %list_del.exit.1.for.end_crit_edge, label %if.end.2

list_del.exit.1.for.end_crit_edge:                ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.2:                                         ; preds = %list_del.exit.1
  %add.ptr.2 = getelementptr i8, ptr %23, i32 -736
  %call.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #5
  br i1 %call.i.i.2, label %if.end.i.i.2, label %if.end.2.list_del.exit.2_crit_edge

if.end.2.list_del.exit.2_crit_edge:               ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.2

if.end.i.i.2:                                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.2 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.2, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.2, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.2

list_del.exit.2:                                  ; preds = %if.end.i.i.2, %if.end.2.list_del.exit.2_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.2 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.2, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.2, i32 noundef 6) #5
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.3 = icmp eq ptr %33, %stat
  br i1 %cmp.i.not.3, label %list_del.exit.2.for.end_crit_edge, label %if.end.3

list_del.exit.2.for.end_crit_edge:                ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.3:                                         ; preds = %list_del.exit.2
  %add.ptr.3 = getelementptr i8, ptr %33, i32 -736
  %call.i.i.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #5
  br i1 %call.i.i.3, label %if.end.i.i.3, label %if.end.3.list_del.exit.3_crit_edge

if.end.3.list_del.exit.3_crit_edge:               ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.3

if.end.i.i.3:                                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.3 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.3, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.3, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.3

list_del.exit.3:                                  ; preds = %if.end.i.i.3, %if.end.3.list_del.exit.3_crit_edge
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  %prev.i.3 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.3, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.3, i32 noundef 6) #5
  %42 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.4 = icmp eq ptr %43, %stat
  br i1 %cmp.i.not.4, label %list_del.exit.3.for.end_crit_edge, label %if.end.4

list_del.exit.3.for.end_crit_edge:                ; preds = %list_del.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.4:                                         ; preds = %list_del.exit.3
  %add.ptr.4 = getelementptr i8, ptr %43, i32 -736
  %call.i.i.4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %43) #5
  br i1 %call.i.i.4, label %if.end.i.i.4, label %if.end.4.list_del.exit.4_crit_edge

if.end.4.list_del.exit.4_crit_edge:               ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.4

if.end.i.i.4:                                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.4 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.4, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %prev1.i.i.i.4 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.4, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.4

list_del.exit.4:                                  ; preds = %if.end.i.i.4, %if.end.4.list_del.exit.4_crit_edge
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  %prev.i.4 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.4, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.4, i32 noundef 6) #5
  %52 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.5 = icmp eq ptr %53, %stat
  br i1 %cmp.i.not.5, label %list_del.exit.4.for.end_crit_edge, label %if.end.5

list_del.exit.4.for.end_crit_edge:                ; preds = %list_del.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.5:                                         ; preds = %list_del.exit.4
  %add.ptr.5 = getelementptr i8, ptr %53, i32 -736
  %call.i.i.5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #5
  br i1 %call.i.i.5, label %if.end.i.i.5, label %if.end.5.list_del.exit.5_crit_edge

if.end.5.list_del.exit.5_crit_edge:               ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.5

if.end.i.i.5:                                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.5 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.5, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %prev1.i.i.i.5 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.5, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit.5

list_del.exit.5:                                  ; preds = %if.end.i.i.5, %if.end.5.list_del.exit.5_crit_edge
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  %prev.i.5 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.5, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.5, i32 noundef 6) #5
  %62 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.6 = icmp eq ptr %63, %stat
  br i1 %cmp.i.not.6, label %list_del.exit.5.for.end_crit_edge, label %if.end.6

list_del.exit.5.for.end_crit_edge:                ; preds = %list_del.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.6:                                         ; preds = %list_del.exit.5
  %add.ptr.6 = getelementptr i8, ptr %63, i32 -736
  %call.i.i.6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #5
  br i1 %call.i.i.6, label %if.end.i.i.6, label %if.end.6.list_del.exit.6_crit_edge

if.end.6.list_del.exit.6_crit_edge:               ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.6

if.end.i.i.6:                                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.6 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.6, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %prev1.i.i.i.6 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.6, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.6

list_del.exit.6:                                  ; preds = %if.end.i.i.6, %if.end.6.list_del.exit.6_crit_edge
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %63, align 4
  %prev.i.6 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.6, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.6, i32 noundef 6) #5
  %72 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %stat, align 4
  %cmp.i.not.7 = icmp eq ptr %73, %stat
  br i1 %cmp.i.not.7, label %list_del.exit.6.for.end_crit_edge, label %if.end.7

list_del.exit.6.for.end_crit_edge:                ; preds = %list_del.exit.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.7:                                         ; preds = %list_del.exit.6
  %add.ptr.7 = getelementptr i8, ptr %73, i32 -736
  %call.i.i.7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %73) #5
  br i1 %call.i.i.7, label %if.end.i.i.7, label %if.end.7.list_del.exit.7_crit_edge

if.end.7.list_del.exit.7_crit_edge:               ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.7

if.end.i.i.7:                                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.7 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.7, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %prev1.i.i.i.7 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.7, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit.7

list_del.exit.7:                                  ; preds = %if.end.i.i.7, %if.end.7.list_del.exit.7_crit_edge
  %80 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %73, align 4
  %prev.i.7 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.7, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.7, i32 noundef 6) #5
  br label %for.end

for.end:                                          ; preds = %list_del.exit.7, %list_del.exit.6.for.end_crit_edge, %list_del.exit.5.for.end_crit_edge, %list_del.exit.4.for.end_crit_edge, %list_del.exit.3.for.end_crit_edge, %list_del.exit.2.for.end_crit_edge, %list_del.exit.1.for.end_crit_edge, %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_vb2_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %lock = getelementptr inbounds %struct.rkisp1_stats, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %queue = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1
  %stat = getelementptr inbounds %struct.rkisp1_stats, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.rkisp1_stats, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %stat) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %stat, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_awb_meas_v12(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %pbuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, -253
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %params = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %params, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 1328
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !44
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv = trunc i32 %13 to i8
  %mean_cr_or_r = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %mean_cr_or_r to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %mean_cr_or_r, align 2
  %shr = lshr i32 %13, 8
  %conv9 = trunc i32 %shr to i8
  %mean_cb_or_b = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %mean_cb_or_b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %mean_cb_or_b, align 1
  %shr14 = lshr i32 %13, 16
  %conv16 = trunc i32 %shr14 to i8
  %mean_y_or_g = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %mean_y_or_g to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %mean_y_or_g, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_aec_meas_v12(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %pbuf, align 4
  %ae = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.060 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.060, 2
  %add = add nuw nsw i32 %mul, 9740
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr [81 x i8], ptr %ae, i32 0, i32 %mul
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %shr = lshr i32 %7, 8
  %conv5 = trunc i32 %shr to i8
  %add10 = or i32 %mul, 1
  %arrayidx11 = getelementptr [81 x i8], ptr %ae, i32 0, i32 %add10
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %arrayidx11, align 1
  %shr12 = lshr i32 %7, 16
  %conv14 = trunc i32 %shr12 to i8
  %add19 = or i32 %mul, 2
  %arrayidx20 = getelementptr [81 x i8], ptr %ae, i32 0, i32 %add19
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx20, align 1
  %shr21 = lshr i32 %7, 24
  %conv23 = trunc i32 %shr21 to i8
  %add28 = or i32 %mul, 3
  %arrayidx29 = getelementptr [81 x i8], ptr %ae, i32 0, i32 %add28
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx29, align 1
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i59 = getelementptr i8, ptr %13, i32 9820
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #5, !srcloc !44
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv34 = trunc i32 %15 to i8
  %arrayidx40 = getelementptr %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 1, i32 0, i32 80
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv34, ptr %arrayidx40, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_hst_meas_v12(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %pbuf, align 4
  %hist = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.017, 2
  %add = add nuw nsw i32 %mul, 11552
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %and = and i32 %7, 65535
  %mul2 = shl nuw i32 %i.017, 1
  %arrayidx = getelementptr [32 x i32], ptr %hist, i32 0, i32 %mul2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %arrayidx, align 4
  %shr = lshr i32 %7, 16
  %add8 = or i32 %mul2, 1
  %arrayidx9 = getelementptr [32 x i32], ptr %hist, i32 0, i32 %add8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_awb_meas_v10(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %pbuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1344
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, -253
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %params = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %params, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 1348
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !44
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv = trunc i32 %13 to i8
  %mean_cr_or_r = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %mean_cr_or_r to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %mean_cr_or_r, align 2
  %shr = lshr i32 %13, 8
  %conv9 = trunc i32 %shr to i8
  %mean_cb_or_b = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %mean_cb_or_b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %mean_cb_or_b, align 1
  %shr14 = lshr i32 %13, 16
  %conv16 = trunc i32 %shr14 to i8
  %mean_y_or_g = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %mean_y_or_g to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %mean_y_or_g, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_aec_meas_v10(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %pbuf, align 4
  %ae = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.06, 2
  %add = add nuw nsw i32 %mul, 9748
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr [81 x i8], ptr %ae, i32 0, i32 %i.06
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_stats_get_hst_meas_v10(ptr nocapture noundef readonly %stats, ptr nocapture noundef %pbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 8
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbuf, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %pbuf, align 4
  %hist = getelementptr inbounds %struct.rkisp1_stat_buffer, ptr %pbuf, i32 0, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.06, 2
  %add = add nuw nsw i32 %mul, 9236
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, -61696
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx = getelementptr [32 x i32], ptr %hist, i32 0, i32 %i.06
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @rkisp1_stats_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 444, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rkisp1_stats_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 446, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 448, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 470, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rkisp1_stats_register._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @rkisp1_stats_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rkisp1_stats_ioctl, !20, !"rkisp1_stats_ioctl", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 64, i32 36}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 56, i32 23}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 58, i32 25}
!25 = !{ptr @rkisp1_stats_fops, !26, !"rkisp1_stats_fops", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 83, i32 42}
!27 = !{ptr @rkisp1_stats_vb2_ops, !28, !"rkisp1_stats_vb2_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 149, i32 29}
!29 = !{ptr @rkisp1_v12_stats_ops, !30, !"rkisp1_v12_stats_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 357, i32 32}
!31 = !{ptr @rkisp1_v10_stats_ops, !32, !"rkisp1_v10_stats_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c", i32 351, i32 38}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2156558891}
!43 = !{i64 7155959}
!44 = !{i64 7156377}
!45 = !{i64 2156559756}
!46 = !{!"branch_weights", i32 2000, i32 1}
