; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-v4l.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-v4l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
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
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.111 }
%union.anon.111 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@pwc_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwc_v4l:157:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@pwc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @pwc_g_volatile_ctrl, ptr null, ptr @pwc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@pwc_auto_white_balance_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 9963788, ptr null, i32 3, i64 0, i64 4, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @pwc_auto_whitebal_qmenu, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_autocontour_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025216, ptr @.str.11, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_contour_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025217, ptr @.str.12, i32 1, i64 0, i64 63, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_backlight_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 9963804, ptr null, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_flicker_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 9963809, ptr null, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_noise_reduction_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025218, ptr @.str.13, i32 1, i64 0, i64 3, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_save_user_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025221, ptr @.str.14, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_restore_user_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025222, ptr @.str.15, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_restore_factory_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025223, ptr @.str.16, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_awb_speed_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025219, ptr @.str.17, i32 1, i64 1, i64 32, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_awb_delay_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pwc_ctrl_ops, ptr null, i32 10025220, ptr @.str.18, i32 1, i64 0, i64 63, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pwc_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @pwc_querycap, ptr @pwc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @pwc_enum_input, ptr @pwc_g_input, ptr @pwc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwc_g_parm, ptr @pwc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @pwc_enum_framesizes, ptr @pwc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pwc_g_volatile_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013pwc: g_ctrl %s error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwc_g_volatile_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/pwc/pwc-v4l.c\00", [32 x i8] zeroinitializer }, align 32
@pwc_g_volatile_ctrl._entry_ptr = internal global ptr @pwc_g_volatile_ctrl._entry, section ".printk_index", align 4
@pwc_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013pwc: s_ctrl %s error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwc_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@pwc_s_ctrl._entry_ptr = internal global ptr @pwc_s_ctrl._entry, section ".printk_index", align 4
@pwc_auto_whitebal_qmenu = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Indoor (Incandescant Lighting) Mode\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Outdoor (Sunlight) Mode\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Indoor (Fluorescent Lighting) Mode\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Manual Mode\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Auto Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Auto contour\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Contour\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dynamic Noise Reduction\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Save User Settings\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Restore User Settings\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Restore Factory Settings\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto White Balance Speed\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto White Balance Delay\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@pwc_trace = external dso_local local_unnamed_addr global i32, align 4
@pwc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017pwc: ioctl(VIDIOC_G_FMT) return size %dx%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwc_g_fmt_vid_cap\00", [46 x i8] zeroinitializer }, align 32
@pwc_g_fmt_vid_cap._entry_ptr = internal global ptr @pwc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@pwc_vidioc_fill_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\017pwc: pwc_vidioc_fill_fmt() width=%d, height=%d, bytesperline=%d, sizeimage=%d, pixelformat=%c%c%c%c\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwc_vidioc_fill_fmt\00", [44 x i8] zeroinitializer }, align 32
@pwc_vidioc_fill_fmt._entry_ptr = internal global ptr @pwc_vidioc_fill_fmt._entry, section ".printk_index", align 4
@pwc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017pwc: Trying to set format to: width=%d height=%d fps=%d format=%c%c%c%c\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwc_s_fmt_vid_cap\00", [46 x i8] zeroinitializer }, align 32
@pwc_s_fmt_vid_cap._entry_ptr = internal global ptr @pwc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@pwc_s_fmt_vid_cap._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017pwc: pwc_set_video_mode(), return=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@pwc_s_fmt_vid_cap._entry_ptr.29 = internal global ptr @pwc_s_fmt_vid_cap._entry.27, section ".printk_index", align 4
@pwc_vidioc_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017pwc: Bad video type must be V4L2_BUF_TYPE_VIDEO_CAPTURE\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwc_vidioc_try_fmt\00", [45 x i8] zeroinitializer }, align 32
@pwc_vidioc_try_fmt._entry_ptr = internal global ptr @pwc_vidioc_try_fmt._entry, section ".printk_index", align 4
@pwc_vidioc_try_fmt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017pwc: codec1 is only supported for old pwc webcam\0A\00", [44 x i8] zeroinitializer }, align 32
@pwc_vidioc_try_fmt._entry_ptr.34 = internal global ptr @pwc_vidioc_try_fmt._entry.32, section ".printk_index", align 4
@pwc_vidioc_try_fmt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017pwc: codec23 is only supported for new pwc webcam\0A\00", [43 x i8] zeroinitializer }, align 32
@pwc_vidioc_try_fmt._entry_ptr.37 = internal global ptr @pwc_vidioc_try_fmt._entry.35, section ".printk_index", align 4
@pwc_vidioc_try_fmt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017pwc: Unsupported pixel format\0A\00", [63 x i8] zeroinitializer }, align 32
@pwc_vidioc_try_fmt._entry_ptr.40 = internal global ptr @pwc_vidioc_try_fmt._entry.38, section ".printk_index", align 4
@pwc_image_sizes = external dso_local local_unnamed_addr constant [6 x [2 x i32]], align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 826496848, i64 842093913, i64 843274064]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 9963788, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.50 = internal global [20 x i64] [i64 18, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963788, i64 9963792, i64 9963794, i64 9963804, i64 9963807, i64 9963809, i64 10025216, i64 10025218, i64 10025219, i64 10025220, i64 10025221, i64 10025222, i64 10025223, i64 10094849, i64 10094852]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 826496848, i64 842093913, i64 843274064]
@___asan_gen_.52 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 157, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"pwc_ctrl_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 33, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"pwc_auto_white_balance_cfg\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 52, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"pwc_autocontour_cfg\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 60, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"pwc_contour_cfg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 70, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"pwc_backlight_cfg\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 81, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"pwc_flicker_cfg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 90, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"pwc_noise_reduction_cfg\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 99, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"pwc_save_user_cfg\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 109, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"pwc_restore_user_cfg\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 116, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"pwc_restore_factory_cfg\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 123, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"pwc_awb_speed_cfg\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 130, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"pwc_awb_delay_cfg\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 140, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"pwc_ioctl_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1011, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 578, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 862, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"pwc_auto_whitebal_qmenu\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 43, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 44, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 45, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 46, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 47, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 48, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 64, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 74, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 103, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 113, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 120, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 127, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 134, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 144, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 483, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 912, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 893, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 397, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 463, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 473, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 414, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 423, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 429, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 434, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [35 x i8] c"../drivers/media/usb/pwc/pwc-v4l.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 494, i32 19 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @pwc_g_fmt_vid_cap._entry, ptr @pwc_g_fmt_vid_cap._entry_ptr, ptr @pwc_g_volatile_ctrl._entry, ptr @pwc_g_volatile_ctrl._entry_ptr, ptr @pwc_s_ctrl._entry, ptr @pwc_s_ctrl._entry_ptr, ptr @pwc_s_fmt_vid_cap._entry, ptr @pwc_s_fmt_vid_cap._entry.27, ptr @pwc_s_fmt_vid_cap._entry_ptr, ptr @pwc_s_fmt_vid_cap._entry_ptr.29, ptr @pwc_vidioc_fill_fmt._entry, ptr @pwc_vidioc_fill_fmt._entry_ptr, ptr @pwc_vidioc_try_fmt._entry, ptr @pwc_vidioc_try_fmt._entry.32, ptr @pwc_vidioc_try_fmt._entry.35, ptr @pwc_vidioc_try_fmt._entry.38, ptr @pwc_vidioc_try_fmt._entry_ptr, ptr @pwc_vidioc_try_fmt._entry_ptr.34, ptr @pwc_vidioc_try_fmt._entry_ptr.37, ptr @pwc_vidioc_try_fmt._entry_ptr.40, ptr @pwc_init_controls._key, ptr @.str, ptr @pwc_ctrl_ops, ptr @pwc_auto_white_balance_cfg, ptr @pwc_autocontour_cfg, ptr @pwc_contour_cfg, ptr @pwc_backlight_cfg, ptr @pwc_flicker_cfg, ptr @pwc_noise_reduction_cfg, ptr @pwc_save_user_cfg, ptr @pwc_restore_user_cfg, ptr @pwc_restore_factory_cfg, ptr @pwc_awb_speed_cfg, ptr @pwc_awb_delay_cfg, ptr @pwc_ioctl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pwc_auto_whitebal_qmenu, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_auto_white_balance_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_autocontour_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_contour_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_backlight_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_flicker_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_noise_reduction_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_save_user_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_restore_user_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_restore_factory_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_awb_speed_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_awb_delay_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_g_volatile_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_auto_whitebal_qmenu to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vidioc_fill_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_s_fmt_vid_cap._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vidioc_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vidioc_try_fmt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vidioc_try_fmt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_vidioc_try_fmt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_init_controls(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.v4l2_ctrl_config, align 8
  %def = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #7
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %def) #7
  %1 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %def, align 4, !annotation !119
  %ctrl_handler = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 39
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 20, ptr noundef nonnull @pwc_init_controls._key, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 11008, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %3)
  %cmp = icmp sgt i32 %3, 127
  br i1 %cmp, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %4 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %def, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false.if.end4_crit_edge
  %5 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def, align 4
  %conv = sext i32 %6 to i64
  %call5 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef %conv) #7
  %brightness = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 41
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %brightness, align 8
  %call6 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 9984, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end4.if.then11_crit_edge

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

lor.lhs.false8:                                   ; preds = %if.end4
  %8 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp9 = icmp sgt i32 %9, 63
  br i1 %cmp9, label %lor.lhs.false8.if.then11_crit_edge, label %lor.lhs.false8.if.end12_crit_edge

lor.lhs.false8.if.end12_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %if.end4.if.then11_crit_edge
  %10 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 31, ptr %def, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false8.if.end12_crit_edge
  %11 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def, align 4
  %conv13 = sext i32 %12 to i64
  %call14 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef %conv13) #7
  %contrast = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 42
  %13 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call14, ptr %contrast, align 4
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %15)
  %cmp15 = icmp sgt i32 %15, 674
  br i1 %cmp15, label %if.then17, label %if.end12.if.end37_crit_edge

if.end12.if.end37_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 730, i32 %15)
  %cmp19 = icmp ult i32 %15, 730
  %spec.select = select i1 %cmp19, i16 5888, i16 5632
  %16 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 40
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.select, ptr %16, align 4
  %call25 = call i32 @pwc_get_s8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext %spec.select, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.then17.if.then33_crit_edge

if.then17.if.then33_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

lor.lhs.false27:                                  ; preds = %if.then17
  %18 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %def, align 4
  %20 = add i32 %19, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201, i32 %20)
  %21 = icmp ult i32 %20, -201
  br i1 %21, label %lor.lhs.false27.if.then33_crit_edge, label %lor.lhs.false27.if.end34_crit_edge

lor.lhs.false27.if.end34_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false27.if.then33_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false27.if.then33_crit_edge, %if.then17.if.then33_crit_edge
  %22 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %def, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %lor.lhs.false27.if.end34_crit_edge
  %23 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %def, align 4
  %conv35 = sext i32 %24 to i64
  %call36 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963778, i64 noundef -100, i64 noundef 100, i64 noundef 1, i64 noundef %conv35) #7
  %saturation = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 43
  %25 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call36, ptr %saturation, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end12.if.end37_crit_edge
  %call38 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 11264, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end37.if.then43_crit_edge

if.end37.if.then43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

lor.lhs.false40:                                  ; preds = %if.end37
  %26 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %27)
  %cmp41 = icmp sgt i32 %27, 31
  br i1 %cmp41, label %lor.lhs.false40.if.then43_crit_edge, label %lor.lhs.false40.if.end44_crit_edge

lor.lhs.false40.if.end44_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

lor.lhs.false40.if.then43_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false40.if.then43_crit_edge, %if.end37.if.then43_crit_edge
  %28 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %def, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false40.if.end44_crit_edge
  %29 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %def, align 4
  %conv45 = sext i32 %30 to i64
  %call46 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef %conv45) #7
  %gamma = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 44
  %31 = ptrtoint ptr %gamma to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call46, ptr %gamma, align 4
  %call47 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 4096, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.end44.if.then52_crit_edge

if.end44.if.then52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false49:                                  ; preds = %if.end44
  %32 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp50 = icmp sgt i32 %33, 4
  br i1 %cmp50, label %lor.lhs.false49.if.then52_crit_edge, label %lor.lhs.false49.if.end53_crit_edge

lor.lhs.false49.if.end53_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %if.end44.if.then52_crit_edge
  %34 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %def, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false49.if.end53_crit_edge
  %35 = call ptr @memcpy(ptr %cfg, ptr @pwc_auto_white_balance_cfg, i32 112)
  %call54 = call ptr @v4l2_ctrl_get_name(i32 noundef 9963788) #7
  %name = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 3
  %36 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call54, ptr %name, align 4
  %37 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %def, align 4
  %conv55 = sext i32 %38 to i64
  %def56 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 8
  %39 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv55, ptr %def56, align 8
  %call57 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %40 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 45
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call57, ptr %40, align 8
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end53.cleanup.sink.split_crit_edge, label %if.end61

if.end53.cleanup.sink.split_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end61:                                         ; preds = %if.end53
  %call62 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 4864, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.if.end65_crit_edge, label %if.then64

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 127, ptr %def, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  %43 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %def, align 4
  %conv66 = sext i32 %44 to i64
  %call67 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %conv66) #7
  %red_balance = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 45, i32 1
  %45 = ptrtoint ptr %red_balance to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call67, ptr %red_balance, align 4
  %call68 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 5120, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end65.if.end71_crit_edge, label %if.then70

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 127, ptr %def, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end65.if.end71_crit_edge
  %47 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %def, align 4
  %conv72 = sext i32 %48 to i64
  %call73 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %conv72) #7
  %blue_balance = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 45, i32 2
  %49 = ptrtoint ptr %blue_balance to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call73, ptr %blue_balance, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %40, i8 noundef zeroext 3, i1 noundef zeroext true) #7
  %call75 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 8192, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %if.end71.if.then82_crit_edge

if.end71.if.then82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

lor.lhs.false77:                                  ; preds = %if.end71
  %50 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %def, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %lor.lhs.false77.if.then82_crit_edge [
    i32 0, label %lor.lhs.false77.if.end83_crit_edge
    i32 255, label %lor.lhs.false77.if.end83_crit_edge455
  ]

lor.lhs.false77.if.end83_crit_edge455:            ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

lor.lhs.false77.if.end83_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

lor.lhs.false77.if.then82_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.then82:                                        ; preds = %lor.lhs.false77.if.then82_crit_edge, %if.end71.if.then82_crit_edge
  %53 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %def, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %lor.lhs.false77.if.end83_crit_edge, %lor.lhs.false77.if.end83_crit_edge455
  %54 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp84 = icmp eq i32 %55, 0
  %56 = zext i1 %cmp84 to i64
  %call87 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef %56) #7
  %57 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 46
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call87, ptr %57, align 4
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %if.end83.cleanup.sink.split_crit_edge, label %if.end92

if.end83.cleanup.sink.split_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end92:                                         ; preds = %if.end83
  %call93 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 8448, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %if.end92.if.then98_crit_edge

if.end92.if.then98_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

lor.lhs.false95:                                  ; preds = %if.end92
  %59 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %60)
  %cmp96 = icmp sgt i32 %60, 63
  br i1 %cmp96, label %lor.lhs.false95.if.then98_crit_edge, label %lor.lhs.false95.if.end99_crit_edge

lor.lhs.false95.if.end99_crit_edge:               ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

lor.lhs.false95.if.then98_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false95.if.then98_crit_edge, %if.end92.if.then98_crit_edge
  %61 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 31, ptr %def, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %lor.lhs.false95.if.end99_crit_edge
  %62 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %def, align 4
  %conv100 = sext i32 %63 to i64
  %call101 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef %conv100) #7
  %gain = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 46, i32 1
  %64 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call101, ptr %gain, align 4
  %65 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type, align 8
  %67 = add i32 %66, -675
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %67)
  %68 = icmp ult i32 %67, 25
  br i1 %68, label %if.then109, label %if.else140

if.then109:                                       ; preds = %if.end99
  %call110 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 8704, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.then109.if.then118_crit_edge

if.then109.if.then118_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

lor.lhs.false112:                                 ; preds = %if.then109
  %69 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %def, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %70, label %lor.lhs.false112.if.then118_crit_edge [
    i32 0, label %lor.lhs.false112.if.end119_crit_edge
    i32 255, label %lor.lhs.false112.if.end119_crit_edge456
  ]

lor.lhs.false112.if.end119_crit_edge456:          ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

lor.lhs.false112.if.end119_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

lor.lhs.false112.if.then118_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false112.if.then118_crit_edge, %if.then109.if.then118_crit_edge
  %72 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %def, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %lor.lhs.false112.if.end119_crit_edge, %lor.lhs.false112.if.end119_crit_edge456
  %73 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp120 = icmp ne i32 %74, 0
  %conv122 = zext i1 %cmp120 to i8
  %call123 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext %conv122) #7
  %75 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 47
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call123, ptr %75, align 8
  %tobool125.not = icmp eq ptr %call123, null
  br i1 %tobool125.not, label %if.end119.cleanup.sink.split_crit_edge, label %if.end128

if.end119.cleanup.sink.split_crit_edge:           ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end128:                                        ; preds = %if.end119
  %call129 = call i32 @pwc_get_u16_ctrl(ptr noundef %pdev, i8 noundef zeroext 6, i16 noundef zeroext 1536, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %lor.lhs.false131, label %if.end128.if.then134_crit_edge

if.end128.if.then134_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

lor.lhs.false131:                                 ; preds = %if.end128
  %77 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 655, i32 %78)
  %cmp132 = icmp sgt i32 %78, 655
  br i1 %cmp132, label %lor.lhs.false131.if.then134_crit_edge, label %lor.lhs.false131.if.end135_crit_edge

lor.lhs.false131.if.end135_crit_edge:             ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

lor.lhs.false131.if.then134_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false131.if.then134_crit_edge, %if.end128.if.then134_crit_edge
  %79 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 655, ptr %def, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %lor.lhs.false131.if.end135_crit_edge
  %80 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %def, align 4
  %conv136 = sext i32 %81 to i64
  %call137 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 655, i64 noundef 1, i64 noundef %conv136) #7
  %exposure = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 47, i32 1
  %82 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call137, ptr %exposure, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %57, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %75, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  br label %if.end164

if.else140:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %66)
  %cmp142 = icmp sgt i32 %66, 699
  br i1 %cmp142, label %if.then144, label %if.else140.if.end164_crit_edge

if.else140.if.end164_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then144:                                       ; preds = %if.else140
  %call145 = call i32 @pwc_get_u16_ctrl(ptr noundef %pdev, i8 noundef zeroext 6, i16 noundef zeroext 1536, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %lor.lhs.false147, label %if.then144.if.then150_crit_edge

if.then144.if.then150_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

lor.lhs.false147:                                 ; preds = %if.then144
  %83 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %84)
  %cmp148 = icmp sgt i32 %84, 255
  br i1 %cmp148, label %lor.lhs.false147.if.then150_crit_edge, label %lor.lhs.false147.if.end151_crit_edge

lor.lhs.false147.if.end151_crit_edge:             ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

lor.lhs.false147.if.then150_crit_edge:            ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

if.then150:                                       ; preds = %lor.lhs.false147.if.then150_crit_edge, %if.then144.if.then150_crit_edge
  %85 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 255, ptr %def, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %lor.lhs.false147.if.end151_crit_edge
  %86 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %def, align 4
  %conv152 = sext i32 %87 to i64
  %call153 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %conv152) #7
  %exposure154 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 47, i32 1
  %88 = ptrtoint ptr %exposure154 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call153, ptr %exposure154, align 4
  %89 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %57, align 4
  %autogain_expo_cluster = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 59
  %91 = ptrtoint ptr %autogain_expo_cluster to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %autogain_expo_cluster, align 8
  %92 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gain, align 4
  %arrayidx158 = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 59, i32 1
  %94 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %arrayidx158, align 4
  %arrayidx161 = getelementptr %struct.pwc_device, ptr %pdev, i32 0, i32 59, i32 2
  %95 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call153, ptr %arrayidx161, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %autogain_expo_cluster, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %if.end164

if.end164:                                        ; preds = %if.end151, %if.else140.if.end164_crit_edge, %if.end135
  %call165 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 5376, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %if.end164.if.then173_crit_edge

if.end164.if.then173_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173

lor.lhs.false167:                                 ; preds = %if.end164
  %96 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %def, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %97, label %lor.lhs.false167.if.then173_crit_edge [
    i32 0, label %lor.lhs.false167.if.end174_crit_edge
    i32 255, label %lor.lhs.false167.if.end174_crit_edge457
  ]

lor.lhs.false167.if.end174_crit_edge457:          ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

lor.lhs.false167.if.end174_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

lor.lhs.false167.if.then173_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173

if.then173:                                       ; preds = %lor.lhs.false167.if.then173_crit_edge, %if.end164.if.then173_crit_edge
  %99 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 255, ptr %def, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %lor.lhs.false167.if.end174_crit_edge, %lor.lhs.false167.if.end174_crit_edge457
  %100 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp175 = icmp eq i32 %101, 0
  %conv177 = zext i1 %cmp175 to i8
  %call178 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext %conv177) #7
  %colorfx = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 48
  %102 = ptrtoint ptr %colorfx to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call178, ptr %colorfx, align 4
  %call179 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 9472, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %lor.lhs.false181, label %if.end174.if.then187_crit_edge

if.end174.if.then187_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then187

lor.lhs.false181:                                 ; preds = %if.end174
  %103 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %def, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %104, label %lor.lhs.false181.if.then187_crit_edge [
    i32 0, label %lor.lhs.false181.if.end188_crit_edge
    i32 255, label %lor.lhs.false181.if.end188_crit_edge458
  ]

lor.lhs.false181.if.end188_crit_edge458:          ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

lor.lhs.false181.if.end188_crit_edge:             ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

lor.lhs.false181.if.then187_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then187

if.then187:                                       ; preds = %lor.lhs.false181.if.then187_crit_edge, %if.end174.if.then187_crit_edge
  %106 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %def, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %lor.lhs.false181.if.end188_crit_edge, %lor.lhs.false181.if.end188_crit_edge458
  %107 = call ptr @memcpy(ptr %cfg, ptr @pwc_autocontour_cfg, i32 112)
  %108 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp189 = icmp eq i32 %109, 0
  %110 = zext i1 %cmp189 to i64
  %111 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %def56, align 8
  %call193 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %112 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 49
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call193, ptr %112, align 8
  %tobool195.not = icmp eq ptr %call193, null
  br i1 %tobool195.not, label %if.end188.cleanup.sink.split_crit_edge, label %if.end198

if.end188.cleanup.sink.split_crit_edge:           ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end198:                                        ; preds = %if.end188
  %call199 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 9216, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %lor.lhs.false201, label %if.end198.if.then204_crit_edge

if.end198.if.then204_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then204

lor.lhs.false201:                                 ; preds = %if.end198
  %114 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %115)
  %cmp202 = icmp sgt i32 %115, 63
  br i1 %cmp202, label %lor.lhs.false201.if.then204_crit_edge, label %lor.lhs.false201.if.end205_crit_edge

lor.lhs.false201.if.end205_crit_edge:             ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

lor.lhs.false201.if.then204_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then204

if.then204:                                       ; preds = %lor.lhs.false201.if.then204_crit_edge, %if.end198.if.then204_crit_edge
  %116 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 31, ptr %def, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %lor.lhs.false201.if.end205_crit_edge
  %117 = call ptr @memcpy(ptr %cfg, ptr @pwc_contour_cfg, i32 112)
  %118 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %def, align 4
  %conv206 = sext i32 %119 to i64
  %120 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv206, ptr %def56, align 8
  %call208 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %contour = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 49, i32 1
  %121 = ptrtoint ptr %contour to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call208, ptr %contour, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %112, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  %call210 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 9728, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %lor.lhs.false212, label %if.end205.if.then218_crit_edge

if.end205.if.then218_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then218

lor.lhs.false212:                                 ; preds = %if.end205
  %122 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %def, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %123, label %lor.lhs.false212.if.then218_crit_edge [
    i32 0, label %lor.lhs.false212.if.end219_crit_edge
    i32 255, label %lor.lhs.false212.if.end219_crit_edge459
  ]

lor.lhs.false212.if.end219_crit_edge459:          ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

lor.lhs.false212.if.end219_crit_edge:             ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

lor.lhs.false212.if.then218_crit_edge:            ; preds = %lor.lhs.false212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then218

if.then218:                                       ; preds = %lor.lhs.false212.if.then218_crit_edge, %if.end205.if.then218_crit_edge
  %125 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %def, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %lor.lhs.false212.if.end219_crit_edge, %lor.lhs.false212.if.end219_crit_edge459
  %126 = call ptr @memcpy(ptr %cfg, ptr @pwc_backlight_cfg, i32 112)
  %call221 = call ptr @v4l2_ctrl_get_name(i32 noundef 9963804) #7
  %127 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call221, ptr %name, align 4
  %128 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp223 = icmp eq i32 %129, 0
  %130 = zext i1 %cmp223 to i64
  %131 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %def56, align 8
  %call227 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %backlight = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 50
  %132 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call227, ptr %backlight, align 8
  %call228 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 10496, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %lor.lhs.false230, label %if.end219.if.then236_crit_edge

if.end219.if.then236_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then236

lor.lhs.false230:                                 ; preds = %if.end219
  %133 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %def, align 4
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %134, label %lor.lhs.false230.if.then236_crit_edge [
    i32 0, label %lor.lhs.false230.if.end237_crit_edge
    i32 255, label %lor.lhs.false230.if.end237_crit_edge460
  ]

lor.lhs.false230.if.end237_crit_edge460:          ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

lor.lhs.false230.if.end237_crit_edge:             ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

lor.lhs.false230.if.then236_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then236

if.then236:                                       ; preds = %lor.lhs.false230.if.then236_crit_edge, %if.end219.if.then236_crit_edge
  %136 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %def, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %lor.lhs.false230.if.end237_crit_edge, %lor.lhs.false230.if.end237_crit_edge460
  %137 = call ptr @memcpy(ptr %cfg, ptr @pwc_flicker_cfg, i32 112)
  %call239 = call ptr @v4l2_ctrl_get_name(i32 noundef 9963809) #7
  %138 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call239, ptr %name, align 4
  %139 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp241 = icmp eq i32 %140, 0
  %141 = zext i1 %cmp241 to i64
  %142 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %def56, align 8
  %call245 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %flicker = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 51
  %143 = ptrtoint ptr %flicker to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call245, ptr %flicker, align 4
  %call246 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 2, i16 noundef zeroext 10240, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %lor.lhs.false248, label %if.end237.if.then251_crit_edge

if.end237.if.then251_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

lor.lhs.false248:                                 ; preds = %if.end237
  %144 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp249 = icmp sgt i32 %145, 3
  br i1 %cmp249, label %lor.lhs.false248.if.then251_crit_edge, label %lor.lhs.false248.if.end252_crit_edge

lor.lhs.false248.if.end252_crit_edge:             ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

lor.lhs.false248.if.then251_crit_edge:            ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

if.then251:                                       ; preds = %lor.lhs.false248.if.then251_crit_edge, %if.end237.if.then251_crit_edge
  %146 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %def, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then251, %lor.lhs.false248.if.end252_crit_edge
  %147 = call ptr @memcpy(ptr %cfg, ptr @pwc_noise_reduction_cfg, i32 112)
  %148 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %def, align 4
  %conv253 = sext i32 %149 to i64
  %150 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %conv253, ptr %def56, align 8
  %call255 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %noise_reduction = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 52
  %151 = ptrtoint ptr %noise_reduction to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call255, ptr %noise_reduction, align 8
  %call256 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_save_user_cfg, ptr noundef null) #7
  %save_user = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 53
  %152 = ptrtoint ptr %save_user to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call256, ptr %save_user, align 4
  %call257 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_restore_user_cfg, ptr noundef null) #7
  %restore_user = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 54
  %153 = ptrtoint ptr %restore_user to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call257, ptr %restore_user, align 8
  %tobool259.not = icmp eq ptr %call257, null
  br i1 %tobool259.not, label %if.end252.if.end262_crit_edge, label %if.then260

if.end252.if.end262_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end262

if.then260:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call257, i32 0, i32 20
  %154 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags, align 4
  %or = or i32 %155, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end252.if.end262_crit_edge
  %call263 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_restore_factory_cfg, ptr noundef null) #7
  %restore_factory = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 55
  %156 = ptrtoint ptr %restore_factory to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call263, ptr %restore_factory, align 4
  %tobool265.not = icmp eq ptr %call263, null
  br i1 %tobool265.not, label %if.end262.if.end270_crit_edge, label %if.then266

if.end262.if.end270_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270

if.then266:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  %flags268 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call263, i32 0, i32 20
  %157 = ptrtoint ptr %flags268 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags268, align 4
  %or269 = or i32 %158, 8
  store i32 %or269, ptr %flags268, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %if.end262.if.end270_crit_edge
  %call271 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 4352, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %lor.lhs.false273, label %if.end270.if.then279_crit_edge

if.end270.if.then279_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

lor.lhs.false273:                                 ; preds = %if.end270
  %159 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %def, align 4
  %161 = add i32 %160, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %161)
  %162 = icmp ult i32 %161, -32
  br i1 %162, label %lor.lhs.false273.if.then279_crit_edge, label %lor.lhs.false273.if.end280_crit_edge

lor.lhs.false273.if.end280_crit_edge:             ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end280

lor.lhs.false273.if.then279_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then279

if.then279:                                       ; preds = %lor.lhs.false273.if.then279_crit_edge, %if.end270.if.then279_crit_edge
  %163 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %def, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %lor.lhs.false273.if.end280_crit_edge
  %164 = call ptr @memcpy(ptr %cfg, ptr @pwc_awb_speed_cfg, i32 112)
  %165 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %def, align 4
  %conv281 = sext i32 %166 to i64
  %167 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv281, ptr %def56, align 8
  %call283 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %awb_speed = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 56
  %168 = ptrtoint ptr %awb_speed to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call283, ptr %awb_speed, align 8
  %call284 = call i32 @pwc_get_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 4, i16 noundef zeroext 4608, ptr noundef nonnull %def) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %lor.lhs.false286, label %if.end280.if.then289_crit_edge

if.end280.if.then289_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

lor.lhs.false286:                                 ; preds = %if.end280
  %169 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %170)
  %cmp287 = icmp sgt i32 %170, 63
  br i1 %cmp287, label %lor.lhs.false286.if.then289_crit_edge, label %lor.lhs.false286.if.end290_crit_edge

lor.lhs.false286.if.end290_crit_edge:             ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290

lor.lhs.false286.if.then289_crit_edge:            ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

if.then289:                                       ; preds = %lor.lhs.false286.if.then289_crit_edge, %if.end280.if.then289_crit_edge
  %171 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %def, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %lor.lhs.false286.if.end290_crit_edge
  %172 = call ptr @memcpy(ptr %cfg, ptr @pwc_awb_delay_cfg, i32 112)
  %173 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %def, align 4
  %conv291 = sext i32 %174 to i64
  %175 = ptrtoint ptr %def56 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %conv291, ptr %def56, align 8
  %call293 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #7
  %awb_delay = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 57
  %176 = ptrtoint ptr %awb_delay to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call293, ptr %awb_delay, align 4
  %features = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 10
  %177 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %features, align 8
  %and = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool294.not = icmp eq i32 %and, 0
  br i1 %tobool294.not, label %if.end290.cleanup.sink.split_crit_edge, label %if.end297

if.end290.cleanup.sink.split_crit_edge:           ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end297:                                        ; preds = %if.end290
  %call298 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 10094852, i64 noundef -4480, i64 noundef 4480, i64 noundef 64, i64 noundef 0) #7
  %179 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 58
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call298, ptr %179, align 8
  %tobool300.not = icmp eq ptr %call298, null
  br i1 %tobool300.not, label %if.end297.cleanup.sink.split_crit_edge, label %if.end303

if.end297.cleanup.sink.split_crit_edge:           ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end303:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  %call304 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 10094853, i64 noundef -1920, i64 noundef 1920, i64 noundef 64, i64 noundef 0) #7
  %motor_tilt = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 58, i32 1
  %181 = ptrtoint ptr %motor_tilt to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call304, ptr %motor_tilt, align 4
  %call305 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 10094854, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #7
  %motor_pan_reset = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 58, i32 2
  %182 = ptrtoint ptr %motor_pan_reset to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call305, ptr %motor_pan_reset, align 8
  %call306 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pwc_ctrl_ops, i32 noundef 10094855, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #7
  %motor_tilt_reset = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 58, i32 3
  %183 = ptrtoint ptr %motor_tilt_reset to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call306, ptr %motor_tilt_reset, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 4, ptr noundef %179) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end303, %if.end297.cleanup.sink.split_crit_edge, %if.end290.cleanup.sink.split_crit_edge, %if.end188.cleanup.sink.split_crit_edge, %if.end119.cleanup.sink.split_crit_edge, %if.end83.cleanup.sink.split_crit_edge, %if.end53.cleanup.sink.split_crit_edge
  %error308 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 39, i32 9
  %184 = ptrtoint ptr %error308 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %error308, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %185, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %def) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_u8_ctrl(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_s8_ctrl(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_u16_ctrl(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.19, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #7
  %udev = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %7, ptr noundef %devpath.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.pwc_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 647, i32 %6)
  %cmp = icmp slt i32 %6, 647
  %cond = select i1 %cmp, i32 826496848, i32 843274064
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %cond.sink = phi i32 [ %cond, %sw.bb ], [ 842093913, %entry.cleanup.sink.split_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.sink, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %4 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %6, i32 noundef %8) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %width7 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %width7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width7, align 8
  %height8 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height8, align 4
  %pixfmt = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixfmt, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = call ptr @memset(ptr %15, i32 0, i32 20)
  %17 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %fmt.i, align 4
  %height4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %height4.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %bytesperline.i, align 4
  %mul.i = mul i32 %10, 3
  %mul14.i = mul i32 %mul.i, %12
  %div59.i = lshr i32 %mul14.i, 1
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div59.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %colorspace.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %24 = load i32, ptr @pwc_trace, align 4
  %and.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end6.cleanup_crit_edge, label %do.end.i

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i = and i32 %14, 255
  %shr.i = lshr i32 %14, 8
  %and31.i = and i32 %shr.i, 255
  %shr34.i = lshr i32 %14, 16
  %and35.i = and i32 %shr34.i, 255
  %shr38.i = lshr i32 %14, 24
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %10, i32 noundef %12, i32 noundef %10, i32 noundef %div59.i, i32 noundef %and28.i, i32 noundef %and31.i, i32 noundef %and35.i, i32 noundef %shr38.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end6.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %compression = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compression) #7
  %2 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %compression, align 4
  %call1 = tail call fastcc i32 @pwc_vidioc_try_fmt(ptr noundef %1, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 2, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %7 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.do.end19_crit_edge, label %do.end

if.end4.do.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %vframes = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %vframes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vframes, align 8
  %and10 = and i32 %6, 255
  %14 = lshr i32 %6, 8
  %and11 = and i32 %14, 255
  %15 = lshr i32 %6, 16
  %and13 = and i32 %15, 255
  %16 = lshr i32 %6, 24
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %and10, i32 noundef %and11, i32 noundef %and13, i32 noundef %16) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end4.do.end19_crit_edge
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  %height23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height23, align 4
  %call24 = call i32 @pwc_set_video_mode(ptr noundef %1, i32 noundef %18, i32 noundef %20, i32 noundef %6, i32 noundef 30, ptr noundef nonnull %compression, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %21 = load i32, ptr @pwc_trace, align 4
  %and26 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.end19.do.end36_crit_edge, label %do.end31

do.end19.do.end36_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end31:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call24) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.end19.do.end36_crit_edge
  %width37 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 35
  %22 = ptrtoint ptr %width37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width37, align 8
  %height38 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 36
  %24 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height38, align 4
  %pixfmt = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixfmt, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %29 = call ptr @memset(ptr %28, i32 0, i32 20)
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %fmt, align 4
  %31 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %height23, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i, align 4
  %33 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %pixelformat5, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %23, ptr %bytesperline.i, align 4
  %mul.i = mul i32 %23, 3
  %mul14.i = mul i32 %mul.i, %25
  %div59.i = lshr i32 %mul14.i, 1
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div59.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %colorspace.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %37 = load i32, ptr @pwc_trace, align 4
  %and.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end36.cleanup_crit_edge, label %do.end.i

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i = and i32 %27, 255
  %shr.i = lshr i32 %27, 8
  %and31.i = and i32 %shr.i, 255
  %shr34.i = lshr i32 %27, 16
  %and35.i = and i32 %shr34.i, 255
  %shr38.i = lshr i32 %27, 24
  %call.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %23, i32 noundef %25, i32 noundef %23, i32 noundef %div59.i, i32 noundef %and28.i, i32 noundef %and31.i, i32 noundef %and35.i, i32 noundef %shr38.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call24, %do.end36.cleanup_crit_edge ], [ %call24, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compression) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @pwc_vidioc_try_fmt(ptr noundef %1, ptr noundef %f)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.41, i32 noundef 32) #7
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pwc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %parm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = getelementptr inbounds i8, ptr %parm, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 196)
  %6 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %parm, align 4
  %parm2 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %readbuffers, align 4
  %8 = ptrtoint ptr %parm2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %parm2, align 4
  %vframes = getelementptr inbounds %struct.pwc_device, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %vframes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vframes, align 8
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %denominator, align 4
  %12 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %parm) #0 align 64 {
entry:
  %compression = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compression) #7
  %2 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %compression, align 4
  %3 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.end.if.end13_crit_edge, label %lor.lhs.false

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false.if.end13_crit_edge, label %if.else

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %8, %6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %lor.lhs.false.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %fps.0 = phi i32 [ %div, %if.else ], [ 30, %lor.lhs.false.if.end13_crit_edge ], [ 30, %if.end.if.end13_crit_edge ]
  %num_buffers.i = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 2, i32 21
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %width = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 36
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %pixfmt = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixfmt, align 4
  %call17 = call i32 @pwc_set_video_mode(ptr noundef %1, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %fps.0, ptr noundef nonnull %compression, i32 noundef 0) #7
  %call.i.i = call ptr @video_devdata(ptr noundef %file) #7
  %17 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %21 = getelementptr inbounds i8, ptr %parm, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 196)
  %23 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %parm, align 4
  %parm2.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %readbuffers.i, align 4
  %25 = ptrtoint ptr %parm2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4096, ptr %parm2.i, align 4
  %vframes.i = getelementptr inbounds %struct.pwc_device, ptr %20, i32 0, i32 14
  %26 = ptrtoint ptr %vframes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vframes.i, align 8
  %denominator.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %denominator.i, align 4
  %29 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end13.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call17, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compression) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 842093913, label %entry.if.then_crit_edge
    i32 826496848, label %land.lhs.true
    i32 843274064, label %land.lhs.true8
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %8)
  %cmp4 = icmp slt i32 %8, 675
  br i1 %cmp4, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true8:                                   ; preds = %entry
  %type9 = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %10)
  %cmp10 = icmp sgt i32 %10, 674
  br i1 %cmp10, label %land.lhs.true8.if.then_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8.if.then_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true8.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %image_mask = getelementptr inbounds %struct.pwc_device, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %image_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %image_mask, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %if.then
  %dec = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %if.end.if.then14_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %for.inc.4.if.then14_crit_edge, %if.end.4.if.then14_crit_edge, %if.end.3.if.then14_crit_edge, %if.end.2.if.then14_crit_edge, %if.end.1.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %i.037.lcssa = phi i32 [ 0, %if.end.if.then14_crit_edge ], [ 1, %if.end.1.if.then14_crit_edge ], [ 2, %if.end.2.if.then14_crit_edge ], [ 3, %if.end.3.if.then14_crit_edge ], [ 4, %if.end.4.if.then14_crit_edge ], [ 5, %for.inc.4.if.then14_crit_edge ]
  %type15 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %13 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type15, align 4
  %arrayidx = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %i.037.lcssa
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %16, align 4
  %arrayidx18 = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %i.037.lcssa, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %index.1 = phi i32 [ %dec, %if.end.for.inc_crit_edge ], [ %3, %if.then.for.inc_crit_edge ]
  %and.1 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %dec.1 = add i32 %index.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1)
  %tobool13.not.1 = icmp eq i32 %index.1, 0
  br i1 %tobool13.not.1, label %if.end.1.if.then14_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1.if.then14_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %index.1.1 = phi i32 [ %dec.1, %if.end.1.for.inc.1_crit_edge ], [ %index.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %dec.2 = add i32 %index.1.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.1)
  %tobool13.not.2 = icmp eq i32 %index.1.1, 0
  br i1 %tobool13.not.2, label %if.end.2.if.then14_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2.if.then14_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %index.1.2 = phi i32 [ %dec.2, %if.end.2.for.inc.2_crit_edge ], [ %index.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %dec.3 = add i32 %index.1.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.2)
  %tobool13.not.3 = icmp eq i32 %index.1.2, 0
  br i1 %tobool13.not.3, label %if.end.3.if.then14_crit_edge, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3.if.then14_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %index.1.3 = phi i32 [ %dec.3, %if.end.3.for.inc.3_crit_edge ], [ %index.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %dec.4 = add i32 %index.1.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.3)
  %tobool13.not.4 = icmp eq i32 %index.1.3, 0
  br i1 %tobool13.not.4, label %if.end.4.if.then14_crit_edge, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4.if.then14_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %index.1.4 = phi i32 [ %dec.4, %if.end.4.for.inc.4_crit_edge ], [ %index.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp ne i32 %and.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.4)
  %tobool13.not.5 = icmp eq i32 %index.1.4, 0
  %or.cond = select i1 %tobool.not.5, i1 %tobool13.not.5, i1 false
  br i1 %or.cond, label %for.inc.4.if.then14_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4.if.then14_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

cleanup:                                          ; preds = %for.inc.4.cleanup_crit_edge, %if.then14, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_image_sizes to i32))
  %4 = load i32, ptr @pwc_image_sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2 = icmp eq i32 %4, %3
  br i1 %cmp2, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 1) to i32))
  %8 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.1 = icmp eq i32 %8, %3
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 1, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 1, i32 1), align 4
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.1 = icmp eq i32 %9, %11
  br i1 %cmp5.1, label %land.lhs.true.1.lor.lhs.false_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.2 = icmp eq i32 %12, %3
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 2, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 2, i32 1), align 4
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5.2 = icmp eq i32 %13, %15
  br i1 %cmp5.2, label %land.lhs.true.2.lor.lhs.false_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 3) to i32))
  %16 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp2.3 = icmp eq i32 %16, %3
  br i1 %cmp2.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 3, i32 1) to i32))
  %17 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 3, i32 1), align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp5.3 = icmp eq i32 %17, %19
  br i1 %cmp5.3, label %land.lhs.true.3.lor.lhs.false_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 4) to i32))
  %20 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %3)
  %cmp2.4 = icmp eq i32 %20, %3
  br i1 %cmp2.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 4, i32 1) to i32))
  %21 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 4, i32 1), align 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp5.4 = icmp eq i32 %21, %23
  br i1 %cmp5.4, label %land.lhs.true.4.lor.lhs.false_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 5) to i32))
  %24 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %3)
  %cmp2.5 = icmp eq i32 %24, %3
  br i1 %cmp2.5, label %land.lhs.true.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 5, i32 1) to i32))
  %25 = load i32, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 5, i32 1), align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp5.5 = icmp eq i32 %25, %27
  br i1 %cmp5.5, label %land.lhs.true.5.lor.lhs.false_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.5.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5.lor.lhs.false_crit_edge, %land.lhs.true.4.lor.lhs.false_crit_edge, %land.lhs.true.3.lor.lhs.false_crit_edge, %land.lhs.true.2.lor.lhs.false_crit_edge, %land.lhs.true.1.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %i.031.lcssa = phi i32 [ 0, %land.lhs.true.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true.1.lor.lhs.false_crit_edge ], [ 2, %land.lhs.true.2.lor.lhs.false_crit_edge ], [ 3, %land.lhs.true.3.lor.lhs.false_crit_edge ], [ 4, %land.lhs.true.4.lor.lhs.false_crit_edge ], [ 5, %land.lhs.true.5.lor.lhs.false_crit_edge ]
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %28 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %29)
  %cmp7.not = icmp eq i32 %29, 842093913
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fival, align 4
  %call10 = tail call i32 @pwc_get_fps(ptr noundef %1, i32 noundef %31, i32 noundef %i.031.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 4
  %33 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 4
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call10, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %land.lhs.true.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -59948
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %entry.do.end_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963794, label %sw.bb23
    i32 10094849, label %entry.sw.bb46_crit_edge
  ]

entry.sw.bb46_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb46

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry
  %color_bal_valid = getelementptr i8, ptr %1, i32 216
  %5 = ptrtoint ptr %color_bal_valid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %color_bal_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %7 = getelementptr i8, ptr %1, i32 204
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.not = icmp eq i32 %11, 4
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_color_bal_update = getelementptr i8, ptr %1, i32 220
  %13 = ptrtoint ptr %last_color_bal_update to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_color_bal_update, align 8
  %add.neg = add i32 %12, -25
  %sub = sub i32 %add.neg, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %last_red_balance = getelementptr i8, ptr %1, i32 224
  %15 = ptrtoint ptr %last_red_balance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_red_balance, align 4
  %red_balance = getelementptr i8, ptr %1, i32 208
  %17 = ptrtoint ptr %red_balance to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %red_balance, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %val2, align 4
  %last_blue_balance = getelementptr i8, ptr %1, i32 228
  %20 = ptrtoint ptr %last_blue_balance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_blue_balance, align 8
  %blue_balance = getelementptr i8, ptr %1, i32 212
  %22 = ptrtoint ptr %blue_balance to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blue_balance, align 8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %val3, align 4
  br label %if.end70

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %red_balance4 = getelementptr i8, ptr %1, i32 208
  %25 = ptrtoint ptr %red_balance4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %red_balance4, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 22
  %call = tail call i32 @pwc_get_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext 1792, ptr noundef %val5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8:                                          ; preds = %if.end
  %blue_balance9 = getelementptr i8, ptr %1, i32 212
  %27 = ptrtoint ptr %blue_balance9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %blue_balance9, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %call11 = tail call i32 @pwc_get_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext 2048, ptr noundef %val10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %red_balance4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %red_balance4, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val16, align 4
  %last_red_balance17 = getelementptr i8, ptr %1, i32 224
  %33 = ptrtoint ptr %last_red_balance17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_red_balance17, align 4
  %34 = ptrtoint ptr %blue_balance9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %blue_balance9, align 8
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val19, align 4
  %last_blue_balance20 = getelementptr i8, ptr %1, i32 228
  %38 = ptrtoint ptr %last_blue_balance20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_blue_balance20, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %last_color_bal_update21 = getelementptr i8, ptr %1, i32 220
  %40 = ptrtoint ptr %last_color_bal_update21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last_color_bal_update21, align 8
  %41 = ptrtoint ptr %color_bal_valid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %color_bal_valid, align 4
  br label %if.end70

sw.bb23:                                          ; preds = %entry
  %gain_valid = getelementptr i8, ptr %1, i32 240
  %42 = ptrtoint ptr %gain_valid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gain_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool24.not = icmp eq i32 %43, 0
  br i1 %tobool24.not, label %sw.bb23.if.end31_crit_edge, label %land.lhs.true25

sw.bb23.if.end31_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true25:                                  ; preds = %sw.bb23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %last_gain_update = getelementptr i8, ptr %1, i32 244
  %45 = ptrtoint ptr %last_gain_update to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_gain_update, align 4
  %add26.neg = add i32 %44, -25
  %sub27 = sub i32 %add26.neg, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %cmp28 = icmp slt i32 %sub27, 0
  br i1 %cmp28, label %if.then29, label %land.lhs.true25.if.end31_crit_edge

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  %last_gain = getelementptr i8, ptr %1, i32 248
  %47 = ptrtoint ptr %last_gain to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_gain, align 4
  %gain = getelementptr i8, ptr %1, i32 236
  %49 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gain, align 4
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 22
  %51 = ptrtoint ptr %val30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %val30, align 4
  br label %if.end70

if.end31:                                         ; preds = %land.lhs.true25.if.end31_crit_edge, %sw.bb23.if.end31_crit_edge
  %gain32 = getelementptr i8, ptr %1, i32 236
  %52 = ptrtoint ptr %gain32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gain32, align 4
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 22
  %call34 = tail call i32 @pwc_get_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext 1280, ptr noundef %val33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.do.end_crit_edge

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end37:                                         ; preds = %if.end31
  %54 = ptrtoint ptr %gain32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gain32, align 4
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val39, align 4
  %last_gain40 = getelementptr i8, ptr %1, i32 248
  %58 = ptrtoint ptr %last_gain40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %last_gain40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %last_gain_update41 = getelementptr i8, ptr %1, i32 244
  %60 = ptrtoint ptr %last_gain_update41 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %last_gain_update41, align 4
  %61 = ptrtoint ptr %gain_valid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %gain_valid, align 4
  %type = getelementptr i8, ptr %1, i32 -57716
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %63)
  %cmp43 = icmp sgt i32 %63, 699
  br i1 %cmp43, label %if.end37.sw.bb46_crit_edge, label %if.end37.if.end70_crit_edge

if.end37.if.end70_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end37.sw.bb46_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.end37.sw.bb46_crit_edge, %entry.sw.bb46_crit_edge
  %exposure_valid = getelementptr i8, ptr %1, i32 260
  %64 = ptrtoint ptr %exposure_valid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %exposure_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool47.not = icmp eq i32 %65, 0
  br i1 %tobool47.not, label %sw.bb46.if.end54_crit_edge, label %land.lhs.true48

sw.bb46.if.end54_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true48:                                  ; preds = %sw.bb46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %last_exposure_update = getelementptr i8, ptr %1, i32 264
  %67 = ptrtoint ptr %last_exposure_update to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %last_exposure_update, align 4
  %add49.neg = add i32 %66, -25
  %sub50 = sub i32 %add49.neg, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %cmp51 = icmp slt i32 %sub50, 0
  br i1 %cmp51, label %if.then52, label %land.lhs.true48.if.end54_crit_edge

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  %last_exposure = getelementptr i8, ptr %1, i32 268
  %69 = ptrtoint ptr %last_exposure to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %last_exposure, align 8
  %exposure = getelementptr i8, ptr %1, i32 256
  %71 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %exposure, align 4
  %val53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %73 = ptrtoint ptr %val53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %val53, align 4
  br label %if.end70

if.end54:                                         ; preds = %land.lhs.true48.if.end54_crit_edge, %sw.bb46.if.end54_crit_edge
  %exposure55 = getelementptr i8, ptr %1, i32 256
  %74 = ptrtoint ptr %exposure55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %exposure55, align 4
  %val56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %75, i32 0, i32 22
  %call57 = tail call i32 @pwc_get_u16_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext 1536, ptr noundef %val56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.do.end_crit_edge

if.end54.do.end_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %exposure55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %exposure55, align 4
  %val62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 22
  %78 = ptrtoint ptr %val62 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val62, align 4
  %last_exposure63 = getelementptr i8, ptr %1, i32 268
  %80 = ptrtoint ptr %last_exposure63 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %last_exposure63, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %last_exposure_update64 = getelementptr i8, ptr %1, i32 264
  %82 = ptrtoint ptr %last_exposure_update64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %last_exposure_update64, align 4
  %83 = ptrtoint ptr %exposure_valid to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %exposure_valid, align 8
  br label %if.end70

do.end:                                           ; preds = %if.end54.do.end_crit_edge, %if.end31.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.1 = phi i32 [ %call57, %if.end54.do.end_crit_edge ], [ %call34, %if.end31.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ], [ %call11, %if.end8.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %84 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %85, i32 noundef %ret.1) #10
  br label %if.end70

if.end70:                                         ; preds = %do.end, %if.end60, %if.then52, %if.end37.if.end70_crit_edge, %if.then29, %if.end14, %if.then
  %ret.1118 = phi i32 [ %ret.1, %do.end ], [ 0, %if.then52 ], [ 0, %if.end60 ], [ 0, %if.then29 ], [ 0, %if.end37.if.end70_crit_edge ], [ 0, %if.then ], [ 0, %if.end14 ]
  ret i32 %ret.1118
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwc_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -59948
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %entry.do.end_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb5
    i32 9963792, label %sw.bb9
    i32 9963788, label %sw.bb13
    i32 9963794, label %sw.bb15
    i32 10094849, label %sw.bb28
    i32 9963807, label %sw.bb40
    i32 10025216, label %sw.bb44
    i32 9963804, label %sw.bb68
    i32 9963809, label %sw.bb74
    i32 10025218, label %sw.bb80
    i32 10025221, label %sw.bb84
    i32 10025222, label %sw.bb86
    i32 10025223, label %sw.bb88
    i32 10025219, label %sw.bb90
    i32 10025220, label %sw.bb94
    i32 10094852, label %sw.bb98
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 11008, i8 noundef zeroext %conv) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %8 to i8
  %call4 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 9984, i8 noundef zeroext %conv3) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %saturation_fmt = getelementptr i8, ptr %1, i32 184
  %9 = ptrtoint ptr %saturation_fmt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %saturation_fmt, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %12 to i8
  %call8 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext %10, i8 noundef zeroext %conv7) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %14 to i8
  %call12 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 11264, i8 noundef zeroext %conv11) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %15 = getelementptr i8, ptr %1, i32 204
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %is_new.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %is_new.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %is_new.i, align 4
  %19 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %sw.bb13.if.end26.i_crit_edge, label %if.then.i

sw.bb13.if.end26.i_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then.i:                                        ; preds = %sw.bb13
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %21 to i8
  %call.i = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 4096, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then.i
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  %val5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 3
  br i1 %cmp.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.end8.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end8.i:                                        ; preds = %if.end.i
  %color_bal_valid.i = getelementptr i8, ptr %1, i32 216
  %26 = ptrtoint ptr %color_bal_valid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %color_bal_valid.i, align 4
  %27 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i = load i32, ptr %val5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %switch.i = icmp ult i32 %.pr.i, 3
  br i1 %switch.i, label %if.then22.i, label %if.end8.i.if.end26.i_crit_edge

if.end8.i.if.end26.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 @pwc_g_volatile_ctrl(ptr noundef %23) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end8.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge, %sw.bb13.if.end26.i_crit_edge
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 8
  %val28.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp29.not.i = icmp eq i32 %31, 3
  br i1 %cmp29.not.i, label %if.end32.i, label %if.end26.i.if.end104_crit_edge

if.end26.i.if.end104_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.end32.i:                                       ; preds = %if.end26.i
  %red_balance.i = getelementptr i8, ptr %1, i32 208
  %32 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %red_balance.i, align 4
  %is_new33.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %is_new33.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load34.i = load i32, ptr %is_new33.i, align 4
  %35 = and i32 %bf.load34.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool37.not.i = icmp eq i32 %35, 0
  br i1 %tobool37.not.i, label %if.end32.i.if.end46.i_crit_edge, label %if.then38.i

if.end32.i.if.end46.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then38.i:                                      ; preds = %if.end32.i
  %val40.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %36 = ptrtoint ptr %val40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val40.i, align 4
  %conv41.i = trunc i32 %37 to i8
  %call42.i = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 4864, i8 noundef zeroext %conv41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then38.i.if.end46.i_crit_edge, label %if.then38.i.do.end_crit_edge

if.then38.i.do.end_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then38.i.if.end46.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then38.i.if.end46.i_crit_edge, %if.end32.i.if.end46.i_crit_edge
  %blue_balance.i = getelementptr i8, ptr %1, i32 212
  %38 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %blue_balance.i, align 8
  %is_new47.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %is_new47.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load48.i = load i32, ptr %is_new47.i, align 4
  %41 = and i32 %bf.load48.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not.i = icmp eq i32 %41, 0
  br i1 %tobool51.not.i, label %if.end46.i.if.end104_crit_edge, label %if.then52.i

if.end46.i.if.end104_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then52.i:                                      ; preds = %if.end46.i
  %val54.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 22
  %42 = ptrtoint ptr %val54.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val54.i, align 4
  %conv55.i = trunc i32 %43 to i8
  %call56.i = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 5120, i8 noundef zeroext %conv55.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then52.i.if.end104_crit_edge, label %if.then52.i.do.end_crit_edge

if.then52.i.do.end_crit_edge:                     ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then52.i.if.end104_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

sw.bb15:                                          ; preds = %entry
  %type = getelementptr i8, ptr %1, i32 -57716
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 8
  %46 = add i32 %45, -675
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %46)
  %47 = icmp ult i32 %46, 25
  br i1 %47, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb15
  %48 = getelementptr i8, ptr %1, i32 232
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %is_new.i151 = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %is_new.i151 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i152 = load i32, ptr %is_new.i151, align 4
  %52 = and i32 %bf.load.i152, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i153 = icmp eq i32 %52, 0
  br i1 %tobool.not.i153, label %if.then.if.end10.i_crit_edge, label %if.then.i158

if.then.if.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i158:                                     ; preds = %if.then
  %val.i154 = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 22
  %53 = ptrtoint ptr %val.i154 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool2.not.i155 = icmp eq i32 %54, 0
  %conv.i156 = sext i1 %tobool2.not.i155 to i8
  %call.i157 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 8192, i8 noundef zeroext %conv.i156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool3.not.i = icmp eq i32 %call.i157, 0
  br i1 %tobool3.not.i, label %if.end.i159, label %if.then.i158.do.end_crit_edge

if.then.i158.do.end_crit_edge:                    ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i159:                                      ; preds = %if.then.i158
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %48, align 4
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool7.not.i = icmp eq i32 %58, 0
  br i1 %tobool7.not.i, label %if.end.i159.if.end10.i_crit_edge, label %if.then8.i

if.end.i159.if.end10.i_crit_edge:                 ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  %gain_valid.i = getelementptr i8, ptr %1, i32 240
  %59 = ptrtoint ptr %gain_valid.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %gain_valid.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i159.if.end10.i_crit_edge, %if.then.if.end10.i_crit_edge
  %60 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %48, align 4
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %62 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.i = icmp eq i32 %63, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.if.end104_crit_edge

if.end10.i.if.end104_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.end15.i:                                       ; preds = %if.end10.i
  %gain.i = getelementptr i8, ptr %1, i32 236
  %64 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gain.i, align 4
  %is_new16.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %is_new16.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load17.i = load i32, ptr %is_new16.i, align 4
  %67 = and i32 %bf.load17.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool20.not.i = icmp eq i32 %67, 0
  br i1 %tobool20.not.i, label %if.end15.i.if.end104_crit_edge, label %if.then21.i

if.end15.i.if.end104_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then21.i:                                      ; preds = %if.end15.i
  %val23.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 22
  %68 = ptrtoint ptr %val23.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val23.i, align 4
  %conv24.i = trunc i32 %69 to i8
  %call25.i = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 8448, i8 noundef zeroext %conv24.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then21.i.if.end104_crit_edge, label %if.then21.i.do.end_crit_edge

if.then21.i.do.end_crit_edge:                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then21.i.if.end104_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %45)
  %cmp22 = icmp sgt i32 %45, 699
  br i1 %cmp22, label %if.then24, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call fastcc i32 @pwc_set_autogain_expo(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %type29 = getelementptr i8, ptr %1, i32 -57716
  %70 = ptrtoint ptr %type29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type29, align 8
  %72 = add i32 %71, -675
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %72)
  %73 = icmp ult i32 %72, 25
  br i1 %73, label %if.then36, label %sw.bb28.do.end_crit_edge

sw.bb28.do.end_crit_edge:                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then36:                                        ; preds = %sw.bb28
  %74 = getelementptr i8, ptr %1, i32 252
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %val.i161 = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 22
  %77 = ptrtoint ptr %val.i161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i = icmp eq i32 %78, 0
  %is_new.i162 = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %is_new.i162 to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load.i163 = load i32, ptr %is_new.i162, align 4
  %80 = and i32 %bf.load.i163, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i164 = icmp eq i32 %80, 0
  br i1 %tobool.not.i164, label %if.end9.i, label %if.then.i166

if.then.i166:                                     ; preds = %if.then36
  %not.cmp.i = xor i1 %cmp.i, true
  %conv3.i = sext i1 %not.cmp.i to i8
  %call.i165 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 8704, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool4.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool4.not.i, label %if.end.i167, label %if.then.i166.do.end_crit_edge

if.then.i166.do.end_crit_edge:                    ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i167:                                      ; preds = %if.then.i166
  br i1 %cmp.i, label %if.then7.i, label %if.end.i167.if.end12.i_crit_edge

if.end.i167.if.end12.i_crit_edge:                 ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  %exposure_valid.i = getelementptr i8, ptr %1, i32 260
  %81 = ptrtoint ptr %exposure_valid.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %exposure_valid.i, align 8
  br label %if.end104

if.end9.i:                                        ; preds = %if.then36
  br i1 %cmp.i, label %if.end9.i.if.end104_crit_edge, label %if.end9.i.if.end12.i_crit_edge

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end9.i.if.end104_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.end12.i:                                       ; preds = %if.end9.i.if.end12.i_crit_edge, %if.end.i167.if.end12.i_crit_edge
  %exposure.i = getelementptr i8, ptr %1, i32 256
  %82 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %exposure.i, align 4
  %is_new13.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %is_new13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load14.i = load i32, ptr %is_new13.i, align 4
  %85 = and i32 %bf.load14.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool17.not.i = icmp eq i32 %85, 0
  br i1 %tobool17.not.i, label %if.end12.i.if.end104_crit_edge, label %if.then18.i

if.end12.i.if.end104_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then18.i:                                      ; preds = %if.end12.i
  %val20.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %83, i32 0, i32 22
  %86 = ptrtoint ptr %val20.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val20.i, align 4
  %conv21.i = trunc i32 %87 to i16
  %call22.i = tail call i32 @pwc_set_u16_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 8960, i16 noundef zeroext %conv21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then18.i.if.end104_crit_edge, label %if.then18.i.do.end_crit_edge

if.then18.i.do.end_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then18.i.if.end104_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %88 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not = icmp eq i32 %89, 0
  %conv42 = sext i1 %tobool.not to i8
  %call43 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 5376, i8 noundef zeroext %conv42) #7
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %90 = getelementptr i8, ptr %1, i32 276
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load = load i32, ptr %is_new, align 4
  %94 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool45.not = icmp eq i32 %94, 0
  br i1 %tobool45.not, label %sw.bb44.land.lhs.true56_crit_edge, label %if.end53

sw.bb44.land.lhs.true56_crit_edge:                ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true56

if.end53:                                         ; preds = %sw.bb44
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %95 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool49.not = icmp eq i32 %96, 0
  %conv51 = sext i1 %tobool49.not to i8
  %call52 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 9472, i8 noundef zeroext %conv51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp54 = icmp eq i32 %call52, 0
  br i1 %cmp54, label %if.end53.land.lhs.true56_crit_edge, label %if.end53.do.end_crit_edge

if.end53.do.end_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end53.land.lhs.true56_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end53.land.lhs.true56_crit_edge, %sw.bb44.land.lhs.true56_crit_edge
  %contour = getelementptr i8, ptr %1, i32 280
  %97 = ptrtoint ptr %contour to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %contour, align 4
  %is_new57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %is_new57 to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load58 = load i32, ptr %is_new57, align 4
  %100 = and i32 %bf.load58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool61.not = icmp eq i32 %100, 0
  br i1 %tobool61.not, label %land.lhs.true56.if.end104_crit_edge, label %if.then62

land.lhs.true56.if.end104_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then62:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  %val64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %98, i32 0, i32 22
  %101 = ptrtoint ptr %val64 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val64, align 4
  %conv65 = trunc i32 %102 to i8
  %call66 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 9216, i8 noundef zeroext %conv65) #7
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %103 = ptrtoint ptr %val69 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool70.not = icmp eq i32 %104, 0
  %conv72 = sext i1 %tobool70.not to i8
  %call73 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 9728, i8 noundef zeroext %conv72) #7
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %105 = ptrtoint ptr %val75 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool76.not = icmp eq i32 %106, 0
  %conv78 = sext i1 %tobool76.not to i8
  %call79 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 10496, i8 noundef zeroext %conv78) #7
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %107 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val81, align 4
  %conv82 = trunc i32 %108 to i8
  %call83 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 1, i16 noundef zeroext 10240, i8 noundef zeroext %conv82) #7
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 @pwc_button_ctrl(ptr noundef %add.ptr, i16 noundef zeroext 512) #7
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call i32 @pwc_button_ctrl(ptr noundef %add.ptr, i16 noundef zeroext 768) #7
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = tail call i32 @pwc_button_ctrl(ptr noundef %add.ptr, i16 noundef zeroext 1024) #7
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val91 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %109 = ptrtoint ptr %val91 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val91, align 4
  %conv92 = trunc i32 %110 to i8
  %call93 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 4352, i8 noundef zeroext %conv92) #7
  br label %sw.epilog

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %111 = ptrtoint ptr %val95 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val95, align 4
  %conv96 = trunc i32 %112 to i8
  %call97 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 4608, i8 noundef zeroext %conv96) #7
  br label %sw.epilog

sw.bb98:                                          ; preds = %entry
  %ctrl_buf.i = getelementptr i8, ptr %1, i32 -57648
  %113 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctrl_buf.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %114, align 1
  %116 = getelementptr i8, ptr %1, i32 316
  %motor_pan_reset.i = getelementptr i8, ptr %1, i32 324
  %117 = ptrtoint ptr %motor_pan_reset.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %motor_pan_reset.i, align 8
  %is_new.i170 = getelementptr inbounds %struct.v4l2_ctrl, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %is_new.i170 to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load.i171 = load i32, ptr %is_new.i170, align 4
  %120 = and i32 %bf.load.i171, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i172 = icmp eq i32 %120, 0
  br i1 %tobool.not.i172, label %sw.bb98.if.end.i174_crit_edge, label %if.then.i173

sw.bb98.if.end.i174_crit_edge:                    ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i174

if.then.i173:                                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctrl_buf.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 1
  %125 = or i8 %124, 1
  store i8 %125, ptr %122, align 1
  br label %if.end.i174

if.end.i174:                                      ; preds = %if.then.i173, %sw.bb98.if.end.i174_crit_edge
  %motor_tilt_reset.i = getelementptr i8, ptr %1, i32 328
  %126 = ptrtoint ptr %motor_tilt_reset.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %motor_tilt_reset.i, align 4
  %is_new4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %is_new4.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %bf.load5.i = load i32, ptr %is_new4.i, align 4
  %129 = and i32 %bf.load5.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool8.not.i = icmp eq i32 %129, 0
  br i1 %tobool8.not.i, label %if.end.i174.if.end15.i175_crit_edge, label %if.then9.i

if.end.i174.if.end15.i175_crit_edge:              ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i175

if.then9.i:                                       ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctrl_buf.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %131, align 1
  %134 = or i8 %133, 2
  store i8 %134, ptr %131, align 1
  br label %if.end15.i175

if.end15.i175:                                    ; preds = %if.then9.i, %if.end.i174.if.end15.i175_crit_edge
  %135 = ptrtoint ptr %motor_pan_reset.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %motor_pan_reset.i, align 8
  %is_new17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %is_new17.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %bf.load18.i = load i32, ptr %is_new17.i, align 4
  %138 = and i32 %bf.load18.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool21.not.i = icmp eq i32 %138, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i, label %if.end15.i175.if.then28.i_crit_edge

if.end15.i175.if.then28.i_crit_edge:              ; preds = %if.end15.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %if.end15.i175
  %139 = ptrtoint ptr %motor_tilt_reset.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %motor_tilt_reset.i, align 4
  %is_new23.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %is_new23.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %bf.load24.i = load i32, ptr %is_new23.i, align 4
  %142 = and i32 %bf.load24.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool27.not.i = icmp eq i32 %142, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i.if.end33.i_crit_edge, label %lor.lhs.false.i.if.then28.i_crit_edge

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %if.end15.i175.if.then28.i_crit_edge
  %143 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctrl_buf.i, align 4
  %call.i176 = tail call i32 @send_control_msg(ptr noundef %add.ptr, i8 noundef zeroext 13, i16 noundef zeroext 2, ptr noundef %144, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp slt i32 %call.i176, 0
  br i1 %cmp.i177, label %if.then28.i.do.end_crit_edge, label %if.then28.i.if.end33.i_crit_edge

if.then28.i.if.end33.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then28.i.do.end_crit_edge:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end33.i:                                       ; preds = %if.then28.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge
  %145 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctrl_buf.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 0, ptr %146, align 1
  %148 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %116, align 8
  %is_new35.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %is_new35.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load36.i = load i32, ptr %is_new35.i, align 4
  %151 = and i32 %bf.load36.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool39.not.i = icmp eq i32 %151, 0
  br i1 %tobool39.not.i, label %if.end33.i.if.end50.i_crit_edge, label %if.then40.i

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %val.i178 = getelementptr inbounds %struct.v4l2_ctrl, ptr %149, i32 0, i32 22
  %152 = ptrtoint ptr %val.i178 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val.i178, align 4
  %conv42.i = trunc i32 %153 to i8
  %154 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctrl_buf.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv42.i, ptr %155, align 1
  %157 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %116, align 8
  %val46.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %158, i32 0, i32 22
  %159 = ptrtoint ptr %val46.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %val46.i, align 4
  %161 = lshr i32 %160, 8
  %conv47.i = trunc i32 %161 to i8
  %162 = load ptr, ptr %ctrl_buf.i, align 4
  %arrayidx49.i = getelementptr i8, ptr %162, i32 1
  %163 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv47.i, ptr %arrayidx49.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then40.i, %if.end33.i.if.end50.i_crit_edge
  %motor_tilt.i = getelementptr i8, ptr %1, i32 320
  %164 = ptrtoint ptr %motor_tilt.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %motor_tilt.i, align 4
  %is_new51.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %is_new51.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %bf.load52.i = load i32, ptr %is_new51.i, align 4
  %167 = and i32 %bf.load52.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool55.not.i = icmp eq i32 %167, 0
  br i1 %tobool55.not.i, label %if.end50.i.if.end69.i_crit_edge, label %if.then56.i

if.end50.i.if.end69.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %val58.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %165, i32 0, i32 22
  %168 = ptrtoint ptr %val58.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %val58.i, align 4
  %conv60.i = trunc i32 %169 to i8
  %170 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctrl_buf.i, align 4
  %arrayidx62.i = getelementptr i8, ptr %171, i32 2
  %172 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv60.i, ptr %arrayidx62.i, align 1
  %173 = ptrtoint ptr %motor_tilt.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %motor_tilt.i, align 4
  %val64.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %174, i32 0, i32 22
  %175 = ptrtoint ptr %val64.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val64.i, align 4
  %177 = lshr i32 %176, 8
  %conv66.i = trunc i32 %177 to i8
  %178 = load ptr, ptr %ctrl_buf.i, align 4
  %arrayidx68.i = getelementptr i8, ptr %178, i32 3
  %179 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv66.i, ptr %arrayidx68.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then56.i, %if.end50.i.if.end69.i_crit_edge
  %180 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %116, align 8
  %is_new71.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %181, i32 0, i32 5
  %182 = ptrtoint ptr %is_new71.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %bf.load72.i = load i32, ptr %is_new71.i, align 4
  %183 = and i32 %bf.load72.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool75.not.i = icmp eq i32 %183, 0
  br i1 %tobool75.not.i, label %lor.lhs.false76.i, label %if.end69.i.if.then83.i_crit_edge

if.end69.i.if.then83.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i

lor.lhs.false76.i:                                ; preds = %if.end69.i
  %184 = ptrtoint ptr %motor_tilt.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %motor_tilt.i, align 4
  %is_new78.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %is_new78.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %bf.load79.i = load i32, ptr %is_new78.i, align 4
  %187 = and i32 %bf.load79.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool82.not.i = icmp eq i32 %187, 0
  br i1 %tobool82.not.i, label %lor.lhs.false76.i.if.end104_crit_edge, label %lor.lhs.false76.i.if.then83.i_crit_edge

lor.lhs.false76.i.if.then83.i_crit_edge:          ; preds = %lor.lhs.false76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i

lor.lhs.false76.i.if.end104_crit_edge:            ; preds = %lor.lhs.false76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then83.i:                                      ; preds = %lor.lhs.false76.i.if.then83.i_crit_edge, %if.end69.i.if.then83.i_crit_edge
  %188 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ctrl_buf.i, align 4
  %call85.i = tail call i32 @send_control_msg(ptr noundef %add.ptr, i8 noundef zeroext 13, i16 noundef zeroext 1, ptr noundef %189, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %if.then83.i.do.end_crit_edge, label %if.then83.i.if.end104_crit_edge

if.then83.i.if.end104_crit_edge:                  ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then83.i.do.end_crit_edge:                     ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.epilog:                                        ; preds = %sw.bb94, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb80, %sw.bb74, %sw.bb68, %if.then62, %sw.bb40, %if.then24, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %ret.1 = phi i32 [ %call97, %sw.bb94 ], [ %call93, %sw.bb90 ], [ %call89, %sw.bb88 ], [ %call87, %sw.bb86 ], [ %call85, %sw.bb84 ], [ %call83, %sw.bb80 ], [ %call79, %sw.bb74 ], [ %call73, %sw.bb68 ], [ %call66, %if.then62 ], [ %call43, %sw.bb40 ], [ %call25, %if.then24 ], [ %call12, %sw.bb9 ], [ %call8, %sw.bb5 ], [ %call4, %sw.bb1 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool100.not = icmp eq i32 %ret.1, 0
  br i1 %tobool100.not, label %sw.epilog.if.end104_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.epilog.if.end104_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %if.then83.i.do.end_crit_edge, %if.then28.i.do.end_crit_edge, %if.end53.do.end_crit_edge, %if.then18.i.do.end_crit_edge, %if.then.i166.do.end_crit_edge, %sw.bb28.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then21.i.do.end_crit_edge, %if.then.i158.do.end_crit_edge, %if.then52.i.do.end_crit_edge, %if.then38.i.do.end_crit_edge, %if.then.i.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.1184 = phi i32 [ %ret.1, %sw.epilog.do.end_crit_edge ], [ %call85.i, %if.then83.i.do.end_crit_edge ], [ %call.i176, %if.then28.i.do.end_crit_edge ], [ %call22.i, %if.then18.i.do.end_crit_edge ], [ %call.i165, %if.then.i166.do.end_crit_edge ], [ %call25.i, %if.then21.i.do.end_crit_edge ], [ %call.i157, %if.then.i158.do.end_crit_edge ], [ %call56.i, %if.then52.i.do.end_crit_edge ], [ %call42.i, %if.then38.i.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ], [ -22, %sw.bb28.do.end_crit_edge ], [ -22, %if.else.do.end_crit_edge ], [ %call52, %if.end53.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %190 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %name, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %191, i32 noundef %ret.1184) #10
  br label %if.end104

if.end104:                                        ; preds = %do.end, %sw.epilog.if.end104_crit_edge, %if.then83.i.if.end104_crit_edge, %lor.lhs.false76.i.if.end104_crit_edge, %land.lhs.true56.if.end104_crit_edge, %if.then18.i.if.end104_crit_edge, %if.end12.i.if.end104_crit_edge, %if.end9.i.if.end104_crit_edge, %if.then7.i, %if.then21.i.if.end104_crit_edge, %if.end15.i.if.end104_crit_edge, %if.end10.i.if.end104_crit_edge, %if.then52.i.if.end104_crit_edge, %if.end46.i.if.end104_crit_edge, %if.end26.i.if.end104_crit_edge
  %ret.1185 = phi i32 [ %ret.1184, %do.end ], [ 0, %sw.epilog.if.end104_crit_edge ], [ 0, %land.lhs.true56.if.end104_crit_edge ], [ 0, %if.end26.i.if.end104_crit_edge ], [ 0, %if.end10.i.if.end104_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.end9.i.if.end104_crit_edge ], [ 0, %if.then52.i.if.end104_crit_edge ], [ 0, %if.end46.i.if.end104_crit_edge ], [ 0, %if.then21.i.if.end104_crit_edge ], [ 0, %if.end15.i.if.end104_crit_edge ], [ 0, %if.then18.i.if.end104_crit_edge ], [ 0, %if.end12.i.if.end104_crit_edge ], [ 0, %if.then83.i.if.end104_crit_edge ], [ 0, %lor.lhs.false76.i.if.end104_crit_edge ]
  ret i32 %ret.1185
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_set_u8_ctrl(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwc_set_autogain_expo(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 46
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %is_new, align 4
  %4 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %conv = sext i1 %tobool2.not to i8
  %call = tail call i32 @pwc_set_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 1, i16 noundef zeroext 8192, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gain_valid = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 46, i32 2
  %11 = ptrtoint ptr %gain_valid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %gain_valid, align 4
  %exposure_valid = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %exposure_valid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %exposure_valid, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %gain = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 46, i32 1
  %17 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gain, align 4
  %is_new16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %is_new16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load17 = load i32, ptr %is_new16, align 4
  %20 = and i32 %bf.load17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.end15.if.end29_crit_edge, label %if.then21

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then21:                                        ; preds = %if.end15
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %21 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val23, align 4
  %conv24 = trunc i32 %22 to i8
  %call25 = tail call i32 @pwc_set_u8_ctrl(ptr noundef %pdev, i8 noundef zeroext 1, i16 noundef zeroext 8448, i8 noundef zeroext %conv24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then21.if.end29_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.then21.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %exposure = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exposure, align 4
  %is_new30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %is_new30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load31 = load i32, ptr %is_new30, align 4
  %26 = and i32 %bf.load31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %if.end29.if.end43_crit_edge, label %if.then35

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then35:                                        ; preds = %if.end29
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %27 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val37, align 4
  %conv38 = trunc i32 %28 to i16
  %call39 = tail call i32 @pwc_set_u16_ctrl(ptr noundef %pdev, i8 noundef zeroext 1, i16 noundef zeroext 8960, i16 noundef zeroext %conv38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then35.if.end43_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then35.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call25, %if.then21.cleanup_crit_edge ], [ %call39, %if.then35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_button_ctrl(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_set_u16_ctrl(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_control_msg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwc_vidioc_try_fmt(ptr noundef %pdev, ptr nocapture noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %2 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixelformat, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %4, label %do.body43 [
    i32 842093913, label %if.end5.sw.epilog_crit_edge
    i32 826496848, label %sw.bb
    i32 843274064, label %sw.bb24
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %type6 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %7)
  %cmp7 = icmp sgt i32 %7, 674
  br i1 %cmp7, label %do.body9, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body9:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %8 = load i32, ptr @pwc_trace, align 4
  %and10 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.sw.epilog.sink.split_crit_edge, label %do.body9.sw.epilog.sink.split.sink.split_crit_edge

do.body9.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.sink.split

do.body9.sw.epilog.sink.split_crit_edge:          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %if.end5
  %type25 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %type25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %10)
  %cmp26 = icmp slt i32 %10, 675
  br i1 %cmp26, label %do.body28, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body28:                                        ; preds = %sw.bb24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %11 = load i32, ptr @pwc_trace, align 4
  %and29 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.sw.epilog.sink.split_crit_edge, label %do.body28.sw.epilog.sink.split.sink.split_crit_edge

do.body28.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.sink.split

do.body28.sw.epilog.sink.split_crit_edge:         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body43:                                        ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %12 = load i32, ptr @pwc_trace, align 4
  %and44 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.sw.epilog.sink.split_crit_edge, label %do.body43.sw.epilog.sink.split.sink.split_crit_edge

do.body43.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.sink.split

do.body43.sw.epilog.sink.split_crit_edge:         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %do.body43.sw.epilog.sink.split.sink.split_crit_edge, %do.body28.sw.epilog.sink.split.sink.split_crit_edge, %do.body9.sw.epilog.sink.split.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.33, %do.body9.sw.epilog.sink.split.sink.split_crit_edge ], [ @.str.36, %do.body28.sw.epilog.sink.split.sink.split_crit_edge ], [ @.str.39, %do.body43.sw.epilog.sink.split.sink.split_crit_edge ]
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %do.body43.sw.epilog.sink.split_crit_edge, %do.body28.sw.epilog.sink.split_crit_edge, %do.body9.sw.epilog.sink.split_crit_edge
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 842093913, ptr %pixelformat, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb24.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %call59 = tail call i32 @pwc_get_size(ptr noundef %pdev, i32 noundef %15, i32 noundef %17) #7
  %arrayidx = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call59
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %arrayidx62 = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call59, i32 1
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx62, align 4
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %25 = call ptr @memset(ptr %24, i32 0, i32 20)
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %19, ptr %fmt, align 4
  %27 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %height, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %19, ptr %bytesperline.i, align 4
  %mul.i = mul i32 %19, 3
  %mul14.i = mul i32 %mul.i, %21
  %div59.i = lshr i32 %mul14.i, 1
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div59.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %colorspace.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %32 = load i32, ptr @pwc_trace, align 4
  %and.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %do.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and28.i = and i32 %23, 255
  %shr.i = lshr i32 %23, 8
  %and31.i = and i32 %shr.i, 255
  %shr34.i = lshr i32 %23, 16
  %and35.i = and i32 %shr34.i, 255
  %shr38.i = lshr i32 %23, 24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %19, i32 noundef %21, i32 noundef %19, i32 noundef %div59.i, i32 noundef %and28.i, i32 noundef %and31.i, i32 noundef %and35.i, i32 noundef %shr38.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %sw.epilog.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_set_video_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_fps(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @pwc_init_controls._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 157, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @pwc_ioctl_ops, !4, !"pwc_ioctl_ops", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 1011, i32 29}
!5 = !{ptr @pwc_ctrl_ops, !6, !"pwc_ctrl_ops", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 33, i32 35}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 578, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pwc_g_volatile_ctrl._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @pwc_g_volatile_ctrl._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 862, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pwc_s_ctrl._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @pwc_s_ctrl._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @pwc_auto_white_balance_cfg, !19, !"pwc_auto_white_balance_cfg", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 52, i32 38}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 44, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 45, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 46, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 47, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 48, i32 2}
!30 = !{ptr @pwc_auto_whitebal_qmenu, !31, !"pwc_auto_whitebal_qmenu", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 43, i32 27}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 64, i32 10}
!34 = !{ptr @pwc_autocontour_cfg, !35, !"pwc_autocontour_cfg", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 60, i32 38}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 74, i32 10}
!38 = !{ptr @pwc_contour_cfg, !39, !"pwc_contour_cfg", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 70, i32 38}
!40 = !{ptr @pwc_backlight_cfg, !41, !"pwc_backlight_cfg", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 81, i32 38}
!42 = !{ptr @pwc_flicker_cfg, !43, !"pwc_flicker_cfg", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 90, i32 38}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 103, i32 10}
!46 = !{ptr @pwc_noise_reduction_cfg, !47, !"pwc_noise_reduction_cfg", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 99, i32 38}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 113, i32 13}
!50 = !{ptr @pwc_save_user_cfg, !51, !"pwc_save_user_cfg", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 109, i32 38}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 120, i32 13}
!54 = !{ptr @pwc_restore_user_cfg, !55, !"pwc_restore_user_cfg", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 116, i32 38}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 127, i32 13}
!58 = !{ptr @pwc_restore_factory_cfg, !59, !"pwc_restore_factory_cfg", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 123, i32 38}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 134, i32 10}
!62 = !{ptr @pwc_awb_speed_cfg, !63, !"pwc_awb_speed_cfg", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 130, i32 38}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 144, i32 10}
!66 = !{ptr @pwc_awb_delay_cfg, !67, !"pwc_awb_delay_cfg", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 140, i32 38}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 483, i32 23}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/usb.h", i32 912, i32 31}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 893, i32 2}
!74 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pwc_g_fmt_vid_cap._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pwc_g_fmt_vid_cap._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 397, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pwc_vidioc_fill_fmt._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pwc_vidioc_fill_fmt._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 463, i32 2}
!84 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pwc_s_fmt_vid_cap._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pwc_s_fmt_vid_cap._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 473, i32 2}
!89 = !{ptr @pwc_s_fmt_vid_cap._entry.27, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pwc_s_fmt_vid_cap._entry_ptr.29, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 414, i32 3}
!93 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pwc_vidioc_try_fmt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @pwc_vidioc_try_fmt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 423, i32 5}
!98 = !{ptr @pwc_vidioc_try_fmt._entry.32, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @pwc_vidioc_try_fmt._entry_ptr.34, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 429, i32 5}
!102 = !{ptr @pwc_vidioc_try_fmt._entry.35, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pwc_vidioc_try_fmt._entry_ptr.37, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 434, i32 4}
!106 = !{ptr @pwc_vidioc_try_fmt._entry.38, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pwc_vidioc_try_fmt._entry_ptr.40, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/pwc/pwc-v4l.c", i32 494, i32 19}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
