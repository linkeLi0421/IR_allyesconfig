; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtk_mdp_variant = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.mtk_mdp_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.mtk_mdp_pix_align = type { i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.mtk_mdp_fmt = type { i32, i16, i16, [8 x i8], [8 x i8], i32, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_mdp_ctx = type { %struct.list_head, %struct.mtk_mdp_frame, %struct.mtk_mdp_frame, i32, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.mtk_mdp_ctrls, i8, i32, i32, i32, i32, %struct.mtk_mdp_vpu, %struct.mutex, %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.mtk_mdp_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], [8 x i32], %struct.mtk_mdp_addr, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mtk_mdp_addr = type { [3 x i32] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mtk_mdp_ctrls = type { ptr, ptr, ptr, ptr }
%struct.mtk_mdp_vpu = type { ptr, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mtk_mdp_dev = type { %struct.mutex, %struct.mutex, ptr, ptr, i16, %struct.list_head, ptr, %struct.list_head, ptr, %struct.v4l2_device, ptr, ptr, i32, i32, ptr, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@mtk_mdp_default_variant = internal global { %struct.mtk_mdp_variant, [44 x i8] } { %struct.mtk_mdp_variant { ptr @mtk_mdp_size_max, ptr @mtk_mdp_size_min, ptr @mtk_mdp_rs_align, i16 32, i16 32, i16 32, i16 128 }, [44 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate video device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_mdp_register_m2m_device\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry_ptr = internal global ptr @mtk_mdp_register_m2m_device._entry, section ".printk_index", align 4
@mtk_mdp_m2m_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @mtk_mdp_m2m_open, ptr @mtk_mdp_m2m_release }, [60 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mtk_mdp_m2m_querycap, ptr @mtk_mdp_m2m_enum_fmt_vid_cap, ptr null, ptr @mtk_mdp_m2m_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_g_fmt_mplane, ptr @mtk_mdp_m2m_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_s_fmt_mplane, ptr @mtk_mdp_m2m_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_try_fmt_mplane, ptr @mtk_mdp_m2m_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_m2m_g_selection, ptr @mtk_mdp_m2m_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:m2m\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk-mdp\00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @mtk_mdp_m2m_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry_ptr.9 = internal global ptr @mtk_mdp_register_m2m_device._entry.7, section ".printk_index", align 4
@mtk_mdp_register_m2m_device._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry_ptr.12 = internal global ptr @mtk_mdp_register_m2m_device._entry.10, section ".printk_index", align 4
@mtk_mdp_register_m2m_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: driver registered as /dev/video%d\00", [56 x i8] zeroinitializer }, align 32
@mtk_mdp_register_m2m_device._entry_ptr.15 = internal global ptr @mtk_mdp_register_m2m_device._entry.13, section ".printk_index", align 4
@mtk_mdp_size_max = internal global { %struct.mtk_mdp_pix_limit, [20 x i8] } { %struct.mtk_mdp_pix_limit { i16 0, i16 0, i16 4096, i16 4096, i16 4096, i16 4096 }, [20 x i8] zeroinitializer }, align 32
@mtk_mdp_size_min = internal global { %struct.mtk_mdp_pix_limit, [20 x i8] } { %struct.mtk_mdp_pix_limit { i16 16, i16 16, i16 16, i16 16, i16 16, i16 16 }, [20 x i8] zeroinitializer }, align 32
@mtk_mdp_rs_align = internal global { %struct.mtk_mdp_pix_align, [24 x i8] } { %struct.mtk_mdp_pix_align { i16 2, i16 2, i16 2, i16 2 }, [24 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->slock\00", [20 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ctx->work)\00", [34 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize m2m context\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_mdp_m2m_open\00", [47 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open._entry_ptr = internal global ptr @mtk_mdp_m2m_open._entry, section ".printk_index", align 4
@mtk_mdp_m2m_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vpu_load_firmware failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open._entry_ptr.23 = internal global ptr @mtk_mdp_m2m_open._entry.21, section ".printk_index", align 4
@mtk_mdp_m2m_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mdp_vpu register failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_open._entry_ptr.26 = internal global ptr @mtk_mdp_m2m_open._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_mdp_ctrls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mtk_mdp_m2m:997:(&ctx->ctrl_handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@mtk_mdp_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mtk_mdp_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mtk_mdp_ctrls_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1020, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create control handlers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_mdp_ctrls_create\00", [43 x i8] zeroinitializer }, align 32
@mtk_mdp_ctrls_create._entry_ptr = internal global ptr @mtk_mdp_ctrls_create._entry, section ".printk_index", align 4
@mtk_mdp_formats = internal constant { [4 x %struct.mtk_mdp_fmt], [32 x i8] } { [4 x %struct.mtk_mdp_fmt] [%struct.mtk_mdp_fmt { i32 825381965, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", [8 x i8] c"\08\08\00\00\00\00\00\00", i32 1, ptr @mtk_mdp_size_align }, %struct.mtk_mdp_fmt { i32 842091854, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", [8 x i8] c"\08\08\00\00\00\00\00\00", i32 3, ptr null }, %struct.mtk_mdp_fmt { i32 842091865, i16 3, i16 3, [8 x i8] c"\08\02\02\00\00\00\00\00", [8 x i8] c"\08\04\04\00\00\00\00\00", i32 3, ptr null }, %struct.mtk_mdp_fmt { i32 842094169, i16 1, i16 3, [8 x i8] c"\0C\00\00\00\00\00\00\00", [8 x i8] c"\08\00\00\00\00\00\00\00", i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@mtk_mdp_size_align = internal global { %struct.mtk_mdp_pix_align, [24 x i8] } { %struct.mtk_mdp_pix_align { i16 16, i16 16, i16 2, i16 2 }, [24 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ctx is in error state\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_mdp_m2m_worker\00", [45 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_worker._entry_ptr = internal global ptr @mtk_mdp_m2m_worker._entry, section ".printk_index", align 4
@mtk_mdp_m2m_worker._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"processing failed: %d\00", [42 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_worker._entry_ptr.34 = internal global ptr @mtk_mdp_m2m_worker._entry.32, section ".printk_index", align 4
@mtk_mdp_prepare_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid pixelformat:0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_mdp_prepare_addr\00", [43 x i8] zeroinitializer }, align 32
@mtk_mdp_prepare_addr._entry_ptr = internal global ptr @mtk_mdp_prepare_addr._entry, section ".printk_index", align 4
@mtk_mdp_m2m_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mtk_mdp_m2m_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @mtk_mdp_m2m_buf_prepare, ptr null, ptr null, ptr @mtk_mdp_m2m_start_streaming, ptr @mtk_mdp_m2m_stop_streaming, ptr @mtk_mdp_m2m_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_s_fmt_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 700, ptr @.str.40, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"queue %d busy\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_mdp_m2m_s_fmt_mplane\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_s_fmt_mplane._entry_ptr = internal global ptr @mtk_mdp_m2m_s_fmt_mplane._entry, section ".printk_index", align 4
@mtk_mdp_try_fmt_mplane.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_mdp\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_mdp_try_fmt_mplane\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pixelformat format 0x%X invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:mt8173\00", [16 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpu init failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_mdp_m2m_streamon\00", [43 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_streamon._entry_ptr = internal global ptr @mtk_mdp_m2m_streamon._entry, section ".printk_index", align 4
@mtk_mdp_m2m_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 884, ptr @.str.40, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out of scaler range\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_mdp_m2m_s_selection\00", [40 x i8] zeroinitializer }, align 32
@mtk_mdp_m2m_s_selection._entry_ptr = internal global ptr @mtk_mdp_m2m_s_selection._entry, section ".printk_index", align 4
@mtk_mdp_try_crop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"doesn't support negative values for top & left\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_mdp_try_crop\00", [47 x i8] zeroinitializer }, align 32
@mtk_mdp_try_crop._entry_ptr = internal global ptr @mtk_mdp_try_crop._entry, section ".printk_index", align 4
@switch.table.mtk_mdp_m2m_s_fmt_mplane = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -244, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_mdp_try_fmt_mplane = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_mdp_m2m_g_fmt_mplane = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -244, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244, i32 -136, i32 -244], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9963810, i64 9963817]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.54 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.58 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 825381965, i64 842091854, i64 842091865, i64 842094169]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 842091854, i64 842091865, i64 842094169]
@__sancov_gen_cov_switch_values.62 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"mtk_mdp_default_variant\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 108, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1184, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"mtk_mdp_m2m_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1163, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"mtk_mdp_m2m_ioctl_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 894, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1195, i32 53 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1196, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"mtk_mdp_m2m_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1172, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1201, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1208, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1212, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"mtk_mdp_size_max\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 84, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"mtk_mdp_size_min\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 91, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"mtk_mdp_rs_align\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 101, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1067, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1083, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1087, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1095, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1102, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 997, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"mtk_mdp_ctrl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 991, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1019, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"mtk_mdp_formats\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 48, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"mtk_mdp_size_align\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 41, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 503, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 523, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 444, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"mtk_mdp_m2m_qops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 581, i32 29 }
@___asan_gen_.219 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1163, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 700, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 188, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 599, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 741, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 883, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [48 x i8] c"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 285, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_mdp_m2m_s_fmt_mplane\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [36 x i8] c"switch.table.mtk_mdp_try_fmt_mplane\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_mdp_m2m_g_fmt_mplane\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @mtk_mdp_ctrls_create._entry, ptr @mtk_mdp_ctrls_create._entry_ptr, ptr @mtk_mdp_m2m_open._entry, ptr @mtk_mdp_m2m_open._entry.21, ptr @mtk_mdp_m2m_open._entry.24, ptr @mtk_mdp_m2m_open._entry_ptr, ptr @mtk_mdp_m2m_open._entry_ptr.23, ptr @mtk_mdp_m2m_open._entry_ptr.26, ptr @mtk_mdp_m2m_s_fmt_mplane._entry, ptr @mtk_mdp_m2m_s_fmt_mplane._entry_ptr, ptr @mtk_mdp_m2m_s_selection._entry, ptr @mtk_mdp_m2m_s_selection._entry_ptr, ptr @mtk_mdp_m2m_streamon._entry, ptr @mtk_mdp_m2m_streamon._entry_ptr, ptr @mtk_mdp_m2m_worker._entry, ptr @mtk_mdp_m2m_worker._entry.32, ptr @mtk_mdp_m2m_worker._entry_ptr, ptr @mtk_mdp_m2m_worker._entry_ptr.34, ptr @mtk_mdp_prepare_addr._entry, ptr @mtk_mdp_prepare_addr._entry_ptr, ptr @mtk_mdp_register_m2m_device._entry, ptr @mtk_mdp_register_m2m_device._entry.10, ptr @mtk_mdp_register_m2m_device._entry.13, ptr @mtk_mdp_register_m2m_device._entry.7, ptr @mtk_mdp_register_m2m_device._entry_ptr, ptr @mtk_mdp_register_m2m_device._entry_ptr.12, ptr @mtk_mdp_register_m2m_device._entry_ptr.15, ptr @mtk_mdp_register_m2m_device._entry_ptr.9, ptr @mtk_mdp_try_crop._entry, ptr @mtk_mdp_try_crop._entry_ptr, ptr @mtk_mdp_default_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_mdp_m2m_fops, ptr @mtk_mdp_m2m_ioctl_ops, ptr @.str.5, ptr @.str.6, ptr @mtk_mdp_m2m_ops, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @mtk_mdp_size_max, ptr @mtk_mdp_size_min, ptr @mtk_mdp_rs_align, ptr @mtk_mdp_m2m_open.__key, ptr @.str.16, ptr @mtk_mdp_m2m_open.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @mtk_mdp_ctrls_create._key, ptr @.str.27, ptr @mtk_mdp_ctrl_ops, ptr @.str.28, ptr @.str.29, ptr @mtk_mdp_formats, ptr @mtk_mdp_size_align, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @mtk_mdp_m2m_qops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.mtk_mdp_m2m_s_fmt_mplane, ptr @switch.table.mtk_mdp_try_fmt_mplane, ptr @switch.table.mtk_mdp_m2m_g_fmt_mplane], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_default_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_register_m2m_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_register_m2m_device._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_register_m2m_device._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_register_m2m_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_size_max to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_size_min to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_rs_align to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_open.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_ctrls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_ctrls_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_formats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_size_align to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_worker._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_prepare_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_s_fmt_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_m2m_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_try_crop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_mdp_m2m_s_fmt_mplane to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_mdp_try_fmt_mplane to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_mdp_m2m_g_fmt_mplane to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_ctx_state_lock_set(ptr noundef %ctx, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #12
  %state1 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %or = or i32 %1, %state
  store i32 %or, ptr %state1, align 4
  tail call void @mutex_unlock(ptr noundef %slock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_register_m2m_device(ptr noundef %mdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %variant = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mtk_mdp_default_variant, ptr %variant, align 4
  %call = tail call ptr @video_device_alloc() #12
  %vdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 8
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %vdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 67125248, ptr %device_caps, align 8
  %5 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev, align 4
  %fops = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mtk_mdp_m2m_fops, ptr %fops, align 4
  %8 = load ptr, ptr %vdev, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_mdp_m2m_ioctl_ops, ptr %ioctl_ops, align 4
  %10 = load ptr, ptr %vdev, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @video_device_release, ptr %release, align 8
  %12 = load ptr, ptr %vdev, align 4
  %lock8 = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %lock8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mdp, ptr %lock8, align 8
  %14 = load ptr, ptr %vdev, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %vfl_dir, align 4
  %v4l2_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 9
  %16 = load ptr, ptr %vdev, align 4
  %v4l2_dev11 = getelementptr inbounds %struct.video_device, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %v4l2_dev11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %v4l2_dev, ptr %v4l2_dev11, align 4
  %18 = load ptr, ptr %vdev, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %18, i32 0, i32 12
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %19 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %20, i32 0, i32 5, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mdp, ptr %driver_data.i.i, align 4
  %call15 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @mtk_mdp_m2m_ops) #12
  %m2m_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 6
  %22 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call15, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #15
  %23 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_dev, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %err_m2m_init

if.end24:                                         ; preds = %if.end
  %26 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fops.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %27, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %do.end35, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  %32 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %33) #12
  br label %err_m2m_init

do.end35:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %name37 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 9, i32 4
  %34 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num, align 4
  %conv = zext i16 %37 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name37, i32 noundef %conv) #15
  br label %cleanup

err_m2m_init:                                     ; preds = %do.end31, %do.end21
  %ret.0 = phi i32 [ %25, %do.end21 ], [ %call.i, %do.end31 ]
  %38 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev, align 4
  tail call void @video_device_release(ptr noundef %39) #12
  br label %cleanup

cleanup:                                          ; preds = %err_m2m_init, %do.end35, %do.end
  %retval.0 = phi i32 [ 0, %do.end35 ], [ %ret.0, %err_m2m_init ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_unregister_m2m_device(ptr nocapture noundef readonly %mdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 8
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  tail call void @video_unregister_device(ptr noundef %1) #12
  %m2m_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 6
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_open(ptr noundef %file) #0 align 64 {
entry:
  %default_format = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #12
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %default_format) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 816) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.end.err_lock_crit_edge

if.end.err_lock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_lock

do.body:                                          ; preds = %if.end
  %slock = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %slock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mtk_mdp_m2m_open.__key) #12
  %id_counter = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %id_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_counter, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %id_counter, align 4
  %id = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 8
  %fh = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 10
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh, ptr %private_data, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 11
  %call.i129 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @mtk_mdp_ctrls_create._key, ptr noundef nonnull @.str.27) #12
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @mtk_mdp_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #12
  %ctrls.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %ctrls.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @mtk_mdp_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %hflip.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %hflip.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4.i, ptr %hflip.i, align 8
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @mtk_mdp_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %vflip.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %vflip.i, align 4
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @mtk_mdp_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #12
  %global_alpha.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 12, i32 3
  %10 = ptrtoint ptr %global_alpha.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10.i, ptr %global_alpha.i, align 8
  %error.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 11, i32 9
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %ctrls_rdy.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 13
  %frombool.i = zext i1 %cmp.i to i8
  %13 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %ctrls_rdy.i, align 4
  br i1 %cmp.i, label %if.end11, label %mtk_mdp_ctrls_create.exit

mtk_mdp_ctrls_create.exit:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #12
  %mdp_dev.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %mdp_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdp_dev.i, align 4
  %pdev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #15
  br label %error_ctrls

if.end11:                                         ; preds = %do.body
  %ctrl_handler13 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %ctrl_handler13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ctrl_handler.i, ptr %ctrl_handler13, align 8
  tail call void @v4l2_fh_add(ptr noundef %fh) #12
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %mdp_dev, align 4
  %s_frame.i.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 1
  %fmt.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mtk_mdp_formats, ptr %fmt.i, align 4
  %variant.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant.i, align 4
  %pix_min.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pix_min.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pix_min.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  %conv.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %s_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %s_frame.i.i, align 8
  %30 = load ptr, ptr %variant.i, align 4
  %pix_min3.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pix_min3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pix_min3.i, align 4
  %org_h.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %org_h.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %org_h.i, align 2
  %conv4.i = zext i16 %34 to i32
  %height.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv4.i, ptr %height.i, align 4
  %mul.i = mul nuw i32 %conv4.i, %conv.i
  %payload.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.i, ptr %payload.i, align 8
  %div52.i = lshr i32 %mul.i, 1
  %arrayidx10.i = getelementptr %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div52.i, ptr %arrayidx10.i, align 4
  %d_frame.i.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 2
  %fmt13.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %fmt13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr getelementptr inbounds ([4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 1), ptr %fmt13.i, align 8
  %39 = load ptr, ptr %variant.i, align 4
  %pix_min15.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pix_min15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pix_min15.i, align 4
  %target_rot_dis_w.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %target_rot_dis_w.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %target_rot_dis_w.i, align 2
  %conv16.i = zext i16 %43 to i32
  %44 = ptrtoint ptr %d_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv16.i, ptr %d_frame.i.i, align 4
  %45 = load ptr, ptr %variant.i, align 4
  %pix_min19.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pix_min19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pix_min19.i, align 4
  %target_rot_dis_h.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %target_rot_dis_h.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %target_rot_dis_h.i, align 2
  %conv20.i = zext i16 %49 to i32
  %height21.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %height21.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv20.i, ptr %height21.i, align 8
  %mul24.i = mul nuw i32 %conv20.i, %conv16.i
  %payload25.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %payload25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul24.i, ptr %payload25.i, align 4
  %div2953.i = lshr i32 %mul24.i, 1
  %arrayidx31.i = getelementptr %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  %52 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div2953.i, ptr %arrayidx31.i, align 8
  %work = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %53 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @mtk_mdp_m2m_open.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 20, i32 1
  %54 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry19, ptr %entry19, align 8
  %prev.i131 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 20, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry19, ptr %prev.i131, align 4
  %func = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 20, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mtk_mdp_m2m_worker, ptr %func, align 8
  %m2m_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_dev, align 4
  %call23 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %58, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mtk_mdp_m2m_queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call23, ptr %m2m_ctx, align 8
  %cmp.i132 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #15
  %62 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %m2m_ctx, align 8
  %64 = ptrtoint ptr %63 to i32
  br label %error_m2m_ctx

if.end32:                                         ; preds = %if.end11
  %m2m_ctx35 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call7.i.i, i32 0, i32 10, i32 10
  %65 = ptrtoint ptr %m2m_ctx35 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call23, ptr %m2m_ctx35, align 8
  %ctx_num = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %ctx_num to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctx_num, align 4
  %inc36 = add i32 %67, 1
  store i32 %inc36, ptr %ctx_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp = icmp eq i32 %67, 0
  br i1 %cmp, label %if.then37, label %if.end32.if.end57_crit_edge

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then37:                                        ; preds = %if.end32
  %vpu_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %vpu_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vpu_dev, align 4
  %call38 = tail call i32 @vpu_load_firmware(ptr noundef %69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  %pdev44 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %pdev44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev44, align 4
  br i1 %cmp39, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.22, i32 noundef %call38) #15
  br label %err_load_vpu

if.end46:                                         ; preds = %if.then37
  %call48 = tail call i32 @mtk_mdp_vpu_register(ptr noundef %71) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %pdev44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev44, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.25, i32 noundef %call48) #15
  br label %err_load_vpu

if.end57:                                         ; preds = %if.end46.if.end57_crit_edge, %if.end32.if.end57_crit_edge
  %ctx_list = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %ctx_list, ptr noundef %75) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end57.list_add.exit_crit_edge

if.end57.list_add.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %call7.i.i, align 8
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ctx_list, ptr %prev.i, align 4
  %79 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call7.i.i, ptr %ctx_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end57.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #12
  %80 = getelementptr inbounds i8, ptr %default_format, i32 16
  %81 = call ptr @memset(ptr %80, i32 0, i32 188)
  %82 = ptrtoint ptr %default_format to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 10, ptr %default_format, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %default_format, i32 0, i32 1
  %83 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %default_format, i32 0, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %default_format, i32 0, i32 1, i32 0, i32 2
  %85 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 842091865, ptr %pixelformat, align 4
  %call63 = call i32 @mtk_mdp_m2m_s_fmt_mplane(ptr noundef %file, ptr noundef %fh, ptr noundef nonnull %default_format)
  %86 = ptrtoint ptr %default_format to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 9, ptr %default_format, align 4
  %call66 = call i32 @mtk_mdp_m2m_s_fmt_mplane(ptr noundef %file, ptr noundef %fh, ptr noundef nonnull %default_format)
  br label %cleanup

err_load_vpu:                                     ; preds = %do.end53, %do.end43
  %ret.0 = phi i32 [ %call38, %do.end43 ], [ %call48, %do.end53 ]
  %87 = ptrtoint ptr %ctx_num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ctx_num, align 4
  %dec = add i32 %88, -1
  store i32 %dec, ptr %ctx_num, align 4
  %89 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %90) #12
  br label %error_m2m_ctx

error_m2m_ctx:                                    ; preds = %err_load_vpu, %do.end29
  %ret.1 = phi i32 [ %64, %do.end29 ], [ %ret.0, %err_load_vpu ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #12
  br label %error_ctrls

error_ctrls:                                      ; preds = %error_m2m_ctx, %mtk_mdp_ctrls_create.exit
  %ret.2 = phi i32 [ %12, %mtk_mdp_ctrls_create.exit ], [ %ret.1, %error_m2m_ctx ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #12
  tail call void @v4l2_fh_exit(ptr noundef %fh) #12
  tail call void @mutex_unlock(ptr noundef %1) #12
  br label %err_lock

err_lock:                                         ; preds = %error_ctrls, %if.end.err_lock_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error_ctrls ], [ -512, %if.end.err_lock_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_lock, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_lock ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %default_format) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_release(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -252
  %mdp_dev = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp_dev, align 4
  %job_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %job_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %job_wq, align 4
  tail call void @flush_workqueue(ptr noundef %5) #12
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #12
  %m2m_ctx = getelementptr i8, ptr %1, i32 -4
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %7) #12
  %ctrl_handler = getelementptr i8, ptr %1, i32 192
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_fh_del(ptr noundef %1) #12
  tail call void @v4l2_fh_exit(ptr noundef %1) #12
  %vpu = getelementptr i8, ptr %1, i32 412
  %call2 = tail call i32 @mtk_mdp_vpu_deinit(ptr noundef %vpu) #12
  %ctx_num = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %ctx_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_num, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %ctx_num, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr i8, ptr %1, i32 -248
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 4
  %prev.i3.i = getelementptr i8, ptr %1, i32 -248
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_m2m_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -772
  %mdp_dev = getelementptr i8, ptr %work, i32 -528
  %0 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_dev, align 4
  %slock.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #12
  %state.i = getelementptr i8, ptr %work, i32 -544
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  tail call void @mutex_unlock(ptr noundef %slock.i) #12
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  br label %worker_end

if.end:                                           ; preds = %entry
  %s_frame1.i = getelementptr i8, ptr %work, i32 -764
  %d_frame2.i = getelementptr i8, ptr %work, i32 -656
  %m2m_ctx.i = getelementptr i8, ptr %work, i32 -524
  %6 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #12
  %addr.i = getelementptr i8, ptr %work, i32 -676
  %8 = ptrtoint ptr %s_frame1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_frame1.i, align 4
  %height.i.i = getelementptr i8, ptr %work, i32 -760
  %10 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i.i, align 4
  %mul.i.i = mul i32 %11, %9
  %fmt.i.i = getelementptr i8, ptr %work, i32 -664
  %12 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt.i.i, align 4
  %num_planes.i.i = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_planes.i.i, align 4
  %16 = tail call i16 @llvm.umin.i16(i16 %15, i16 3) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp238.not.i.i = icmp eq i16 %16, 0
  br i1 %cmp238.not.i.i, label %if.end.mtk_mdp_prepare_addr.exit.i_crit_edge, label %for.body.i.i

if.end.mtk_mdp_prepare_addr.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_prepare_addr.exit.i

for.body.i.i:                                     ; preds = %if.end
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #12
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i.i.i, align 4
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cond = icmp eq i16 %16, 1
  br i1 %cond, label %for.body.i.i.if.then.i.i_crit_edge, label %for.body.i.i.1

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %call.i.i.i.1 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 1) #12
  %20 = ptrtoint ptr %call.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i.i.i.1, align 4
  %arrayidx.i.i.1 = getelementptr i8, ptr %work, i32 -672
  %22 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cond32 = icmp eq i16 %16, 2
  br i1 %cond32, label %for.body.i.i.1.mtk_mdp_prepare_addr.exit.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.mtk_mdp_prepare_addr.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_prepare_addr.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %call.i.i.i.2 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 2) #12
  %23 = ptrtoint ptr %call.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i.i.i.2, align 4
  %arrayidx.i.i.2 = getelementptr i8, ptr %work, i32 -668
  %25 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp5.i.i = icmp eq i16 %16, 1
  br i1 %cmp5.i.i, label %for.body.i.i.2.if.then.i.i_crit_edge, label %for.body.i.i.2.mtk_mdp_prepare_addr.exit.i_crit_edge

for.body.i.i.2.mtk_mdp_prepare_addr.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_prepare_addr.exit.i

for.body.i.i.2.if.then.i.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i.2.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %26 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094169, i32 %29)
  %cmp8.i.i = icmp eq i32 %29, 842094169
  br i1 %cmp8.i.i, label %if.then10.i.i, label %do.end.i.i

if.then10.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 4
  %add.i.i = add i32 %31, %mul.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %work, i32 -672
  %32 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i.i, ptr %arrayidx14.i.i, align 4
  %shr.i.i = lshr i32 %mul.i.i, 2
  %add17.i.i = add i32 %add.i.i, %shr.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %work, i32 -668
  %33 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add17.i.i, ptr %arrayidx19.i.i, align 4
  br label %mtk_mdp_prepare_addr.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdp_dev, align 4
  %pdev.i.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35, i32 noundef %29) #15
  br label %mtk_mdp_prepare_addr.exit.i

mtk_mdp_prepare_addr.exit.i:                      ; preds = %do.end.i.i, %if.then10.i.i, %for.body.i.i.2.mtk_mdp_prepare_addr.exit.i_crit_edge, %for.body.i.i.1.mtk_mdp_prepare_addr.exit.i_crit_edge, %if.end.mtk_mdp_prepare_addr.exit.i_crit_edge
  %38 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %39, i32 0, i32 7
  %call.i19.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #12
  %addr6.i = getelementptr i8, ptr %work, i32 -568
  %40 = ptrtoint ptr %d_frame2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %d_frame2.i, align 4
  %height.i20.i = getelementptr i8, ptr %work, i32 -652
  %42 = ptrtoint ptr %height.i20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i20.i, align 4
  %mul.i21.i = mul i32 %43, %41
  %fmt.i22.i = getelementptr i8, ptr %work, i32 -556
  %44 = ptrtoint ptr %fmt.i22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fmt.i22.i, align 4
  %num_planes.i23.i = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %num_planes.i23.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_planes.i23.i, align 4
  %48 = tail call i16 @llvm.umin.i16(i16 %47, i16 3) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp238.not.i25.i = icmp eq i16 %48, 0
  br i1 %cmp238.not.i25.i, label %mtk_mdp_prepare_addr.exit.i.mtk_mdp_m2m_get_bufs.exit_crit_edge, label %for.body.i31.i

mtk_mdp_prepare_addr.exit.i.mtk_mdp_m2m_get_bufs.exit_crit_edge: ; preds = %mtk_mdp_prepare_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_m2m_get_bufs.exit

for.body.i31.i:                                   ; preds = %mtk_mdp_prepare_addr.exit.i
  %call.i.i27.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i19.i, i32 noundef 0) #12
  %49 = ptrtoint ptr %call.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i.i27.i, align 4
  %51 = ptrtoint ptr %addr6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %addr6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %48)
  %cond33 = icmp eq i16 %48, 1
  br i1 %cond33, label %for.body.i31.i.if.then.i35.i_crit_edge, label %for.body.i31.i.1

for.body.i31.i.if.then.i35.i_crit_edge:           ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i35.i

for.body.i31.i.1:                                 ; preds = %for.body.i31.i
  %call.i.i27.i.1 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i19.i, i32 noundef 1) #12
  %52 = ptrtoint ptr %call.i.i27.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i.i27.i.1, align 4
  %arrayidx.i28.i.1 = getelementptr i8, ptr %work, i32 -564
  %54 = ptrtoint ptr %arrayidx.i28.i.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx.i28.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %48)
  %cond34 = icmp eq i16 %48, 2
  br i1 %cond34, label %for.body.i31.i.1.mtk_mdp_m2m_get_bufs.exit_crit_edge, label %for.body.i31.i.2

for.body.i31.i.1.mtk_mdp_m2m_get_bufs.exit_crit_edge: ; preds = %for.body.i31.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_m2m_get_bufs.exit

for.body.i31.i.2:                                 ; preds = %for.body.i31.i.1
  %call.i.i27.i.2 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i19.i, i32 noundef 2) #12
  %55 = ptrtoint ptr %call.i.i27.i.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i.i27.i.2, align 4
  %arrayidx.i28.i.2 = getelementptr i8, ptr %work, i32 -560
  %57 = ptrtoint ptr %arrayidx.i28.i.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx.i28.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %48)
  %cmp5.i32.i = icmp eq i16 %48, 1
  br i1 %cmp5.i32.i, label %for.body.i31.i.2.if.then.i35.i_crit_edge, label %for.body.i31.i.2.mtk_mdp_m2m_get_bufs.exit_crit_edge

for.body.i31.i.2.mtk_mdp_m2m_get_bufs.exit_crit_edge: ; preds = %for.body.i31.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_m2m_get_bufs.exit

for.body.i31.i.2.if.then.i35.i_crit_edge:         ; preds = %for.body.i31.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i35.i

if.then.i35.i:                                    ; preds = %for.body.i31.i.2.if.then.i35.i_crit_edge, %for.body.i31.i.if.then.i35.i_crit_edge
  %58 = ptrtoint ptr %fmt.i22.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fmt.i22.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094169, i32 %61)
  %cmp8.i34.i = icmp eq i32 %61, 842094169
  br i1 %cmp8.i34.i, label %if.then10.i41.i, label %do.end.i45.i

if.then10.i41.i:                                  ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr6.i, align 4
  %add.i36.i = add i32 %63, %mul.i21.i
  %arrayidx14.i37.i = getelementptr i8, ptr %work, i32 -564
  %64 = ptrtoint ptr %arrayidx14.i37.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i36.i, ptr %arrayidx14.i37.i, align 4
  %shr.i38.i = lshr i32 %mul.i21.i, 2
  %add17.i39.i = add i32 %add.i36.i, %shr.i38.i
  %arrayidx19.i40.i = getelementptr i8, ptr %work, i32 -560
  %65 = ptrtoint ptr %arrayidx19.i40.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add17.i39.i, ptr %arrayidx19.i40.i, align 4
  br label %mtk_mdp_m2m_get_bufs.exit

do.end.i45.i:                                     ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdp_dev, align 4
  %pdev.i43.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %pdev.i43.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i43.i, align 4
  %dev.i44.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44.i, ptr noundef nonnull @.str.35, i32 noundef %61) #15
  br label %mtk_mdp_m2m_get_bufs.exit

mtk_mdp_m2m_get_bufs.exit:                        ; preds = %do.end.i45.i, %if.then10.i41.i, %for.body.i31.i.2.mtk_mdp_m2m_get_bufs.exit_crit_edge, %for.body.i31.i.1.mtk_mdp_m2m_get_bufs.exit_crit_edge, %mtk_mdp_prepare_addr.exit.i.mtk_mdp_m2m_get_bufs.exit_crit_edge
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %timestamp.i, align 8
  %timestamp9.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i19.i, i32 0, i32 5
  %72 = ptrtoint ptr %timestamp9.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %timestamp9.i, align 8
  tail call void @mtk_mdp_hw_set_input_addr(ptr noundef %add.ptr, ptr noundef %addr.i) #12
  tail call void @mtk_mdp_hw_set_output_addr(ptr noundef %add.ptr, ptr noundef %addr6.i) #12
  tail call void @mtk_mdp_hw_set_in_size(ptr noundef %add.ptr) #12
  tail call void @mtk_mdp_hw_set_in_image_format(ptr noundef %add.ptr) #12
  tail call void @mtk_mdp_hw_set_out_size(ptr noundef %add.ptr) #12
  tail call void @mtk_mdp_hw_set_out_image_format(ptr noundef %add.ptr) #12
  tail call void @mtk_mdp_hw_set_rotation(ptr noundef %add.ptr) #12
  tail call void @mtk_mdp_hw_set_global_alpha(ptr noundef %add.ptr) #12
  %vpu = getelementptr i8, ptr %work, i32 -108
  %call2 = tail call i32 @mtk_mdp_vpu_process(ptr noundef %vpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %mtk_mdp_m2m_get_bufs.exit.worker_end_crit_edge, label %do.end6

mtk_mdp_m2m_get_bufs.exit.worker_end_crit_edge:   ; preds = %mtk_mdp_m2m_get_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %worker_end

do.end6:                                          ; preds = %mtk_mdp_m2m_get_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pdev7 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev7, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.33, i32 noundef %call2) #15
  br label %worker_end

worker_end:                                       ; preds = %do.end6, %mtk_mdp_m2m_get_bufs.exit.worker_end_crit_edge, %do.end
  %buf_state.0 = phi i32 [ 6, %do.end ], [ 6, %do.end6 ], [ 5, %mtk_mdp_m2m_get_bufs.exit.worker_end_crit_edge ]
  %m2m_dev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m2m_dev.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %76) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %worker_end.mtk_mdp_process_done.exit_crit_edge, label %if.end.i

worker_end.mtk_mdp_process_done.exit_crit_edge:   ; preds = %worker_end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_process_done.exit

if.end.i:                                         ; preds = %worker_end
  call void @__sanitizer_cov_trace_pc() #14
  %m2m_ctx.i26 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call.i, i32 0, i32 9
  %77 = ptrtoint ptr %m2m_ctx.i26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m2m_ctx.i26, align 4
  %out_q_ctx.i.i27 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %78, i32 0, i32 8
  %call.i.i28 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i27) #12
  %79 = ptrtoint ptr %m2m_ctx.i26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m2m_ctx.i26, align 4
  %cap_q_ctx.i.i29 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %80, i32 0, i32 7
  %call.i27.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i29) #12
  %timestamp.i30 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i28, i32 0, i32 5
  %81 = ptrtoint ptr %timestamp.i30 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %timestamp.i30, align 8
  %timestamp5.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i27.i, i32 0, i32 5
  %83 = ptrtoint ptr %timestamp5.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %timestamp5.i, align 8
  %timecode.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i27.i, i32 0, i32 3
  %timecode6.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i.i28, i32 0, i32 3
  %84 = call ptr @memcpy(ptr %timecode.i, ptr %timecode6.i, i32 16)
  %flags.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i27.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 8
  %and.i31 = and i32 %86, -458753
  store i32 %and.i31, ptr %flags.i, align 8
  %flags7.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i.i28, i32 0, i32 1
  %87 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags7.i, align 8
  %and8.i = and i32 %88, 458752
  %or.i = or i32 %and8.i, %and.i31
  store i32 %or.i, ptr %flags.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i.i28, i32 noundef %buf_state.0) #12
  tail call void @vb2_buffer_done(ptr noundef %call.i27.i, i32 noundef %buf_state.0) #12
  %mdp_dev.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %call.i, i32 0, i32 8
  %89 = ptrtoint ptr %mdp_dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mdp_dev.i, align 4
  %m2m_dev10.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %m2m_dev10.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %m2m_dev10.i, align 4
  %93 = ptrtoint ptr %m2m_ctx.i26 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %m2m_ctx.i26, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %92, ptr noundef %94) #12
  br label %mtk_mdp_process_done.exit

mtk_mdp_process_done.exit:                        ; preds = %if.end.i, %worker_end.mtk_mdp_process_done.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %src_vq, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 504)
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_mdp_m2m_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %timestamp_flags, align 4
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev1, align 4
  %14 = load ptr, ptr %mdp_dev, align 4
  %lock3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %15 = ptrtoint ptr %lock3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %lock3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr inbounds i8, ptr %dst_vq, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 504)
  %18 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %19 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %21 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mtk_mdp_m2m_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %22 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %23 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 744, ptr %buf_struct_size9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %24 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %timestamp_flags10, align 4
  %25 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdp_dev, align 4
  %pdev12 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %dev14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %29 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev13, ptr %dev14, align 4
  %30 = load ptr, ptr %mdp_dev, align 4
  %lock17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %31 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %lock17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_load_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_vpu_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_s_fmt_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fh, i32 -252
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.mtk_mdp_ctx_get_frame.exit_crit_edge

entry.mtk_mdp_ctx_get_frame.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_ctx_get_frame.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mtk_mdp_m2m_s_fmt_mplane, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_mdp_ctx_get_frame.exit

mtk_mdp_ctx_get_frame.exit:                       ; preds = %switch.lookup, %entry.mtk_mdp_ctx_get_frame.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -136, %entry.mtk_mdp_ctx_get_frame.exit_crit_edge ]
  %s_frame.i = getelementptr i8, ptr %fh, i32 %.sink
  %call2 = tail call fastcc ptr @mtk_mdp_try_fmt_mplane(ptr noundef %add.ptr.i, ptr noundef %f)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge, label %if.end

mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mtk_mdp_ctx_get_frame.exit
  %fmt3 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 6
  %4 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %fmt3, align 4
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  %call5 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %6, i32 noundef %8) #12
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call5, i32 0, i32 28
  %9 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mdp_dev = getelementptr i8, ptr %fh, i32 -8
  %10 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %15) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fmt10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %16 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt3, align 4
  %num_planes95 = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_planes95 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_planes95, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp97.not = icmp eq i16 %19, 0
  br i1 %cmp97.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.098
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 3, i32 %i.098
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx13, align 4
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.098, i32 1
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %bytesperline, align 1
  %arrayidx16 = getelementptr %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 4, i32 %i.098
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx16, align 4
  %inc = add nuw nsw i32 %i.098, 1
  %26 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt3, align 4
  %num_planes = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %29 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %30 = ptrtoint ptr %fmt10 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %fmt10, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %height, align 1
  %34 = ptrtoint ptr %s_frame.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %s_frame.i, align 4
  %height2.i = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 1
  %35 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %height2.i, align 4
  %crop.i = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2
  %width3.i = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %width3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %width3.i, align 4
  %height5.i = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %height5.i, align 4
  %38 = ptrtoint ptr %crop.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %crop.i, align 4
  %top.i = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %top.i, align 4
  %40 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %for.end.cleanup_crit_edge [
    i32 2, label %for.end.if.then47_crit_edge
    i32 10, label %for.end.if.then47_crit_edge99
    i32 3, label %for.end.if.then47_crit_edge100
    i32 8, label %for.end.if.then47_crit_edge101
    i32 5, label %for.end.if.then47_crit_edge102
    i32 7, label %for.end.if.then47_crit_edge103
    i32 12, label %for.end.if.then47_crit_edge104
    i32 14, label %for.end.if.then47_crit_edge105
  ]

for.end.if.then47_crit_edge105:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge104:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge103:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge102:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge101:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge100:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge99:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.if.then47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %for.end.if.then47_crit_edge, %for.end.if.then47_crit_edge99, %for.end.if.then47_crit_edge100, %for.end.if.then47_crit_edge101, %for.end.if.then47_crit_edge102, %for.end.if.then47_crit_edge103, %for.end.if.then47_crit_edge104, %for.end.if.then47_crit_edge105
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %43 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %colorspace, align 1
  %colorspace48 = getelementptr i8, ptr %fh, i32 396
  %45 = ptrtoint ptr %colorspace48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %colorspace48, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %46 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %xfer_func, align 1
  %conv49 = zext i8 %47 to i32
  %xfer_func50 = getelementptr i8, ptr %fh, i32 404
  %48 = ptrtoint ptr %xfer_func50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv49, ptr %xfer_func50, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv51 = zext i8 %51 to i32
  %ycbcr_enc = getelementptr i8, ptr %fh, i32 400
  %52 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv51, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %53 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %quantization, align 1
  %conv52 = zext i8 %54 to i32
  %quant = getelementptr i8, ptr %fh, i32 408
  %55 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv52, ptr %quant, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %for.end.cleanup_crit_edge, %do.end, %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mdp_s_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %mdp_dev = getelementptr i8, ptr %1, i32 -200
  %2 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp_dev, align 4
  %variant1 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant1, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb2
    i32 9963810, label %sw.bb10
    i32 9963817, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %hflip = getelementptr i8, ptr %1, i32 -204
  %13 = trunc i32 %12 to i8
  %14 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %hflip, align 4
  %bf.shl = shl i8 %13, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %hflip, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val3, align 4
  %vflip = getelementptr i8, ptr %1, i32 -204
  %17 = trunc i32 %16 to i8
  %18 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load4 = load i8, ptr %vflip, align 4
  %bf.value5 = shl i8 %17, 6
  %bf.shl6 = and i8 %bf.value5, 64
  %bf.clear7 = and i8 %bf.load4, -65
  %bf.set8 = or i8 %bf.shl6, %bf.clear7
  store i8 %bf.set8, ptr %vflip, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %width = getelementptr i8, ptr %1, i32 -420
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %height = getelementptr i8, ptr %1, i32 -416
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %width14 = getelementptr i8, ptr %1, i32 -312
  %23 = ptrtoint ptr %width14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width14, align 4
  %height17 = getelementptr i8, ptr %1, i32 -308
  %25 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height17, align 4
  %ctrls = getelementptr i8, ptr %1, i32 184
  %27 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrls, align 4
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val18, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %30, label %if.else.i [
    i32 90, label %sw.bb10.if.end.i_crit_edge
    i32 270, label %sw.bb10.if.end.i_crit_edge47
  ]

sw.bb10.if.end.i_crit_edge47:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb10.if.end.i_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb10.if.end.i_crit_edge, %sw.bb10.if.end.i_crit_edge47
  %tmp_w.0.i = phi i32 [ %24, %if.else.i ], [ %26, %sw.bb10.if.end.i_crit_edge ], [ %26, %sw.bb10.if.end.i_crit_edge47 ]
  %tmp_h.0.i = phi i32 [ %26, %if.else.i ], [ %24, %sw.bb10.if.end.i_crit_edge ], [ %24, %sw.bb10.if.end.i_crit_edge47 ]
  %div.i = sdiv i32 %20, %tmp_w.0.i
  %h_scale_down_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %5, i32 0, i32 5
  %32 = ptrtoint ptr %h_scale_down_max.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %h_scale_down_max.i, align 4
  %conv.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i)
  %cmp2.i = icmp sgt i32 %div.i, %conv.i
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %div5.i = sdiv i32 %22, %tmp_h.0.i
  %v_scale_down_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %v_scale_down_max.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %v_scale_down_max.i, align 2
  %conv6.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %conv6.i)
  %cmp7.i = icmp sgt i32 %div5.i, %conv6.i
  br i1 %cmp7.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %lor.lhs.false9.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false4.i
  %div10.i = sdiv i32 %tmp_w.0.i, %20
  %h_scale_up_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %h_scale_up_max.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %h_scale_up_max.i, align 4
  %conv11.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %conv11.i)
  %cmp12.i = icmp sgt i32 %div10.i, %conv11.i
  br i1 %cmp12.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %lor.lhs.false14.i

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  %div15.i = sdiv i32 %tmp_h.0.i, %22
  %v_scale_up_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %5, i32 0, i32 4
  %38 = ptrtoint ptr %v_scale_up_max.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %v_scale_up_max.i, align 2
  %conv16.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.i, i32 %conv16.i)
  %cmp17.i = icmp sgt i32 %div15.i, %conv16.i
  br i1 %cmp17.i, label %lor.lhs.false14.i.cleanup_crit_edge, label %if.end22

lor.lhs.false14.i.cleanup_crit_edge:              ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %40 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val23, align 4
  %rotation = getelementptr i8, ptr %1, i32 -208
  %42 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rotation, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val25, align 4
  %conv = trunc i32 %44 to i8
  %alpha = getelementptr i8, ptr %1, i32 -224
  %45 = ptrtoint ptr %alpha to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv, ptr %alpha, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.end22, %lor.lhs.false14.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ 0, %if.end22 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %lor.lhs.false9.i.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mtk_mdp_check_scaler_ratio(ptr nocapture noundef readonly %var, i32 noundef %src_w, i32 noundef %src_h, i32 noundef %dst_w, i32 noundef %dst_h, i32 noundef %rot) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rot to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %rot, label %if.else [
    i32 90, label %entry.if.end_crit_edge
    i32 270, label %entry.if.end_crit_edge32
  ]

entry.if.end_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge32
  %tmp_w.0 = phi i32 [ %dst_w, %if.else ], [ %dst_h, %entry.if.end_crit_edge ], [ %dst_h, %entry.if.end_crit_edge32 ]
  %tmp_h.0 = phi i32 [ %dst_h, %if.else ], [ %dst_w, %entry.if.end_crit_edge ], [ %dst_w, %entry.if.end_crit_edge32 ]
  %div = sdiv i32 %src_w, %tmp_w.0
  %h_scale_down_max = getelementptr inbounds %struct.mtk_mdp_variant, ptr %var, i32 0, i32 5
  %1 = ptrtoint ptr %h_scale_down_max to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %h_scale_down_max, align 4
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp2 = icmp sgt i32 %div, %conv
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %div5 = sdiv i32 %src_h, %tmp_h.0
  %v_scale_down_max = getelementptr inbounds %struct.mtk_mdp_variant, ptr %var, i32 0, i32 6
  %3 = ptrtoint ptr %v_scale_down_max to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %v_scale_down_max, align 2
  %conv6 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div5, i32 %conv6)
  %cmp7 = icmp sgt i32 %div5, %conv6
  br i1 %cmp7, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %div10 = sdiv i32 %tmp_w.0, %src_w
  %h_scale_up_max = getelementptr inbounds %struct.mtk_mdp_variant, ptr %var, i32 0, i32 3
  %5 = ptrtoint ptr %h_scale_up_max to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %h_scale_up_max, align 4
  %conv11 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div10, i32 %conv11)
  %cmp12 = icmp sgt i32 %div10, %conv11
  br i1 %cmp12, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  %div15 = sdiv i32 %tmp_h.0, %src_h
  %v_scale_up_max = getelementptr inbounds %struct.mtk_mdp_variant, ptr %var, i32 0, i32 4
  %7 = ptrtoint ptr %v_scale_up_max to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %v_scale_up_max, align 2
  %conv16 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div15, i32 %conv16)
  %cmp17 = icmp sgt i32 %div15, %conv16
  %spec.select = select i1 %cmp17, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false14, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_input_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_output_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_in_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_in_image_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_out_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_out_image_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_rotation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_hw_set_global_alpha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_vpu_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %3, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge18
    i32 3, label %entry.if.then.i_crit_edge19
    i32 8, label %entry.if.then.i_crit_edge20
    i32 5, label %entry.if.then.i_crit_edge21
    i32 7, label %entry.if.then.i_crit_edge22
    i32 12, label %entry.if.then.i_crit_edge23
    i32 14, label %entry.if.then.i_crit_edge24
  ]

entry.if.then.i_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge18, %entry.if.then.i_crit_edge19, %entry.if.then.i_crit_edge20, %entry.if.then.i_crit_edge21, %entry.if.then.i_crit_edge22, %entry.if.then.i_crit_edge23, %entry.if.then.i_crit_edge24
  %s_frame.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 1
  br label %mtk_mdp_ctx_get_frame.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 2
  br label %mtk_mdp_ctx_get_frame.exit

mtk_mdp_ctx_get_frame.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %s_frame.i, %if.then.i ], [ %d_frame.i, %if.end.i ]
  %fmt = getelementptr inbounds %struct.mtk_mdp_frame, ptr %retval.0.i, i32 0, i32 6
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt, align 4
  %num_planes2 = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %num_planes2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_planes2, align 4
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %num_planes, align 4
  %10 = load ptr, ptr %fmt, align 4
  %num_planes414 = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %num_planes414 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_planes414, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp16.not = icmp eq i16 %12, 0
  br i1 %cmp16.not, label %mtk_mdp_ctx_get_frame.exit.for.end_crit_edge, label %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge

mtk_mdp_ctx_get_frame.exit.for.body_crit_edge:    ; preds = %mtk_mdp_ctx_get_frame.exit
  br label %for.body

mtk_mdp_ctx_get_frame.exit.for.end_crit_edge:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_mdp_frame, ptr %retval.0.i, i32 0, i32 3, i32 %i.017
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr i32, ptr %sizes, i32 %i.017
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt, align 4
  %num_planes4 = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_planes4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_planes4, align 4
  %conv5 = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mtk_mdp_ctx_get_frame.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %5, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge54
    i32 3, label %entry.if.then.i_crit_edge55
    i32 8, label %entry.if.then.i_crit_edge56
    i32 5, label %entry.if.then.i_crit_edge57
    i32 7, label %entry.if.then.i_crit_edge58
    i32 12, label %entry.if.then.i_crit_edge59
    i32 14, label %entry.if.then.i_crit_edge60
  ]

entry.if.then.i_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge54, %entry.if.then.i_crit_edge55, %entry.if.then.i_crit_edge56, %entry.if.then.i_crit_edge57, %entry.if.then.i_crit_edge58, %entry.if.then.i_crit_edge59, %entry.if.then.i_crit_edge60
  %s_frame.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %3, i32 0, i32 1
  br label %mtk_mdp_ctx_get_frame.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %d_frame.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %3, i32 0, i32 2
  br label %mtk_mdp_ctx_get_frame.exit

mtk_mdp_ctx_get_frame.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %s_frame.i, %if.then.i ], [ %d_frame.i, %if.end.i ]
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %5, label %for.cond.preheader [
    i32 2, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge
    i32 10, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge61
    i32 3, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge62
    i32 8, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge63
    i32 5, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge64
    i32 7, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge65
    i32 12, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge66
    i32 14, label %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge67
  ]

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge67:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge66:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge65:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge64:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge63:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge62:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge61:    ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

mtk_mdp_ctx_get_frame.exit.if.end_crit_edge:      ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %mtk_mdp_ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.mtk_mdp_frame, ptr %retval.0.i, i32 0, i32 6
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %num_planes49 = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_planes49 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_planes49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp3251.not = icmp eq i16 %11, 0
  br i1 %cmp3251.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %i.052)
  %cmp.i = icmp ugt i32 %13, %i.052
  br i1 %cmp.i, label %if.then.i48, label %for.body.vb2_set_plane_payload.exit_crit_edge

for.body.vb2_set_plane_payload.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i48:                                      ; preds = %for.body
  %arrayidx = getelementptr %struct.mtk_mdp_frame, ptr %retval.0.i, i32 0, i32 3, i32 %i.052
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.052, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i = icmp ult i32 %17, %15
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i48.if.end42.i_crit_edge

if.then.i48.if.end42.i_crit_edge:                 ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i48
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !127

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i48.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ %15, %if.then.i48.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.052, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %for.body.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %24 to i32
  %cmp32 = icmp ult i32 %inc, %conv
  br i1 %cmp32, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.if.end_crit_edge

vb2_set_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end:                                           ; preds = %vb2_set_plane_payload.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge61, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge62, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge63, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge64, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge65, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge66, %mtk_mdp_ctx_get_frame.exit.if.end_crit_edge67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !129
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_m2m_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %3, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge20
    i32 3, label %entry.if.then.i_crit_edge21
    i32 8, label %entry.if.then.i_crit_edge22
    i32 5, label %entry.if.then.i_crit_edge23
    i32 7, label %entry.if.then.i_crit_edge24
    i32 12, label %entry.if.then.i_crit_edge25
    i32 14, label %entry.if.then.i_crit_edge26
  ]

entry.if.then.i_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge20, %entry.if.then.i_crit_edge21, %entry.if.then.i_crit_edge22, %entry.if.then.i_crit_edge23, %entry.if.then.i_crit_edge24, %entry.if.then.i_crit_edge25, %entry.if.then.i_crit_edge26
  %m2m_ctx.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %mtk_mdp_m2m_buf_remove.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %m2m_ctx14.i = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %m2m_ctx14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx14.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %mtk_mdp_m2m_buf_remove.exit

mtk_mdp_m2m_buf_remove.exit:                      ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i24.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #12
  %cmp.not18 = icmp eq ptr %call.i24.i, null
  br i1 %cmp.not18, label %mtk_mdp_m2m_buf_remove.exit.while.end_crit_edge, label %while.body.lr.ph

mtk_mdp_m2m_buf_remove.exit.while.end_crit_edge:  ; preds = %mtk_mdp_m2m_buf_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %mtk_mdp_m2m_buf_remove.exit
  %m2m_ctx.i9 = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %mtk_mdp_m2m_buf_remove.exit17.while.body_crit_edge, %while.body.lr.ph
  %vb.019 = phi ptr [ %call.i24.i, %while.body.lr.ph ], [ %call.i24.i16, %mtk_mdp_m2m_buf_remove.exit17.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %vb.019, i32 noundef 6) #12
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %10, label %if.else.i14 [
    i32 2, label %while.body.if.then.i11_crit_edge
    i32 10, label %while.body.if.then.i11_crit_edge27
    i32 3, label %while.body.if.then.i11_crit_edge28
    i32 8, label %while.body.if.then.i11_crit_edge29
    i32 5, label %while.body.if.then.i11_crit_edge30
    i32 7, label %while.body.if.then.i11_crit_edge31
    i32 12, label %while.body.if.then.i11_crit_edge32
    i32 14, label %while.body.if.then.i11_crit_edge33
  ]

while.body.if.then.i11_crit_edge33:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge32:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge31:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge30:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge29:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge28:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge27:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

while.body.if.then.i11_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i11

if.then.i11:                                      ; preds = %while.body.if.then.i11_crit_edge, %while.body.if.then.i11_crit_edge27, %while.body.if.then.i11_crit_edge28, %while.body.if.then.i11_crit_edge29, %while.body.if.then.i11_crit_edge30, %while.body.if.then.i11_crit_edge31, %while.body.if.then.i11_crit_edge32, %while.body.if.then.i11_crit_edge33
  %12 = ptrtoint ptr %m2m_ctx.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx.i9, align 4
  %out_q_ctx.i.i10 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  br label %mtk_mdp_m2m_buf_remove.exit17

if.else.i14:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %m2m_ctx.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx.i9, align 4
  %cap_q_ctx.i.i13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7
  br label %mtk_mdp_m2m_buf_remove.exit17

mtk_mdp_m2m_buf_remove.exit17:                    ; preds = %if.else.i14, %if.then.i11
  %cap_q_ctx.i.sink.i15 = phi ptr [ %cap_q_ctx.i.i13, %if.else.i14 ], [ %out_q_ctx.i.i10, %if.then.i11 ]
  %call.i24.i16 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i15) #12
  %cmp.not = icmp eq ptr %call.i24.i16, null
  br i1 %cmp.not, label %mtk_mdp_m2m_buf_remove.exit17.while.end_crit_edge, label %mtk_mdp_m2m_buf_remove.exit17.while.body_crit_edge

mtk_mdp_m2m_buf_remove.exit17.while.body_crit_edge: ; preds = %mtk_mdp_m2m_buf_remove.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

mtk_mdp_m2m_buf_remove.exit17.while.end_crit_edge: ; preds = %mtk_mdp_m2m_buf_remove.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %mtk_mdp_m2m_buf_remove.exit17.while.end_crit_edge, %mtk_mdp_m2m_buf_remove.exit.while.end_crit_edge
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_m2m_buf_queue(ptr noundef %vb) #0 align 64 {
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
  %m2m_ctx = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mtk_mdp_try_fmt_mplane(ptr nocapture noundef readonly %ctx, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_dev, align 4
  %variant1 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pixelformat, align 1
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %7, label %if.end.1.i [
    i32 2, label %entry.if.end.i_crit_edge
    i32 10, label %entry.if.end.i_crit_edge241
    i32 3, label %entry.if.end.i_crit_edge242
    i32 8, label %entry.if.end.i_crit_edge243
    i32 5, label %entry.if.end.i_crit_edge244
    i32 7, label %entry.if.end.i_crit_edge245
    i32 12, label %entry.if.end.i_crit_edge246
    i32 14, label %entry.if.end.i_crit_edge247
  ]

entry.if.end.i_crit_edge247:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge246:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge245:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge244:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge243:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge242:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge241:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge241, %entry.if.end.i_crit_edge242, %entry.if.end.i_crit_edge243, %entry.if.end.i_crit_edge244, %entry.if.end.i_crit_edge245, %entry.if.end.i_crit_edge246, %entry.if.end.i_crit_edge247
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %if.end.i.if.then_crit_edge [
    i32 825381965, label %if.end.i.if.end15_crit_edge
    i32 842091854, label %if.end.i.cleanup.fold.split.i_crit_edge
    i32 842091865, label %cleanup.fold.split34.i
    i32 842094169, label %if.end.i.cleanup.fold.split35.i_crit_edge
  ]

if.end.i.cleanup.fold.split35.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.fold.split35.i

if.end.i.cleanup.fold.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.fold.split.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.1.i:                                       ; preds = %entry
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %if.end.1.i.if.then_crit_edge [
    i32 842091854, label %if.end.1.i.cleanup.fold.split.i_crit_edge
    i32 842091865, label %if.end.1.i.if.end15_crit_edge
    i32 842094169, label %if.end.1.i.cleanup.fold.split35.i_crit_edge
  ]

if.end.1.i.cleanup.fold.split35.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.fold.split35.i

if.end.1.i.if.end15_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.1.i.cleanup.fold.split.i_crit_edge:        ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.fold.split.i

if.end.1.i.if.then_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cleanup.fold.split.i:                             ; preds = %if.end.1.i.cleanup.fold.split.i_crit_edge, %if.end.i.cleanup.fold.split.i_crit_edge
  br label %if.end15

cleanup.fold.split34.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

cleanup.fold.split35.i:                           ; preds = %if.end.1.i.cleanup.fold.split35.i_crit_edge, %if.end.i.cleanup.fold.split35.i_crit_edge
  br label %if.end15

if.then:                                          ; preds = %if.end.1.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 13
  br i1 %11, label %switch.lookup, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mtk_mdp_try_fmt_mplane, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then.if.end_crit_edge
  %i.034.lcssa.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.then.if.end_crit_edge ]
  %arrayidx.le.i = getelementptr [4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 %i.034.lcssa.i
  %tobool5.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool5.not, label %do.body, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mdp_try_fmt_mplane.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mdp_try_fmt_mplane, %if.then11)) #12
          to label %cleanup [label %if.then11], !srcloc !131

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pixelformat, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mdp_try_fmt_mplane.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %18) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %cleanup.fold.split35.i, %cleanup.fold.split34.i, %cleanup.fold.split.i, %if.end.1.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge
  %fmt2.0236 = phi ptr [ %arrayidx.le.i, %if.end.if.end15_crit_edge ], [ getelementptr inbounds ([4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 3), %cleanup.fold.split35.i ], [ getelementptr inbounds ([4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 2), %cleanup.fold.split34.i ], [ getelementptr inbounds ([4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 2), %if.end.1.i.if.end15_crit_edge ], [ getelementptr inbounds ([4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ @mtk_mdp_formats, %if.end.i.if.end15_crit_edge ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 1, ptr %field, align 1
  %20 = ptrtoint ptr %fmt2.0236 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt2.0236, align 4
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %pixelformat, align 1
  %23 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %if.then39 [
    i32 2, label %if.end15.if.end44_crit_edge
    i32 10, label %if.end15.if.end44_crit_edge248
    i32 3, label %if.end15.if.end44_crit_edge249
    i32 8, label %if.end15.if.end44_crit_edge250
    i32 5, label %if.end15.if.end44_crit_edge251
    i32 7, label %if.end15.if.end44_crit_edge252
    i32 12, label %if.end15.if.end44_crit_edge253
    i32 14, label %if.end15.if.end44_crit_edge254
  ]

if.end15.if.end44_crit_edge254:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge253:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge252:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge251:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge250:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge249:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge248:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %colorspace = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 14
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace40 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %colorspace40 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %colorspace40, align 1
  %xfer_func = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 16
  %27 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xfer_func, align 4
  %conv = trunc i32 %28 to i8
  %xfer_func41 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %29 = ptrtoint ptr %xfer_func41 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %xfer_func41, align 1
  %ycbcr_enc = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 15
  %30 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ycbcr_enc, align 4
  %conv42 = trunc i32 %31 to i8
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv42, ptr %32, align 1
  %quant = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %ctx, i32 0, i32 17
  %34 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quant, align 4
  %conv43 = trunc i32 %35 to i8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %36 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv43, ptr %quantization, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end15.if.end44_crit_edge, %if.end15.if.end44_crit_edge248, %if.end15.if.end44_crit_edge249, %if.end15.if.end44_crit_edge250, %if.end15.if.end44_crit_edge251, %if.end15.if.end44_crit_edge252, %if.end15.if.end44_crit_edge253, %if.end15.if.end44_crit_edge254
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %target_rot_dis_w = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %target_rot_dis_w to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %target_rot_dis_w, align 2
  %conv45 = zext i16 %40 to i32
  %target_rot_dis_h = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %target_rot_dis_h to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %target_rot_dis_h, align 2
  %conv47 = zext i16 %42 to i32
  %align = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %fmt2.0236, i32 0, i32 6
  %43 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %align, align 4
  %cmp48 = icmp eq ptr %44, null
  br i1 %cmp48, label %if.then50, label %if.end44.if.end62_crit_edge

if.end44.if.end62_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %pix_align = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %pix_align to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pix_align, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then50, %if.end44.if.end62_crit_edge
  %align_w.0.in.in = phi ptr [ %46, %if.then50 ], [ %44, %if.end44.if.end62_crit_edge ]
  %align_h.0.in.in = getelementptr inbounds %struct.mtk_mdp_pix_align, ptr %align_w.0.in.in, i32 0, i32 1
  %47 = ptrtoint ptr %align_h.0.in.in to i32
  call void @__asan_load2_noabort(i32 %47)
  %align_h.0.in = load i16, ptr %align_h.0.in.in, align 2
  %48 = ptrtoint ptr %align_w.0.in.in to i32
  call void @__asan_load2_noabort(i32 %48)
  %align_w.0.in = load i16, ptr %align_w.0.in.in, align 2
  %49 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %7, label %if.else100 [
    i32 2, label %if.end62.if.then94_crit_edge
    i32 10, label %if.end62.if.then94_crit_edge255
    i32 3, label %if.end62.if.then94_crit_edge256
    i32 8, label %if.end62.if.then94_crit_edge257
    i32 5, label %if.end62.if.then94_crit_edge258
    i32 7, label %if.end62.if.then94_crit_edge259
    i32 12, label %if.end62.if.then94_crit_edge260
    i32 14, label %if.end62.if.then94_crit_edge261
  ]

if.end62.if.then94_crit_edge261:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge260:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge259:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge258:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge257:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge256:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge255:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.end62.if.then94_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then94

if.then94:                                        ; preds = %if.end62.if.then94_crit_edge, %if.end62.if.then94_crit_edge255, %if.end62.if.then94_crit_edge256, %if.end62.if.then94_crit_edge257, %if.end62.if.then94_crit_edge258, %if.end62.if.then94_crit_edge259, %if.end62.if.then94_crit_edge260, %if.end62.if.then94_crit_edge261
  %pix_min = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %pix_min to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pix_min, align 4
  %org_h98 = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %51, i32 0, i32 1
  br label %if.end107

if.else100:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %pix_min101 = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %pix_min101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pix_min101, align 4
  %target_rot_dis_w102 = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %53, i32 0, i32 2
  %target_rot_dis_h105 = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %53, i32 0, i32 3
  br label %if.end107

if.end107:                                        ; preds = %if.else100, %if.then94
  %min_w.0.in.in = phi ptr [ %51, %if.then94 ], [ %target_rot_dis_w102, %if.else100 ]
  %min_h.0.in.in = phi ptr [ %org_h98, %if.then94 ], [ %target_rot_dis_h105, %if.else100 ]
  %54 = ptrtoint ptr %min_h.0.in.in to i32
  call void @__asan_load2_noabort(i32 %54)
  %min_h.0.in = load i16, ptr %min_h.0.in.in, align 2
  %min_h.0 = zext i16 %min_h.0.in to i32
  %55 = ptrtoint ptr %min_w.0.in.in to i32
  call void @__asan_load2_noabort(i32 %55)
  %min_w.0.in = load i16, ptr %min_w.0.in.in, align 2
  %min_w.0 = zext i16 %min_w.0.in to i32
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmt, align 4
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %60 = tail call i16 @llvm.cttz.i16(i16 %align_w.0.in, i1 true), !range !132
  %61 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %align_w.0.in)
  %iszero.i = icmp eq i16 %align_w.0.in, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %61
  %62 = tail call i16 @llvm.cttz.i16(i16 %align_h.0.in, i1 true), !range !132
  %63 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %align_h.0.in)
  %iszero1.i = icmp eq i16 %align_h.0.in, 0
  %sub3.i = select i1 %iszero1.i, i32 -1, i32 %63
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef %min_w.0, i32 noundef %conv45, i32 noundef %sub.i, ptr noundef %height, i32 noundef %min_h.0, i32 noundef %conv47, i32 noundef %sub3.i, i32 noundef 0) #12
  %shl4.i = shl nuw nsw i32 1, %sub3.i
  %64 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %57)
  %cmp.i = icmp ult i32 %65, %57
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end107.if.end.i231_crit_edge

if.end107.if.end.i231_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i231

land.lhs.true.i:                                  ; preds = %if.end107
  %shl.i = shl nuw nsw i32 1, %sub.i
  %add.i = add i32 %65, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv45)
  %cmp5.not.i = icmp ugt i32 %add.i, %conv45
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i231_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i231_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i231

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %fmt, align 4
  br label %if.end.i231

if.end.i231:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i231_crit_edge, %if.end107.if.end.i231_crit_edge
  %67 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %59)
  %cmp7.i = icmp ult i32 %68, %59
  br i1 %cmp7.i, label %land.lhs.true8.i, label %if.end.i231.mtk_mdp_bound_align_image.exit_crit_edge

if.end.i231.mtk_mdp_bound_align_image.exit_crit_edge: ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_bound_align_image.exit

land.lhs.true8.i:                                 ; preds = %if.end.i231
  %add9.i = add i32 %68, %shl4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %conv47)
  %cmp10.not.i = icmp ugt i32 %add9.i, %conv47
  br i1 %cmp10.not.i, label %land.lhs.true8.i.mtk_mdp_bound_align_image.exit_crit_edge, label %if.then11.i

land.lhs.true8.i.mtk_mdp_bound_align_image.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_bound_align_image.exit

if.then11.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add9.i, ptr %height, align 4
  br label %mtk_mdp_bound_align_image.exit

mtk_mdp_bound_align_image.exit:                   ; preds = %if.then11.i, %land.lhs.true8.i.mtk_mdp_bound_align_image.exit_crit_edge, %if.end.i231.mtk_mdp_bound_align_image.exit_crit_edge
  %num_planes = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %fmt2.0236, i32 0, i32 1
  %70 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_planes, align 4
  %conv119 = trunc i16 %71 to i8
  %num_planes120 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %72 = ptrtoint ptr %num_planes120 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv119, ptr %num_planes120, align 1
  %conv119.mask = and i16 %71, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv119.mask)
  %cmp123239.not = icmp eq i16 %conv119.mask, 0
  br i1 %cmp123239.not, label %mtk_mdp_bound_align_image.exit.cleanup_crit_edge, label %mtk_mdp_bound_align_image.exit.for.body_crit_edge

mtk_mdp_bound_align_image.exit.for.body_crit_edge: ; preds = %mtk_mdp_bound_align_image.exit
  br label %for.body

mtk_mdp_bound_align_image.exit.cleanup_crit_edge: ; preds = %mtk_mdp_bound_align_image.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end144.for.body_crit_edge, %mtk_mdp_bound_align_image.exit.for.body_crit_edge
  %i.0240 = phi i32 [ %inc, %if.end144.for.body_crit_edge ], [ 0, %mtk_mdp_bound_align_image.exit.for.body_crit_edge ]
  %73 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %fmt, align 1
  %arrayidx = getelementptr %struct.mtk_mdp_fmt, ptr %fmt2.0236, i32 0, i32 4, i32 %i.0240
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx, align 1
  %conv126 = zext i8 %76 to i32
  %mul = mul i32 %74, %conv126
  %div225 = lshr i32 %mul, 3
  %77 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %height, align 1
  %mul129 = mul i32 %78, %74
  %arrayidx130 = getelementptr %struct.mtk_mdp_fmt, ptr %fmt2.0236, i32 0, i32 3, i32 %i.0240
  %79 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %80 to i32
  %mul132 = mul i32 %mul129, %conv131
  %div133226 = lshr i32 %mul132, 3
  %arrayidx134 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0240
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0240, i32 1
  %81 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %div225, ptr %bytesperline, align 1
  %82 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %div133226)
  %cmp138 = icmp ult i32 %83, %div133226
  br i1 %cmp138, label %if.then140, label %for.body.if.end144_crit_edge

for.body.if.end144_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then140:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %div133226, ptr %arrayidx134, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %for.body.if.end144_crit_edge
  %inc = add nuw nsw i32 %i.0240, 1
  %85 = ptrtoint ptr %num_planes120 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_planes120, align 1
  %conv122 = zext i8 %86 to i32
  %cmp123 = icmp ult i32 %inc, %conv122
  br i1 %cmp123, label %if.end144.for.body_crit_edge, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end144.for.body_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end144.cleanup_crit_edge, %mtk_mdp_bound_align_image.exit.cleanup_crit_edge, %if.then11, %do.body
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %do.body ], [ %fmt2.0236, %mtk_mdp_bound_align_image.exit.cleanup_crit_edge ], [ %fmt2.0236, %if.end144.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_vpu_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mdp_dev = getelementptr i8, ptr %fh, i32 -8
  %0 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_dev, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.6, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %5, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call5 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.44, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mdp_m2m_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.mtk_mdp_enum_fmt.exit_crit_edge

entry.mtk_mdp_enum_fmt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_enum_fmt.exit

switch.lookup:                                    ; preds = %entry
  %switch.offset = add i32 %1, 1
  %arrayidx.le.i.i = getelementptr [4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 %switch.offset
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %switch.lookup.mtk_mdp_enum_fmt.exit_crit_edge, label %if.end.i

switch.lookup.mtk_mdp_enum_fmt.exit_crit_edge:    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_enum_fmt.exit

if.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.le.i.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat1.i, align 4
  br label %mtk_mdp_enum_fmt.exit

mtk_mdp_enum_fmt.exit:                            ; preds = %if.end.i, %switch.lookup.mtk_mdp_enum_fmt.exit_crit_edge, %entry.mtk_mdp_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %switch.lookup.mtk_mdp_enum_fmt.exit_crit_edge ], [ -22, %entry.mtk_mdp_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mdp_m2m_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %mtk_mdp_find_fmt_by_index.exit.i, label %entry.mtk_mdp_enum_fmt.exit_crit_edge

entry.mtk_mdp_enum_fmt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_enum_fmt.exit

mtk_mdp_find_fmt_by_index.exit.i:                 ; preds = %entry
  %arrayidx.le.i.i = getelementptr [4 x %struct.mtk_mdp_fmt], ptr @mtk_mdp_formats, i32 0, i32 %1
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %mtk_mdp_find_fmt_by_index.exit.i.mtk_mdp_enum_fmt.exit_crit_edge, label %if.end.i

mtk_mdp_find_fmt_by_index.exit.i.mtk_mdp_enum_fmt.exit_crit_edge: ; preds = %mtk_mdp_find_fmt_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_enum_fmt.exit

if.end.i:                                         ; preds = %mtk_mdp_find_fmt_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.le.i.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat1.i, align 4
  br label %mtk_mdp_enum_fmt.exit

mtk_mdp_enum_fmt.exit:                            ; preds = %if.end.i, %mtk_mdp_find_fmt_by_index.exit.i.mtk_mdp_enum_fmt.exit_crit_edge, %entry.mtk_mdp_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %mtk_mdp_find_fmt_by_index.exit.i.mtk_mdp_enum_fmt.exit_crit_edge ], [ -22, %entry.mtk_mdp_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_g_fmt_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.mtk_mdp_ctx_get_frame.exit_crit_edge

entry.mtk_mdp_ctx_get_frame.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_ctx_get_frame.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mtk_mdp_m2m_g_fmt_mplane, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_mdp_ctx_get_frame.exit

mtk_mdp_ctx_get_frame.exit:                       ; preds = %switch.lookup, %entry.mtk_mdp_ctx_get_frame.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -136, %entry.mtk_mdp_ctx_get_frame.exit_crit_edge ]
  %s_frame.i = getelementptr i8, ptr %fh, i32 %.sink
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %s_frame.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_frame.i, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %height3, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %field, align 1
  %fmt4 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 6
  %11 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt4, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat5, align 1
  %16 = load ptr, ptr %fmt4, align 4
  %num_planes = getelementptr inbounds %struct.mtk_mdp_fmt, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_planes, align 4
  %conv = trunc i16 %18 to i8
  %num_planes7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %num_planes7, align 1
  %colorspace = getelementptr i8, ptr %fh, i32 396
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  %colorspace8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %colorspace8 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %colorspace8, align 1
  %xfer_func = getelementptr i8, ptr %fh, i32 404
  %23 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xfer_func, align 4
  %conv9 = trunc i32 %24 to i8
  %xfer_func10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %25 = ptrtoint ptr %xfer_func10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9, ptr %xfer_func10, align 1
  %ycbcr_enc = getelementptr i8, ptr %fh, i32 400
  %26 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ycbcr_enc, align 4
  %conv11 = trunc i32 %27 to i8
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11, ptr %28, align 1
  %quant = getelementptr i8, ptr %fh, i32 408
  %30 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quant, align 4
  %conv12 = trunc i32 %31 to i8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv12, ptr %quantization, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp62.not = icmp eq i8 %conv, 0
  br i1 %cmp62.not, label %mtk_mdp_ctx_get_frame.exit.for.end_crit_edge, label %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge

mtk_mdp_ctx_get_frame.exit.for.body_crit_edge:    ; preds = %mtk_mdp_ctx_get_frame.exit
  br label %for.body

mtk_mdp_ctx_get_frame.exit.for.end_crit_edge:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mtk_mdp_ctx_get_frame.exit.for.body_crit_edge ]
  %33 = ptrtoint ptr %s_frame.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_frame.i, align 4
  %35 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fmt4, align 4
  %arrayidx = getelementptr %struct.mtk_mdp_fmt, ptr %36, i32 0, i32 4, i32 %i.063
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %38 to i32
  %mul = mul i32 %34, %conv18
  %div59 = lshr i32 %mul, 3
  %arrayidx19 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.063
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.063, i32 1
  %39 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %div59, ptr %bytesperline, align 1
  %40 = load i32, ptr %s_frame.i, align 4
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %mul22 = mul i32 %42, %40
  %43 = load ptr, ptr %fmt4, align 4
  %arrayidx24 = getelementptr %struct.mtk_mdp_fmt, ptr %43, i32 0, i32 3, i32 %i.063
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %45 to i32
  %mul26 = mul i32 %mul22, %conv25
  %div2760 = lshr i32 %mul26, 3
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %div2760, ptr %arrayidx19, align 1
  %inc = add nuw nsw i32 %i.063, 1
  %47 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_planes7, align 1
  %conv14 = zext i8 %48 to i32
  %cmp = icmp ult i32 %inc, %conv14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mtk_mdp_ctx_get_frame.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_try_fmt_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fh, i32 -252
  %call1 = tail call fastcc ptr @mtk_mdp_try_fmt_mplane(ptr noundef %add.ptr.i, ptr noundef %f)
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_reqbufs(ptr noundef %file, ptr nocapture noundef readonly %fh, ptr noundef %reqbufs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call1 = tail call i32 @v4l2_m2m_reqbufs(ptr noundef %file, ptr noundef %1, ptr noundef %reqbufs) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_streamon(ptr noundef %file, ptr noundef %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slock.i = getelementptr i8, ptr %fh, i32 428
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #12
  %state.i = getelementptr i8, ptr %fh, i32 -24
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  tail call void @mutex_unlock(ptr noundef %slock.i) #12
  br i1 %cmp.i.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %vpu = getelementptr i8, ptr %fh, i32 412
  %call2 = tail call i32 @mtk_mdp_vpu_init(ptr noundef %vpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %mdp_dev = getelementptr i8, ptr %fh, i32 -8
  %2 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call2) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #12
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %state.i, align 4
  tail call void @mutex_unlock(ptr noundef %slock.i) #12
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %m2m_ctx = getelementptr i8, ptr %fh, i32 -4
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %call5 = tail call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %9, i32 noundef %type) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mdp_m2m_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.end11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  %target.off.i = add i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %target.off.i)
  %switch.i = icmp ult i32 %target.off.i, 3
  br i1 %switch.i, label %if.then.mtk_mdp_ctx_get_frame.exit_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.mtk_mdp_ctx_get_frame.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_ctx_get_frame.exit

if.end11:                                         ; preds = %entry
  %target6 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %target6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %switch.i59 = icmp ult i32 %6, 3
  br i1 %switch.i59, label %if.end11.mtk_mdp_ctx_get_frame.exit_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.mtk_mdp_ctx_get_frame.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_ctx_get_frame.exit

mtk_mdp_ctx_get_frame.exit:                       ; preds = %if.end11.mtk_mdp_ctx_get_frame.exit_crit_edge, %if.then.mtk_mdp_ctx_get_frame.exit_crit_edge
  %.sink = phi i32 [ -244, %if.end11.mtk_mdp_ctx_get_frame.exit_crit_edge ], [ -136, %if.then.mtk_mdp_ctx_get_frame.exit_crit_edge ]
  %s_frame.i = getelementptr i8, ptr %fh, i32 %.sink
  %target16 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %target16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target16, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %8, label %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge [
    i32 257, label %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge
    i32 258, label %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge61
    i32 2, label %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge62
    i32 1, label %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge63
    i32 256, label %mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge
    i32 0, label %mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge64
  ]

mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge64:   ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge63:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge62:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge61:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge:       ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge:     ; preds = %mtk_mdp_ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge, %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge61, %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge62, %mtk_mdp_ctx_get_frame.exit.sw.bb_crit_edge63
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %top, align 4
  %12 = ptrtoint ptr %s_frame.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_frame.i, align 4
  %width19 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width19, align 4
  %height = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 1
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge, %mtk_mdp_ctx_get_frame.exit.sw.bb22_crit_edge64
  %crop = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2
  %15 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crop, align 4
  %r24 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %17 = ptrtoint ptr %r24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r24, align 4
  %top27 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %top27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top27, align 4
  %top29 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %top29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %top29, align 4
  %width31 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width31, align 4
  %width33 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width33, align 4
  %height35 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %s_frame.i, i32 0, i32 2, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb22, %sw.bb
  %height35.sink = phi ptr [ %height35, %sw.bb22 ], [ %height, %sw.bb ]
  %24 = ptrtoint ptr %height35.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height35.sink, align 4
  %height37 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %height37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height37, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end11.cleanup_crit_edge ], [ -22, %mtk_mdp_ctx_get_frame.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_m2m_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  %new_w.i = alloca i32, align 4
  %new_h.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mdp_dev = getelementptr i8, ptr %fh, i32 -8
  %0 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_dev, align 4
  %variant1 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.end12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp2 = icmp eq i32 %8, 256
  br i1 %cmp2, label %if.then.if.end14_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end12:                                         ; preds = %entry
  %target7 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %9 = ptrtoint ptr %target7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.end12.if.end14_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.if.end14_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %if.end12.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %11)
  %new_r.sroa.0.0.copyload = load i32, ptr %r, align 4
  %new_r.sroa.11.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %new_r.sroa.11.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %new_r.sroa.11.0.copyload = load i32, ptr %new_r.sroa.11.0.r.sroa_idx, align 4
  %new_r.sroa.15.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %new_r.sroa.15.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %new_r.sroa.15.0.copyload = load i32, ptr %new_r.sroa.15.0.r.sroa_idx, align 4
  %new_r.sroa.22.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %new_r.sroa.22.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %new_r.sroa.22.0.copyload = load i32, ptr %new_r.sroa.22.0.r.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_w.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_h.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_r.sroa.11.0.copyload)
  %cmp.i = icmp slt i32 %new_r.sroa.11.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_r.sroa.0.0.copyload)
  %cmp2.i = icmp slt i32 %new_r.sroa.0.0.copyload, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp2.i
  br i1 %or.cond, label %mtk_mdp_try_crop.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  br i1 %cond, label %mtk_mdp_ctx_get_frame.exit.i.thread, label %mtk_mdp_ctx_get_frame.exit.i

mtk_mdp_ctx_get_frame.exit.i.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %s_frame.i.i = getelementptr i8, ptr %fh, i32 -244
  %15 = ptrtoint ptr %s_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_frame.i.i, align 4
  %height.i137 = getelementptr i8, ptr %fh, i32 -240
  %17 = ptrtoint ptr %height.i137 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i137, align 4
  %19 = ptrtoint ptr %new_w.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new_r.sroa.15.0.copyload, ptr %new_w.i, align 4
  %20 = ptrtoint ptr %new_h.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %new_r.sroa.22.0.copyload, ptr %new_h.i, align 4
  br label %if.end46.i

mtk_mdp_ctx_get_frame.exit.i:                     ; preds = %if.end.i
  %d_frame.i.i = getelementptr i8, ptr %fh, i32 -136
  %21 = ptrtoint ptr %d_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_frame.i.i, align 4
  %height.i = getelementptr i8, ptr %fh, i32 -132
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i, align 4
  %25 = ptrtoint ptr %new_w.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %new_r.sroa.15.0.copyload, ptr %new_w.i, align 4
  %26 = ptrtoint ptr %new_h.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %new_r.sroa.22.0.copyload, ptr %new_h.i, align 4
  %pix_align.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %pix_align.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pix_align.i, align 4
  %target_w.i = getelementptr inbounds %struct.mtk_mdp_pix_align, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %target_w.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %target_w.i, align 2
  %target_h.i = getelementptr inbounds %struct.mtk_mdp_pix_align, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %target_h.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %target_h.i, align 2
  %ctrls.i = getelementptr i8, ptr %fh, i32 376
  %33 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrls.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %36, label %if.else40.i [
    i32 90, label %mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge
    i32 270, label %mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge165
  ]

mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge165: ; preds = %mtk_mdp_ctx_get_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge: ; preds = %mtk_mdp_ctx_get_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.then32.i:                                      ; preds = %mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge, %mtk_mdp_ctx_get_frame.exit.i.if.then32.i_crit_edge165
  %pix_min.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %pix_min.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pix_min.i, align 4
  %target_rot_en_w.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %target_rot_en_w.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %target_rot_en_w.i, align 2
  %target_rot_en_h.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %target_rot_en_h.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %target_rot_en_h.i, align 2
  %44 = ptrtoint ptr %new_w.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %new_r.sroa.22.0.copyload, ptr %new_w.i, align 4
  %45 = ptrtoint ptr %new_h.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %new_r.sroa.15.0.copyload, ptr %new_h.i, align 4
  br label %if.end46.i

if.else40.i:                                      ; preds = %mtk_mdp_ctx_get_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pix_min41.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 1
  %46 = ptrtoint ptr %pix_min41.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pix_min41.i, align 4
  %target_rot_dis_w.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %target_rot_dis_w.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %target_rot_dis_w.i, align 2
  %target_rot_dis_h.i = getelementptr inbounds %struct.mtk_mdp_pix_limit, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %target_rot_dis_h.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %target_rot_dis_h.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else40.i, %if.then32.i, %mtk_mdp_ctx_get_frame.exit.i.thread
  %align_w.0.shrunk.i = phi i16 [ %30, %if.then32.i ], [ %30, %if.else40.i ], [ 1, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %align_h.0.shrunk.i = phi i16 [ %32, %if.then32.i ], [ %32, %if.else40.i ], [ 1, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %min_w.0.shrunk.i = phi i16 [ %41, %if.then32.i ], [ %49, %if.else40.i ], [ 64, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %min_h.0.shrunk.i = phi i16 [ %43, %if.then32.i ], [ %51, %if.else40.i ], [ 32, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %max_w.0.i = phi i32 [ %24, %if.then32.i ], [ %22, %if.else40.i ], [ %16, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %max_h.0.i = phi i32 [ %22, %if.then32.i ], [ %24, %if.else40.i ], [ %18, %mtk_mdp_ctx_get_frame.exit.i.thread ]
  %min_h.0.i = zext i16 %min_h.0.shrunk.i to i32
  %min_w.0.i = zext i16 %min_w.0.shrunk.i to i32
  %52 = ptrtoint ptr %new_w.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %new_w.i, align 4
  %54 = ptrtoint ptr %new_h.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %new_h.i, align 4
  %56 = tail call i16 @llvm.cttz.i16(i16 %align_w.0.shrunk.i, i1 true) #12, !range !132
  %57 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %align_w.0.shrunk.i)
  %iszero.i.i = icmp eq i16 %align_w.0.shrunk.i, 0
  %spec.select = select i1 %iszero.i.i, i32 -1, i32 %57
  %58 = tail call i16 @llvm.cttz.i16(i16 %align_h.0.shrunk.i, i1 true) #12, !range !132
  %59 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %align_h.0.shrunk.i)
  %iszero1.i.i = icmp eq i16 %align_h.0.shrunk.i, 0
  %sub3.i.i = select i1 %iszero1.i.i, i32 -1, i32 %59
  call void @v4l_bound_align_image(ptr noundef nonnull %new_w.i, i32 noundef %min_w.0.i, i32 noundef %max_w.0.i, i32 noundef %spec.select, ptr noundef nonnull %new_h.i, i32 noundef %min_h.0.i, i32 noundef %max_h.0.i, i32 noundef %sub3.i.i, i32 noundef 0) #12
  %shl4.i.i = shl nuw nsw i32 1, %sub3.i.i
  %60 = ptrtoint ptr %new_w.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %new_w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %53)
  %cmp.i.i = icmp ult i32 %61, %53
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end46.i.if.end.i181.i_crit_edge

if.end46.i.if.end.i181.i_crit_edge:               ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i181.i

land.lhs.true.i.i:                                ; preds = %if.end46.i
  %shl.i.i = shl nuw nsw i32 1, %spec.select
  %add.i.i = add i32 %61, %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %max_w.0.i)
  %cmp5.not.i.i = icmp ugt i32 %add.i.i, %max_w.0.i
  br i1 %cmp5.not.i.i, label %land.lhs.true.i.i.if.end.i181.i_crit_edge, label %if.then.i180.i

land.lhs.true.i.i.if.end.i181.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i181.i

if.then.i180.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %new_w.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i.i, ptr %new_w.i, align 4
  br label %if.end.i181.i

if.end.i181.i:                                    ; preds = %if.then.i180.i, %land.lhs.true.i.i.if.end.i181.i_crit_edge, %if.end46.i.if.end.i181.i_crit_edge
  %63 = ptrtoint ptr %new_h.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %new_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %55)
  %cmp7.i.i = icmp ult i32 %64, %55
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end.i181.i.mtk_mdp_bound_align_image.exit.i_crit_edge

if.end.i181.i.mtk_mdp_bound_align_image.exit.i_crit_edge: ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_bound_align_image.exit.i

land.lhs.true8.i.i:                               ; preds = %if.end.i181.i
  %add9.i.i = add i32 %64, %shl4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i.i, i32 %max_h.0.i)
  %cmp10.not.i.i = icmp ugt i32 %add9.i.i, %max_h.0.i
  br i1 %cmp10.not.i.i, label %land.lhs.true8.i.i.mtk_mdp_bound_align_image.exit.i_crit_edge, label %if.then11.i.i

land.lhs.true8.i.i.mtk_mdp_bound_align_image.exit.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mtk_mdp_bound_align_image.exit.i

if.then11.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %new_h.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add9.i.i, ptr %new_h.i, align 4
  br label %mtk_mdp_bound_align_image.exit.i

mtk_mdp_bound_align_image.exit.i:                 ; preds = %if.then11.i.i, %land.lhs.true8.i.i.mtk_mdp_bound_align_image.exit.i_crit_edge, %if.end.i181.i.mtk_mdp_bound_align_image.exit.i_crit_edge
  br i1 %cond, label %mtk_mdp_bound_align_image.exit.i.if.else84.i_crit_edge, label %land.lhs.true.i

mtk_mdp_bound_align_image.exit.i.if.else84.i_crit_edge: ; preds = %mtk_mdp_bound_align_image.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else84.i

land.lhs.true.i:                                  ; preds = %mtk_mdp_bound_align_image.exit.i
  %ctrls70.i = getelementptr i8, ptr %fh, i32 376
  %66 = ptrtoint ptr %ctrls70.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctrls70.i, align 4
  %val72.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %67, i32 0, i32 22
  %68 = ptrtoint ptr %val72.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val72.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %69, label %land.lhs.true.i.if.else84.i_crit_edge [
    i32 90, label %land.lhs.true.i.if.then81.i_crit_edge
    i32 270, label %land.lhs.true.i.if.then81.i_crit_edge166
  ]

land.lhs.true.i.if.then81.i_crit_edge166:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

land.lhs.true.i.if.then81.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

land.lhs.true.i.if.else84.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else84.i

if.then81.i:                                      ; preds = %land.lhs.true.i.if.then81.i_crit_edge, %land.lhs.true.i.if.then81.i_crit_edge166
  %71 = ptrtoint ptr %new_h.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %new_h.i, align 4
  %73 = ptrtoint ptr %new_w.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %new_w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_r.sroa.15.0.copyload, i32 %72)
  %cmp.not.i.i = icmp eq i32 %new_r.sroa.15.0.copyload, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %new_r.sroa.22.0.copyload, i32 %74)
  %cmp1.not.i.i = icmp eq i32 %new_r.sroa.22.0.copyload, %74
  %or.cond162 = select i1 %cmp.not.i.i, i1 %cmp1.not.i.i, i1 false
  br i1 %or.cond162, label %if.then81.i.if.end87.i_crit_edge, label %if.then81.i.if.end87.sink.split.i_crit_edge

if.then81.i.if.end87.sink.split.i_crit_edge:      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.sink.split.i

if.then81.i.if.end87.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.else84.i:                                      ; preds = %land.lhs.true.i.if.else84.i_crit_edge, %mtk_mdp_bound_align_image.exit.i.if.else84.i_crit_edge
  %75 = ptrtoint ptr %new_w.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %new_w.i, align 4
  %77 = ptrtoint ptr %new_h.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %new_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_r.sroa.15.0.copyload, i32 %76)
  %cmp.not.i184.i = icmp eq i32 %new_r.sroa.15.0.copyload, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %new_r.sroa.22.0.copyload, i32 %78)
  %cmp1.not.i185.i = icmp eq i32 %new_r.sroa.22.0.copyload, %78
  %or.cond163 = select i1 %cmp.not.i184.i, i1 %cmp1.not.i185.i, i1 false
  br i1 %or.cond163, label %if.else84.i.if.end87.i_crit_edge, label %if.else84.i.if.end87.sink.split.i_crit_edge

if.else84.i.if.end87.sink.split.i_crit_edge:      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.sink.split.i

if.else84.i.if.end87.i_crit_edge:                 ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.end87.sink.split.i:                            ; preds = %if.else84.i.if.end87.sink.split.i_crit_edge, %if.then81.i.if.end87.sink.split.i_crit_edge
  %.sink190.i = phi i32 [ %72, %if.then81.i.if.end87.sink.split.i_crit_edge ], [ %76, %if.else84.i.if.end87.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ %74, %if.then81.i.if.end87.sink.split.i_crit_edge ], [ %78, %if.else84.i.if.end87.sink.split.i_crit_edge ]
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end87.sink.split.i, %if.else84.i.if.end87.i_crit_edge, %if.then81.i.if.end87.i_crit_edge
  %new_r.sroa.22.0 = phi i32 [ %.sink.i, %if.end87.sink.split.i ], [ %new_r.sroa.22.0.copyload, %if.then81.i.if.end87.i_crit_edge ], [ %new_r.sroa.22.0.copyload, %if.else84.i.if.end87.i_crit_edge ]
  %new_r.sroa.15.0 = phi i32 [ %.sink190.i, %if.end87.sink.split.i ], [ %new_r.sroa.15.0.copyload, %if.then81.i.if.end87.i_crit_edge ], [ %new_r.sroa.15.0.copyload, %if.else84.i.if.end87.i_crit_edge ]
  %79 = ptrtoint ptr %new_w.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %new_w.i, align 4
  %add.i = add i32 %80, %new_r.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max_w.0.i)
  %cmp89.i = icmp ugt i32 %add.i, %max_w.0.i
  %sub.i = sub i32 %max_w.0.i, %80
  %spec.select164 = select i1 %cmp89.i, i32 %sub.i, i32 %new_r.sroa.0.0.copyload
  %81 = ptrtoint ptr %new_h.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %new_h.i, align 4
  %add95.i = add i32 %82, %new_r.sroa.11.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i, i32 %max_h.0.i)
  %cmp96.i = icmp ugt i32 %add95.i, %max_h.0.i
  %sub99.i = sub i32 %max_h.0.i, %82
  %new_r.sroa.11.0 = select i1 %cmp96.i, i32 %sub99.i, i32 %new_r.sroa.11.0.copyload
  %new_r.sroa.0.1.ph = and i32 %spec.select164, -2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_h.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_w.i) #12
  %target20 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %83 = ptrtoint ptr %target20 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %target20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %switch.i = icmp ult i32 %84, 3
  %frame.0.v = select i1 %switch.i, i32 -244, i32 -136
  %frame.0 = getelementptr i8, ptr %fh, i32 %frame.0.v
  %85 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %86, label %if.end67 [
    i32 2, label %if.end87.i.if.then47_crit_edge
    i32 10, label %if.end87.i.if.then47_crit_edge167
    i32 3, label %if.end87.i.if.then47_crit_edge168
    i32 8, label %if.end87.i.if.then47_crit_edge169
    i32 5, label %if.end87.i.if.then47_crit_edge170
    i32 7, label %if.end87.i.if.then47_crit_edge171
    i32 12, label %if.end87.i.if.then47_crit_edge172
    i32 14, label %if.end87.i.if.then47_crit_edge173
  ]

if.end87.i.if.then47_crit_edge173:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge172:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge171:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge170:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge169:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge168:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge167:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end87.i.if.then47_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

mtk_mdp_try_crop.exit:                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_h.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_w.i) #12
  br label %cleanup

if.then47:                                        ; preds = %if.end87.i.if.then47_crit_edge, %if.end87.i.if.then47_crit_edge167, %if.end87.i.if.then47_crit_edge168, %if.end87.i.if.then47_crit_edge169, %if.end87.i.if.then47_crit_edge170, %if.end87.i.if.then47_crit_edge171, %if.end87.i.if.then47_crit_edge172, %if.end87.i.if.then47_crit_edge173
  %width49 = getelementptr i8, ptr %fh, i32 -120
  %90 = ptrtoint ptr %width49 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %width49, align 4
  %height52 = getelementptr i8, ptr %fh, i32 -116
  %92 = ptrtoint ptr %height52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height52, align 4
  %ctrls = getelementptr i8, ptr %fh, i32 376
  %94 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %95, i32 0, i32 22
  %96 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %97, label %if.else.i109 [
    i32 90, label %if.then47.if.end.i111_crit_edge
    i32 270, label %if.then47.if.end.i111_crit_edge174
  ]

if.then47.if.end.i111_crit_edge174:               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

if.then47.if.end.i111_crit_edge:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

if.else.i109:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.else.i109, %if.then47.if.end.i111_crit_edge, %if.then47.if.end.i111_crit_edge174
  %tmp_w.0.i = phi i32 [ %91, %if.else.i109 ], [ %93, %if.then47.if.end.i111_crit_edge ], [ %93, %if.then47.if.end.i111_crit_edge174 ]
  %tmp_h.0.i = phi i32 [ %93, %if.else.i109 ], [ %91, %if.then47.if.end.i111_crit_edge ], [ %91, %if.then47.if.end.i111_crit_edge174 ]
  %div.i = sdiv i32 %new_r.sroa.15.0, %tmp_w.0.i
  %h_scale_down_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 5
  %99 = ptrtoint ptr %h_scale_down_max.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %h_scale_down_max.i, align 4
  %conv.i = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i)
  %cmp2.i110 = icmp sgt i32 %div.i, %conv.i
  br i1 %cmp2.i110, label %if.end.i111.do.end_crit_edge, label %lor.lhs.false4.i

if.end.i111.do.end_crit_edge:                     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false4.i:                                 ; preds = %if.end.i111
  %div5.i = sdiv i32 %new_r.sroa.22.0, %tmp_h.0.i
  %v_scale_down_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 6
  %101 = ptrtoint ptr %v_scale_down_max.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %v_scale_down_max.i, align 2
  %conv6.i = zext i16 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %conv6.i)
  %cmp7.i = icmp sgt i32 %div5.i, %conv6.i
  br i1 %cmp7.i, label %lor.lhs.false4.i.do.end_crit_edge, label %lor.lhs.false9.i

lor.lhs.false4.i.do.end_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false4.i
  %div10.i = sdiv i32 %tmp_w.0.i, %new_r.sroa.15.0
  %h_scale_up_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 3
  %103 = ptrtoint ptr %h_scale_up_max.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %h_scale_up_max.i, align 4
  %conv11.i = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %conv11.i)
  %cmp12.i = icmp sgt i32 %div10.i, %conv11.i
  br i1 %cmp12.i, label %lor.lhs.false9.i.do.end_crit_edge, label %lor.lhs.false14.i

lor.lhs.false9.i.do.end_crit_edge:                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  %div15.i = sdiv i32 %tmp_h.0.i, %new_r.sroa.22.0
  %v_scale_up_max.i = getelementptr inbounds %struct.mtk_mdp_variant, ptr %3, i32 0, i32 4
  %105 = ptrtoint ptr %v_scale_up_max.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %v_scale_up_max.i, align 2
  %conv16.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.i, i32 %conv16.i)
  %cmp17.i = icmp sgt i32 %div15.i, %conv16.i
  br i1 %cmp17.i, label %lor.lhs.false14.i.do.end_crit_edge, label %lor.lhs.false14.i.if.end71_crit_edge

lor.lhs.false14.i.if.end71_crit_edge:             ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

lor.lhs.false14.i.do.end_crit_edge:               ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end67:                                         ; preds = %if.end87.i
  %width57 = getelementptr i8, ptr %fh, i32 -228
  %107 = ptrtoint ptr %width57 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %width57, align 4
  %height60 = getelementptr i8, ptr %fh, i32 -224
  %109 = ptrtoint ptr %height60 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height60, align 4
  %ctrls63 = getelementptr i8, ptr %fh, i32 376
  %111 = ptrtoint ptr %ctrls63 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctrls63, align 4
  %val65 = getelementptr inbounds %struct.v4l2_ctrl, ptr %112, i32 0, i32 22
  %113 = ptrtoint ptr %val65 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val65, align 4
  %call66 = call fastcc i32 @mtk_mdp_check_scaler_ratio(ptr noundef %3, i32 noundef %108, i32 noundef %110, i32 noundef %new_r.sroa.15.0, i32 noundef %new_r.sroa.22.0, i32 noundef %114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %if.end67.if.end71_crit_edge, label %if.end67.do.end_crit_edge

if.end67.do.end_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end:                                           ; preds = %if.end67.do.end_crit_edge, %lor.lhs.false14.i.do.end_crit_edge, %lor.lhs.false9.i.do.end_crit_edge, %lor.lhs.false4.i.do.end_crit_edge, %if.end.i111.do.end_crit_edge
  %115 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.47) #15
  br label %cleanup

if.end71:                                         ; preds = %if.end67.if.end71_crit_edge, %lor.lhs.false14.i.if.end71_crit_edge
  %119 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %new_r.sroa.0.1.ph, ptr %r, align 4
  %120 = ptrtoint ptr %new_r.sroa.11.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %new_r.sroa.11.0, ptr %new_r.sroa.11.0.r.sroa_idx, align 4
  %121 = ptrtoint ptr %new_r.sroa.15.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %new_r.sroa.15.0, ptr %new_r.sroa.15.0.r.sroa_idx, align 4
  %122 = ptrtoint ptr %new_r.sroa.22.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %new_r.sroa.22.0, ptr %new_r.sroa.22.0.r.sroa_idx, align 4
  %crop73 = getelementptr inbounds %struct.mtk_mdp_frame, ptr %frame.0, i32 0, i32 2
  %123 = ptrtoint ptr %crop73 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %new_r.sroa.0.1.ph, ptr %crop73, align 4
  %new_r.sroa.11.0.crop73.sroa_idx = getelementptr inbounds i8, ptr %crop73, i32 4
  %124 = ptrtoint ptr %new_r.sroa.11.0.crop73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %new_r.sroa.11.0, ptr %new_r.sroa.11.0.crop73.sroa_idx, align 4
  %new_r.sroa.15.0.crop73.sroa_idx = getelementptr inbounds i8, ptr %crop73, i32 8
  %125 = ptrtoint ptr %new_r.sroa.15.0.crop73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %new_r.sroa.15.0, ptr %new_r.sroa.15.0.crop73.sroa_idx, align 4
  %new_r.sroa.22.0.crop73.sroa_idx = getelementptr inbounds i8, ptr %crop73, i32 12
  %126 = ptrtoint ptr %new_r.sroa.22.0.crop73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %new_r.sroa.22.0, ptr %new_r.sroa.22.0.crop73.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end, %mtk_mdp_try_crop.exit, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end71 ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %mtk_mdp_try_crop.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_vpu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_m2m_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mdp_dev = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_dev, align 4
  %job_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %job_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %job_wq, align 4
  %work = getelementptr inbounds %struct.mtk_mdp_ctx, ptr %priv, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1184, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_mdp_register_m2m_device._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_mdp_register_m2m_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1195, i32 53}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1196, i32 4}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1201, i32 3}
!14 = !{ptr @mtk_mdp_register_m2m_device._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_mdp_register_m2m_device._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1208, i32 3}
!18 = !{ptr @mtk_mdp_register_m2m_device._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtk_mdp_register_m2m_device._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1212, i32 2}
!22 = !{ptr @mtk_mdp_register_m2m_device._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_mdp_register_m2m_device._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mtk_mdp_default_variant, !25, !"mtk_mdp_default_variant", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 108, i32 31}
!26 = !{ptr @mtk_mdp_size_max, !27, !"mtk_mdp_size_max", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 84, i32 33}
!28 = !{ptr @mtk_mdp_size_min, !29, !"mtk_mdp_size_min", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 91, i32 33}
!30 = !{ptr @mtk_mdp_rs_align, !31, !"mtk_mdp_rs_align", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 101, i32 33}
!32 = !{ptr @mtk_mdp_m2m_fops, !33, !"mtk_mdp_m2m_fops", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1163, i32 42}
!34 = !{ptr @mtk_mdp_m2m_open.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1067, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mtk_mdp_m2m_open.__key.17, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1083, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1087, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mtk_mdp_m2m_open._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_mdp_m2m_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1095, i32 4}
!47 = !{ptr @mtk_mdp_m2m_open._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_mdp_m2m_open._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1102, i32 4}
!51 = !{ptr @mtk_mdp_m2m_open._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_mdp_m2m_open._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mtk_mdp_ctrls_create._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 997, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1019, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mtk_mdp_ctrls_create._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mtk_mdp_ctrls_create._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mtk_mdp_ctrl_ops, !62, !"mtk_mdp_ctrl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 991, i32 35}
!63 = !{ptr @mtk_mdp_formats, !64, !"mtk_mdp_formats", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 48, i32 33}
!65 = !{ptr @mtk_mdp_size_align, !66, !"mtk_mdp_size_align", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 41, i32 33}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 503, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtk_mdp_m2m_worker._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_mdp_m2m_worker._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 523, i32 3}
!74 = !{ptr @mtk_mdp_m2m_worker._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_mdp_m2m_worker._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 444, i32 4}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mtk_mdp_prepare_addr._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mtk_mdp_prepare_addr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mtk_mdp_m2m_qops, !82, !"mtk_mdp_m2m_qops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 581, i32 29}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 700, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mtk_mdp_m2m_s_fmt_mplane._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtk_mdp_m2m_s_fmt_mplane._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 188, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mtk_mdp_try_fmt_mplane.__UNIQUE_ID_ddebug299, !93, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!97 = !{ptr @mtk_mdp_m2m_ioctl_ops, !98, !"mtk_mdp_m2m_ioctl_ops", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 894, i32 36}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 599, i32 25}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 741, i32 4}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mtk_mdp_m2m_streamon._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mtk_mdp_m2m_streamon._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 883, i32 3}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mtk_mdp_m2m_s_selection._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @mtk_mdp_m2m_s_selection._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 285, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mtk_mdp_try_crop._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @mtk_mdp_try_crop._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mtk_mdp_m2m_ops, !117, !"mtk_mdp_m2m_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c", i32 1172, i32 34}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2148494344}
!129 = !{i64 980944, i64 980969, i64 980991, i64 981007, i64 981019, i64 981039, i64 981063, i64 981079, i64 981091}
!130 = !{i64 2148494532}
!131 = !{i64 2148308318, i64 2148308323, i64 2148308336, i64 2148308380, i64 2148308414, i64 2148308435}
!132 = !{i16 0, i16 17}
