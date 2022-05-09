; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rkisp1_cif_isp_hst_config = type { i32, i8, %struct.rkisp1_cif_isp_window, [81 x i8] }
%struct.rkisp1_cif_isp_window = type { i16, i16, i16, i16 }
%struct.rkisp1_cif_isp_awb_meas_config = type { %struct.rkisp1_cif_isp_window, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rkisp1_cif_isp_aec_config = type { i32, i32, %struct.rkisp1_cif_isp_window }
%struct.rkisp1_cif_isp_afc_config = type { i8, [3 x %struct.rkisp1_cif_isp_window], i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_params_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.114, %struct.anon.115 }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.114 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.115 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.rkisp1_params_cfg = type { i32, i32, i32, %struct.rkisp1_cif_isp_isp_meas_cfg, %struct.rkisp1_cif_isp_isp_other_cfg }
%struct.rkisp1_cif_isp_isp_meas_cfg = type { %struct.rkisp1_cif_isp_awb_meas_config, %struct.rkisp1_cif_isp_hst_config, %struct.rkisp1_cif_isp_aec_config, %struct.rkisp1_cif_isp_afc_config }
%struct.rkisp1_cif_isp_isp_other_cfg = type { %struct.rkisp1_cif_isp_dpcc_config, %struct.rkisp1_cif_isp_bls_config, %struct.rkisp1_cif_isp_sdg_config, %struct.rkisp1_cif_isp_lsc_config, %struct.rkisp1_cif_isp_awb_gain_config, %struct.rkisp1_cif_isp_flt_config, %struct.rkisp1_cif_isp_bdm_config, %struct.rkisp1_cif_isp_ctk_config, %struct.rkisp1_cif_isp_goc_config, %struct.rkisp1_cif_isp_dpf_config, %struct.rkisp1_cif_isp_dpf_strength_config, %struct.rkisp1_cif_isp_cproc_config, %struct.rkisp1_cif_isp_ie_config }
%struct.rkisp1_cif_isp_dpcc_config = type { i32, i32, i32, [3 x %struct.rkisp1_cif_isp_dpcc_methods_config], i32, i32 }
%struct.rkisp1_cif_isp_dpcc_methods_config = type { i32, i32, i32, i32, i32, i32 }
%struct.rkisp1_cif_isp_bls_config = type { i8, i8, %struct.rkisp1_cif_isp_window, %struct.rkisp1_cif_isp_window, i8, %struct.rkisp1_cif_isp_bls_fixed_val }
%struct.rkisp1_cif_isp_bls_fixed_val = type { i16, i16, i16, i16 }
%struct.rkisp1_cif_isp_sdg_config = type { %struct.rkisp1_cif_isp_gamma_corr_curve, %struct.rkisp1_cif_isp_gamma_corr_curve, %struct.rkisp1_cif_isp_gamma_corr_curve, %struct.rkisp1_cif_isp_gamma_curve_x_axis_pnts }
%struct.rkisp1_cif_isp_gamma_corr_curve = type { [17 x i16] }
%struct.rkisp1_cif_isp_gamma_curve_x_axis_pnts = type { i32, i32 }
%struct.rkisp1_cif_isp_lsc_config = type { [17 x [17 x i16]], [17 x [17 x i16]], [17 x [17 x i16]], [17 x [17 x i16]], [8 x i16], [8 x i16], [8 x i16], [8 x i16], i16, i16 }
%struct.rkisp1_cif_isp_awb_gain_config = type { i16, i16, i16, i16 }
%struct.rkisp1_cif_isp_flt_config = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rkisp1_cif_isp_bdm_config = type { i8 }
%struct.rkisp1_cif_isp_ctk_config = type { [3 x [3 x i16]], [3 x i16] }
%struct.rkisp1_cif_isp_goc_config = type { i32, [34 x i16] }
%struct.rkisp1_cif_isp_dpf_config = type { %struct.rkisp1_cif_isp_dpf_gain, %struct.rkisp1_cif_isp_dpf_g_flt, %struct.rkisp1_cif_isp_dpf_rb_flt, %struct.rkisp1_cif_isp_dpf_nll }
%struct.rkisp1_cif_isp_dpf_gain = type { i32, i16, i16, i16, i16 }
%struct.rkisp1_cif_isp_dpf_g_flt = type { [6 x i8], i8, i8 }
%struct.rkisp1_cif_isp_dpf_rb_flt = type { i32, [6 x i8], i8, i8 }
%struct.rkisp1_cif_isp_dpf_nll = type { [17 x i16], i32 }
%struct.rkisp1_cif_isp_dpf_strength_config = type { i8, i8, i8 }
%struct.rkisp1_cif_isp_cproc_config = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rkisp1_cif_isp_ie_config = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.rkisp1_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, [8 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@rkisp1_params_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&node->vlock\00", [19 x i8] zeroinitializer }, align 32
@rkisp1_params_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&params->config_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rkisp1_params\00", [18 x i8] zeroinitializer }, align 32
@rkisp1_params_ioctl = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rkisp1_params_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_params_enum_fmt_meta_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_params_g_fmt_meta_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_params_g_fmt_meta_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_params_g_fmt_meta_out, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rkisp1_params_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rkisp1_params_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1851, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register %s, ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rkisp1_params_register\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-params.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_params_register._entry_ptr = internal global ptr @rkisp1_params_register._entry, section ".printk_index", align 4
@rkisp1_hst_params_default_config = internal constant { %struct.rkisp1_cif_isp_hst_config, [32 x i8] } { %struct.rkisp1_cif_isp_hst_config { i32 1, i8 3, %struct.rkisp1_cif_isp_window { i16 200, i16 150, i16 400, i16 300 }, [81 x i8] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rkisp1_awb_params_default_config = internal constant { %struct.rkisp1_cif_isp_awb_meas_config, [44 x i8] } { %struct.rkisp1_cif_isp_awb_meas_config { %struct.rkisp1_cif_isp_window { i16 0, i16 0, i16 800, i16 600 }, i32 2, i8 -56, i8 30, i8 20, i8 20, i8 0, i8 -128, i8 -128, i8 0 }, [44 x i8] zeroinitializer }, align 32
@rkisp1_aec_params_default_config = internal constant { %struct.rkisp1_cif_isp_aec_config, [16 x i8] } { %struct.rkisp1_cif_isp_aec_config { i32 0, i32 0, %struct.rkisp1_cif_isp_window { i16 200, i16 150, i16 400, i16 300 } }, [16 x i8] zeroinitializer }, align 32
@rkisp1_afc_params_default_config = internal constant { %struct.rkisp1_cif_isp_afc_config, [60 x i8] } { %struct.rkisp1_cif_isp_afc_config { i8 1, [3 x %struct.rkisp1_cif_isp_window] [%struct.rkisp1_cif_isp_window { i16 300, i16 225, i16 200, i16 150 }, %struct.rkisp1_cif_isp_window zeroinitializer, %struct.rkisp1_cif_isp_window zeroinitializer], i32 4, i32 14 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rkisp1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:rkisp1\00", [16 x i8] zeroinitializer }, align 32
@rkisp1_params_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rkisp1_params_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rkisp1_params_vb2_buf_prepare, ptr null, ptr null, ptr null, ptr @rkisp1_params_vb2_stop_streaming, ptr @rkisp1_params_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@rkisp1_v12_params_ops = internal global { %struct.rkisp1_params_ops, [60 x i8] } { %struct.rkisp1_params_ops { ptr @rkisp1_lsc_matrix_config_v12, ptr @rkisp1_goc_config_v12, ptr @rkisp1_awb_meas_config_v12, ptr @rkisp1_awb_meas_enable_v12, ptr @rkisp1_awb_gain_config_v12, ptr @rkisp1_aec_config_v12, ptr @rkisp1_hst_config_v12, ptr @rkisp1_hst_enable_v12, ptr @rkisp1_afm_config_v12 }, [60 x i8] zeroinitializer }, align 32
@rkisp1_v10_params_ops = internal constant { %struct.rkisp1_params_ops, [60 x i8] } { %struct.rkisp1_params_ops { ptr @rkisp1_lsc_matrix_config_v10, ptr @rkisp1_goc_config_v10, ptr @rkisp1_awb_meas_config_v10, ptr @rkisp1_awb_meas_enable_v10, ptr @rkisp1_awb_gain_config_v10, ptr @rkisp1_aec_config_v10, ptr @rkisp1_hst_config_v10, ptr @rkisp1_hst_enable_v10, ptr @rkisp1_afm_config_v10 }, [60 x i8] zeroinitializer }, align 32
@rkisp1_hst_config_v10.hist_weight_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9300, i32 9304, i32 9308, i32 9312, i32 9316, i32 9320], [40 x i8] zeroinitializer }, align 32
@switch.table.rkisp1_params_apply_params_cfg = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 640, i32 256, i32 896, i32 128, i32 384], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 16, i64 2, i64 3, i64 4, i64 5, i64 10, i64 15]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1821, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1823, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1825, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"rkisp1_params_ioctl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1685, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"rkisp1_params_fops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1773, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1850, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [33 x i8] c"rkisp1_hst_params_default_config\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1514, i32 47 }
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"rkisp1_awb_params_default_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1498, i32 52 }
@___asan_gen_.58 = private unnamed_addr constant [33 x i8] c"rkisp1_aec_params_default_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1505, i32 47 }
@___asan_gen_.61 = private unnamed_addr constant [33 x i8] c"rkisp1_afc_params_default_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1526, i32 47 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1677, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1679, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"rkisp1_params_vb2_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1763, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1163, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"rkisp1_v12_params_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1629, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"rkisp1_v10_params_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1617, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"hist_weight_regs\00", align 1
@___asan_gen_.83 = private constant [58 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 789, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [44 x i8] c"switch.table.rkisp1_params_apply_params_cfg\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @rkisp1_params_register._entry, ptr @rkisp1_params_register._entry_ptr, ptr @rkisp1_params_register.__key, ptr @.str, ptr @rkisp1_params_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @rkisp1_params_ioctl, ptr @rkisp1_params_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rkisp1_hst_params_default_config, ptr @rkisp1_awb_params_default_config, ptr @rkisp1_aec_params_default_config, ptr @rkisp1_afc_params_default_config, ptr @.str.9, ptr @.str.10, ptr @rkisp1_params_vb2_ops, ptr @.str.11, ptr @rkisp1_v12_params_ops, ptr @rkisp1_v10_params_ops, ptr @rkisp1_hst_config_v10.hist_weight_regs, ptr @switch.table.rkisp1_params_apply_params_cfg], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_ioctl to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_hst_params_default_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_awb_params_default_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_aec_params_default_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_afc_params_default_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_params_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_v12_params_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_v10_params_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_hst_config_v10.hist_weight_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rkisp1_params_apply_params_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_params_isr(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_sequence1 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %frame_sequence1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_sequence1, align 4
  %add = add i32 %1, 1
  %params2 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12
  %config_lock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock(ptr noundef %config_lock) #6
  tail call fastcc void @rkisp1_params_apply_params_cfg(ptr noundef %params2, i32 noundef %add)
  tail call void @_raw_spin_unlock(ptr noundef %config_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_params_apply_params_cfg(ptr noundef %params, i32 noundef %frame_sequence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %params1, align 4
  %cmp.i.not = icmp eq ptr %1, %params1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call3 = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr, i32 noundef 0) #6
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %module_cfg_update2.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %module_cfg_update2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %module_cfg_update2.i, align 4
  %module_ens3.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %module_ens3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %module_ens3.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %others.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4
  %rkisp1.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rkisp1.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 10496
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !56
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and.i.i = and i32 %13, 1
  %14 = ptrtoint ptr %others.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %others.i, align 4
  %and2.i.i = and i32 %15, -2
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %16 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 8
  %add.ptr.i78.i.i = getelementptr i8, ptr %20, i32 10496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i.i, i32 %18) #6, !srcloc !59
  %21 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rkisp1.i.i, align 8
  %output_mode.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %output_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %output_mode.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 8
  %add.ptr.i79.i.i = getelementptr i8, ptr %27, i32 10500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 %25) #6, !srcloc !59
  %28 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1.i.i, align 8
  %set_use.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 2
  %30 = ptrtoint ptr %set_use.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %set_use.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 8
  %add.ptr.i80.i.i = getelementptr i8, ptr %34, i32 10504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i.i, i32 %32) #6, !srcloc !59
  %35 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp1.i.i, align 8
  %methods.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 3
  %37 = ptrtoint ptr %methods.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %methods.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 8
  %add.ptr.i81.i.i = getelementptr i8, ptr %41, i32 10508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %39) #6, !srcloc !59
  %42 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rkisp1.i.i, align 8
  %arrayidx9.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %43, align 8
  %add.ptr.i82.i.i = getelementptr i8, ptr %48, i32 10512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i.i, i32 %46) #6, !srcloc !59
  %49 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rkisp1.i.i, align 8
  %arrayidx13.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx13.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %50, align 8
  %add.ptr.i83.i.i = getelementptr i8, ptr %55, i32 10516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %53) #6, !srcloc !59
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.091.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %56 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rkisp1.i.i, align 8
  %line_thresh.i.i = getelementptr %struct.rkisp1_cif_isp_dpcc_config, ptr %others.i, i32 0, i32 3, i32 %i.091.i.i, i32 1
  %58 = ptrtoint ptr %line_thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %line_thresh.i.i, align 4
  %mul.i.i = mul nuw nsw i32 %i.091.i.i, 20
  %add.i.i = add nuw nsw i32 %mul.i.i, 10520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %57, align 8
  %add.ptr.i84.i.i = getelementptr i8, ptr %62, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i.i, i32 %60) #6, !srcloc !59
  %63 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rkisp1.i.i, align 8
  %line_mad_fac.i.i = getelementptr %struct.rkisp1_cif_isp_dpcc_config, ptr %others.i, i32 0, i32 3, i32 %i.091.i.i, i32 2
  %65 = ptrtoint ptr %line_mad_fac.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %line_mad_fac.i.i, align 4
  %add22.i.i = add nuw nsw i32 %mul.i.i, 10524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %64, align 8
  %add.ptr.i85.i.i = getelementptr i8, ptr %69, i32 %add22.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i, i32 %67) #6, !srcloc !59
  %70 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rkisp1.i.i, align 8
  %pg_fac.i.i = getelementptr %struct.rkisp1_cif_isp_dpcc_config, ptr %others.i, i32 0, i32 3, i32 %i.091.i.i, i32 3
  %72 = ptrtoint ptr %pg_fac.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pg_fac.i.i, align 4
  %add27.i.i = add nuw nsw i32 %mul.i.i, 10528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %71, align 8
  %add.ptr.i86.i.i = getelementptr i8, ptr %76, i32 %add27.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i.i, i32 %74) #6, !srcloc !59
  %77 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rkisp1.i.i, align 8
  %rnd_thresh.i.i = getelementptr %struct.rkisp1_cif_isp_dpcc_config, ptr %others.i, i32 0, i32 3, i32 %i.091.i.i, i32 4
  %79 = ptrtoint ptr %rnd_thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rnd_thresh.i.i, align 4
  %add32.i.i = add nuw nsw i32 %mul.i.i, 10532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %78, align 8
  %add.ptr.i87.i.i = getelementptr i8, ptr %83, i32 %add32.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i, i32 %81) #6, !srcloc !59
  %84 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rkisp1.i.i, align 8
  %rg_fac.i.i = getelementptr %struct.rkisp1_cif_isp_dpcc_config, ptr %others.i, i32 0, i32 3, i32 %i.091.i.i, i32 5
  %86 = ptrtoint ptr %rg_fac.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rg_fac.i.i, align 4
  %add37.i.i = add nuw nsw i32 %mul.i.i, 10536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %85, align 8
  %add.ptr.i88.i.i = getelementptr i8, ptr %90, i32 %add37.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i.i, i32 %88) #6, !srcloc !59
  %inc.i.i = add nuw nsw i32 %i.091.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %rkisp1_dpcc_config.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

rkisp1_dpcc_config.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rkisp1.i.i, align 8
  %rnd_offs.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 5
  %93 = ptrtoint ptr %rnd_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rnd_offs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #6
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %92, align 8
  %add.ptr.i89.i.i = getelementptr i8, ptr %97, i32 10584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 %95) #6, !srcloc !59
  %98 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rkisp1.i.i, align 8
  %ro_limits.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 0, i32 4
  %100 = ptrtoint ptr %ro_limits.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ro_limits.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #6
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %99, align 8
  %add.ptr.i90.i.i = getelementptr i8, ptr %104, i32 10580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i.i, i32 %102) #6, !srcloc !59
  br label %if.end.i

if.end.i:                                         ; preds = %rkisp1_dpcc_config.exit.i, %if.end.if.end.i_crit_edge
  %and4.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %and7.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %rkisp1.i262.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %105 = ptrtoint ptr %rkisp1.i262.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rkisp1.i262.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %add.ptr.i.i263.i = getelementptr i8, ptr %108, i32 10496
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i263.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %110 = ptrtoint ptr %rkisp1.i262.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rkisp1.i262.i, align 8
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = or i32 %109, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %111, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %114, i32 10496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %112) #6, !srcloc !59
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = and i32 %109, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %111, align 8
  %add.ptr.i4.i265.i = getelementptr i8, ptr %117, i32 10496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i265.i, i32 %115) #6, !srcloc !59
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %and12.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  %bls_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1
  %rkisp1.i266.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %118 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rkisp1.i266.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %add.ptr.i.i267.i = getelementptr i8, ptr %121, i32 9984
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i267.i) #6, !srcloc !56
  %123 = lshr i32 %122, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and.i268.i = and i32 %123, 1
  %124 = ptrtoint ptr %bls_config.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bls_config.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i.i = icmp eq i8 %125, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  %fixed_val.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5
  %raw_type.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 7
  %126 = ptrtoint ptr %raw_type.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %raw_type.i.i, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i32 %127, label %if.then.i.i.rkisp1_bls_config.exit.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
    i32 1, label %sw.bb21.i.i
    i32 0, label %sw.bb34.i.i
  ]

if.then.i.i.rkisp1_bls_config.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rkisp1_bls_config.exit.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rkisp1.i266.i, align 8
  %131 = ptrtoint ptr %fixed_val.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %fixed_val.i.i, align 2
  %conv.i.i = sext i16 %132 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %133 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #6
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %130, align 8
  %add.ptr.i147.i.i = getelementptr i8, ptr %135, i32 10036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i.i, i32 %133) #6, !srcloc !59
  %136 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rkisp1.i266.i, align 8
  %gr.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 1
  %138 = ptrtoint ptr %gr.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %gr.i.i, align 2
  %conv3.i.i = sext i16 %139 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %140 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #6
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %137, align 8
  %add.ptr.i148.i.i = getelementptr i8, ptr %142, i32 10032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i.i, i32 %140) #6, !srcloc !59
  %143 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rkisp1.i266.i, align 8
  %gb.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 2
  %145 = ptrtoint ptr %gb.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %gb.i.i, align 2
  %conv5.i.i = sext i16 %146 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %147 = tail call i32 @llvm.bswap.i32(i32 %conv5.i.i) #6
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %144, align 8
  %add.ptr.i149.i.i = getelementptr i8, ptr %149, i32 10028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i.i, i32 %147) #6, !srcloc !59
  %150 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rkisp1.i266.i, align 8
  %b.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 3
  %152 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %b.i.i, align 2
  %conv7.i.i = sext i16 %153 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %154 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.i) #6
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %151, align 8
  %add.ptr.i150.i.i = getelementptr i8, ptr %156, i32 10024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i.i, i32 %154) #6, !srcloc !59
  br label %rkisp1_bls_config.exit.i

sw.bb8.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rkisp1.i266.i, align 8
  %159 = ptrtoint ptr %fixed_val.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %fixed_val.i.i, align 2
  %conv11.i.i = sext i16 %160 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %161 = tail call i32 @llvm.bswap.i32(i32 %conv11.i.i) #6
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %158, align 8
  %add.ptr.i151.i.i = getelementptr i8, ptr %163, i32 10032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i.i, i32 %161) #6, !srcloc !59
  %164 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rkisp1.i266.i, align 8
  %gr13.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 1
  %166 = ptrtoint ptr %gr13.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %gr13.i.i, align 2
  %conv14.i.i = sext i16 %167 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %168 = tail call i32 @llvm.bswap.i32(i32 %conv14.i.i) #6
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %165, align 8
  %add.ptr.i152.i.i = getelementptr i8, ptr %170, i32 10036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i.i, i32 %168) #6, !srcloc !59
  %171 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rkisp1.i266.i, align 8
  %gb16.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 2
  %173 = ptrtoint ptr %gb16.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %gb16.i.i, align 2
  %conv17.i.i = sext i16 %174 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %175 = tail call i32 @llvm.bswap.i32(i32 %conv17.i.i) #6
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %172, align 8
  %add.ptr.i153.i.i = getelementptr i8, ptr %177, i32 10024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i.i, i32 %175) #6, !srcloc !59
  %178 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rkisp1.i266.i, align 8
  %b19.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 3
  %180 = ptrtoint ptr %b19.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %b19.i.i, align 2
  %conv20.i.i = sext i16 %181 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %182 = tail call i32 @llvm.bswap.i32(i32 %conv20.i.i) #6
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %179, align 8
  %add.ptr.i154.i.i = getelementptr i8, ptr %184, i32 10028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i.i, i32 %182) #6, !srcloc !59
  br label %rkisp1_bls_config.exit.i

sw.bb21.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rkisp1.i266.i, align 8
  %187 = ptrtoint ptr %fixed_val.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %fixed_val.i.i, align 2
  %conv24.i.i = sext i16 %188 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %189 = tail call i32 @llvm.bswap.i32(i32 %conv24.i.i) #6
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %186, align 8
  %add.ptr.i155.i.i = getelementptr i8, ptr %191, i32 10028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i.i, i32 %189) #6, !srcloc !59
  %192 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rkisp1.i266.i, align 8
  %gr26.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 1
  %194 = ptrtoint ptr %gr26.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %gr26.i.i, align 2
  %conv27.i.i = sext i16 %195 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %196 = tail call i32 @llvm.bswap.i32(i32 %conv27.i.i) #6
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %193, align 8
  %add.ptr.i156.i.i = getelementptr i8, ptr %198, i32 10024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i.i, i32 %196) #6, !srcloc !59
  %199 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rkisp1.i266.i, align 8
  %gb29.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 2
  %201 = ptrtoint ptr %gb29.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %gb29.i.i, align 2
  %conv30.i.i = sext i16 %202 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %203 = tail call i32 @llvm.bswap.i32(i32 %conv30.i.i) #6
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %200, align 8
  %add.ptr.i157.i.i = getelementptr i8, ptr %205, i32 10036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i.i, i32 %203) #6, !srcloc !59
  %206 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rkisp1.i266.i, align 8
  %b32.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 3
  %208 = ptrtoint ptr %b32.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %b32.i.i, align 2
  %conv33.i.i = sext i16 %209 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %210 = tail call i32 @llvm.bswap.i32(i32 %conv33.i.i) #6
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %207, align 8
  %add.ptr.i158.i.i = getelementptr i8, ptr %212, i32 10032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i.i, i32 %210) #6, !srcloc !59
  br label %rkisp1_bls_config.exit.i

sw.bb34.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %213 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rkisp1.i266.i, align 8
  %215 = ptrtoint ptr %fixed_val.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %fixed_val.i.i, align 2
  %conv37.i.i = sext i16 %216 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %217 = tail call i32 @llvm.bswap.i32(i32 %conv37.i.i) #6
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %214, align 8
  %add.ptr.i159.i.i = getelementptr i8, ptr %219, i32 10024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i.i, i32 %217) #6, !srcloc !59
  %220 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rkisp1.i266.i, align 8
  %gr39.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 1
  %222 = ptrtoint ptr %gr39.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %gr39.i.i, align 2
  %conv40.i.i = sext i16 %223 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %224 = tail call i32 @llvm.bswap.i32(i32 %conv40.i.i) #6
  %225 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %221, align 8
  %add.ptr.i160.i.i = getelementptr i8, ptr %226, i32 10028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i.i, i32 %224) #6, !srcloc !59
  %227 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rkisp1.i266.i, align 8
  %gb42.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 2
  %229 = ptrtoint ptr %gb42.i.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %gb42.i.i, align 2
  %conv43.i.i = sext i16 %230 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %231 = tail call i32 @llvm.bswap.i32(i32 %conv43.i.i) #6
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %228, align 8
  %add.ptr.i161.i.i = getelementptr i8, ptr %233, i32 10032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i.i, i32 %231) #6, !srcloc !59
  %234 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rkisp1.i266.i, align 8
  %b45.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 5, i32 3
  %236 = ptrtoint ptr %b45.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %b45.i.i, align 2
  %conv46.i.i = sext i16 %237 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %238 = tail call i32 @llvm.bswap.i32(i32 %conv46.i.i) #6
  %239 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %235, align 8
  %add.ptr.i162.i.i = getelementptr i8, ptr %240, i32 10036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i.i, i32 %238) #6, !srcloc !59
  br label %rkisp1_bls_config.exit.i

if.else.i.i:                                      ; preds = %if.then14.i
  %en_windows.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 1
  %241 = ptrtoint ptr %en_windows.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %en_windows.i.i, align 1
  %243 = and i8 %242, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool49.not.i.i = icmp eq i8 %243, 0
  br i1 %tobool49.not.i.i, label %if.else.i.i.if.end.i.i_crit_edge, label %if.then50.i.i

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then50.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rkisp1.i266.i, align 8
  %bls_window2.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 3
  %246 = ptrtoint ptr %bls_window2.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %bls_window2.i.i, align 2
  %conv52.i.i = zext i16 %247 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %248 = tail call i32 @llvm.bswap.i32(i32 %conv52.i.i) #6
  %249 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %245, align 8
  %add.ptr.i163.i.i = getelementptr i8, ptr %250, i32 10008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i.i, i32 %248) #6, !srcloc !59
  %251 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rkisp1.i266.i, align 8
  %h_size.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 3, i32 2
  %253 = ptrtoint ptr %h_size.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %h_size.i.i, align 2
  %conv55.i.i = zext i16 %254 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %255 = tail call i32 @llvm.bswap.i32(i32 %conv55.i.i) #6
  %256 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %252, align 8
  %add.ptr.i164.i.i = getelementptr i8, ptr %257, i32 10012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i.i, i32 %255) #6, !srcloc !59
  %258 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rkisp1.i266.i, align 8
  %v_offs.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 3, i32 1
  %260 = ptrtoint ptr %v_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %v_offs.i.i, align 2
  %conv58.i.i = zext i16 %261 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %262 = tail call i32 @llvm.bswap.i32(i32 %conv58.i.i) #6
  %263 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %259, align 8
  %add.ptr.i165.i.i = getelementptr i8, ptr %264, i32 10016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i.i, i32 %262) #6, !srcloc !59
  %265 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rkisp1.i266.i, align 8
  %v_size.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 3, i32 3
  %267 = ptrtoint ptr %v_size.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %v_size.i.i, align 2
  %conv61.i.i = zext i16 %268 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %269 = tail call i32 @llvm.bswap.i32(i32 %conv61.i.i) #6
  %270 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %266, align 8
  %add.ptr.i166.i.i = getelementptr i8, ptr %271, i32 10020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i.i, i32 %269) #6, !srcloc !59
  %or.i269.i = or i32 %and.i268.i, 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then50.i.i, %if.else.i.i.if.end.i.i_crit_edge
  %new_control.0.i.i = phi i32 [ %or.i269.i, %if.then50.i.i ], [ %and.i268.i, %if.else.i.i.if.end.i.i_crit_edge ]
  %272 = ptrtoint ptr %en_windows.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %en_windows.i.i, align 1
  %274 = and i8 %273, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool65.not.i.i = icmp eq i8 %274, 0
  br i1 %tobool65.not.i.i, label %if.end.i.i.if.end83.i.i_crit_edge, label %if.then66.i.i

if.end.i.i.if.end83.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

if.then66.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rkisp1.i266.i, align 8
  %bls_window1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 2
  %277 = ptrtoint ptr %bls_window1.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %bls_window1.i.i, align 2
  %conv69.i.i = zext i16 %278 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %279 = tail call i32 @llvm.bswap.i32(i32 %conv69.i.i) #6
  %280 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %276, align 8
  %add.ptr.i167.i.i = getelementptr i8, ptr %281, i32 9992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i.i, i32 %279) #6, !srcloc !59
  %282 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %rkisp1.i266.i, align 8
  %h_size72.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 2, i32 2
  %284 = ptrtoint ptr %h_size72.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %h_size72.i.i, align 2
  %conv73.i.i = zext i16 %285 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %286 = tail call i32 @llvm.bswap.i32(i32 %conv73.i.i) #6
  %287 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %283, align 8
  %add.ptr.i168.i.i = getelementptr i8, ptr %288, i32 9996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i.i, i32 %286) #6, !srcloc !59
  %289 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rkisp1.i266.i, align 8
  %v_offs76.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 2, i32 1
  %291 = ptrtoint ptr %v_offs76.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %v_offs76.i.i, align 2
  %conv77.i.i = zext i16 %292 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %293 = tail call i32 @llvm.bswap.i32(i32 %conv77.i.i) #6
  %294 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %290, align 8
  %add.ptr.i169.i.i = getelementptr i8, ptr %295, i32 10000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i.i, i32 %293) #6, !srcloc !59
  %296 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %rkisp1.i266.i, align 8
  %v_size80.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 2, i32 3
  %298 = ptrtoint ptr %v_size80.i.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %v_size80.i.i, align 2
  %conv81.i.i = zext i16 %299 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %300 = tail call i32 @llvm.bswap.i32(i32 %conv81.i.i) #6
  %301 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %297, align 8
  %add.ptr.i170.i.i = getelementptr i8, ptr %302, i32 10004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i.i, i32 %300) #6, !srcloc !59
  %or82.i.i = or i32 %new_control.0.i.i, 4
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then66.i.i, %if.end.i.i.if.end83.i.i_crit_edge
  %new_control.1.i.i = phi i32 [ %or82.i.i, %if.then66.i.i ], [ %new_control.0.i.i, %if.end.i.i.if.end83.i.i_crit_edge ]
  %303 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rkisp1.i266.i, align 8
  %bls_samples.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 1, i32 4
  %305 = ptrtoint ptr %bls_samples.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %bls_samples.i.i, align 2
  %conv85.i.i = zext i8 %306 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %307 = shl nuw i32 %conv85.i.i, 24
  %308 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %304, align 8
  %add.ptr.i171.i.i = getelementptr i8, ptr %309, i32 9988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i.i, i32 %307) #6, !srcloc !59
  %or86.i.i = or i32 %new_control.1.i.i, 2
  br label %rkisp1_bls_config.exit.i

rkisp1_bls_config.exit.i:                         ; preds = %if.end83.i.i, %sw.bb34.i.i, %sw.bb21.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.then.i.i.rkisp1_bls_config.exit.i_crit_edge
  %new_control.2.i.i = phi i32 [ %or86.i.i, %if.end83.i.i ], [ %and.i268.i, %if.then.i.i.rkisp1_bls_config.exit.i_crit_edge ], [ %and.i268.i, %sw.bb34.i.i ], [ %and.i268.i, %sw.bb21.i.i ], [ %and.i268.i, %sw.bb8.i.i ], [ %and.i268.i, %sw.bb.i.i ]
  %310 = ptrtoint ptr %rkisp1.i266.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rkisp1.i266.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %312 = tail call i32 @llvm.bswap.i32(i32 %new_control.2.i.i) #6
  %313 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %311, align 8
  %add.ptr.i172.i.i = getelementptr i8, ptr %314, i32 9984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i.i, i32 %312) #6, !srcloc !59
  br label %if.end16.i

if.end16.i:                                       ; preds = %rkisp1_bls_config.exit.i, %if.end11.i.if.end16.i_crit_edge
  %and17.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then19.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end16.i
  %and20.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %rkisp1.i274.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %315 = ptrtoint ptr %rkisp1.i274.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %rkisp1.i274.i, align 8
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 8
  %add.ptr.i.i275.i = getelementptr i8, ptr %318, i32 9984
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i275.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %320 = ptrtoint ptr %rkisp1.i274.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rkisp1.i274.i, align 8
  br i1 %tobool21.not.i, label %if.else23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %322 = or i32 %319, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %323 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %321, align 8
  %add.ptr.i4.i273.i = getelementptr i8, ptr %324, i32 9984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i273.i, i32 %322) #6, !srcloc !59
  br label %if.end25.i

if.else23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %325 = and i32 %319, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %326 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %321, align 8
  %add.ptr.i4.i277.i = getelementptr i8, ptr %327, i32 9984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i277.i, i32 %325) #6, !srcloc !59
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else23.i, %if.then22.i, %if.end16.i.if.end25.i_crit_edge
  %and26.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end30.i_crit_edge, label %if.then28.i

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  %sdg_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 2
  %rkisp1.i278.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %328 = ptrtoint ptr %rkisp1.i278.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rkisp1.i278.i, align 8
  %xa_pnts.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 2, i32 3
  %330 = ptrtoint ptr %xa_pnts.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %xa_pnts.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %332 = tail call i32 @llvm.bswap.i32(i32 %331) #6
  %333 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %329, align 8
  %add.ptr.i.i279.i = getelementptr i8, ptr %334, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i279.i, i32 %332) #6, !srcloc !59
  %335 = ptrtoint ptr %rkisp1.i278.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %rkisp1.i278.i, align 8
  %gamma_dx1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 2, i32 3, i32 1
  %337 = ptrtoint ptr %gamma_dx1.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %gamma_dx1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %339 = tail call i32 @llvm.bswap.i32(i32 %338) #6
  %340 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %336, align 8
  %add.ptr.i31.i.i = getelementptr i8, ptr %341, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %339) #6, !srcloc !59
  %curve_g.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 2, i32 1
  %curve_b.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 2, i32 2
  br label %for.body.i286.i

for.body.i286.i:                                  ; preds = %for.body.i286.i.for.body.i286.i_crit_edge, %if.then28.i
  %i.035.i.i = phi i32 [ 0, %if.then28.i ], [ %inc.i284.i, %for.body.i286.i.for.body.i286.i_crit_edge ]
  %342 = ptrtoint ptr %rkisp1.i278.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rkisp1.i278.i, align 8
  %arrayidx.i.i = getelementptr [17 x i16], ptr %sdg_config.i, i32 0, i32 %i.035.i.i
  %344 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i280.i = zext i16 %345 to i32
  %mul.i281.i = shl nuw nsw i32 %i.035.i.i, 2
  %add.i282.i = add nuw nsw i32 %mul.i281.i, 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %346 = tail call i32 @llvm.bswap.i32(i32 %conv.i280.i) #6
  %347 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %343, align 8
  %add.ptr.i32.i.i = getelementptr i8, ptr %348, i32 %add.i282.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 %346) #6, !srcloc !59
  %349 = ptrtoint ptr %rkisp1.i278.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %rkisp1.i278.i, align 8
  %arrayidx6.i.i = getelementptr [17 x i16], ptr %curve_g.i.i, i32 0, i32 %i.035.i.i
  %351 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %arrayidx6.i.i, align 2
  %conv7.i283.i = zext i16 %352 to i32
  %add9.i.i = add nuw nsw i32 %mul.i281.i, 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %353 = tail call i32 @llvm.bswap.i32(i32 %conv7.i283.i) #6
  %354 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %350, align 8
  %add.ptr.i33.i.i = getelementptr i8, ptr %355, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 %353) #6, !srcloc !59
  %356 = ptrtoint ptr %rkisp1.i278.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %rkisp1.i278.i, align 8
  %arrayidx12.i.i = getelementptr [17 x i16], ptr %curve_b.i.i, i32 0, i32 %i.035.i.i
  %358 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %arrayidx12.i.i, align 2
  %conv13.i.i = zext i16 %359 to i32
  %add15.i.i = add nuw nsw i32 %mul.i281.i, 1196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %360 = tail call i32 @llvm.bswap.i32(i32 %conv13.i.i) #6
  %361 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %357, align 8
  %add.ptr.i34.i.i = getelementptr i8, ptr %362, i32 %add15.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %360) #6, !srcloc !59
  %inc.i284.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i285.i = icmp eq i32 %inc.i284.i, 17
  br i1 %exitcond.not.i285.i, label %for.body.i286.i.if.end30.i_crit_edge, label %for.body.i286.i.for.body.i286.i_crit_edge

for.body.i286.i.for.body.i286.i_crit_edge:        ; preds = %for.body.i286.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i286.i

for.body.i286.i.if.end30.i_crit_edge:             ; preds = %for.body.i286.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %for.body.i286.i.if.end30.i_crit_edge, %if.end25.i.if.end30.i_crit_edge
  %and31.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end39.i_crit_edge, label %if.then33.i

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end30.i
  %and34.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %rkisp1.i291.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %363 = ptrtoint ptr %rkisp1.i291.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %rkisp1.i291.i, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 8
  %add.ptr.i.i292.i = getelementptr i8, ptr %366, i32 1024
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i292.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %368 = ptrtoint ptr %rkisp1.i291.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %rkisp1.i291.i, align 8
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %370 = or i32 %367, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %371 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %369, align 8
  %add.ptr.i4.i290.i = getelementptr i8, ptr %372, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i290.i, i32 %370) #6, !srcloc !59
  br label %if.end39.i

if.else37.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %373 = and i32 %367, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %374 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %369, align 8
  %add.ptr.i4.i294.i = getelementptr i8, ptr %375, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i294.i, i32 %373) #6, !srcloc !59
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else37.i, %if.then36.i, %if.end30.i.if.end39.i_crit_edge
  %and40.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end44.i_crit_edge, label %if.then42.i

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  %lsc_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3
  %rkisp1.i295.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %376 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %rkisp1.i295.i, align 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 8
  %add.ptr.i.i296.i = getelementptr i8, ptr %379, i32 8704
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i296.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %381 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %rkisp1.i295.i, align 8
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %384, i32 8704
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %386 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %rkisp1.i295.i, align 8
  %388 = and i32 %385, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %389 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %387, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %390, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %388) #6, !srcloc !59
  %ops.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %391 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %ops.i.i, align 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %392, align 4
  tail call void %394(ptr noundef %params, ptr noundef %lsc_config.i) #6
  br label %for.body.i307.i

for.body.i307.i:                                  ; preds = %for.body.i307.i.for.body.i307.i_crit_edge, %if.then42.i
  %i.099.i.i = phi i32 [ 0, %if.then42.i ], [ %inc.i305.i, %for.body.i307.i.for.body.i307.i_crit_edge ]
  %mul.i297.i = shl nuw nsw i32 %i.099.i.i, 1
  %arrayidx.i298.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 6, i32 %mul.i297.i
  %395 = ptrtoint ptr %arrayidx.i298.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %arrayidx.i298.i, align 2
  %397 = and i16 %396, 4095
  %and.i299.i = zext i16 %397 to i32
  %add.i300.i = or i32 %mul.i297.i, 1
  %arrayidx3.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 6, i32 %add.i300.i
  %398 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %arrayidx3.i.i, align 2
  %400 = and i16 %399, 4095
  %and5.i.i = zext i16 %400 to i32
  %shl.i.i = shl nuw nsw i32 %and5.i.i, 16
  %or.i301.i = or i32 %shl.i.i, %and.i299.i
  %401 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %rkisp1.i295.i, align 8
  %mul7.i.i = shl nuw nsw i32 %i.099.i.i, 2
  %add8.i.i = add nuw nsw i32 %mul7.i.i, 8772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %403 = tail call i32 @llvm.bswap.i32(i32 %or.i301.i) #6
  %404 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %402, align 8
  %add.ptr.i88.i302.i = getelementptr i8, ptr %405, i32 %add8.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i302.i, i32 %403) #6, !srcloc !59
  %arrayidx10.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 4, i32 %mul.i297.i
  %406 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %arrayidx10.i.i, align 2
  %408 = and i16 %407, 4095
  %and12.i.i = zext i16 %408 to i32
  %arrayidx16.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 4, i32 %add.i300.i
  %409 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %arrayidx16.i.i, align 2
  %411 = and i16 %410, 4095
  %and18.i.i = zext i16 %411 to i32
  %shl19.i.i = shl nuw nsw i32 %and18.i.i, 16
  %or20.i.i = or i32 %shl19.i.i, %and12.i.i
  %412 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rkisp1.i295.i, align 8
  %add23.i.i = add nuw nsw i32 %mul7.i.i, 8740
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %414 = tail call i32 @llvm.bswap.i32(i32 %or20.i.i) #6
  %415 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %413, align 8
  %add.ptr.i89.i303.i = getelementptr i8, ptr %416, i32 %add23.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i303.i, i32 %414) #6, !srcloc !59
  %arrayidx25.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 7, i32 %mul.i297.i
  %417 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %arrayidx25.i.i, align 2
  %419 = and i16 %418, 4095
  %and27.i.i = zext i16 %419 to i32
  %arrayidx31.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 7, i32 %add.i300.i
  %420 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %arrayidx31.i.i, align 2
  %422 = and i16 %421, 4095
  %and33.i.i = zext i16 %422 to i32
  %shl34.i.i = shl nuw nsw i32 %and33.i.i, 16
  %or35.i.i = or i32 %shl34.i.i, %and27.i.i
  %423 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %rkisp1.i295.i, align 8
  %add38.i.i = add nuw nsw i32 %mul7.i.i, 8788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %425 = tail call i32 @llvm.bswap.i32(i32 %or35.i.i) #6
  %426 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %424, align 8
  %add.ptr.i90.i304.i = getelementptr i8, ptr %427, i32 %add38.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i304.i, i32 %425) #6, !srcloc !59
  %arrayidx40.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 5, i32 %mul.i297.i
  %428 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %arrayidx40.i.i, align 2
  %430 = and i16 %429, 4095
  %and42.i.i = zext i16 %430 to i32
  %arrayidx46.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 3, i32 5, i32 %add.i300.i
  %431 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %arrayidx46.i.i, align 2
  %433 = and i16 %432, 4095
  %and48.i.i = zext i16 %433 to i32
  %shl49.i.i = shl nuw nsw i32 %and48.i.i, 16
  %or50.i.i = or i32 %shl49.i.i, %and42.i.i
  %434 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %rkisp1.i295.i, align 8
  %add53.i.i = add nuw nsw i32 %mul7.i.i, 8756
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %436 = tail call i32 @llvm.bswap.i32(i32 %or50.i.i) #6
  %437 = ptrtoint ptr %435 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %435, align 8
  %add.ptr.i91.i.i = getelementptr i8, ptr %438, i32 %add53.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i.i, i32 %436) #6, !srcloc !59
  %inc.i305.i = add nuw nsw i32 %i.099.i.i, 1
  %exitcond.not.i306.i = icmp eq i32 %inc.i305.i, 4
  br i1 %exitcond.not.i306.i, label %for.end.i.i, label %for.body.i307.i.for.body.i307.i_crit_edge

for.body.i307.i.for.body.i307.i_crit_edge:        ; preds = %for.body.i307.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i307.i

for.end.i.i:                                      ; preds = %for.body.i307.i
  %439 = and i32 %380, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool.not.i308.i = icmp eq i32 %439, 0
  %440 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %rkisp1.i295.i, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %441, align 8
  %add.ptr.i.i96.i.i = getelementptr i8, ptr %443, i32 8704
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %445 = ptrtoint ptr %rkisp1.i295.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %rkisp1.i295.i, align 8
  br i1 %tobool.not.i308.i, label %if.else.i310.i, label %if.then.i309.i

if.then.i309.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %447 = or i32 %444, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %448 = ptrtoint ptr %446 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %446, align 8
  %add.ptr.i4.i94.i.i = getelementptr i8, ptr %449, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i94.i.i, i32 %447) #6, !srcloc !59
  br label %if.end44.i

if.else.i310.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %450 = and i32 %444, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %451 = ptrtoint ptr %446 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %446, align 8
  %add.ptr.i4.i98.i.i = getelementptr i8, ptr %452, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i98.i.i, i32 %450) #6, !srcloc !59
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i310.i, %if.then.i309.i, %if.end39.i.if.end44.i_crit_edge
  %and45.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end53.i_crit_edge, label %if.then47.i

if.end44.i.if.end53.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then47.i:                                      ; preds = %if.end44.i
  %and48.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %rkisp1.i316.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %453 = ptrtoint ptr %rkisp1.i316.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %rkisp1.i316.i, align 8
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %454, align 8
  %add.ptr.i.i317.i = getelementptr i8, ptr %456, i32 8704
  %457 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i317.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %458 = ptrtoint ptr %rkisp1.i316.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %rkisp1.i316.i, align 8
  br i1 %tobool49.not.i, label %if.else51.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  %460 = or i32 %457, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %461 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %459, align 8
  %add.ptr.i4.i315.i = getelementptr i8, ptr %462, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i315.i, i32 %460) #6, !srcloc !59
  br label %if.end53.i

if.else51.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  %463 = and i32 %457, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %464 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %459, align 8
  %add.ptr.i4.i319.i = getelementptr i8, ptr %465, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i319.i, i32 %463) #6, !srcloc !59
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else51.i, %if.then50.i, %if.end44.i.if.end53.i_crit_edge
  %and54.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end59.i_crit_edge, label %if.then56.i

if.end53.i.if.end59.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %466 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %ops.i, align 4
  %awb_gain_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %467, i32 0, i32 4
  %468 = ptrtoint ptr %awb_gain_config.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %awb_gain_config.i, align 4
  %awb_gain_config58.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 4
  tail call void %469(ptr noundef %params, ptr noundef %awb_gain_config58.i) #6
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end59.i_crit_edge
  %and60.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end68.i_crit_edge, label %if.then62.i

if.end59.i.if.end68.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then62.i:                                      ; preds = %if.end59.i
  %and63.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %rkisp1.i324.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %470 = ptrtoint ptr %rkisp1.i324.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %rkisp1.i324.i, align 8
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 8
  %add.ptr.i.i325.i = getelementptr i8, ptr %473, i32 1024
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i325.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %475 = ptrtoint ptr %rkisp1.i324.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %rkisp1.i324.i, align 8
  br i1 %tobool64.not.i, label %if.else66.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  %477 = or i32 %474, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %478 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %476, align 8
  %add.ptr.i4.i323.i = getelementptr i8, ptr %479, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i323.i, i32 %477) #6, !srcloc !59
  br label %if.end68.i

if.else66.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  %480 = and i32 %474, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %481 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %476, align 8
  %add.ptr.i4.i327.i = getelementptr i8, ptr %482, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i327.i, i32 %480) #6, !srcloc !59
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else66.i, %if.then65.i, %if.end59.i.if.end68.i_crit_edge
  %and69.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end73.i_crit_edge, label %if.then71.i

if.end68.i.if.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %bdm_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 6
  %rkisp1.i328.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %483 = ptrtoint ptr %rkisp1.i328.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %rkisp1.i328.i, align 8
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %484, align 8
  %add.ptr.i.i329.i = getelementptr i8, ptr %486, i32 1444
  %487 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i329.i) #6, !srcloc !56
  %488 = lshr i32 %487, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and.i330.i = and i32 %488, 1024
  %489 = ptrtoint ptr %bdm_config.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %bdm_config.i, align 1
  %conv.i331.i = zext i8 %490 to i32
  %or.i332.i = or i32 %and.i330.i, %conv.i331.i
  %491 = ptrtoint ptr %rkisp1.i328.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %rkisp1.i328.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %493 = tail call i32 @llvm.bswap.i32(i32 %or.i332.i) #6
  %494 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %492, align 8
  %add.ptr.i1.i.i = getelementptr i8, ptr %495, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %493) #6, !srcloc !59
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end68.i.if.end73.i_crit_edge
  %and74.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end82.i_crit_edge, label %if.then76.i

if.end73.i.if.end82.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i

if.then76.i:                                      ; preds = %if.end73.i
  %and77.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  %rkisp1.i337.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %496 = ptrtoint ptr %rkisp1.i337.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %rkisp1.i337.i, align 8
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %497, align 8
  %add.ptr.i.i338.i = getelementptr i8, ptr %499, i32 1444
  %500 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i338.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %501 = ptrtoint ptr %rkisp1.i337.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %rkisp1.i337.i, align 8
  br i1 %tobool78.not.i, label %if.else80.i, label %if.then79.i

if.then79.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #8
  %503 = or i32 %500, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %504 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %502, align 8
  %add.ptr.i4.i336.i = getelementptr i8, ptr %505, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i336.i, i32 %503) #6, !srcloc !59
  br label %if.end82.i

if.else80.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #8
  %506 = and i32 %500, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %507 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %502, align 8
  %add.ptr.i4.i340.i = getelementptr i8, ptr %508, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i340.i, i32 %506) #6, !srcloc !59
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else80.i, %if.then79.i, %if.end73.i.if.end82.i_crit_edge
  %and83.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end87.i_crit_edge, label %if.then85.i

if.end82.i.if.end87.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  %flt_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5
  %rkisp1.i341.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %509 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %rkisp1.i341.i, align 8
  %thresh_bl0.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 4
  %511 = ptrtoint ptr %thresh_bl0.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %thresh_bl0.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %513 = tail call i32 @llvm.bswap.i32(i32 %512) #6
  %514 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %510, align 8
  %add.ptr.i.i342.i = getelementptr i8, ptr %515, i32 9512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i342.i, i32 %513) #6, !srcloc !59
  %516 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %rkisp1.i341.i, align 8
  %thresh_bl1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 5
  %518 = ptrtoint ptr %thresh_bl1.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %thresh_bl1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %520 = tail call i32 @llvm.bswap.i32(i32 %519) #6
  %521 = ptrtoint ptr %517 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %517, align 8
  %add.ptr.i73.i.i = getelementptr i8, ptr %522, i32 9516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i.i, i32 %520) #6, !srcloc !59
  %523 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %rkisp1.i341.i, align 8
  %thresh_sh0.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 6
  %525 = ptrtoint ptr %thresh_sh0.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %thresh_sh0.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %527 = tail call i32 @llvm.bswap.i32(i32 %526) #6
  %528 = ptrtoint ptr %524 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %524, align 8
  %add.ptr.i74.i.i = getelementptr i8, ptr %529, i32 9520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 %527) #6, !srcloc !59
  %530 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %rkisp1.i341.i, align 8
  %thresh_sh1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 7
  %532 = ptrtoint ptr %thresh_sh1.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %thresh_sh1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %534 = tail call i32 @llvm.bswap.i32(i32 %533) #6
  %535 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %531, align 8
  %add.ptr.i75.i.i = getelementptr i8, ptr %536, i32 9524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i.i, i32 %534) #6, !srcloc !59
  %537 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %rkisp1.i341.i, align 8
  %fac_bl0.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 12
  %539 = ptrtoint ptr %fac_bl0.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %fac_bl0.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %541 = tail call i32 @llvm.bswap.i32(i32 %540) #6
  %542 = ptrtoint ptr %538 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %538, align 8
  %add.ptr.i76.i.i = getelementptr i8, ptr %543, i32 9544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 %541) #6, !srcloc !59
  %544 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %rkisp1.i341.i, align 8
  %fac_bl1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 13
  %546 = ptrtoint ptr %fac_bl1.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %fac_bl1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %548 = tail call i32 @llvm.bswap.i32(i32 %547) #6
  %549 = ptrtoint ptr %545 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %545, align 8
  %add.ptr.i77.i.i = getelementptr i8, ptr %550, i32 9548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i, i32 %548) #6, !srcloc !59
  %551 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %rkisp1.i341.i, align 8
  %fac_mid.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 11
  %553 = ptrtoint ptr %fac_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %fac_mid.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %555 = tail call i32 @llvm.bswap.i32(i32 %554) #6
  %556 = ptrtoint ptr %552 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %552, align 8
  %add.ptr.i78.i343.i = getelementptr i8, ptr %557, i32 9540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i343.i, i32 %555) #6, !srcloc !59
  %558 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %rkisp1.i341.i, align 8
  %fac_sh0.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 10
  %560 = ptrtoint ptr %fac_sh0.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %fac_sh0.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %562 = tail call i32 @llvm.bswap.i32(i32 %561) #6
  %563 = ptrtoint ptr %559 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %559, align 8
  %add.ptr.i79.i344.i = getelementptr i8, ptr %564, i32 9536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i344.i, i32 %562) #6, !srcloc !59
  %565 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %rkisp1.i341.i, align 8
  %fac_sh1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 9
  %567 = ptrtoint ptr %fac_sh1.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %fac_sh1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %569 = tail call i32 @llvm.bswap.i32(i32 %568) #6
  %570 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %566, align 8
  %add.ptr.i80.i345.i = getelementptr i8, ptr %571, i32 9532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i345.i, i32 %569) #6, !srcloc !59
  %572 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %rkisp1.i341.i, align 8
  %lum_weight.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 8
  %574 = ptrtoint ptr %lum_weight.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %lum_weight.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %576 = tail call i32 @llvm.bswap.i32(i32 %575) #6
  %577 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %573, align 8
  %add.ptr.i81.i346.i = getelementptr i8, ptr %578, i32 9528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i346.i, i32 %576) #6, !srcloc !59
  %579 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %rkisp1.i341.i, align 8
  %581 = ptrtoint ptr %flt_config.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %flt_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %582)
  %tobool.not.i347.i = icmp eq i32 %582, 0
  %cond.i.i = select i1 %tobool.not.i347.i, i32 0, i32 2
  %chr_v_mode.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 3
  %583 = ptrtoint ptr %chr_v_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %chr_v_mode.i.i, align 2
  %585 = shl i8 %584, 4
  %586 = and i8 %585, 48
  %shl.i348.i = zext i8 %586 to i32
  %or.i349.i = or i32 %cond.i.i, %shl.i348.i
  %chr_h_mode.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 2
  %587 = ptrtoint ptr %chr_h_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %chr_h_mode.i.i, align 1
  %589 = shl i8 %588, 6
  %shl13.i.i = zext i8 %589 to i32
  %or14.i.i = or i32 %or.i349.i, %shl13.i.i
  %grn_stage1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 5, i32 1
  %590 = ptrtoint ptr %grn_stage1.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %grn_stage1.i.i, align 4
  %592 = and i8 %591, 15
  %and16.i.i = zext i8 %592 to i32
  %shl17.i.i = shl nuw nsw i32 %and16.i.i, 8
  %or18.i.i = or i32 %or14.i.i, %shl17.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %593 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #6
  %594 = ptrtoint ptr %580 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %580, align 8
  %add.ptr.i82.i350.i = getelementptr i8, ptr %595, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i350.i, i32 %593) #6, !srcloc !59
  %596 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %rkisp1.i341.i, align 8
  %598 = ptrtoint ptr %597 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %597, align 8
  %add.ptr.i83.i351.i = getelementptr i8, ptr %599, i32 9472
  %600 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i351.i) #6, !srcloc !56
  %601 = lshr i32 %600, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and20.i.i = and i32 %601, 1
  %602 = ptrtoint ptr %flt_config.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %flt_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %603)
  %tobool22.not.i.i = icmp eq i32 %603, 0
  %or23.i.i = or i32 %and20.i.i, 2
  %spec.select.i.i = select i1 %tobool22.not.i.i, i32 %and20.i.i, i32 %or23.i.i
  %604 = ptrtoint ptr %chr_v_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %chr_v_mode.i.i, align 2
  %606 = shl i8 %605, 4
  %607 = and i8 %606, 48
  %608 = ptrtoint ptr %chr_h_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %chr_h_mode.i.i, align 1
  %610 = shl i8 %609, 6
  %or3272.i.i = or i8 %607, %610
  %or32.i.i = zext i8 %or3272.i.i to i32
  %611 = ptrtoint ptr %grn_stage1.i.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %grn_stage1.i.i, align 4
  %613 = and i8 %612, 15
  %and35.i.i = zext i8 %613 to i32
  %shl36.i.i = shl nuw nsw i32 %and35.i.i, 8
  %or37.i.i = or i32 %shl36.i.i, %or32.i.i
  %or38.i.i = or i32 %or37.i.i, %spec.select.i.i
  %614 = ptrtoint ptr %rkisp1.i341.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %rkisp1.i341.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %616 = tail call i32 @llvm.bswap.i32(i32 %or38.i.i) #6
  %617 = ptrtoint ptr %615 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %615, align 8
  %add.ptr.i84.i352.i = getelementptr i8, ptr %618, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i352.i, i32 %616) #6, !srcloc !59
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then85.i, %if.end82.i.if.end87.i_crit_edge
  %and88.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end87.i.if.end96.i_crit_edge, label %if.then90.i

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then90.i:                                      ; preds = %if.end87.i
  %and91.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %rkisp1.i357.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %619 = ptrtoint ptr %rkisp1.i357.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %rkisp1.i357.i, align 8
  %621 = ptrtoint ptr %620 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %620, align 8
  %add.ptr.i.i358.i = getelementptr i8, ptr %622, i32 9472
  %623 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i358.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %624 = ptrtoint ptr %rkisp1.i357.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %rkisp1.i357.i, align 8
  br i1 %tobool92.not.i, label %if.else94.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  %626 = or i32 %623, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %627 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %625, align 8
  %add.ptr.i4.i356.i = getelementptr i8, ptr %628, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i356.i, i32 %626) #6, !srcloc !59
  br label %if.end96.i

if.else94.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  %629 = and i32 %623, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %630 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %625, align 8
  %add.ptr.i4.i360.i = getelementptr i8, ptr %631, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i360.i, i32 %629) #6, !srcloc !59
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else94.i, %if.then93.i, %if.end87.i.if.end96.i_crit_edge
  %and97.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end96.i.if.end101.i_crit_edge, label %if.then99.i

if.end96.i.if.end101.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  %ctk_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7
  %rkisp1.i361.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %632 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %rkisp1.i361.i, align 8
  %634 = ptrtoint ptr %ctk_config.i to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %ctk_config.i, align 2
  %conv.i362.i = zext i16 %635 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %636 = tail call i32 @llvm.bswap.i32(i32 %conv.i362.i) #6
  %637 = ptrtoint ptr %633 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %633, align 8
  %add.ptr.i.i363.i = getelementptr i8, ptr %638, i32 1488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i363.i, i32 %636) #6, !srcloc !59
  %639 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.1.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 0, i32 1
  %641 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %arrayidx4.1.i.i, align 2
  %conv.1.i.i = zext i16 %642 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %643 = tail call i32 @llvm.bswap.i32(i32 %conv.1.i.i) #6
  %644 = ptrtoint ptr %640 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %640, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %645, i32 1492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %643) #6, !srcloc !59
  %646 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.2.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 0, i32 2
  %648 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load2_noabort(i32 %648)
  %649 = load i16, ptr %arrayidx4.2.i.i, align 2
  %conv.2.i.i = zext i16 %649 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %650 = tail call i32 @llvm.bswap.i32(i32 %conv.2.i.i) #6
  %651 = ptrtoint ptr %647 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %647, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %652, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 %650) #6, !srcloc !59
  %653 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.137.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 1
  %655 = ptrtoint ptr %arrayidx4.137.i.i to i32
  call void @__asan_load2_noabort(i32 %655)
  %656 = load i16, ptr %arrayidx4.137.i.i, align 2
  %conv.138.i.i = zext i16 %656 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %657 = tail call i32 @llvm.bswap.i32(i32 %conv.138.i.i) #6
  %658 = ptrtoint ptr %654 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %654, align 8
  %add.ptr.i.142.i.i = getelementptr i8, ptr %659, i32 1500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.142.i.i, i32 %657) #6, !srcloc !59
  %660 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.1.1.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 1, i32 1
  %662 = ptrtoint ptr %arrayidx4.1.1.i.i to i32
  call void @__asan_load2_noabort(i32 %662)
  %663 = load i16, ptr %arrayidx4.1.1.i.i, align 2
  %conv.1.1.i.i = zext i16 %663 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %664 = tail call i32 @llvm.bswap.i32(i32 %conv.1.1.i.i) #6
  %665 = ptrtoint ptr %661 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %661, align 8
  %add.ptr.i.1.1.i.i = getelementptr i8, ptr %666, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.1.i.i, i32 %664) #6, !srcloc !59
  %667 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.2.1.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 1, i32 2
  %669 = ptrtoint ptr %arrayidx4.2.1.i.i to i32
  call void @__asan_load2_noabort(i32 %669)
  %670 = load i16, ptr %arrayidx4.2.1.i.i, align 2
  %conv.2.1.i.i = zext i16 %670 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %671 = tail call i32 @llvm.bswap.i32(i32 %conv.2.1.i.i) #6
  %672 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %668, align 8
  %add.ptr.i.2.1.i.i = getelementptr i8, ptr %673, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.1.i.i, i32 %671) #6, !srcloc !59
  %674 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.243.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 2
  %676 = ptrtoint ptr %arrayidx4.243.i.i to i32
  call void @__asan_load2_noabort(i32 %676)
  %677 = load i16, ptr %arrayidx4.243.i.i, align 2
  %conv.244.i.i = zext i16 %677 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %678 = tail call i32 @llvm.bswap.i32(i32 %conv.244.i.i) #6
  %679 = ptrtoint ptr %675 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %675, align 8
  %add.ptr.i.248.i.i = getelementptr i8, ptr %680, i32 1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.248.i.i, i32 %678) #6, !srcloc !59
  %681 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.1.2.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 2, i32 1
  %683 = ptrtoint ptr %arrayidx4.1.2.i.i to i32
  call void @__asan_load2_noabort(i32 %683)
  %684 = load i16, ptr %arrayidx4.1.2.i.i, align 2
  %conv.1.2.i.i = zext i16 %684 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %685 = tail call i32 @llvm.bswap.i32(i32 %conv.1.2.i.i) #6
  %686 = ptrtoint ptr %682 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %682, align 8
  %add.ptr.i.1.2.i.i = getelementptr i8, ptr %687, i32 1516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.2.i.i, i32 %685) #6, !srcloc !59
  %688 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx4.2.2.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 0, i32 2, i32 2
  %690 = ptrtoint ptr %arrayidx4.2.2.i.i to i32
  call void @__asan_load2_noabort(i32 %690)
  %691 = load i16, ptr %arrayidx4.2.2.i.i, align 2
  %conv.2.2.i.i = zext i16 %691 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %692 = tail call i32 @llvm.bswap.i32(i32 %conv.2.2.i.i) #6
  %693 = ptrtoint ptr %689 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %689, align 8
  %add.ptr.i.2.2.i.i = getelementptr i8, ptr %694, i32 1520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.2.i.i, i32 %692) #6, !srcloc !59
  %695 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx14.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 1
  %697 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load2_noabort(i32 %697)
  %698 = load i16, ptr %arrayidx14.i.i, align 2
  %conv15.i.i = zext i16 %698 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %699 = tail call i32 @llvm.bswap.i32(i32 %conv15.i.i) #6
  %700 = ptrtoint ptr %696 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %696, align 8
  %add.ptr.i31.i364.i = getelementptr i8, ptr %701, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i364.i, i32 %699) #6, !srcloc !59
  %702 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx14.1.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 1, i32 1
  %704 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load2_noabort(i32 %704)
  %705 = load i16, ptr %arrayidx14.1.i.i, align 2
  %conv15.1.i.i = zext i16 %705 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %706 = tail call i32 @llvm.bswap.i32(i32 %conv15.1.i.i) #6
  %707 = ptrtoint ptr %703 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %703, align 8
  %add.ptr.i31.1.i.i = getelementptr i8, ptr %708, i32 1612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.1.i.i, i32 %706) #6, !srcloc !59
  %709 = ptrtoint ptr %rkisp1.i361.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %rkisp1.i361.i, align 8
  %arrayidx14.2.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 7, i32 1, i32 2
  %711 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_load2_noabort(i32 %711)
  %712 = load i16, ptr %arrayidx14.2.i.i, align 2
  %conv15.2.i.i = zext i16 %712 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %713 = tail call i32 @llvm.bswap.i32(i32 %conv15.2.i.i) #6
  %714 = ptrtoint ptr %710 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %710, align 8
  %add.ptr.i31.2.i.i = getelementptr i8, ptr %715, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.2.i.i, i32 %713) #6, !srcloc !59
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then99.i, %if.end96.i.if.end101.i_crit_edge
  %and102.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end108.i_crit_edge, label %if.then104.i

if.end101.i.if.end108.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  %and105.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.i = icmp ne i32 %and105.i, 0
  tail call fastcc void @rkisp1_ctk_enable(ptr noundef %params, i1 noundef zeroext %tobool106.i) #6
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then104.i, %if.end101.i.if.end108.i_crit_edge
  %and109.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.end108.i.if.end115.i_crit_edge, label %if.then111.i

if.end108.i.if.end115.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.i

if.then111.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops112.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %716 = ptrtoint ptr %ops112.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %ops112.i, align 4
  %goc_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %717, i32 0, i32 1
  %718 = ptrtoint ptr %goc_config.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %goc_config.i, align 4
  %goc_config114.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 8
  tail call void %719(ptr noundef %params, ptr noundef %goc_config114.i) #6
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then111.i, %if.end108.i.if.end115.i_crit_edge
  %and116.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end115.i.if.end124.i_crit_edge, label %if.then118.i

if.end115.i.if.end124.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i

if.then118.i:                                     ; preds = %if.end115.i
  %and119.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  %rkisp1.i369.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %720 = ptrtoint ptr %rkisp1.i369.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %rkisp1.i369.i, align 8
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %721, align 8
  %add.ptr.i.i370.i = getelementptr i8, ptr %723, i32 1024
  %724 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i370.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %725 = ptrtoint ptr %rkisp1.i369.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %rkisp1.i369.i, align 8
  br i1 %tobool120.not.i, label %if.else122.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #8
  %727 = or i32 %724, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %728 = ptrtoint ptr %726 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %726, align 8
  %add.ptr.i4.i368.i = getelementptr i8, ptr %729, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i368.i, i32 %727) #6, !srcloc !59
  br label %if.end124.i

if.else122.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #8
  %730 = and i32 %724, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %731 = ptrtoint ptr %726 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %726, align 8
  %add.ptr.i4.i372.i = getelementptr i8, ptr %732, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i372.i, i32 %730) #6, !srcloc !59
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.else122.i, %if.then121.i, %if.end115.i.if.end124.i_crit_edge
  %and125.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.end124.i.if.end129.i_crit_edge, label %if.then127.i

if.end124.i.if.end129.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i

if.then127.i:                                     ; preds = %if.end124.i
  %ie_config.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12
  %733 = ptrtoint ptr %ie_config.i.i to i32
  call void @__asan_load2_noabort(i32 %733)
  %734 = load i16, ptr %ie_config.i.i, align 2
  %quantization2.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 6
  %735 = ptrtoint ptr %quantization2.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %quantization2.i.i, align 8
  %rkisp1.i373.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %737 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %rkisp1.i373.i, align 8
  %contrast.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 11, i32 3
  %739 = ptrtoint ptr %contrast.i.i to i32
  call void @__asan_load1_noabort(i32 %739)
  %740 = load i8, ptr %contrast.i.i, align 1
  %conv3.i374.i = zext i8 %740 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %741 = shl nuw i32 %conv3.i374.i, 24
  %742 = ptrtoint ptr %738 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %738, align 8
  %add.ptr.i.i375.i = getelementptr i8, ptr %743, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i375.i, i32 %741) #6, !srcloc !59
  %744 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %rkisp1.i373.i, align 8
  %hue.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 11, i32 6
  %746 = ptrtoint ptr %hue.i.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %hue.i.i, align 1
  %conv5.i376.i = zext i8 %747 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %748 = shl nuw i32 %conv5.i376.i, 24
  %749 = ptrtoint ptr %745 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %745, align 8
  %add.ptr.i23.i.i = getelementptr i8, ptr %750, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %748) #6, !srcloc !59
  %751 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %rkisp1.i373.i, align 8
  %sat.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 11, i32 5
  %753 = ptrtoint ptr %sat.i.i to i32
  call void @__asan_load1_noabort(i32 %753)
  %754 = load i8, ptr %sat.i.i, align 1
  %conv7.i377.i = zext i8 %754 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %755 = shl nuw i32 %conv7.i377.i, 24
  %756 = ptrtoint ptr %752 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %752, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %757, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %755) #6, !srcloc !59
  %758 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %rkisp1.i373.i, align 8
  %brightness.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 11, i32 4
  %760 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %brightness.i.i, align 1
  %conv9.i.i = zext i8 %761 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %762 = shl nuw i32 %conv9.i.i, 24
  %763 = ptrtoint ptr %759 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %759, align 8
  %add.ptr.i25.i.i = getelementptr i8, ptr %764, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %762) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %736)
  %cmp.not.i.i = icmp eq i32 %736, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %734)
  %cmp11.not.i.i = icmp eq i16 %734, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp11.not.i.i, i1 false
  %765 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %rkisp1.i373.i, align 8
  %767 = ptrtoint ptr %766 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %766, align 8
  %add.ptr.i.i27.i.i = getelementptr i8, ptr %768, i32 2048
  %769 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %770 = ptrtoint ptr %rkisp1.i373.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %rkisp1.i373.i, align 8
  br i1 %or.cond.i.i, label %if.else.i380.i, label %if.then.i379.i

if.then.i379.i:                                   ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  %772 = and i32 %769, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %773 = ptrtoint ptr %771 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %771, align 8
  %add.ptr.i4.i.i378.i = getelementptr i8, ptr %774, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i378.i, i32 %772) #6, !srcloc !59
  br label %if.end129.i

if.else.i380.i:                                   ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #8
  %775 = or i32 %769, 234881024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %776 = ptrtoint ptr %771 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %771, align 8
  %add.ptr.i4.i28.i.i = getelementptr i8, ptr %777, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i28.i.i, i32 %775) #6, !srcloc !59
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else.i380.i, %if.then.i379.i, %if.end124.i.if.end129.i_crit_edge
  %and130.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.end129.i.if.end138.i_crit_edge, label %if.then132.i

if.end129.i.if.end138.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138.i

if.then132.i:                                     ; preds = %if.end129.i
  %and133.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  %rkisp1.i386.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %778 = ptrtoint ptr %rkisp1.i386.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %rkisp1.i386.i, align 8
  %780 = ptrtoint ptr %779 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %779, align 8
  %add.ptr.i.i387.i = getelementptr i8, ptr %781, i32 2048
  %782 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i387.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %783 = ptrtoint ptr %rkisp1.i386.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %rkisp1.i386.i, align 8
  br i1 %tobool134.not.i, label %if.else136.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  %785 = or i32 %782, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %786 = ptrtoint ptr %784 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %784, align 8
  %add.ptr.i4.i385.i = getelementptr i8, ptr %787, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i385.i, i32 %785) #6, !srcloc !59
  br label %if.end138.i

if.else136.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  %788 = and i32 %782, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %789 = ptrtoint ptr %784 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %784, align 8
  %add.ptr.i4.i389.i = getelementptr i8, ptr %790, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i389.i, i32 %788) #6, !srcloc !59
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.else136.i, %if.then135.i, %if.end129.i.if.end138.i_crit_edge
  %and139.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %if.end138.i.if.end143.i_crit_edge, label %if.then141.i

if.end138.i.if.end143.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143.i

if.then141.i:                                     ; preds = %if.end138.i
  %ie_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12
  %rkisp1.i390.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %791 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %rkisp1.i390.i, align 8
  %793 = ptrtoint ptr %792 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %792, align 8
  %add.ptr.i.i391.i = getelementptr i8, ptr %794, i32 512
  %795 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i391.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %796 = and i32 %795, -234881025
  %797 = tail call i32 @llvm.bswap.i32(i32 %796) #6
  %quantization.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 6
  %798 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %quantization.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %799)
  %cmp.i.i = icmp eq i32 %799, 1
  %or.i392.i = or i32 %797, 32
  %spec.select.i393.i = select i1 %cmp.i.i, i32 %or.i392.i, i32 %797
  %800 = ptrtoint ptr %ie_config.i to i32
  call void @__asan_load2_noabort(i32 %800)
  %801 = load i16, ptr %ie_config.i, align 2
  %802 = zext i16 %801 to i64
  call void @__sanitizer_cov_trace_switch(i64 %802, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %801, label %if.then141.i.rkisp1_ie_config.exit.i_crit_edge [
    i16 2, label %sw.bb.i394.i
    i16 15, label %sw.bb2.i.i
    i16 10, label %sw.bb6.i.i
    i16 4, label %sw.bb10.i.i
    i16 5, label %sw.bb18.i.i
    i16 3, label %sw.bb29.i.i
  ]

if.then141.i.rkisp1_ie_config.exit.i_crit_edge:   ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rkisp1_ie_config.exit.i

sw.bb.i394.i:                                     ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %or1.i.i = or i32 %spec.select.i393.i, 4
  br label %rkisp1_ie_config.exit.i

sw.bb2.i.i:                                       ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %803 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_tint.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 7
  %805 = ptrtoint ptr %eff_tint.i.i to i32
  call void @__asan_load2_noabort(i32 %805)
  %806 = load i16, ptr %eff_tint.i.i, align 2
  %conv4.i.i = zext i16 %806 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %807 = tail call i32 @llvm.bswap.i32(i32 %conv4.i.i) #6
  %808 = ptrtoint ptr %804 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %804, align 8
  %add.ptr.i59.i.i = getelementptr i8, ptr %809, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 %807) #6, !srcloc !59
  %or5.i.i = or i32 %spec.select.i393.i, 4
  br label %rkisp1_ie_config.exit.i

sw.bb6.i.i:                                       ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %or7.i.i = or i32 %spec.select.i393.i, 6
  %810 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %rkisp1.i390.i, align 8
  %color_sel.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 1
  %812 = ptrtoint ptr %color_sel.i.i to i32
  call void @__asan_load2_noabort(i32 %812)
  %813 = load i16, ptr %color_sel.i.i, align 2
  %conv9.i395.i = zext i16 %813 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %814 = tail call i32 @llvm.bswap.i32(i32 %conv9.i395.i) #6
  %815 = ptrtoint ptr %811 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %811, align 8
  %add.ptr.i60.i.i = getelementptr i8, ptr %816, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 %814) #6, !srcloc !59
  br label %rkisp1_ie_config.exit.i

sw.bb10.i.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %or11.i.i = or i32 %spec.select.i393.i, 8
  %817 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_1.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 2
  %819 = ptrtoint ptr %eff_mat_1.i.i to i32
  call void @__asan_load2_noabort(i32 %819)
  %820 = load i16, ptr %eff_mat_1.i.i, align 2
  %conv13.i396.i = zext i16 %820 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %821 = tail call i32 @llvm.bswap.i32(i32 %conv13.i396.i) #6
  %822 = ptrtoint ptr %818 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %818, align 8
  %add.ptr.i61.i.i = getelementptr i8, ptr %823, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %821) #6, !srcloc !59
  %824 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_2.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 3
  %826 = ptrtoint ptr %eff_mat_2.i.i to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %eff_mat_2.i.i, align 2
  %conv15.i397.i = zext i16 %827 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %828 = tail call i32 @llvm.bswap.i32(i32 %conv15.i397.i) #6
  %829 = ptrtoint ptr %825 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %825, align 8
  %add.ptr.i62.i.i = getelementptr i8, ptr %830, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 %828) #6, !srcloc !59
  %831 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_3.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 4
  %833 = ptrtoint ptr %eff_mat_3.i.i to i32
  call void @__asan_load2_noabort(i32 %833)
  %834 = load i16, ptr %eff_mat_3.i.i, align 2
  %conv17.i398.i = zext i16 %834 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %835 = tail call i32 @llvm.bswap.i32(i32 %conv17.i398.i) #6
  %836 = ptrtoint ptr %832 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %832, align 8
  %add.ptr.i63.i.i = getelementptr i8, ptr %837, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 %835) #6, !srcloc !59
  br label %rkisp1_ie_config.exit.i

sw.bb18.i.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %or19.i.i = or i32 %spec.select.i393.i, 10
  %838 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_321.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 4
  %840 = ptrtoint ptr %eff_mat_321.i.i to i32
  call void @__asan_load2_noabort(i32 %840)
  %841 = load i16, ptr %eff_mat_321.i.i, align 2
  %conv22.i.i = zext i16 %841 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %842 = tail call i32 @llvm.bswap.i32(i32 %conv22.i.i) #6
  %843 = ptrtoint ptr %839 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %839, align 8
  %add.ptr.i64.i.i = getelementptr i8, ptr %844, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 %842) #6, !srcloc !59
  %845 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_4.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 5
  %847 = ptrtoint ptr %eff_mat_4.i.i to i32
  call void @__asan_load2_noabort(i32 %847)
  %848 = load i16, ptr %eff_mat_4.i.i, align 2
  %conv24.i399.i = zext i16 %848 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %849 = tail call i32 @llvm.bswap.i32(i32 %conv24.i399.i) #6
  %850 = ptrtoint ptr %846 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %846, align 8
  %add.ptr.i65.i.i = getelementptr i8, ptr %851, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %849) #6, !srcloc !59
  %852 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %rkisp1.i390.i, align 8
  %eff_mat_5.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 12, i32 6
  %854 = ptrtoint ptr %eff_mat_5.i.i to i32
  call void @__asan_load2_noabort(i32 %854)
  %855 = load i16, ptr %eff_mat_5.i.i, align 2
  %conv26.i.i = zext i16 %855 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %856 = tail call i32 @llvm.bswap.i32(i32 %conv26.i.i) #6
  %857 = ptrtoint ptr %853 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %853, align 8
  %add.ptr.i66.i.i = getelementptr i8, ptr %858, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 %856) #6, !srcloc !59
  br label %rkisp1_ie_config.exit.i

sw.bb29.i.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  %or30.i.i = or i32 %spec.select.i393.i, 2
  br label %rkisp1_ie_config.exit.i

rkisp1_ie_config.exit.i:                          ; preds = %sw.bb29.i.i, %sw.bb18.i.i, %sw.bb10.i.i, %sw.bb6.i.i, %sw.bb2.i.i, %sw.bb.i394.i, %if.then141.i.rkisp1_ie_config.exit.i_crit_edge
  %eff_ctrl.1.i.i = phi i32 [ %or30.i.i, %sw.bb29.i.i ], [ %or19.i.i, %sw.bb18.i.i ], [ %or11.i.i, %sw.bb10.i.i ], [ %or7.i.i, %sw.bb6.i.i ], [ %or5.i.i, %sw.bb2.i.i ], [ %or1.i.i, %sw.bb.i394.i ], [ %spec.select.i393.i, %if.then141.i.rkisp1_ie_config.exit.i_crit_edge ]
  %859 = ptrtoint ptr %rkisp1.i390.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %rkisp1.i390.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %861 = tail call i32 @llvm.bswap.i32(i32 %eff_ctrl.1.i.i) #6
  %862 = ptrtoint ptr %860 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %860, align 8
  %add.ptr.i67.i.i = getelementptr i8, ptr %863, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 %861) #6, !srcloc !59
  br label %if.end143.i

if.end143.i:                                      ; preds = %rkisp1_ie_config.exit.i, %if.end138.i.if.end143.i_crit_edge
  %and144.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %if.end143.i.if.end151.i_crit_edge, label %if.then146.i

if.end143.i.if.end151.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151.i

if.then146.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  %and147.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.i = icmp ne i32 %and147.i, 0
  tail call fastcc void @rkisp1_ie_enable(ptr noundef %params, i1 noundef zeroext %tobool148.i) #6
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then146.i, %if.end143.i.if.end151.i_crit_edge
  %and152.i = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %if.end151.i.if.end156.i_crit_edge, label %if.then154.i

if.end151.i.if.end156.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156.i

if.then154.i:                                     ; preds = %if.end151.i
  %dpf_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9
  %864 = ptrtoint ptr %dpf_config.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %dpf_config.i, align 4
  %switch.tableidx = add i32 %865, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %866 = icmp ult i32 %switch.tableidx, 5
  br i1 %866, label %switch.lookup, label %if.then154.i.sw.epilog.i.i_crit_edge

if.then154.i.sw.epilog.i.i_crit_edge:             ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rkisp1_params_apply_params_cfg, i32 0, i32 %switch.tableidx
  %867 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %867)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.then154.i.sw.epilog.i.i_crit_edge
  %isp_dpf_mode.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then154.i.sw.epilog.i.i_crit_edge ]
  %nll.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 3
  %scale_mode.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 3, i32 1
  %868 = ptrtoint ptr %scale_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %scale_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %869)
  %cmp.i401.i = icmp eq i32 %869, 1
  %or.i402.i = or i32 %isp_dpf_mode.0.i.i, 64
  %spec.select.i403.i = select i1 %cmp.i401.i, i32 %or.i402.i, i32 %isp_dpf_mode.0.i.i
  %rb_flt.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2
  %870 = ptrtoint ptr %rb_flt.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %rb_flt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %871)
  %cmp6.i.i = icmp eq i32 %871, 1
  %or8.i.i = or i32 %spec.select.i403.i, 32
  %isp_dpf_mode.2.i.i = select i1 %cmp6.i.i, i32 %or8.i.i, i32 %spec.select.i403.i
  %r_enable.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 2
  %872 = ptrtoint ptr %r_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %r_enable.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %873)
  %tobool.not.i404.i = icmp eq i8 %873, 0
  %or12.i.i = or i32 %isp_dpf_mode.2.i.i, 16
  %isp_dpf_mode.3.i.i = select i1 %tobool.not.i404.i, i32 %or12.i.i, i32 %isp_dpf_mode.2.i.i
  %b_enable.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 3
  %874 = ptrtoint ptr %b_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %b_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %875)
  %tobool15.not.i.i = icmp eq i8 %875, 0
  %or17.i.i = or i32 %isp_dpf_mode.3.i.i, 2
  %isp_dpf_mode.4.i.i = select i1 %tobool15.not.i.i, i32 %or17.i.i, i32 %isp_dpf_mode.3.i.i
  %gb_enable.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 2
  %876 = ptrtoint ptr %gb_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %gb_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %877)
  %tobool19.not.i.i = icmp eq i8 %877, 0
  %or21.i.i = or i32 %isp_dpf_mode.4.i.i, 4
  %isp_dpf_mode.5.i.i = select i1 %tobool19.not.i.i, i32 %or21.i.i, i32 %isp_dpf_mode.4.i.i
  %gr_enable.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 1
  %878 = ptrtoint ptr %gr_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %878)
  %879 = load i8, ptr %gr_enable.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %879)
  %tobool24.not.i.i = icmp eq i8 %879, 0
  %or26.i.i = or i32 %isp_dpf_mode.5.i.i, 8
  %isp_dpf_mode.6.i.i = select i1 %tobool24.not.i.i, i32 %or26.i.i, i32 %isp_dpf_mode.5.i.i
  %rkisp1.i.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %880 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %rkisp1.i.i.i, align 8
  %882 = ptrtoint ptr %881 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %881, align 8
  %add.ptr.i.i.i405.i = getelementptr i8, ptr %883, i32 10240
  %884 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i405.i) #6, !srcloc !56
  %885 = tail call i32 @llvm.bswap.i32(i32 %884) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %886 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %rkisp1.i.i.i, align 8
  %or.i.i.i = or i32 %isp_dpf_mode.6.i.i, %885
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %888 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  %889 = ptrtoint ptr %887 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %887, align 8
  %add.ptr.i4.i.i406.i = getelementptr i8, ptr %890, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i406.i, i32 %888) #6, !srcloc !59
  %891 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %rkisp1.i.i.i, align 8
  %nf_b_gain.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 0, i32 2
  %893 = ptrtoint ptr %nf_b_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %893)
  %894 = load i16, ptr %nf_b_gain.i.i, align 2
  %conv.i407.i = zext i16 %894 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %895 = tail call i32 @llvm.bswap.i32(i32 %conv.i407.i) #6
  %896 = ptrtoint ptr %892 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %892, align 8
  %add.ptr.i.i408.i = getelementptr i8, ptr %897, i32 10352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i408.i, i32 %895) #6, !srcloc !59
  %898 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %rkisp1.i.i.i, align 8
  %nf_r_gain.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 0, i32 1
  %900 = ptrtoint ptr %nf_r_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %900)
  %901 = load i16, ptr %nf_r_gain.i.i, align 4
  %conv31.i.i = zext i16 %901 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %902 = tail call i32 @llvm.bswap.i32(i32 %conv31.i.i) #6
  %903 = ptrtoint ptr %899 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %899, align 8
  %add.ptr.i154.i409.i = getelementptr i8, ptr %904, i32 10340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i409.i, i32 %902) #6, !srcloc !59
  %905 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %rkisp1.i.i.i, align 8
  %nf_gb_gain.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 0, i32 4
  %907 = ptrtoint ptr %nf_gb_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %907)
  %908 = load i16, ptr %nf_gb_gain.i.i, align 2
  %conv34.i.i = zext i16 %908 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %909 = tail call i32 @llvm.bswap.i32(i32 %conv34.i.i) #6
  %910 = ptrtoint ptr %906 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %906, align 8
  %add.ptr.i155.i410.i = getelementptr i8, ptr %911, i32 10348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i410.i, i32 %909) #6, !srcloc !59
  %912 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %rkisp1.i.i.i, align 8
  %nf_gr_gain.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 0, i32 3
  %914 = ptrtoint ptr %nf_gr_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %914)
  %915 = load i16, ptr %nf_gr_gain.i.i, align 4
  %conv37.i411.i = zext i16 %915 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %916 = tail call i32 @llvm.bswap.i32(i32 %conv37.i411.i) #6
  %917 = ptrtoint ptr %913 to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %913, align 8
  %add.ptr.i156.i412.i = getelementptr i8, ptr %918, i32 10344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i412.i, i32 %916) #6, !srcloc !59
  br label %for.body.i419.i

for.body.i419.i:                                  ; preds = %for.body.i419.i.for.body.i419.i_crit_edge, %sw.epilog.i.i
  %i.0162.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %inc.i417.i, %for.body.i419.i.for.body.i419.i_crit_edge ]
  %919 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %rkisp1.i.i.i, align 8
  %arrayidx.i413.i = getelementptr [17 x i16], ptr %nll.i.i, i32 0, i32 %i.0162.i.i
  %921 = ptrtoint ptr %arrayidx.i413.i to i32
  call void @__asan_load2_noabort(i32 %921)
  %922 = load i16, ptr %arrayidx.i413.i, align 2
  %conv42.i.i = zext i16 %922 to i32
  %mul.i414.i = shl nuw nsw i32 %i.0162.i.i, 2
  %add.i415.i = add nuw nsw i32 %mul.i414.i, 10272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %923 = tail call i32 @llvm.bswap.i32(i32 %conv42.i.i) #6
  %924 = ptrtoint ptr %920 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %920, align 8
  %add.ptr.i157.i416.i = getelementptr i8, ptr %925, i32 %add.i415.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i416.i, i32 %923) #6, !srcloc !59
  %inc.i417.i = add nuw nsw i32 %i.0162.i.i, 1
  %exitcond.not.i418.i = icmp eq i32 %inc.i417.i, 17
  br i1 %exitcond.not.i418.i, label %rkisp1_dpf_config.exit.i, label %for.body.i419.i.for.body.i419.i_crit_edge

for.body.i419.i.for.body.i419.i_crit_edge:        ; preds = %for.body.i419.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i419.i

rkisp1_dpf_config.exit.i:                         ; preds = %for.body.i419.i
  call void @__sanitizer_cov_trace_pc() #8
  %g_flt.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1
  %926 = ptrtoint ptr %g_flt.i.i to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %g_flt.i.i, align 4
  %conv46.i420.i = zext i8 %927 to i32
  %arrayidx49.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 0, i32 1
  %928 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %arrayidx49.i.i, align 1
  %conv50.i.i = zext i8 %929 to i32
  %shl.i421.i = shl nuw nsw i32 %conv50.i.i, 8
  %or51.i.i = or i32 %shl.i421.i, %conv46.i420.i
  %arrayidx54.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 0, i32 2
  %930 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %arrayidx54.i.i, align 2
  %conv55.i422.i = zext i8 %931 to i32
  %shl56.i.i = shl nuw nsw i32 %conv55.i422.i, 16
  %or57.i.i = or i32 %or51.i.i, %shl56.i.i
  %arrayidx60.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 0, i32 3
  %932 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %932)
  %933 = load i8, ptr %arrayidx60.i.i, align 1
  %conv61.i423.i = zext i8 %933 to i32
  %shl62.i.i = shl nuw i32 %conv61.i423.i, 24
  %or63.i.i = or i32 %or57.i.i, %shl62.i.i
  %934 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %rkisp1.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %936 = tail call i32 @llvm.bswap.i32(i32 %or63.i.i) #6
  %937 = ptrtoint ptr %935 to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %935, align 8
  %add.ptr.i158.i424.i = getelementptr i8, ptr %938, i32 10256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i424.i, i32 %936) #6, !srcloc !59
  %arrayidx67.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 0, i32 4
  %939 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %arrayidx67.i.i, align 4
  %conv68.i.i = zext i8 %940 to i32
  %arrayidx71.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 1, i32 0, i32 5
  %941 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %941)
  %942 = load i8, ptr %arrayidx71.i.i, align 1
  %conv72.i.i = zext i8 %942 to i32
  %shl73.i.i = shl nuw nsw i32 %conv72.i.i, 8
  %or74.i.i = or i32 %shl73.i.i, %conv68.i.i
  %943 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %rkisp1.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %945 = tail call i32 @llvm.bswap.i32(i32 %or74.i.i) #6
  %946 = ptrtoint ptr %944 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %944, align 8
  %add.ptr.i159.i425.i = getelementptr i8, ptr %947, i32 10260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i425.i, i32 %945) #6, !srcloc !59
  %spatial_coeff77.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1
  %948 = ptrtoint ptr %spatial_coeff77.i.i to i32
  call void @__asan_load1_noabort(i32 %948)
  %949 = load i8, ptr %spatial_coeff77.i.i, align 4
  %conv79.i.i = zext i8 %949 to i32
  %arrayidx82.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1, i32 1
  %950 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load1_noabort(i32 %950)
  %951 = load i8, ptr %arrayidx82.i.i, align 1
  %conv83.i.i = zext i8 %951 to i32
  %shl84.i.i = shl nuw nsw i32 %conv83.i.i, 8
  %or85.i.i = or i32 %shl84.i.i, %conv79.i.i
  %arrayidx88.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1, i32 2
  %952 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load1_noabort(i32 %952)
  %953 = load i8, ptr %arrayidx88.i.i, align 2
  %conv89.i.i = zext i8 %953 to i32
  %shl90.i.i = shl nuw nsw i32 %conv89.i.i, 16
  %or91.i.i = or i32 %or85.i.i, %shl90.i.i
  %arrayidx94.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1, i32 3
  %954 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_load1_noabort(i32 %954)
  %955 = load i8, ptr %arrayidx94.i.i, align 1
  %conv95.i.i = zext i8 %955 to i32
  %shl96.i.i = shl nuw i32 %conv95.i.i, 24
  %or97.i.i = or i32 %or91.i.i, %shl96.i.i
  %956 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %rkisp1.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %958 = tail call i32 @llvm.bswap.i32(i32 %or97.i.i) #6
  %959 = ptrtoint ptr %957 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %957, align 8
  %add.ptr.i160.i426.i = getelementptr i8, ptr %960, i32 10264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i426.i, i32 %958) #6, !srcloc !59
  %arrayidx101.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1, i32 4
  %961 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_load1_noabort(i32 %961)
  %962 = load i8, ptr %arrayidx101.i.i, align 4
  %conv102.i.i = zext i8 %962 to i32
  %arrayidx105.i.i = getelementptr %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 9, i32 2, i32 1, i32 5
  %963 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load1_noabort(i32 %963)
  %964 = load i8, ptr %arrayidx105.i.i, align 1
  %conv106.i.i = zext i8 %964 to i32
  %shl107.i.i = shl nuw nsw i32 %conv106.i.i, 8
  %or108.i.i = or i32 %shl107.i.i, %conv102.i.i
  %965 = ptrtoint ptr %rkisp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %rkisp1.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %967 = tail call i32 @llvm.bswap.i32(i32 %or108.i.i) #6
  %968 = ptrtoint ptr %966 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %966, align 8
  %add.ptr.i161.i427.i = getelementptr i8, ptr %969, i32 10268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i427.i, i32 %967) #6, !srcloc !59
  br label %if.end156.i

if.end156.i:                                      ; preds = %rkisp1_dpf_config.exit.i, %if.end151.i.if.end156.i_crit_edge
  %and157.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i)
  %tobool158.not.i = icmp eq i32 %and157.i, 0
  br i1 %tobool158.not.i, label %if.end156.i.if.end165.i_crit_edge, label %if.then159.i

if.end156.i.if.end165.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.i

if.then159.i:                                     ; preds = %if.end156.i
  %and160.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  %rkisp1.i433.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %970 = ptrtoint ptr %rkisp1.i433.i to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %rkisp1.i433.i, align 8
  %972 = ptrtoint ptr %971 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %971, align 8
  %add.ptr.i.i434.i = getelementptr i8, ptr %973, i32 10240
  %974 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i434.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %975 = ptrtoint ptr %rkisp1.i433.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %rkisp1.i433.i, align 8
  br i1 %tobool161.not.i, label %if.else163.i, label %if.then162.i

if.then162.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #8
  %977 = or i32 %974, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %978 = ptrtoint ptr %976 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %976, align 8
  %add.ptr.i4.i432.i = getelementptr i8, ptr %979, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i432.i, i32 %977) #6, !srcloc !59
  br label %if.end165.i

if.else163.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #8
  %980 = and i32 %974, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %981 = ptrtoint ptr %976 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %976, align 8
  %add.ptr.i4.i436.i = getelementptr i8, ptr %982, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i436.i, i32 %980) #6, !srcloc !59
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.else163.i, %if.then162.i, %if.end156.i.if.end165.i_crit_edge
  %and166.i = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  %and168.i = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i)
  %tobool169.not.i = icmp eq i32 %and168.i, 0
  %or.cond.i = select i1 %tobool167.not.i, i1 %tobool169.not.i, i1 false
  br i1 %or.cond.i, label %if.end165.i.rkisp1_isp_isr_other_config.exit_crit_edge, label %if.then170.i

if.end165.i.rkisp1_isp_isr_other_config.exit_crit_edge: ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rkisp1_isp_isr_other_config.exit

if.then170.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #8
  %dpf_strength_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 10
  %rkisp1.i437.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %983 = ptrtoint ptr %rkisp1.i437.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %rkisp1.i437.i, align 8
  %b.i438.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 10, i32 2
  %985 = ptrtoint ptr %b.i438.i to i32
  call void @__asan_load1_noabort(i32 %985)
  %986 = load i8, ptr %b.i438.i, align 1
  %conv.i439.i = zext i8 %986 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %987 = shl nuw i32 %conv.i439.i, 24
  %988 = ptrtoint ptr %984 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %984, align 8
  %add.ptr.i.i440.i = getelementptr i8, ptr %989, i32 10252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i440.i, i32 %987) #6, !srcloc !59
  %990 = ptrtoint ptr %rkisp1.i437.i to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %rkisp1.i437.i, align 8
  %g.i.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 4, i32 10, i32 1
  %992 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load1_noabort(i32 %992)
  %993 = load i8, ptr %g.i.i, align 1
  %conv2.i.i = zext i8 %993 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %994 = shl nuw i32 %conv2.i.i, 24
  %995 = ptrtoint ptr %991 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %991, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %996, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %994) #6, !srcloc !59
  %997 = ptrtoint ptr %rkisp1.i437.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %rkisp1.i437.i, align 8
  %999 = ptrtoint ptr %dpf_strength_config.i to i32
  call void @__asan_load1_noabort(i32 %999)
  %1000 = load i8, ptr %dpf_strength_config.i, align 1
  %conv4.i441.i = zext i8 %1000 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1001 = shl nuw i32 %conv4.i441.i, 24
  %1002 = ptrtoint ptr %998 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %998, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %1003, i32 10244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %1001) #6, !srcloc !59
  br label %rkisp1_isp_isr_other_config.exit

rkisp1_isp_isr_other_config.exit:                 ; preds = %if.then170.i, %if.end165.i.rkisp1_isp_isr_other_config.exit_crit_edge
  %1004 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load i32, ptr %call3, align 4
  %1006 = ptrtoint ptr %module_cfg_update2.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load i32, ptr %module_cfg_update2.i, align 4
  %1008 = ptrtoint ptr %module_ens3.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load i32, ptr %module_ens3.i, align 4
  %and.i18 = and i32 %1007, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %rkisp1_isp_isr_other_config.exit.if.end.i22_crit_edge, label %if.then.i21

rkisp1_isp_isr_other_config.exit.if.end.i22_crit_edge: ; preds = %rkisp1_isp_isr_other_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i22

if.then.i21:                                      ; preds = %rkisp1_isp_isr_other_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i20 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1010 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %ops.i20, align 4
  %awb_meas_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1011, i32 0, i32 2
  %1012 = ptrtoint ptr %awb_meas_config.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %awb_meas_config.i, align 4
  %meas.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3
  tail call void %1013(ptr noundef %params, ptr noundef %meas.i) #6
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i21, %rkisp1_isp_isr_other_config.exit.if.end.i22_crit_edge
  %and5.i = and i32 %1005, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i22.if.end14.i_crit_edge, label %if.then7.i

if.end.i22.if.end14.i_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %ops8.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1014 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %ops8.i, align 4
  %awb_meas_enable.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1015, i32 0, i32 3
  %1016 = ptrtoint ptr %awb_meas_enable.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %awb_meas_enable.i, align 4
  %meas9.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3
  %and11.i = and i32 %1009, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.i = icmp ne i32 %and11.i, 0
  tail call void %1017(ptr noundef %params, ptr noundef %meas9.i, i1 noundef zeroext %tobool12.i) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end.i22.if.end14.i_crit_edge
  %and15.i = and i32 %1007, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops18.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1018 = ptrtoint ptr %ops18.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %ops18.i, align 4
  %afm_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1019, i32 0, i32 8
  %1020 = ptrtoint ptr %afm_config.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %afm_config.i, align 4
  %afc_config.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3, i32 3
  tail call void %1021(ptr noundef %params, ptr noundef %afc_config.i) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %and21.i = and i32 %1005, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end28.i_crit_edge, label %if.then23.i

if.end20.i.if.end28.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end20.i
  %and24.i = and i32 %1009, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %rkisp1.i95.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %1022 = ptrtoint ptr %rkisp1.i95.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %rkisp1.i95.i, align 8
  %1024 = ptrtoint ptr %1023 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %1023, align 8
  %add.ptr.i.i96.i = getelementptr i8, ptr %1025, i32 8192
  %1026 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %1027 = ptrtoint ptr %rkisp1.i95.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %rkisp1.i95.i, align 8
  br i1 %tobool25.not.i, label %if.else.i24, label %if.then26.i

if.then26.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %1029 = or i32 %1026, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1030 = ptrtoint ptr %1028 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %1028, align 8
  %add.ptr.i4.i.i23 = getelementptr i8, ptr %1031, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i23, i32 %1029) #6, !srcloc !59
  br label %if.end28.i

if.else.i24:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %1032 = and i32 %1026, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1033 = ptrtoint ptr %1028 to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %1028, align 8
  %add.ptr.i4.i97.i = getelementptr i8, ptr %1034, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i97.i, i32 %1032) #6, !srcloc !59
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i24, %if.then26.i, %if.end20.i.if.end28.i_crit_edge
  %and29.i = and i32 %1007, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then31.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops32.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1035 = ptrtoint ptr %ops32.i to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %ops32.i, align 4
  %hst_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1036, i32 0, i32 6
  %1037 = ptrtoint ptr %hst_config.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %hst_config.i, align 4
  %hst_config34.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3, i32 1
  tail call void %1038(ptr noundef %params, ptr noundef %hst_config34.i) #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end35.i_crit_edge
  %and36.i = and i32 %1005, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end46.i_crit_edge, label %if.then38.i

if.end35.i.if.end46.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops39.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1039 = ptrtoint ptr %ops39.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %ops39.i, align 4
  %hst_enable.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1040, i32 0, i32 7
  %1041 = ptrtoint ptr %hst_enable.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %hst_enable.i, align 4
  %hst_config41.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3, i32 1
  %and42.i = and i32 %1009, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.i = icmp ne i32 %and42.i, 0
  tail call void %1042(ptr noundef %params, ptr noundef %hst_config41.i, i1 noundef zeroext %tobool43.i) #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end46.i_crit_edge
  %and47.i = and i32 %1007, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end53.i27_crit_edge, label %if.then49.i

if.end46.i.if.end53.i27_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i27

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops50.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %1043 = ptrtoint ptr %ops50.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %ops50.i, align 4
  %aec_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %1044, i32 0, i32 5
  %1045 = ptrtoint ptr %aec_config.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %aec_config.i, align 4
  %aec_config52.i = getelementptr inbounds %struct.rkisp1_params_cfg, ptr %call3, i32 0, i32 3, i32 2
  tail call void %1046(ptr noundef %params, ptr noundef %aec_config52.i) #6
  br label %if.end53.i27

if.end53.i27:                                     ; preds = %if.then49.i, %if.end46.i.if.end53.i27_crit_edge
  %and54.i25 = and i32 %1005, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i25)
  %tobool55.not.i26 = icmp eq i32 %and54.i25, 0
  br i1 %tobool55.not.i26, label %if.end53.i27.rkisp1_isp_isr_meas_config.exit_crit_edge, label %if.then56.i28

if.end53.i27.rkisp1_isp_isr_meas_config.exit_crit_edge: ; preds = %if.end53.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rkisp1_isp_isr_meas_config.exit

if.then56.i28:                                    ; preds = %if.end53.i27
  %and57.i = and i32 %1009, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  %rkisp1.i102.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %1047 = ptrtoint ptr %rkisp1.i102.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %rkisp1.i102.i, align 8
  %1049 = ptrtoint ptr %1048 to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %1048, align 8
  %add.ptr.i.i103.i = getelementptr i8, ptr %1050, i32 9728
  %1051 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %1052 = ptrtoint ptr %rkisp1.i102.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %rkisp1.i102.i, align 8
  br i1 %tobool58.not.i, label %if.else60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.then56.i28
  call void @__sanitizer_cov_trace_pc() #8
  %1054 = or i32 %1051, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1055 = ptrtoint ptr %1053 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %1053, align 8
  %add.ptr.i4.i101.i = getelementptr i8, ptr %1056, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i101.i, i32 %1054) #6, !srcloc !59
  br label %rkisp1_isp_isr_meas_config.exit

if.else60.i:                                      ; preds = %if.then56.i28
  call void @__sanitizer_cov_trace_pc() #8
  %1057 = and i32 %1051, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1058 = ptrtoint ptr %1053 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %1053, align 8
  %add.ptr.i4.i105.i = getelementptr i8, ptr %1059, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i105.i, i32 %1057) #6, !srcloc !59
  br label %rkisp1_isp_isr_meas_config.exit

rkisp1_isp_isr_meas_config.exit:                  ; preds = %if.else60.i, %if.then59.i, %if.end53.i27.rkisp1_isp_isr_meas_config.exit_crit_edge
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %1060 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %rkisp1.i, align 8
  %1062 = ptrtoint ptr %1061 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %1061, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1063, i32 1024
  %1064 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %1065 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %rkisp1.i, align 8
  %1067 = or i32 %1064, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1068 = ptrtoint ptr %1066 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %1066, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %1069, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %1067) #6, !srcloc !59
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i29, label %rkisp1_isp_isr_meas_config.exit.list_del.exit_crit_edge

rkisp1_isp_isr_meas_config.exit.list_del.exit_crit_edge: ; preds = %rkisp1_isp_isr_meas_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i29:                                     ; preds = %rkisp1_isp_isr_meas_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %1070 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %prev.i.i, align 4
  %1072 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %1073, i32 0, i32 1
  %1074 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1074)
  store ptr %1071, ptr %prev1.i.i.i, align 4
  %1075 = ptrtoint ptr %1071 to i32
  call void @__asan_store4_noabort(i32 %1075)
  store volatile ptr %1073, ptr %1071, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i29, %rkisp1_isp_isr_meas_config.exit.list_del.exit_crit_edge
  %1076 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %1076)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %1077 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1077)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %sequence = getelementptr i8, ptr %1, i32 -272
  %1078 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %1078)
  store i32 %frame_sequence, ptr %sequence, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_params_configure(ptr noundef %params, i32 noundef %bayer_pat, i32 noundef %quantization) local_unnamed_addr #0 align 64 {
entry:
  %hst.i = alloca %struct.rkisp1_cif_isp_hst_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %quantization1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %quantization1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %quantization, ptr %quantization1, align 8
  %raw_type = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 7
  %1 = ptrtoint ptr %raw_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bayer_pat, ptr %raw_type, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %hst.i) #6
  %2 = call ptr @memcpy(ptr %hst.i, ptr @rkisp1_hst_params_default_config, i32 96)
  %ops.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %awb_meas_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %awb_meas_config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %awb_meas_config.i, align 4
  tail call void %6(ptr noundef %params, ptr noundef nonnull @rkisp1_awb_params_default_config) #6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %awb_meas_enable.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %awb_meas_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %awb_meas_enable.i, align 4
  tail call void %10(ptr noundef %params, ptr noundef nonnull @rkisp1_awb_params_default_config, i1 noundef zeroext true) #6
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %aec_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %aec_config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aec_config.i, align 4
  tail call void %14(ptr noundef %params, ptr noundef nonnull @rkisp1_aec_params_default_config) #6
  %rkisp1.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %15 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rkisp1.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 9728
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %20 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rkisp1.i.i, align 8
  %22 = or i32 %19, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %21, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %24, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %22) #6, !srcloc !59
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %afm_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %afm_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %afm_config.i, align 4
  tail call void %28(ptr noundef %params, ptr noundef nonnull @rkisp1_afc_params_default_config) #6
  %29 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rkisp1.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %add.ptr.i.i25.i = getelementptr i8, ptr %32, i32 8192
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %34 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rkisp1.i.i, align 8
  %36 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %add.ptr.i4.i27.i = getelementptr i8, ptr %38, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i27.i, i32 %36) #6, !srcloc !59
  %hist_weight.i = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %hst.i, i32 0, i32 3
  %39 = call ptr @memset(ptr %hist_weight.i, i32 1, i32 81)
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %hst_config.i = getelementptr inbounds %struct.rkisp1_params_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %hst_config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hst_config.i, align 4
  call void %43(ptr noundef %params, ptr noundef nonnull %hst.i) #6
  %44 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rkisp1.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %add.ptr.i.i29.i = getelementptr i8, ptr %47, i32 9216
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #6, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %49 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rkisp1.i.i, align 8
  %51 = or i32 %48, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 8
  %add.ptr.i4.i31.i = getelementptr i8, ptr %53, i32 9216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i31.i, i32 %51) #6, !srcloc !59
  %54 = ptrtoint ptr %quantization1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quantization1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i = icmp eq i32 %55, 1
  %56 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 1392
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 553648128) #6, !srcloc !59
  %60 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %add.ptr.i23.1.i = getelementptr i8, ptr %63, i32 1396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.1.i, i32 1073741824) #6, !srcloc !59
  %64 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %add.ptr.i23.2.i = getelementptr i8, ptr %67, i32 1400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.2.i, i32 218103808) #6, !srcloc !59
  %68 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %add.ptr.i23.3.i = getelementptr i8, ptr %71, i32 1404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.3.i, i32 -318701568) #6, !srcloc !59
  %72 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %add.ptr.i23.4.i = getelementptr i8, ptr %75, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.4.i, i32 -620691456) #6, !srcloc !59
  %76 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %add.ptr.i23.5.i = getelementptr i8, ptr %79, i32 1412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.5.i, i32 939524096) #6, !srcloc !59
  %80 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %add.ptr.i23.6.i = getelementptr i8, ptr %83, i32 1416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.6.i, i32 939524096) #6, !srcloc !59
  %84 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %add.ptr.i23.7.i = getelementptr i8, ptr %87, i32 1420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.7.i, i32 -788463616) #6, !srcloc !59
  %88 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %add.ptr.i23.8.i = getelementptr i8, ptr %91, i32 1424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.8.i, i32 -150929408) #6, !srcloc !59
  %92 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rkisp1.i.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %add.ptr.i.i25.i4 = getelementptr i8, ptr %95, i32 1024
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i4) #6, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %97 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rkisp1.i.i, align 8
  %99 = and i32 %96, -6291457
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %98, align 8
  %add.ptr.i4.i26.i = getelementptr i8, ptr %101, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i26.i, i32 %99) #6, !srcloc !59
  br label %rkisp1_csm_config.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 637534208) #6, !srcloc !59
  %102 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %105, i32 1396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 1258291200) #6, !srcloc !59
  %106 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %109, i32 1400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 251658240) #6, !srcloc !59
  %110 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %113, i32 1404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 -369033216) #6, !srcloc !59
  %114 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %add.ptr.i.4.i = getelementptr i8, ptr %117, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i, i32 -704577536) #6, !srcloc !59
  %118 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %add.ptr.i.5.i = getelementptr i8, ptr %121, i32 1412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i, i32 1073741824) #6, !srcloc !59
  %122 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %add.ptr.i.6.i = getelementptr i8, ptr %125, i32 1416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i, i32 1073741824) #6, !srcloc !59
  %126 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %add.ptr.i.7.i = getelementptr i8, ptr %129, i32 1420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7.i, i32 -905904128) #6, !srcloc !59
  %130 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rkisp1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %add.ptr.i.8.i = getelementptr i8, ptr %133, i32 1424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8.i, i32 -167706624) #6, !srcloc !59
  %134 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rkisp1.i.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %add.ptr.i.i.i5 = getelementptr i8, ptr %137, i32 1024
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i5) #6, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %139 = ptrtoint ptr %rkisp1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rkisp1.i.i, align 8
  %141 = or i32 %138, 6291456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %140, align 8
  %add.ptr.i4.i.i6 = getelementptr i8, ptr %143, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i6, i32 %141) #6, !srcloc !59
  br label %rkisp1_csm_config.exit

rkisp1_csm_config.exit:                           ; preds = %for.cond.preheader.i, %for.cond1.preheader.i
  %config_lock.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %config_lock.i) #6
  call fastcc void @rkisp1_params_apply_params_cfg(ptr noundef %params, i32 noundef 0) #6
  call void @_raw_spin_unlock_irq(ptr noundef %config_lock.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %hst.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_params_disable(ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 10496
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rkisp1.i, align 8
  %7 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 10496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i.i20 = getelementptr i8, ptr %13, i32 8704
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %15 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rkisp1.i, align 8
  %17 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %16, align 8
  %add.ptr.i4.i22 = getelementptr i8, ptr %19, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i22, i32 %17) #6, !srcloc !59
  %20 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rkisp1.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %add.ptr.i.i24 = getelementptr i8, ptr %23, i32 9984
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %25 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rkisp1.i, align 8
  %27 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %26, align 8
  %add.ptr.i4.i26 = getelementptr i8, ptr %29, i32 9984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i26, i32 %27) #6, !srcloc !59
  %30 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rkisp1.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %33, i32 1024
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %35 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp1.i, align 8
  %37 = and i32 %34, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %36, align 8
  %add.ptr.i4.i30 = getelementptr i8, ptr %39, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i30, i32 %37) #6, !srcloc !59
  %40 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rkisp1.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %add.ptr.i.i32 = getelementptr i8, ptr %43, i32 1024
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %45 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rkisp1.i, align 8
  %47 = and i32 %44, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 8
  %add.ptr.i4.i34 = getelementptr i8, ptr %49, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i34, i32 %47) #6, !srcloc !59
  %50 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rkisp1.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %add.ptr.i.i36 = getelementptr i8, ptr %53, i32 1444
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %55 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rkisp1.i, align 8
  %57 = and i32 %54, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %56, align 8
  %add.ptr.i4.i38 = getelementptr i8, ptr %59, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i38, i32 %57) #6, !srcloc !59
  %60 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rkisp1.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %add.ptr.i.i40 = getelementptr i8, ptr %63, i32 9472
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %65 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rkisp1.i, align 8
  %67 = and i32 %64, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %66, align 8
  %add.ptr.i4.i42 = getelementptr i8, ptr %69, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i42, i32 %67) #6, !srcloc !59
  %ops = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 2
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %awb_meas_enable = getelementptr inbounds %struct.rkisp1_params_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %awb_meas_enable to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %awb_meas_enable, align 4
  tail call void %73(ptr noundef %params, ptr noundef null, i1 noundef zeroext false) #6
  %74 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rkisp1.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %add.ptr.i.i44 = getelementptr i8, ptr %77, i32 1024
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %79 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rkisp1.i, align 8
  %81 = and i32 %78, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %80, align 8
  %add.ptr.i4.i46 = getelementptr i8, ptr %83, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i46, i32 %81) #6, !srcloc !59
  %84 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rkisp1.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %87, i32 9728
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %89 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rkisp1.i, align 8
  %91 = and i32 %88, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %90, align 8
  %add.ptr.i4.i50 = getelementptr i8, ptr %93, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i50, i32 %91) #6, !srcloc !59
  tail call fastcc void @rkisp1_ctk_enable(ptr noundef %params, i1 noundef zeroext false)
  %94 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rkisp1.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %97, i32 2048
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %99 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rkisp1.i, align 8
  %101 = and i32 %98, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %100, align 8
  %add.ptr.i4.i54 = getelementptr i8, ptr %103, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i54, i32 %101) #6, !srcloc !59
  %104 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops, align 4
  %hst_enable = getelementptr inbounds %struct.rkisp1_params_ops, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %hst_enable to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hst_enable, align 4
  tail call void %107(ptr noundef %params, ptr noundef null, i1 noundef zeroext false) #6
  %108 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rkisp1.i, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %add.ptr.i.i56 = getelementptr i8, ptr %111, i32 8192
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %113 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rkisp1.i, align 8
  %115 = and i32 %112, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %114, align 8
  %add.ptr.i4.i58 = getelementptr i8, ptr %117, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i58, i32 %115) #6, !srcloc !59
  %118 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rkisp1.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %add.ptr.i.i10.i = getelementptr i8, ptr %121, i32 512
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %123 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rkisp1.i, align 8
  %125 = and i32 %122, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %124, align 8
  %add.ptr.i4.i11.i = getelementptr i8, ptr %127, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i11.i, i32 %125) #6, !srcloc !59
  %128 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rkisp1.i, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %131, i32 16
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %133 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rkisp1.i, align 8
  %135 = and i32 %132, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %134, align 8
  %add.ptr.i4.i15.i = getelementptr i8, ptr %137, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15.i, i32 %135) #6, !srcloc !59
  %138 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rkisp1.i, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %add.ptr.i.i60 = getelementptr i8, ptr %141, i32 10240
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %143 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rkisp1.i, align 8
  %145 = and i32 %142, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %144, align 8
  %add.ptr.i4.i62 = getelementptr i8, ptr %147, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i62, i32 %145) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_ctk_enable(ptr nocapture noundef readonly %params, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %en, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #6, !srcloc !59
  %4 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 1492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #6, !srcloc !59
  %8 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i24 = getelementptr i8, ptr %11, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #6, !srcloc !59
  %12 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %add.ptr.i25 = getelementptr i8, ptr %15, i32 1500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #6, !srcloc !59
  %16 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %add.ptr.i26 = getelementptr i8, ptr %19, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -2147483648) #6, !srcloc !59
  %20 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %add.ptr.i27 = getelementptr i8, ptr %23, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #6, !srcloc !59
  %24 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %add.ptr.i28 = getelementptr i8, ptr %27, i32 1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #6, !srcloc !59
  %28 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %add.ptr.i29 = getelementptr i8, ptr %31, i32 1516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #6, !srcloc !59
  %32 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %add.ptr.i30 = getelementptr i8, ptr %35, i32 1520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -2147483648) #6, !srcloc !59
  %36 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %add.ptr.i31 = getelementptr i8, ptr %39, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #6, !srcloc !59
  %40 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %add.ptr.i32 = getelementptr i8, ptr %43, i32 1612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #6, !srcloc !59
  %44 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %add.ptr.i33 = getelementptr i8, ptr %47, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #6, !srcloc !59
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_ie_enable(ptr nocapture noundef readonly %params, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  br i1 %en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rkisp1.i, align 8
  %7 = or i32 %4, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %17, i32 512
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %19 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rkisp1.i, align 8
  %21 = or i32 %18, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 8
  %add.ptr.i4.i8 = getelementptr i8, ptr %23, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i8, i32 %21) #6, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i10 = getelementptr i8, ptr %3, i32 512
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %25 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rkisp1.i, align 8
  %27 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %26, align 8
  %add.ptr.i4.i11 = getelementptr i8, ptr %29, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i11, i32 %27) #6, !srcloc !59
  %30 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rkisp1.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %add.ptr.i.i13 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %35 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp1.i, align 8
  %37 = and i32 %34, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %36, align 8
  %add.ptr.i4.i15 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15, i32 %37) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_params_register(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12
  %vdev2 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2
  %rkisp13 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %rkisp13 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rkisp1, ptr %rkisp13, align 8
  %vlock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %vlock, ptr noundef nonnull @.str, ptr noundef nonnull @rkisp1_params_register.__key) #6
  %params4 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %params4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %params4, ptr %params4, align 4
  %prev.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %params4, ptr %prev.i, align 4
  %config_lock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %config_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rkisp1_params_register.__key.1, i16 noundef signext 3) #6
  %name = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 12
  %call8 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 32) #6
  %driver_data.i.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %params1, ptr %driver_data.i.i, align 4
  %ioctl_ops = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 24
  %4 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rkisp1_params_ioctl, ptr %ioctl_ops, align 4
  %fops = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rkisp1_params_fops, ptr %fops, align 4
  %release = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 23
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 26
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vlock, ptr %lock, align 8
  %v4l2_dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 4
  %v4l2_dev10 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %v4l2_dev10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v4l2_dev, ptr %v4l2_dev10, align 4
  %queue = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 10
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %params1, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 201326592, ptr %device_caps, align 8
  %vfl_dir = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2, i32 14
  %11 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %vfl_dir, align 4
  %12 = ptrtoint ptr %params1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 14, ptr %params1, align 4
  %io_modes.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 19, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 10
  %14 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %params1, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 7
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rkisp1_params_vb2_ops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 8
  %16 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 776, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 13
  %18 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %lock.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vlock, ptr %lock.i, align 4
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %params1) #6
  %fmt.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 5, i32 1
  %20 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1345407826, ptr %fmt.i, align 4
  %buffersize.i = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 5, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %buffersize.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3048, ptr %buffersize.i, align 4
  %22 = ptrtoint ptr %rkisp13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp13, align 8
  %hw_revision.i = getelementptr inbounds %struct.rkisp1_device, ptr %23, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp.i = icmp eq i32 %25, 12
  %spec.select.i = select i1 %cmp.i, ptr @rkisp1_v12_params_ops, ptr @rkisp1_v10_params_ops
  %26 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select.i, ptr %26, align 4
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %params1, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %flags, align 4
  %call14 = tail call i32 @media_entity_pads_init(ptr noundef %vdev2, i16 noundef zeroext 1, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i63 = tail call i32 @__video_register_device(ptr noundef %vdev2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool16.not = icmp eq i32 %call.i63, 0
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %do.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %call.i63) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i63, %do.end20 ], [ %call14, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_params_unregister(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev2 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 12, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_params_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.9, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.10, i32 noundef 32) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_params_enum_fmt_meta_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %fmt = getelementptr inbounds %struct.rkisp1_params, ptr %1, i32 0, i32 5, i32 1
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
define internal i32 @rkisp1_params_g_fmt_meta_out(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %fmt, align 1
  %fmt3 = getelementptr inbounds %struct.rkisp1_params, ptr %7, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt3, align 4
  store i32 %10, ptr %fmt, align 1
  %buffersize = getelementptr inbounds %struct.rkisp1_params, ptr %7, i32 0, i32 5, i32 1, i32 0, i32 1
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
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkisp1_params_vb2_queue_setup(ptr nocapture noundef readnone %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_buffers, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 8)
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %num_buffers, align 4
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_planes, align 4
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3048, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_params_vb2_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.return_crit_edge, label %vb2_plane_size.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

vb2_plane_size.exit:                              ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3048, i32 %3)
  %cmp = icmp ult i32 %3, 3048
  br i1 %cmp, label %vb2_plane_size.exit.return_crit_edge, label %if.then.i5

vb2_plane_size.exit.return_crit_edge:             ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i5:                                       ; preds = %vb2_plane_size.exit
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3048, i32 %5)
  %cmp1.i = icmp ult i32 %5, 3048
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i5.vb2_set_plane_payload.exit_crit_edge

if.then.i5.vb2_set_plane_payload.exit_crit_edge:  ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i5
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !60

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i5.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %7, %if.then38.i ], [ 3048, %if.then.i5.vb2_set_plane_payload.exit_crit_edge ]
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
define internal void @rkisp1_params_vb2_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #6
  %2 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %3 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp_list, ptr %2, align 4
  %config_lock = getelementptr inbounds %struct.rkisp1_params, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %config_lock) #6
  %params1 = getelementptr inbounds %struct.rkisp1_params, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %params1, align 4
  %cmp.i.not.i = icmp eq ptr %6, %params1
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.rkisp1_params, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %tmp_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %params1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %params1, ptr %params1, align 4
  store ptr %params1, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %config_lock) #6
  %15 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn13 = load ptr, ptr %tmp_list, align 4
  %cmp.not14 = icmp eq ptr %.pn13, %tmp_list
  br i1 %cmp.not14, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn15 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn13, %list_splice_init.exit.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn15, i32 -736
  call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #6
  %16 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %tmp_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_params_vb2_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %config_lock = getelementptr inbounds %struct.rkisp1_params, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %config_lock) #6
  %queue = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1
  %params4 = getelementptr inbounds %struct.rkisp1_params, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.rkisp1_params, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %params4) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %params4, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.rkisp1_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %config_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_lsc_matrix_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %pconfig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8808
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 -1728053248, i32 0
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i151 = getelementptr i8, ptr %9, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %cond) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i152 = getelementptr i8, ptr %13, i32 8712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %cond) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i153 = getelementptr i8, ptr %17, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %cond) #6, !srcloc !59
  %18 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %add.ptr.i154 = getelementptr i8, ptr %21, i32 8716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %cond) #6, !srcloc !59
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.end.for.cond5.preheader_crit_edge, %entry
  %i.0165 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.cond5.preheader_crit_edge ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader
  %j.0164 = phi i32 [ 0, %for.cond5.preheader ], [ %add55, %for.body7.for.body7_crit_edge ]
  %arrayidx8 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 %j.0164
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx8, align 2
  %24 = and i16 %23, 8191
  %and9 = zext i16 %24 to i32
  %add = or i32 %j.0164, 1
  %arrayidx12 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 %add
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx12, align 2
  %27 = and i16 %26, 8191
  %and14 = zext i16 %27 to i32
  %shl = shl nuw nsw i32 %and14, 13
  %or = or i32 %shl, %and9
  %28 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 8
  %add.ptr.i155 = getelementptr i8, ptr %32, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %30) #6, !srcloc !59
  %arrayidx17 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 %j.0164
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx17, align 2
  %35 = and i16 %34, 8191
  %and19 = zext i16 %35 to i32
  %arrayidx23 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 %add
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx23, align 2
  %38 = and i16 %37, 8191
  %and25 = zext i16 %38 to i32
  %shl26 = shl nuw nsw i32 %and25, 13
  %or27 = or i32 %shl26, %and19
  %39 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or27) #6
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %40, align 8
  %add.ptr.i156 = getelementptr i8, ptr %43, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %41) #6, !srcloc !59
  %arrayidx30 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 %j.0164
  %44 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx30, align 2
  %46 = and i16 %45, 8191
  %and32 = zext i16 %46 to i32
  %arrayidx36 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 %add
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx36, align 2
  %49 = and i16 %48, 8191
  %and38 = zext i16 %49 to i32
  %shl39 = shl nuw nsw i32 %and38, 13
  %or40 = or i32 %shl39, %and32
  %50 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %or40) #6
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 8
  %add.ptr.i157 = getelementptr i8, ptr %54, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %52) #6, !srcloc !59
  %arrayidx43 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 %j.0164
  %55 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx43, align 2
  %57 = and i16 %56, 8191
  %and45 = zext i16 %57 to i32
  %arrayidx49 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 %add
  %58 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx49, align 2
  %60 = and i16 %59, 8191
  %and51 = zext i16 %60 to i32
  %shl52 = shl nuw nsw i32 %and51, 13
  %or53 = or i32 %shl52, %and45
  %61 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %or53) #6
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %62, align 8
  %add.ptr.i158 = getelementptr i8, ptr %65, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %63) #6, !srcloc !59
  %add55 = add nuw nsw i32 %j.0164, 2
  %cmp6 = icmp ult i32 %j.0164, 14
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end:                                          ; preds = %for.body7
  %arrayidx58 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 16
  %66 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx58, align 2
  %68 = and i16 %67, 8191
  %and60 = zext i16 %68 to i32
  %69 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %71 = tail call i32 @llvm.bswap.i32(i32 %and60) #6
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %70, align 8
  %add.ptr.i159 = getelementptr i8, ptr %73, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %71) #6, !srcloc !59
  %arrayidx65 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 16
  %74 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx65, align 2
  %76 = and i16 %75, 8191
  %and67 = zext i16 %76 to i32
  %77 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %and67) #6
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %78, align 8
  %add.ptr.i160 = getelementptr i8, ptr %81, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %79) #6, !srcloc !59
  %arrayidx72 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 16
  %82 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx72, align 2
  %84 = and i16 %83, 8191
  %and74 = zext i16 %84 to i32
  %85 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %and74) #6
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %86, align 8
  %add.ptr.i161 = getelementptr i8, ptr %89, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %87) #6, !srcloc !59
  %arrayidx79 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 16
  %90 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx79, align 2
  %92 = and i16 %91, 8191
  %and81 = zext i16 %92 to i32
  %93 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 @llvm.bswap.i32(i32 %and81) #6
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %94, align 8
  %add.ptr.i162 = getelementptr i8, ptr %97, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %95) #6, !srcloc !59
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end85, label %for.end.for.cond5.preheader_crit_edge

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.end85:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %100 = shl nuw nsw i32 %and, 23
  %101 = xor i32 %100, 16777216
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 8
  %add.ptr.i163 = getelementptr i8, ptr %103, i32 8804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %101) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_goc_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rkisp1.i, align 8
  %7 = and i32 %4, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 8
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.019, 1
  %add = or i32 %mul, 1
  %arrayidx = getelementptr %struct.rkisp1_cif_isp_goc_config, ptr %arg, i32 0, i32 1, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %19 = and i16 %18, 4095
  %and = zext i16 %19 to i32
  %shl = shl nuw nsw i32 %and, 16
  %arrayidx3 = getelementptr %struct.rkisp1_cif_isp_goc_config, ptr %arg, i32 0, i32 1, i32 %mul
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx3, align 2
  %22 = and i16 %21, 4095
  %and5 = zext i16 %22 to i32
  %or = or i32 %shl, %and5
  %23 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rkisp1.i, align 8
  %mul8 = shl nuw nsw i32 %i.019, 2
  %add9 = add nuw nsw i32 %mul8, 1796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 8
  %add.ptr.i18 = getelementptr i8, ptr %27, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %25) #6, !srcloc !59
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_meas_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %awb_mode = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %awb_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %awb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp1, align 8
  %awb_ref_cr = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %awb_ref_cr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %awb_ref_cr, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %awb_ref_cb = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 8
  %6 = ptrtoint ptr %awb_ref_cb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %awb_ref_cb, align 2
  %conv1 = zext i8 %7 to i32
  %or = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !59
  %11 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rkisp1, align 8
  %max_y = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %max_y to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_y, align 4
  %conv3 = zext i8 %14 to i32
  %shl5 = shl nuw i32 %conv3, 24
  %min_y = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 3
  %15 = ptrtoint ptr %min_y to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_y, align 1
  %conv6 = zext i8 %16 to i32
  %shl8 = shl nuw nsw i32 %conv6, 16
  %or9 = or i32 %shl8, %shl5
  %max_csum = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %max_csum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_csum, align 2
  %conv10 = zext i8 %18 to i32
  %shl12 = shl nuw nsw i32 %conv10, 8
  %or13 = or i32 %or9, %shl12
  %min_c = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 5
  %19 = ptrtoint ptr %min_c to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %min_c, align 1
  %conv14 = zext i8 %20 to i32
  %or15 = or i32 %or13, %conv14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 8
  %add.ptr.i61 = getelementptr i8, ptr %23, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %21) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rkisp116 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rkisp116, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %add.ptr.i62 = getelementptr i8, ptr %27, i32 1296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %enable_ymax_cmp = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 9
  %29 = ptrtoint ptr %enable_ymax_cmp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enable_ymax_cmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %31 = and i32 %28, -67108977
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %and21 = or i32 %32, %masksel
  %frames = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 6
  %33 = ptrtoint ptr %frames to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %frames, align 4
  %35 = and i8 %34, 7
  %and23 = zext i8 %35 to i32
  %shl24 = shl nuw nsw i32 %and23, 28
  %or25 = or i32 %shl24, %and21
  %36 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rkisp116, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or25) #6
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %37, align 8
  %add.ptr.i63 = getelementptr i8, ptr %40, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %38) #6, !srcloc !59
  %41 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rkisp116, align 8
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 1
  %43 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %v_offs, align 2
  %conv28 = zext i16 %44 to i32
  %shl29 = shl nuw i32 %conv28, 16
  %45 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arg, align 4
  %conv31 = zext i16 %46 to i32
  %or32 = or i32 %shl29, %conv31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %or32) #6
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %42, align 8
  %add.ptr.i64 = getelementptr i8, ptr %49, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %47) #6, !srcloc !59
  %50 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rkisp116, align 8
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 3
  %52 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %v_size, align 2
  %conv35 = zext i16 %53 to i32
  %shl36 = shl nuw i32 %conv35, 16
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 2
  %54 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %h_size, align 4
  %conv38 = zext i16 %55 to i32
  %or39 = or i32 %shl36, %conv38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or39) #6
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %51, align 8
  %add.ptr.i65 = getelementptr i8, ptr %58, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %56) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_meas_enable_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1296
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = and i32 %4, -50331649
  br i1 %en, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %awb_mode = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %awb_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %awb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %reg_val.0.v = select i1 %cmp, i32 -2147483646, i32 2
  %reg_val.0 = or i32 %reg_val.0.v, %6
  %9 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %add.ptr.i15 = getelementptr i8, ptr %13, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %11) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1024
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %19 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rkisp1, align 8
  %21 = or i32 %18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %21) #6, !srcloc !59
  br label %if.end6

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %add.ptr.i16 = getelementptr i8, ptr %27, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %5) #6, !srcloc !59
  %28 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %31, i32 1024
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %33 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp1, align 8
  %35 = and i32 %32, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 8
  %add.ptr.i4.i19 = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i19, i32 %35) #6, !srcloc !59
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_gain_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %gain_green_r = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %gain_green_r to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gain_green_r, align 2
  %4 = and i16 %3, 1023
  %and = zext i16 %4 to i32
  %shl = shl nuw nsw i32 %and, 16
  %gain_green_b = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 3
  %5 = ptrtoint ptr %gain_green_b to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gain_green_b, align 2
  %conv1 = zext i16 %6 to i32
  %or = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arg, align 2
  %14 = and i16 %13, 1023
  %and4 = zext i16 %14 to i32
  %shl5 = shl nuw nsw i32 %and4, 16
  %gain_blue = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 2
  %15 = ptrtoint ptr %gain_blue to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gain_blue, align 2
  %conv6 = zext i16 %16 to i32
  %or7 = or i32 %shl5, %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7) #6
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %19, i32 1340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %17) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_aec_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 9728
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %5, 1
  %autostop = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %autostop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %autostop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %or = or i32 %and, 2
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %or2 = or i32 %spec.select, -2147483648
  %exp_ctrl.1 = select i1 %cmp, i32 %or2, i32 %spec.select
  %or5 = or i32 %exp_ctrl.1, 4
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 8
  %add.ptr.i41 = getelementptr i8, ptr %14, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %12) #6, !srcloc !59
  %15 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rkisp1, align 8
  %meas_window = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %v_offs, align 2
  %19 = and i16 %18, 8191
  %and8 = zext i16 %19 to i32
  %shl9 = shl nuw nsw i32 %and8, 16
  %20 = ptrtoint ptr %meas_window to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %meas_window, align 4
  %22 = and i16 %21, 8191
  %and12 = zext i16 %22 to i32
  %or13 = or i32 %shl9, %and12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or13) #6
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 8
  %add.ptr.i42 = getelementptr i8, ptr %25, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %23) #6, !srcloc !59
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_size, align 4
  %28 = udiv i16 %27, 9
  %narrow40 = add nuw nsw i16 %28, 2047
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %v_size, align 2
  %31 = udiv i16 %30, 9
  %narrow = add nuw nsw i16 %31, 2047
  %32 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rkisp1, align 8
  %34 = and i16 %narrow, 2046
  %and22 = zext i16 %34 to i32
  %shl23 = shl nuw nsw i32 %and22, 16
  %35 = and i16 %narrow40, 2047
  %and24 = zext i16 %35 to i32
  %or25 = or i32 %shl23, %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or25) #6
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %33, align 8
  %add.ptr.i43 = getelementptr i8, ptr %38, i32 9732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %36) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_hst_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %weight15x15 = alloca [225 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 225, ptr nonnull %weight15x15) #6
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 11264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = and i32 %4, 17235968
  %histogram_predivider = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %histogram_predivider to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %histogram_predivider, align 4
  %8 = shl i8 %7, 1
  %shl = zext i8 %8 to i32
  %9 = or i32 %5, 24
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %or6 = or i32 %10, %shl
  %11 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 8
  %add.ptr.i124 = getelementptr i8, ptr %15, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %13) #6, !srcloc !59
  %16 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp1, align 8
  %meas_window = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2
  %18 = ptrtoint ptr %meas_window to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %meas_window, align 2
  %20 = and i16 %19, 8191
  %and10 = zext i16 %20 to i32
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %v_offs, align 2
  %23 = and i16 %22, 8191
  %and13 = zext i16 %23 to i32
  %shl14 = shl nuw nsw i32 %and13, 16
  %or15 = or i32 %shl14, %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 8
  %add.ptr.i125 = getelementptr i8, ptr %26, i32 11272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %24) #6, !srcloc !59
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %h_size, align 2
  %29 = udiv i16 %28, 9
  %narrow = add nuw nsw i16 %29, 2047
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %v_size, align 2
  %32 = udiv i16 %31, 9
  %narrow123 = add nuw nsw i16 %32, 2047
  %33 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp1, align 8
  %35 = and i16 %narrow, 2047
  %and24 = zext i16 %35 to i32
  %36 = and i16 %narrow123, 2047
  %and25 = zext i16 %36 to i32
  %shl26 = shl nuw nsw i32 %and25, 16
  %or27 = or i32 %shl26, %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %or27) #6
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %add.ptr.i126 = getelementptr i8, ptr %39, i32 11268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %37) #6, !srcloc !59
  %uglygep132 = getelementptr i8, ptr %arg, i32 14
  %40 = getelementptr inbounds i8, ptr %weight15x15, i32 9
  %41 = call ptr @memset(ptr %40, i32 0, i32 216)
  %42 = call ptr @memcpy(ptr %weight15x15, ptr %uglygep132, i32 9)
  %uglygep.1 = getelementptr inbounds i8, ptr %weight15x15, i32 15
  %uglygep132.1 = getelementptr i8, ptr %arg, i32 23
  %43 = call ptr @memcpy(ptr %uglygep.1, ptr %uglygep132.1, i32 9)
  %uglygep.2 = getelementptr inbounds i8, ptr %weight15x15, i32 30
  %uglygep132.2 = getelementptr i8, ptr %arg, i32 32
  %44 = call ptr @memcpy(ptr %uglygep.2, ptr %uglygep132.2, i32 9)
  %uglygep.3 = getelementptr inbounds i8, ptr %weight15x15, i32 45
  %uglygep132.3 = getelementptr i8, ptr %arg, i32 41
  %45 = call ptr @memcpy(ptr %uglygep.3, ptr %uglygep132.3, i32 9)
  %uglygep.4 = getelementptr inbounds i8, ptr %weight15x15, i32 60
  %uglygep132.4 = getelementptr i8, ptr %arg, i32 50
  %46 = call ptr @memcpy(ptr %uglygep.4, ptr %uglygep132.4, i32 9)
  %uglygep.5 = getelementptr inbounds i8, ptr %weight15x15, i32 75
  %uglygep132.5 = getelementptr i8, ptr %arg, i32 59
  %47 = call ptr @memcpy(ptr %uglygep.5, ptr %uglygep132.5, i32 9)
  %uglygep.6 = getelementptr inbounds i8, ptr %weight15x15, i32 90
  %uglygep132.6 = getelementptr i8, ptr %arg, i32 68
  %48 = call ptr @memcpy(ptr %uglygep.6, ptr %uglygep132.6, i32 9)
  %uglygep.7 = getelementptr inbounds i8, ptr %weight15x15, i32 105
  %uglygep132.7 = getelementptr i8, ptr %arg, i32 77
  %49 = call ptr @memcpy(ptr %uglygep.7, ptr %uglygep132.7, i32 9)
  %uglygep.8 = getelementptr inbounds i8, ptr %weight15x15, i32 120
  %uglygep132.8 = getelementptr i8, ptr %arg, i32 86
  %50 = call ptr @memcpy(ptr %uglygep.8, ptr %uglygep132.8, i32 9)
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %entry
  %i.1131 = phi i32 [ %inc78, %for.body47.for.body47_crit_edge ], [ 0, %entry ]
  %mul48 = shl nuw nsw i32 %i.1131, 2
  %arrayidx50 = getelementptr [225 x i8], ptr %weight15x15, i32 0, i32 %mul48
  %51 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx50, align 1
  %53 = and i8 %52, 63
  %and52 = zext i8 %53 to i32
  %add54 = or i32 %mul48, 1
  %arrayidx55 = getelementptr [225 x i8], ptr %weight15x15, i32 0, i32 %add54
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx55, align 1
  %56 = and i8 %55, 63
  %and57 = zext i8 %56 to i32
  %shl58 = shl nuw nsw i32 %and57, 8
  %or59 = or i32 %shl58, %and52
  %add61 = or i32 %mul48, 2
  %arrayidx62 = getelementptr [225 x i8], ptr %weight15x15, i32 0, i32 %add61
  %57 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx62, align 1
  %59 = and i8 %58, 63
  %and64 = zext i8 %59 to i32
  %shl65 = shl nuw nsw i32 %and64, 16
  %or66 = or i32 %or59, %shl65
  %add68 = or i32 %mul48, 3
  %arrayidx69 = getelementptr [225 x i8], ptr %weight15x15, i32 0, i32 %add68
  %60 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx69, align 1
  %62 = and i8 %61, 63
  %and71 = zext i8 %62 to i32
  %shl72 = shl nuw nsw i32 %and71, 24
  %or73 = or i32 %or66, %shl72
  %63 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rkisp1, align 8
  %add76 = add nuw nsw i32 %mul48, 11324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %or73) #6
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %64, align 8
  %add.ptr.i127 = getelementptr i8, ptr %67, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %65) #6, !srcloc !59
  %inc78 = add nuw nsw i32 %i.1131, 1
  %exitcond.not = icmp eq i32 %inc78, 56
  br i1 %exitcond.not, label %for.end79, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

for.end79:                                        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx82 = getelementptr inbounds [225 x i8], ptr %weight15x15, i32 0, i32 224
  %68 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx82, align 1
  %70 = and i8 %69, 63
  %and84 = zext i8 %70 to i32
  %71 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %73 = shl nuw nsw i32 %and84, 24
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %72, align 8
  %add.ptr.i128 = getelementptr i8, ptr %75, i32 11548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %73) #6, !srcloc !59
  call void @llvm.lifetime.end.p0(i64 225, ptr nonnull %weight15x15) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_hst_enable_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 11264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = and i32 %4, -17235969
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  %and1 = shl i32 %7, 8
  %shl = and i32 %and1, 1792
  %8 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rkisp1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 11264
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  %16 = or i32 %5, 16777216
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %or2 = or i32 %17, %shl
  %or.i = or i32 %or2, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %18) #6, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rkisp1, align 8
  %23 = and i32 %4, -17235969
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 8
  %add.ptr.i4.i10 = getelementptr i8, ptr %25, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i10, i32 %23) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_afm_config_v12(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arg, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 3)
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rkisp1, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8192
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %8 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rkisp1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8192
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %13 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rkisp1, align 8
  %15 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %17, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp291.not = icmp eq i8 %2, 0
  br i1 %cmp291.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %entry
  %18 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1, align 8
  %arrayidx = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = and i16 %21, 8191
  %and = zext i16 %22 to i32
  %shl = shl nuw nsw i32 %and, 16
  %v_offs = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %v_offs, align 2
  %25 = and i16 %24, 8191
  %and9 = zext i16 %25 to i32
  %or = or i32 %shl, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 8
  %add.ptr.i86 = getelementptr i8, ptr %28, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %26) #6, !srcloc !59
  %29 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rkisp1, align 8
  %h_size = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_size, align 2
  %conv13 = zext i16 %32 to i32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %conv17 = zext i16 %34 to i32
  %add18 = add nuw nsw i32 %conv17, %conv13
  %and19 = shl i32 %add18, 16
  %shl20 = and i32 %and19, 536805376
  %v_size = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %v_size, align 2
  %conv23 = zext i16 %36 to i32
  %37 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %v_offs, align 2
  %conv27 = zext i16 %38 to i32
  %add28 = add nuw nsw i32 %conv27, %conv23
  %and29 = and i32 %add28, 8191
  %or30 = or i32 %and29, %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or30) #6
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %30, align 8
  %add.ptr.i87 = getelementptr i8, ptr %41, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %39) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not = icmp eq i8 %2, 1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %42 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rkisp1, align 8
  %arrayidx.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.1, align 2
  %46 = and i16 %45, 8191
  %and.1 = zext i16 %46 to i32
  %shl.1 = shl nuw nsw i32 %and.1, 16
  %v_offs.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %v_offs.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %v_offs.1, align 2
  %49 = and i16 %48, 8191
  %and9.1 = zext i16 %49 to i32
  %or.1 = or i32 %shl.1, %and9.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.1) #6
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %43, align 8
  %add.ptr.i86.1 = getelementptr i8, ptr %52, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.1, i32 %50) #6, !srcloc !59
  %53 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rkisp1, align 8
  %h_size.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 2
  %55 = ptrtoint ptr %h_size.1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %h_size.1, align 2
  %conv13.1 = zext i16 %56 to i32
  %57 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.1, align 2
  %conv17.1 = zext i16 %58 to i32
  %add18.1 = add nuw nsw i32 %conv17.1, %conv13.1
  %and19.1 = shl i32 %add18.1, 16
  %shl20.1 = and i32 %and19.1, 536805376
  %v_size.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 3
  %59 = ptrtoint ptr %v_size.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %v_size.1, align 2
  %conv23.1 = zext i16 %60 to i32
  %61 = ptrtoint ptr %v_offs.1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %v_offs.1, align 2
  %conv27.1 = zext i16 %62 to i32
  %add28.1 = add nuw nsw i32 %conv27.1, %conv23.1
  %and29.1 = and i32 %add28.1, 8191
  %or30.1 = or i32 %and29.1, %shl20.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %or30.1) #6
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %54, align 8
  %add.ptr.i87.1 = getelementptr i8, ptr %65, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.1, i32 %63) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rkisp1, align 8
  %arrayidx.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.2, align 2
  %70 = and i16 %69, 8191
  %and.2 = zext i16 %70 to i32
  %shl.2 = shl nuw nsw i32 %and.2, 16
  %v_offs.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 1
  %71 = ptrtoint ptr %v_offs.2 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %v_offs.2, align 2
  %73 = and i16 %72, 8191
  %and9.2 = zext i16 %73 to i32
  %or.2 = or i32 %shl.2, %and9.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.2) #6
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %67, align 8
  %add.ptr.i86.2 = getelementptr i8, ptr %76, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.2, i32 %74) #6, !srcloc !59
  %77 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rkisp1, align 8
  %h_size.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 2
  %79 = ptrtoint ptr %h_size.2 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %h_size.2, align 2
  %conv13.2 = zext i16 %80 to i32
  %81 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.2, align 2
  %conv17.2 = zext i16 %82 to i32
  %add18.2 = add nuw nsw i32 %conv17.2, %conv13.2
  %and19.2 = shl i32 %add18.2, 16
  %shl20.2 = and i32 %and19.2, 536805376
  %v_size.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 3
  %83 = ptrtoint ptr %v_size.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %v_size.2, align 2
  %conv23.2 = zext i16 %84 to i32
  %85 = ptrtoint ptr %v_offs.2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %v_offs.2, align 2
  %conv27.2 = zext i16 %86 to i32
  %add28.2 = add nuw nsw i32 %conv27.2, %conv23.2
  %and29.2 = and i32 %add28.2, 8191
  %or30.2 = or i32 %and29.2, %shl20.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %or30.2) #6
  %88 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %78, align 8
  %add.ptr.i87.2 = getelementptr i8, ptr %89, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.2, i32 %87) #6, !srcloc !59
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %90 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rkisp1, align 8
  %thres = getelementptr inbounds %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 2
  %92 = ptrtoint ptr %thres to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %thres, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %91, align 8
  %add.ptr.i88 = getelementptr i8, ptr %96, i32 8220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %94) #6, !srcloc !59
  %var_shift = getelementptr inbounds %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 3
  %97 = ptrtoint ptr %var_shift to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %var_shift, align 4
  %and34 = lshr i32 %98, 16
  %shr = and i32 %and34, 7
  %and36 = and i32 %98, 7
  %99 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rkisp1, align 8
  %shl39 = shl nuw nsw i32 %shr, 16
  %or42 = or i32 %shl39, %and36
  %shl44 = shl nuw nsw i32 %shr, 20
  %shl46 = shl nuw nsw i32 %and36, 4
  %or47 = or i32 %shl44, %shl46
  %or48 = or i32 %or42, %or47
  %shl50 = shl nuw nsw i32 %shr, 24
  %shl52 = shl nuw nsw i32 %and36, 8
  %or53 = or i32 %shl50, %shl52
  %or54 = or i32 %or48, %or53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %101 = tail call i32 @llvm.bswap.i32(i32 %or54) #6
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %100, align 8
  %add.ptr.i89 = getelementptr i8, ptr %103, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %101) #6, !srcloc !59
  %104 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %add.ptr.i90 = getelementptr i8, ptr %107, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %7) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_lsc_matrix_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %pconfig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8808
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 -1728053248, i32 0
  %6 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i151 = getelementptr i8, ptr %9, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %cond) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i152 = getelementptr i8, ptr %13, i32 8712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %cond) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i153 = getelementptr i8, ptr %17, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %cond) #6, !srcloc !59
  %18 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %add.ptr.i154 = getelementptr i8, ptr %21, i32 8716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %cond) #6, !srcloc !59
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.end.for.cond5.preheader_crit_edge, %entry
  %i.0165 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.cond5.preheader_crit_edge ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader
  %j.0164 = phi i32 [ 0, %for.cond5.preheader ], [ %add55, %for.body7.for.body7_crit_edge ]
  %arrayidx8 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 %j.0164
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx8, align 2
  %24 = and i16 %23, 4095
  %and9 = zext i16 %24 to i32
  %add = or i32 %j.0164, 1
  %arrayidx12 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 %add
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx12, align 2
  %27 = and i16 %26, 4095
  %and14 = zext i16 %27 to i32
  %shl = shl nuw nsw i32 %and14, 12
  %or = or i32 %shl, %and9
  %28 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 8
  %add.ptr.i155 = getelementptr i8, ptr %32, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %30) #6, !srcloc !59
  %arrayidx17 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 %j.0164
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx17, align 2
  %35 = and i16 %34, 4095
  %and19 = zext i16 %35 to i32
  %arrayidx23 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 %add
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx23, align 2
  %38 = and i16 %37, 4095
  %and25 = zext i16 %38 to i32
  %shl26 = shl nuw nsw i32 %and25, 12
  %or27 = or i32 %shl26, %and19
  %39 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or27) #6
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %40, align 8
  %add.ptr.i156 = getelementptr i8, ptr %43, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %41) #6, !srcloc !59
  %arrayidx30 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 %j.0164
  %44 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx30, align 2
  %46 = and i16 %45, 4095
  %and32 = zext i16 %46 to i32
  %arrayidx36 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 %add
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx36, align 2
  %49 = and i16 %48, 4095
  %and38 = zext i16 %49 to i32
  %shl39 = shl nuw nsw i32 %and38, 12
  %or40 = or i32 %shl39, %and32
  %50 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %or40) #6
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 8
  %add.ptr.i157 = getelementptr i8, ptr %54, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %52) #6, !srcloc !59
  %arrayidx43 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 %j.0164
  %55 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx43, align 2
  %57 = and i16 %56, 4095
  %and45 = zext i16 %57 to i32
  %arrayidx49 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 %add
  %58 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx49, align 2
  %60 = and i16 %59, 4095
  %and51 = zext i16 %60 to i32
  %shl52 = shl nuw nsw i32 %and51, 12
  %or53 = or i32 %shl52, %and45
  %61 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %or53) #6
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %62, align 8
  %add.ptr.i158 = getelementptr i8, ptr %65, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %63) #6, !srcloc !59
  %add55 = add nuw nsw i32 %j.0164, 2
  %cmp6 = icmp ult i32 %j.0164, 14
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end:                                          ; preds = %for.body7
  %arrayidx58 = getelementptr [17 x [17 x i16]], ptr %pconfig, i32 0, i32 %i.0165, i32 16
  %66 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx58, align 2
  %68 = and i16 %67, 4095
  %and60 = zext i16 %68 to i32
  %69 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %71 = tail call i32 @llvm.bswap.i32(i32 %and60) #6
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %70, align 8
  %add.ptr.i159 = getelementptr i8, ptr %73, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %71) #6, !srcloc !59
  %arrayidx65 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 1, i32 %i.0165, i32 16
  %74 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx65, align 2
  %76 = and i16 %75, 4095
  %and67 = zext i16 %76 to i32
  %77 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %and67) #6
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %78, align 8
  %add.ptr.i160 = getelementptr i8, ptr %81, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %79) #6, !srcloc !59
  %arrayidx72 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 2, i32 %i.0165, i32 16
  %82 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx72, align 2
  %84 = and i16 %83, 4095
  %and74 = zext i16 %84 to i32
  %85 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %and74) #6
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %86, align 8
  %add.ptr.i161 = getelementptr i8, ptr %89, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %87) #6, !srcloc !59
  %arrayidx79 = getelementptr %struct.rkisp1_cif_isp_lsc_config, ptr %pconfig, i32 0, i32 3, i32 %i.0165, i32 16
  %90 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx79, align 2
  %92 = and i16 %91, 4095
  %and81 = zext i16 %92 to i32
  %93 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 @llvm.bswap.i32(i32 %and81) #6
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %94, align 8
  %add.ptr.i162 = getelementptr i8, ptr %97, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %95) #6, !srcloc !59
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end85, label %for.end.for.cond5.preheader_crit_edge

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.end85:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %100 = shl nuw nsw i32 %and, 23
  %101 = xor i32 %100, 16777216
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 8
  %add.ptr.i163 = getelementptr i8, ptr %103, i32 8804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %101) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_goc_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rkisp1.i, align 8
  %7 = and i32 %4, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 8
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 1524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rkisp1.i, align 8
  %arrayidx = getelementptr %struct.rkisp1_cif_isp_goc_config, ptr %arg, i32 0, i32 1, i32 %i.09
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %20 to i32
  %mul = shl nuw nsw i32 %i.09, 2
  %add = add nuw nsw i32 %mul, 1528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 8
  %add.ptr.i8 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %21) #6, !srcloc !59
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_meas_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %awb_mode = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %awb_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %awb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rkisp1, align 8
  %awb_ref_cr = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %awb_ref_cr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %awb_ref_cr, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %awb_ref_cb = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 8
  %6 = ptrtoint ptr %awb_ref_cb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %awb_ref_cb, align 2
  %conv1 = zext i8 %7 to i32
  %or = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !59
  %11 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rkisp1, align 8
  %max_y = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %max_y to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_y, align 4
  %conv3 = zext i8 %14 to i32
  %shl5 = shl nuw i32 %conv3, 24
  %min_y = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 3
  %15 = ptrtoint ptr %min_y to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_y, align 1
  %conv6 = zext i8 %16 to i32
  %shl8 = shl nuw nsw i32 %conv6, 16
  %or9 = or i32 %shl8, %shl5
  %max_csum = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %max_csum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_csum, align 2
  %conv10 = zext i8 %18 to i32
  %shl12 = shl nuw nsw i32 %conv10, 8
  %or13 = or i32 %or9, %shl12
  %min_c = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 5
  %19 = ptrtoint ptr %min_c to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %min_c, align 1
  %conv14 = zext i8 %20 to i32
  %or15 = or i32 %or13, %conv14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 8
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %21) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rkisp116 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rkisp116, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %add.ptr.i58 = getelementptr i8, ptr %27, i32 1296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %enable_ymax_cmp = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 9
  %29 = ptrtoint ptr %enable_ymax_cmp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enable_ymax_cmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  %31 = and i32 %28, -67108865
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %reg_val.0 = or i32 %masksel, %32
  %33 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp116, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 8
  %add.ptr.i59 = getelementptr i8, ptr %37, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %35) #6, !srcloc !59
  %38 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rkisp116, align 8
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 1
  %40 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %v_offs, align 2
  %conv23 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv23) #6
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %39, align 8
  %add.ptr.i60 = getelementptr i8, ptr %44, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %42) #6, !srcloc !59
  %45 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rkisp116, align 8
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arg, align 4
  %conv26 = zext i16 %48 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv26) #6
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %46, align 8
  %add.ptr.i61 = getelementptr i8, ptr %51, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %49) #6, !srcloc !59
  %52 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rkisp116, align 8
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 3
  %54 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %v_size, align 2
  %conv29 = zext i16 %55 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv29) #6
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %53, align 8
  %add.ptr.i62 = getelementptr i8, ptr %58, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %56) #6, !srcloc !59
  %59 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rkisp116, align 8
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_window, ptr %arg, i32 0, i32 2
  %61 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %h_size, align 4
  %conv32 = zext i16 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv32) #6
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %60, align 8
  %add.ptr.i63 = getelementptr i8, ptr %65, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %63) #6, !srcloc !59
  %66 = ptrtoint ptr %rkisp116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rkisp116, align 8
  %frames = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 6
  %68 = ptrtoint ptr %frames to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %frames, align 4
  %conv34 = zext i8 %69 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %70 = shl nuw i32 %conv34, 24
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %67, align 8
  %add.ptr.i64 = getelementptr i8, ptr %72, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %70) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_meas_enable_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1296
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = and i32 %4, -50331649
  br i1 %en, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %awb_mode = getelementptr inbounds %struct.rkisp1_cif_isp_awb_meas_config, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %awb_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %awb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %reg_val.0.v = select i1 %cmp, i32 -2147483646, i32 2
  %reg_val.0 = or i32 %reg_val.0.v, %6
  %9 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %add.ptr.i15 = getelementptr i8, ptr %13, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %11) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1024
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %19 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rkisp1, align 8
  %21 = or i32 %18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %21) #6, !srcloc !59
  br label %if.end6

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %add.ptr.i16 = getelementptr i8, ptr %27, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %5) #6, !srcloc !59
  %28 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %31, i32 1024
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %33 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp1, align 8
  %35 = and i32 %32, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 8
  %add.ptr.i4.i19 = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i19, i32 %35) #6, !srcloc !59
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_awb_gain_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %gain_green_r = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %gain_green_r to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gain_green_r, align 2
  %4 = and i16 %3, 1023
  %and = zext i16 %4 to i32
  %shl = shl nuw nsw i32 %and, 16
  %gain_green_b = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 3
  %5 = ptrtoint ptr %gain_green_b to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gain_green_b, align 2
  %conv1 = zext i16 %6 to i32
  %or = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arg, align 2
  %14 = and i16 %13, 1023
  %and4 = zext i16 %14 to i32
  %shl5 = shl nuw nsw i32 %and4, 16
  %gain_blue = getelementptr inbounds %struct.rkisp1_cif_isp_awb_gain_config, ptr %arg, i32 0, i32 2
  %15 = ptrtoint ptr %gain_blue to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gain_blue, align 2
  %conv6 = zext i16 %16 to i32
  %or7 = or i32 %shl5, %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7) #6
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %19, i32 1340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %17) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_aec_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 9728
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %5, 1
  %autostop = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %autostop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %autostop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %or = or i32 %and, 2
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %or2 = or i32 %spec.select, -2147483648
  %exp_ctrl.1 = select i1 %cmp, i32 %or2, i32 %spec.select
  %10 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %exp_ctrl.1) #6
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 8
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 9728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %12) #6, !srcloc !59
  %15 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rkisp1, align 8
  %meas_window = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2
  %17 = ptrtoint ptr %meas_window to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %meas_window, align 4
  %conv = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 8
  %add.ptr.i34 = getelementptr i8, ptr %21, i32 9732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %19) #6, !srcloc !59
  %22 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp1, align 8
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %v_offs, align 2
  %conv8 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv8) #6
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 8
  %add.ptr.i35 = getelementptr i8, ptr %28, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %26) #6, !srcloc !59
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %h_size, align 4
  %31 = udiv i16 %30, 5
  %narrow = add nuw nsw i16 %31, 2047
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_aec_config, ptr %arg, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %v_size, align 2
  %34 = udiv i16 %33, 5
  %narrow32 = add nuw nsw i16 %34, 2047
  %35 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rkisp1, align 8
  %37 = and i16 %narrow, 2047
  %and16 = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %and16) #6
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %add.ptr.i36 = getelementptr i8, ptr %40, i32 9740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %38) #6, !srcloc !59
  %41 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rkisp1, align 8
  %43 = and i16 %narrow32, 2046
  %and18 = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %and18) #6
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 8
  %add.ptr.i37 = getelementptr i8, ptr %46, i32 9744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %44) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_hst_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 9216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %5, 7
  %histogram_predivider = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %histogram_predivider to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %histogram_predivider, align 4
  %8 = and i8 %7, 127
  %and1 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %and1, 3
  %or = or i32 %shl, %and
  %9 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %add.ptr.i61 = getelementptr i8, ptr %13, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %11) #6, !srcloc !59
  %14 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp1, align 8
  %meas_window = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2
  %16 = ptrtoint ptr %meas_window to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %meas_window, align 2
  %conv4 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv4) #6
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  %add.ptr.i62 = getelementptr i8, ptr %20, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %18) #6, !srcloc !59
  %21 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rkisp1, align 8
  %v_offs = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %v_offs, align 2
  %conv7 = zext i16 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv7) #6
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 8
  %add.ptr.i63 = getelementptr i8, ptr %27, i32 9224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %25) #6, !srcloc !59
  %h_size = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %h_size, align 2
  %30 = udiv i16 %29, 5
  %div = zext i16 %30 to i32
  %sub = add nsw i32 %div, -1
  %v_size = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %v_size, align 2
  %33 = udiv i16 %32, 5
  %div12 = zext i16 %33 to i32
  %sub13 = add nsw i32 %div12, -1
  %34 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %add.ptr.i64 = getelementptr i8, ptr %38, i32 9228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %36) #6, !srcloc !59
  %39 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub13) #6
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %40, align 8
  %add.ptr.i65 = getelementptr i8, ptr %43, i32 9232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %41) #6, !srcloc !59
  %hist_weight = getelementptr inbounds %struct.rkisp1_cif_isp_hst_config, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %weight.069 = phi ptr [ %hist_weight, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.068 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %44 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rkisp1, align 8
  %46 = ptrtoint ptr %weight.069 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %weight.069, align 1
  %48 = and i8 %47, 31
  %and19 = zext i8 %48 to i32
  %arrayidx20 = getelementptr i8, ptr %weight.069, i32 1
  %49 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx20, align 1
  %51 = and i8 %50, 31
  %and22 = zext i8 %51 to i32
  %shl23 = shl nuw nsw i32 %and22, 8
  %or24 = or i32 %shl23, %and19
  %arrayidx25 = getelementptr i8, ptr %weight.069, i32 2
  %52 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx25, align 1
  %54 = and i8 %53, 31
  %and27 = zext i8 %54 to i32
  %shl28 = shl nuw nsw i32 %and27, 16
  %or29 = or i32 %or24, %shl28
  %arrayidx30 = getelementptr i8, ptr %weight.069, i32 3
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx30, align 1
  %57 = and i8 %56, 31
  %and32 = zext i8 %57 to i32
  %shl33 = shl nuw nsw i32 %and32, 24
  %or34 = or i32 %or29, %shl33
  %arrayidx35 = getelementptr [6 x i32], ptr @rkisp1_hst_config_v10.hist_weight_regs, i32 0, i32 %i.068
  %58 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %45, align 8
  %add.ptr.i66 = getelementptr i8, ptr %62, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %60) #6, !srcloc !59
  %inc = add nuw nsw i32 %i.068, 1
  %add.ptr = getelementptr i8, ptr %weight.069, i32 4
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rkisp1, align 8
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr, align 1
  %67 = and i8 %66, 31
  %and39 = zext i8 %67 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %68 = shl nuw nsw i32 %and39, 24
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 8
  %add.ptr.i67 = getelementptr i8, ptr %70, i32 9324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %68) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_hst_enable_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg, i1 noundef zeroext %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 9216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = and i32 %4, -117440513
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %or = or i32 %6, %8
  %9 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rkisp1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 9216
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %15 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rkisp1, align 8
  %or.i = or i32 %or, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %16, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %19, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %17) #6, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rkisp1, align 8
  %22 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %21, align 8
  %add.ptr.i4.i7 = getelementptr i8, ptr %24, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7, i32 %22) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkisp1_afm_config_v10(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arg, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 3)
  %rkisp1 = getelementptr inbounds %struct.rkisp1_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rkisp1, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8192
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %8 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rkisp1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8192
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %13 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rkisp1, align 8
  %15 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %17, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp266.not = icmp eq i8 %2, 0
  br i1 %cmp266.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %entry
  %18 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1, align 8
  %arrayidx = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = and i16 %21, 8191
  %and = zext i16 %22 to i32
  %shl = shl nuw nsw i32 %and, 16
  %v_offs = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %v_offs, align 2
  %25 = and i16 %24, 8191
  %and9 = zext i16 %25 to i32
  %or = or i32 %shl, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 8
  %add.ptr.i61 = getelementptr i8, ptr %28, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %26) #6, !srcloc !59
  %29 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rkisp1, align 8
  %h_size = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %h_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_size, align 2
  %conv13 = zext i16 %32 to i32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %conv17 = zext i16 %34 to i32
  %add18 = add nuw nsw i32 %conv17, %conv13
  %and19 = shl i32 %add18, 16
  %shl20 = and i32 %and19, 536805376
  %v_size = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %v_size, align 2
  %conv23 = zext i16 %36 to i32
  %37 = ptrtoint ptr %v_offs to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %v_offs, align 2
  %conv27 = zext i16 %38 to i32
  %add28 = add nuw nsw i32 %conv27, %conv23
  %and29 = and i32 %add28, 8191
  %or30 = or i32 %and29, %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or30) #6
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %30, align 8
  %add.ptr.i62 = getelementptr i8, ptr %41, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %39) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not = icmp eq i8 %2, 1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %42 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rkisp1, align 8
  %arrayidx.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.1, align 2
  %46 = and i16 %45, 8191
  %and.1 = zext i16 %46 to i32
  %shl.1 = shl nuw nsw i32 %and.1, 16
  %v_offs.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %v_offs.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %v_offs.1, align 2
  %49 = and i16 %48, 8191
  %and9.1 = zext i16 %49 to i32
  %or.1 = or i32 %shl.1, %and9.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.1) #6
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %43, align 8
  %add.ptr.i61.1 = getelementptr i8, ptr %52, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.1, i32 %50) #6, !srcloc !59
  %53 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rkisp1, align 8
  %h_size.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 2
  %55 = ptrtoint ptr %h_size.1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %h_size.1, align 2
  %conv13.1 = zext i16 %56 to i32
  %57 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.1, align 2
  %conv17.1 = zext i16 %58 to i32
  %add18.1 = add nuw nsw i32 %conv17.1, %conv13.1
  %and19.1 = shl i32 %add18.1, 16
  %shl20.1 = and i32 %and19.1, 536805376
  %v_size.1 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 1, i32 3
  %59 = ptrtoint ptr %v_size.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %v_size.1, align 2
  %conv23.1 = zext i16 %60 to i32
  %61 = ptrtoint ptr %v_offs.1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %v_offs.1, align 2
  %conv27.1 = zext i16 %62 to i32
  %add28.1 = add nuw nsw i32 %conv27.1, %conv23.1
  %and29.1 = and i32 %add28.1, 8191
  %or30.1 = or i32 %and29.1, %shl20.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %or30.1) #6
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %54, align 8
  %add.ptr.i62.1 = getelementptr i8, ptr %65, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.1, i32 %63) #6, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %exitcond.not.1 = icmp eq i8 %2, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rkisp1, align 8
  %arrayidx.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.2, align 2
  %70 = and i16 %69, 8191
  %and.2 = zext i16 %70 to i32
  %shl.2 = shl nuw nsw i32 %and.2, 16
  %v_offs.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 1
  %71 = ptrtoint ptr %v_offs.2 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %v_offs.2, align 2
  %73 = and i16 %72, 8191
  %and9.2 = zext i16 %73 to i32
  %or.2 = or i32 %shl.2, %and9.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.2) #6
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %67, align 8
  %add.ptr.i61.2 = getelementptr i8, ptr %76, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.2, i32 %74) #6, !srcloc !59
  %77 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rkisp1, align 8
  %h_size.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 2
  %79 = ptrtoint ptr %h_size.2 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %h_size.2, align 2
  %conv13.2 = zext i16 %80 to i32
  %81 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.2, align 2
  %conv17.2 = zext i16 %82 to i32
  %add18.2 = add nuw nsw i32 %conv17.2, %conv13.2
  %and19.2 = shl i32 %add18.2, 16
  %shl20.2 = and i32 %and19.2, 536805376
  %v_size.2 = getelementptr %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 1, i32 2, i32 3
  %83 = ptrtoint ptr %v_size.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %v_size.2, align 2
  %conv23.2 = zext i16 %84 to i32
  %85 = ptrtoint ptr %v_offs.2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %v_offs.2, align 2
  %conv27.2 = zext i16 %86 to i32
  %add28.2 = add nuw nsw i32 %conv27.2, %conv23.2
  %and29.2 = and i32 %add28.2, 8191
  %or30.2 = or i32 %and29.2, %shl20.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %or30.2) #6
  %88 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %78, align 8
  %add.ptr.i62.2 = getelementptr i8, ptr %89, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.2, i32 %87) #6, !srcloc !59
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %90 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rkisp1, align 8
  %thres = getelementptr inbounds %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 2
  %92 = ptrtoint ptr %thres to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %thres, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %91, align 8
  %add.ptr.i63 = getelementptr i8, ptr %96, i32 8220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %94) #6, !srcloc !59
  %97 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rkisp1, align 8
  %var_shift = getelementptr inbounds %struct.rkisp1_cif_isp_afc_config, ptr %arg, i32 0, i32 3
  %99 = ptrtoint ptr %var_shift to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %var_shift, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %98, align 8
  %add.ptr.i64 = getelementptr i8, ptr %103, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %101) #6, !srcloc !59
  %104 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rkisp1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %add.ptr.i65 = getelementptr i8, ptr %107, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %7) #6, !srcloc !59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @rkisp1_params_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1821, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rkisp1_params_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1823, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1825, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1850, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rkisp1_params_register._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @rkisp1_params_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rkisp1_hst_params_default_config, !17, !"rkisp1_hst_params_default_config", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1514, i32 47}
!18 = !{ptr @rkisp1_awb_params_default_config, !19, !"rkisp1_awb_params_default_config", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1498, i32 52}
!20 = !{ptr @rkisp1_aec_params_default_config, !21, !"rkisp1_aec_params_default_config", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1505, i32 47}
!22 = !{ptr @rkisp1_afc_params_default_config, !23, !"rkisp1_afc_params_default_config", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1526, i32 47}
!24 = distinct !{null, !25, !"full_range_coeff", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1077, i32 19}
!26 = distinct !{null, !27, !"limited_range_coeff", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1082, i32 19}
!28 = !{ptr @rkisp1_params_ioctl, !29, !"rkisp1_params_ioctl", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1685, i32 36}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1677, i32 23}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1679, i32 25}
!34 = !{ptr @rkisp1_params_fops, !35, !"rkisp1_params_fops", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1773, i32 42}
!36 = !{ptr @rkisp1_params_vb2_ops, !37, !"rkisp1_params_vb2_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1763, i32 29}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rkisp1_v12_params_ops, !42, !"rkisp1_v12_params_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1629, i32 33}
!43 = !{ptr @rkisp1_v10_params_ops, !44, !"rkisp1_v10_params_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 1617, i32 39}
!45 = !{ptr @rkisp1_hst_config_v10.hist_weight_regs, !46, !"hist_weight_regs", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-params.c", i32 789, i32 19}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 7204030}
!57 = !{i64 2156607409}
!58 = !{i64 2156606544}
!59 = !{i64 7203612}
!60 = !{!"branch_weights", i32 2000, i32 1}
