; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_vcodec_enc_pdata = type { i32, i8, i32, i32, ptr, i32, ptr, i32, i32 }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }
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
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_mtk_vcodec_enc__306_483_mtk_vcodec_enc_driver_init6 = internal global ptr @mtk_vcodec_enc_driver_init, section ".initcall6.init", align 4
@mtk_vcodec_enc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_vcodec_probe, ptr @mtk_vcodec_enc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_vcodec_enc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_vcodec_enc_driver_exit = internal global ptr @mtk_vcodec_enc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file307 = internal constant [69 x i8] c"mtk_vcodec_enc.file=drivers/media/platform/mtk-vcodec/mtk-vcodec-enc\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [30 x i8] c"mtk_vcodec_enc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [68 x i8] c"mtk_vcodec_enc.description=Mediatek video codec V4L2 encoder driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-vcodec-enc\00", [17 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vcodec-enc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_avc_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vcodec-enc-vp8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_vp8_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-vcodec-enc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-vcodec-enc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-vcodec-enc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_pdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,vpu\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,scp\00", [19 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Could not get venc IPI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_vcodec_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c\00", [41 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr = internal global ptr @mtk_vcodec_probe._entry, section ".printk_index", align 4
@mtk_vcodec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get mtk vcodec clock source!\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.10 = internal global ptr @mtk_vcodec_probe._entry.6, section ".printk_index", align 4
@mtk_vcodec_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 285, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get irq resource\00", [37 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.13 = internal global ptr @mtk_vcodec_probe._entry.11, section ".printk_index", align 4
@mtk_vcodec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 298, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to install dev->enc_irq %d (%d) core_id (%d)\00", [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.16 = internal global ptr @mtk_vcodec_probe._entry.14, section ".printk_index", align 4
@mtk_vcodec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->enc_mutex\00", [16 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->irqlock\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[MTK_V4L2_VENC]\00", [16 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] v4l2_device_register err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.26 = internal global ptr @mtk_vcodec_probe._entry.24, section ".printk_index", align 4
@mtk_vcodec_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->queue\00", [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to allocate video device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.31 = internal global ptr @mtk_vcodec_probe._entry.29, section ".printk_index", align 4
@mtk_vcodec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fops_vcodec_open, ptr @fops_vcodec_release }, [60 x i8] zeroinitializer }, align 32
@mtk_venc_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@mtk_venc_m2m_ops = external dso_local constant %struct.v4l2_m2m_ops, align 4
@mtk_vcodec_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to init mem2mem enc device\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.34 = internal global ptr @mtk_vcodec_probe._entry.32, section ".printk_index", align 4
@mtk_vcodec_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to create encode workqueue\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.37 = internal global ptr @mtk_vcodec_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma-ranges\00", [21 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to register video device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.41 = internal global ptr @mtk_vcodec_probe._entry.39, section ".printk_index", align 4
@mtk_vcodec_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.4, ptr @.str.5, ptr @.str.43, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_enc\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"encoder %d registered as /dev/video%d\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(),%d: encoder %d registered as /dev/video%d\00", [49 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_vcodec_enc_irq_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"id=%d coreid:%d\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: id=%d coreid:%d\00", [39 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->queue\00", [20 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to setup controls() (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fops_vcodec_open\00", [47 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr = internal global ptr @fops_vcodec_open._entry, section ".printk_index", align 4
@fops_vcodec_open._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to v4l2_m2m_ctx_init() (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr.53 = internal global ptr @fops_vcodec_open._entry.51, section ".printk_index", align 4
@fops_vcodec_open._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.5, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] vpu_load_firmware failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr.56 = internal global ptr @fops_vcodec_open._entry.54, section ".printk_index", align 4
@fops_vcodec_open.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.50, ptr @.str.5, ptr @.str.57, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"encoder capability %x\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(),%d: encoder capability %x\00", [33 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.50, ptr @.str.5, ptr @.str.59, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Create instance [%d]@%p m2m_ctx=%p \00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: Create instance [%d]@%p m2m_ctx=%p \00", [51 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.50, ptr @.str.5, ptr @.str.61, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s encoder [%d]\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: %s encoder [%d]\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fops_vcodec_release.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.63, ptr @.str.5, ptr @.str.64, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fops_vcodec_release\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%d] encoder\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(),%d: [%d] encoder\00", [42 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_remove.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_vcodec_enc_remove\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(),%d: +\00", [21 x i8] zeroinitializer }, align 32
@mt8173_avc_pdata = internal constant { %struct.mtk_vcodec_enc_pdata, [60 x i8] } { %struct.mtk_vcodec_enc_pdata { i32 0, i8 0, i32 64, i32 60000000, ptr @mtk_video_formats_capture_h264, i32 1, ptr @mtk_video_formats_output, i32 4, i32 12 }, [60 x i8] zeroinitializer }, align 32
@mt8173_vp8_pdata = internal constant { %struct.mtk_vcodec_enc_pdata, [60 x i8] } { %struct.mtk_vcodec_enc_pdata { i32 0, i8 0, i32 64, i32 9000000, ptr @mtk_video_formats_capture_vp8, i32 1, ptr @mtk_video_formats_output, i32 4, i32 13 }, [60 x i8] zeroinitializer }, align 32
@mt8183_pdata = internal constant { %struct.mtk_vcodec_enc_pdata, [60 x i8] } { %struct.mtk_vcodec_enc_pdata { i32 1, i8 1, i32 64, i32 40000000, ptr @mtk_video_formats_capture_h264, i32 1, ptr @mtk_video_formats_output, i32 4, i32 12 }, [60 x i8] zeroinitializer }, align 32
@mt8192_pdata = internal constant { %struct.mtk_vcodec_enc_pdata, [60 x i8] } { %struct.mtk_vcodec_enc_pdata { i32 2, i8 1, i32 64, i32 100000000, ptr @mtk_video_formats_capture_h264, i32 1, ptr @mtk_video_formats_output, i32 4, i32 12 }, [60 x i8] zeroinitializer }, align 32
@mt8195_pdata = internal constant { %struct.mtk_vcodec_enc_pdata, [60 x i8] } { %struct.mtk_vcodec_enc_pdata { i32 3, i8 1, i32 64, i32 100000000, ptr @mtk_video_formats_capture_h264, i32 1, ptr @mtk_video_formats_output, i32 4, i32 12 }, [60 x i8] zeroinitializer }, align 32
@mtk_video_formats_capture_h264 = internal constant { [1 x %struct.mtk_video_fmt], [16 x i8] } { [1 x %struct.mtk_video_fmt] [%struct.mtk_video_fmt { i32 875967048, i32 1, i32 1, i32 0 }], [16 x i8] zeroinitializer }, align 32
@mtk_video_formats_output = internal constant { [4 x %struct.mtk_video_fmt], [32 x i8] } { [4 x %struct.mtk_video_fmt] [%struct.mtk_video_fmt { i32 842091854, i32 2, i32 2, i32 0 }, %struct.mtk_video_fmt { i32 825380174, i32 2, i32 2, i32 0 }, %struct.mtk_video_fmt { i32 842091865, i32 2, i32 3, i32 0 }, %struct.mtk_video_fmt { i32 825380185, i32 2, i32 3, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mtk_video_formats_capture_vp8 = internal constant { [1 x %struct.mtk_video_fmt], [16 x i8] } { [1 x %struct.mtk_video_fmt] [%struct.mtk_video_fmt { i32 808996950, i32 1, i32 1, i32 0 }], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"mtk_vcodec_enc_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 474, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 478, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"mtk_vcodec_enc_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 444, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 251, i32 47 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 254, i32 54 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 258, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 270, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 285, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 296, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 303, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 304, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 305, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 308, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 312, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 316, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 321, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"mtk_vcodec_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 226, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 342, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 352, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 357, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 362, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 366, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 105, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 140, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 145, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 153, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 173, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 179, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 182, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 188, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 211, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 460, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"mt8173_avc_pdata\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 386, i32 42 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"mt8173_vp8_pdata\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 397, i32 42 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"mt8183_pdata\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 408, i32 42 }
@___asan_gen_.273 = private unnamed_addr constant [13 x i8] c"mt8192_pdata\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 420, i32 42 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"mt8195_pdata\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 432, i32 42 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"mtk_video_formats_capture_h264\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 49, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant [25 x i8] c"mtk_video_formats_output\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 26, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant [30 x i8] c"mtk_video_formats_capture_vp8\00", align 1
@___asan_gen_.286 = private constant [58 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 57, i32 35 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_mtk_vcodec_enc_driver_exit, ptr @__initcall__kmod_mtk_vcodec_enc__306_483_mtk_vcodec_enc_driver_init6, ptr @fops_vcodec_open._entry, ptr @fops_vcodec_open._entry.51, ptr @fops_vcodec_open._entry.54, ptr @fops_vcodec_open._entry_ptr, ptr @fops_vcodec_open._entry_ptr.53, ptr @fops_vcodec_open._entry_ptr.56, ptr @mtk_vcodec_enc_driver_exit, ptr @mtk_vcodec_probe._entry, ptr @mtk_vcodec_probe._entry.11, ptr @mtk_vcodec_probe._entry.14, ptr @mtk_vcodec_probe._entry.24, ptr @mtk_vcodec_probe._entry.29, ptr @mtk_vcodec_probe._entry.32, ptr @mtk_vcodec_probe._entry.35, ptr @mtk_vcodec_probe._entry.39, ptr @mtk_vcodec_probe._entry.6, ptr @mtk_vcodec_probe._entry_ptr, ptr @mtk_vcodec_probe._entry_ptr.10, ptr @mtk_vcodec_probe._entry_ptr.13, ptr @mtk_vcodec_probe._entry_ptr.16, ptr @mtk_vcodec_probe._entry_ptr.26, ptr @mtk_vcodec_probe._entry_ptr.31, ptr @mtk_vcodec_probe._entry_ptr.34, ptr @mtk_vcodec_probe._entry_ptr.37, ptr @mtk_vcodec_probe._entry_ptr.41, ptr @mtk_vcodec_enc_driver, ptr @.str, ptr @mtk_vcodec_enc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @mtk_vcodec_probe.__key, ptr @.str.17, ptr @mtk_vcodec_probe.__key.18, ptr @.str.19, ptr @mtk_vcodec_probe.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @mtk_vcodec_probe.__key.27, ptr @.str.28, ptr @.str.30, ptr @mtk_vcodec_fops, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @fops_vcodec_open.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @mt8173_avc_pdata, ptr @mt8173_vp8_pdata, ptr @mt8183_pdata, ptr @mt8192_pdata, ptr @mt8195_pdata, ptr @mtk_video_formats_capture_h264, ptr @mtk_video_formats_output, ptr @mtk_video_formats_capture_vp8], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_avc_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_vp8_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_video_formats_capture_h264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_video_formats_output to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_video_formats_capture_vp8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_enc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_vcodec_enc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vcodec_enc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_vcodec_enc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rproc_phandle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rproc_phandle) #7
  %0 = ptrtoint ptr %rproc_phandle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rproc_phandle, align 4, !annotation !151
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1280, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_list = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ctx_list, ptr %ctx_list, align 4
  %prev.i = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx_list, ptr %prev.i, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %plat_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %plat_dev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %rproc_phandle, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.else

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i.i252 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %rproc_phandle, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i252)
  %tobool9.not = icmp sgt i32 %call.i.i252, -1
  br i1 %tobool9.not, label %if.else.if.end14_crit_edge, label %do.end

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 258) #10
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %fw_type.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ 1, %if.else.if.end14_crit_edge ]
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %8 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end14.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end14.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end14.dma_set_max_seg_size.exit_crit_edge
  %call17 = call ptr @mtk_vcodec_fw_select(ptr noundef nonnull %call.i, i32 noundef %fw_type.0, i32 noundef 1) #7
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %fw_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %fw_handler, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %dma_set_max_seg_size.exit
  %call25 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %venc_pdata, align 4
  %call26 = call i32 @mtk_vcodec_init_enc_pm(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %err_enc_pm

if.end32:                                         ; preds = %if.end23
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call34 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %14 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %venc_pdata, align 4
  %core_id = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_id, align 4
  %arrayidx = getelementptr %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 10, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %arrayidx, align 4
  %19 = load ptr, ptr %venc_pdata, align 4
  %core_id38 = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %core_id38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_id38, align 4
  %arrayidx39 = getelementptr %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 10, i32 %21
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx39, align 4
  %cmp.i253 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %23 to i32
  br label %err_res

if.end47:                                         ; preds = %if.end32
  %call48 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %err_res

if.end55:                                         ; preds = %if.end47
  %call56 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %enc_irq = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 22
  %25 = ptrtoint ptr %enc_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call56, ptr %enc_irq, align 4
  call void @irq_modify_status(i32 noundef %call56, i32 noundef 0, i32 noundef 4096) #7
  %26 = ptrtoint ptr %enc_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enc_irq, align 4
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %call.i254 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %27, ptr noundef nonnull @mtk_vcodec_enc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %29, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool61.not = icmp eq i32 %call.i254, 0
  br i1 %tobool61.not, label %do.body71, label %do.end65

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %enc_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enc_irq, align 4
  %32 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %venc_pdata, align 4
  %core_id69 = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %core_id69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_id69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %31, i32 noundef %call.i254, i32 noundef %35) #10
  br label %err_res

do.body71:                                        ; preds = %if.end55
  %enc_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 24
  call void @__mutex_init(ptr noundef %enc_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @mtk_vcodec_probe.__key) #7
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 19
  call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @mtk_vcodec_probe.__key.18) #7
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.21, ptr noundef nonnull @mtk_vcodec_probe.__key.20, i16 noundef signext 3) #7
  %name81 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %36 = call ptr @memcpy(ptr %name81, ptr @.str.23, i32 16)
  %call85 = call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body94, label %do.end90

do.end90:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, i32 noundef 312, i32 noundef %call85) #10
  br label %err_res

do.body94:                                        ; preds = %do.body71
  %queue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 20
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.28, ptr noundef nonnull @mtk_vcodec_probe.__key.27) #7
  %call97 = call ptr @video_device_alloc() #7
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %do.end102, label %if.end105

do.end102:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, i32 noundef 321) #10
  br label %err_enc_alloc

if.end105:                                        ; preds = %do.body94
  %fops = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 3
  %37 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mtk_vcodec_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 24
  %38 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mtk_venc_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 23
  %39 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @video_device_release, ptr %release, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 26
  %40 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev108 = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 7
  %41 = ptrtoint ptr %v4l2_dev108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %v4l2_dev108, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 14
  %42 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 4
  %43 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 67125248, ptr %device_caps, align 8
  %name109 = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 12
  %44 = call ptr @memcpy(ptr %name109, ptr @.str, i32 15)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 5, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd_enc112 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %vfd_enc112 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call97, ptr %vfd_enc112, align 8
  %driver_data.i.i255 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i255 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i255, align 4
  %call113 = call ptr @v4l2_m2m_init(ptr noundef nonnull @mtk_venc_m2m_ops) #7
  %m2m_dev_enc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call113, ptr %m2m_dev_enc, align 8
  %cmp.i256 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %do.end119, label %if.end124

do.end119:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, i32 noundef 342) #10
  %49 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_dev_enc, align 8
  %51 = ptrtoint ptr %50 to i32
  br label %err_enc_mem_init

if.end124:                                        ; preds = %if.end105
  %call125 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655374, i32 noundef 1) #7
  %encode_workqueue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 16
  %52 = ptrtoint ptr %encode_workqueue to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call125, ptr %encode_workqueue, align 4
  %tobool127.not = icmp eq ptr %call125, null
  br i1 %tobool127.not, label %do.end131, label %if.end134

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, i32 noundef 352) #10
  br label %err_event_workq

if.end134:                                        ; preds = %if.end124
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %call137 = call ptr @of_get_property(ptr noundef %54, ptr noundef nonnull @.str.38, ptr noundef null) #7
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %if.end134.if.end142_crit_edge, label %if.then139

if.end134.if.end142_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then139:                                       ; preds = %if.end134
  %call.i257 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 17179869183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp.i258 = icmp eq i32 %call.i257, 0
  br i1 %cmp.i258, label %if.then.i259, label %if.then139.if.end142_crit_edge

if.then139.if.end142_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then.i259:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 17179869183) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then.i259, %if.then139.if.end142_crit_edge, %if.end134.if.end142_crit_edge
  %55 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fops, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.i260 = call i32 @__video_register_device(ptr noundef nonnull %call97, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool144.not = icmp eq i32 %call.i260, 0
  br i1 %tobool144.not, label %do.body152, label %do.end148

do.end148:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, i32 noundef 362) #10
  %59 = ptrtoint ptr %encode_workqueue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %encode_workqueue, align 4
  call void @destroy_workqueue(ptr noundef %60) #7
  br label %err_event_workq

do.body152:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_probe, %if.then158)) #7
          to label %cleanup [label %if.then158], !srcloc !152

if.then158:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %venc_pdata, align 4
  %core_id160 = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %core_id160 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %core_id160, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %call97, i32 0, i32 16
  %65 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num, align 4
  %conv = zext i16 %66 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef 367, i32 noundef %64, i32 noundef %conv) #7
  br label %cleanup

err_event_workq:                                  ; preds = %do.end148, %do.end131
  %ret.0 = phi i32 [ %call.i260, %do.end148 ], [ -22, %do.end131 ]
  %67 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %m2m_dev_enc, align 8
  call void @v4l2_m2m_release(ptr noundef %68) #7
  br label %err_enc_mem_init

err_enc_mem_init:                                 ; preds = %err_event_workq, %do.end119
  %ret.1 = phi i32 [ %51, %do.end119 ], [ %ret.0, %err_event_workq ]
  call void @video_unregister_device(ptr noundef nonnull %call97) #7
  br label %err_enc_alloc

err_enc_alloc:                                    ; preds = %err_enc_mem_init, %do.end102
  %ret.2 = phi i32 [ %ret.1, %err_enc_mem_init ], [ -12, %do.end102 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  br label %err_res

err_res:                                          ; preds = %err_enc_alloc, %do.end90, %do.end65, %do.end53, %if.then41
  %ret.3 = phi i32 [ %24, %if.then41 ], [ -2, %do.end53 ], [ -22, %do.end65 ], [ %call85, %do.end90 ], [ %ret.2, %err_enc_alloc ]
  call void @mtk_vcodec_release_enc_pm(ptr noundef nonnull %call.i) #7
  br label %err_enc_pm

err_enc_pm:                                       ; preds = %err_res, %do.end30
  %ret.4 = phi i32 [ %call26, %do.end30 ], [ %ret.3, %err_res ]
  %69 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw_handler, align 8
  call void @mtk_vcodec_fw_release(ptr noundef %70) #7
  br label %cleanup

cleanup:                                          ; preds = %err_enc_pm, %if.then158, %do.body152, %if.then20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %12, %if.then20 ], [ %ret.4, %err_enc_pm ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then158 ], [ 0, %do.body152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rproc_phandle) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_enc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_enc_remove.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_enc_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_enc_remove.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef 460) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %encode_workqueue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %encode_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encode_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #7
  %m2m_dev_enc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev_enc, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_m2m_release(ptr noundef nonnull %5) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %vfd_enc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfd_enc, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_unregister_device(ptr noundef nonnull %7) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  tail call void @mtk_vcodec_release_enc_pm(ptr noundef %1) #7
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_handler, align 8
  tail call void @mtk_vcodec_fw_release(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_init_enc_pm(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_enc_irq_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  %curr_ctx = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_ctx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_enc_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_enc_irq_handler, %if.then)) #7
          to label %do.end12 [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 12
  %4 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_pdata, align 4
  %core_id = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_enc_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 105, i32 noundef %3, i32 noundef %7) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry
  %venc_pdata13 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %venc_pdata13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %venc_pdata13, align 4
  %core_id14 = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %core_id14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_id14, align 4
  %arrayidx = getelementptr %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 10, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 96
  %add.ptr19 = getelementptr i8, ptr %13, i32 92
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !153
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %irq_status = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq_status, align 8
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end12.if.end.i_crit_edge, label %do.body.i

do.end12.if.end.i_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #7, !srcloc !156
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %do.end12.if.end.i_crit_edge
  %and1.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %do.body4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

do.body4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #7, !srcloc !156
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.body4.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end12.i_crit_edge, label %do.body10.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #7, !srcloc !156
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.body10.i, %if.end6.i.if.end12.i_crit_edge
  %and13.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %do.body16.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

do.body16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !156
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.body16.i, %if.end12.i.if.end18.i_crit_edge
  %and19.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %do.body22.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.body22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !156
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body22.i, %if.end18.i.if.end24.i_crit_edge
  %and25.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.clean_irq_status.exit_crit_edge, label %do.body28.i

if.end24.i.clean_irq_status.exit_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clean_irq_status.exit

do.body28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #7, !srcloc !156
  br label %clean_irq_status.exit

clean_irq_status.exit:                            ; preds = %do.body28.i, %if.end24.i.clean_irq_status.exit_crit_edge
  %int_cond.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %int_cond.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %int_cond.i, align 4
  %int_type.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %int_type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %int_type.i, align 8
  %queue.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_release_enc_pm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_fw_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_vcodec_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1704) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %id_counter = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %id_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_counter, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %id_counter, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 4
  %fh = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 3
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #7
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call2) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #7
  %list = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %dev5 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %dev5, align 4
  %queue = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.48, ptr noundef nonnull @fops_vcodec_open.__key) #7
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call7.i.i, align 8
  %call6 = tail call i32 @mtk_vcodec_enc_ctrls_setup(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 146, i32 noundef %call6) #10
  br label %err_ctrls_setup

if.end13:                                         ; preds = %if.end
  %m2m_dev_enc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev_enc, align 8
  %call14 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %12, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mtk_vcodec_enc_queue_init) #7
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call14, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call14 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 154, i32 noundef %14) #10
  br label %err_m2m_ctx_init

if.end25:                                         ; preds = %if.end13
  %call27 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %call14, i32 noundef 10) #7
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 23
  %15 = ptrtoint ptr %empty_flush_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %empty_flush_buf, align 8
  tail call void @mtk_vcodec_enc_set_default_params(ptr noundef nonnull %call7.i.i) #7
  %call29 = tail call i32 @v4l2_fh_is_singular(ptr noundef %fh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end25.do.body54_crit_edge, label %if.then31

if.end25.do.body54_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54

if.then31:                                        ; preds = %if.end25
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_handler, align 8
  %call32 = tail call i32 @mtk_vcodec_fw_load_firmware(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef 173) #10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %19) #7
  br label %err_m2m_ctx_init

if.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw_handler, align 8
  %call41 = tail call i32 @mtk_vcodec_fw_get_venc_capa(ptr noundef %21) #7
  %enc_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %enc_capability to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call41, ptr %enc_capability, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_open.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_open, %if.then48)) #7
          to label %do.body54 [label %if.then48], !srcloc !152

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %enc_capability to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enc_capability, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_open.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef 179, i32 noundef %24) #7
  br label %do.body54

do.body54:                                        ; preds = %if.then48, %if.end39, %if.end25.do.body54_crit_edge
  %ret.0 = phi i32 [ %call32, %if.then48 ], [ 0, %if.end25.do.body54_crit_edge ], [ %call32, %if.end39 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_open.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_open, %if.then66)) #7
          to label %do.end71 [label %if.then66], !srcloc !152

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %27 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_open.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.50, i32 noundef 183, i32 noundef %26, ptr noundef nonnull %call7.i.i, ptr noundef %28) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  %ctx_list = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %ctx_list, ptr noundef %30) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end71.list_add.exit_crit_edge

do.end71.list_add.exit_crit_edge:                 ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %list, align 8
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ctx_list, ptr %prev.i, align 4
  %34 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list, ptr %ctx_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end71.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_open.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_open, %if.then86)) #7
          to label %cleanup [label %if.then86], !srcloc !152

if.then86:                                        ; preds = %list_add.exit
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plat_dev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then86.dev_name.exit_crit_edge

if.then86.dev_name.exit_crit_edge:                ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %dev87 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev87, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then86.dev_name.exit_crit_edge
  %retval.0.i151 = phi ptr [ %40, %if.end.i ], [ %38, %if.then86.dev_name.exit_crit_edge ]
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_open.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.50, i32 noundef 189, ptr noundef %retval.0.i151, i32 noundef %42) #7
  br label %cleanup

err_m2m_ctx_init:                                 ; preds = %do.end36, %if.then17
  %ret.1 = phi i32 [ %14, %if.then17 ], [ %call32, %do.end36 ]
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #7
  br label %err_ctrls_setup

err_ctrls_setup:                                  ; preds = %err_m2m_ctx_init, %do.end11
  %ret.2 = phi i32 [ %call6, %do.end11 ], [ %ret.1, %err_m2m_ctx_init ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #7
  tail call void @v4l2_fh_exit(ptr noundef %fh) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_ctrls_setup, %dev_name.exit, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_ctrls_setup ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %dev_name.exit ], [ %ret.0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_vcodec_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_release.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr i8, ptr %3, i32 292
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_release.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 211, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %m2m_ctx = getelementptr i8, ptr %3, i32 192
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %7) #7
  tail call void @mtk_vcodec_enc_release(ptr noundef %add.ptr.i) #7
  tail call void @v4l2_fh_del(ptr noundef %3) #7
  tail call void @v4l2_fh_exit(ptr noundef %3) #7
  %ctrl_hdl = getelementptr i8, ptr %3, i32 492
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #7
  %list = getelementptr i8, ptr %3, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %3, i32 -4
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr i8, ptr %3, i32 -4
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_enc_ctrls_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_enc_queue_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_enc_set_default_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_load_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_get_venc_capa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_enc_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_mtk_vcodec_enc__306_483_mtk_vcodec_enc_driver_init6, !1, !"__initcall__kmod_mtk_vcodec_enc__306_483_mtk_vcodec_enc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 483, i32 1}
!2 = !{ptr @__exitcall_mtk_vcodec_enc_driver_exit, !1, !"__exitcall_mtk_vcodec_enc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file307, !4, !"__UNIQUE_ID_file307", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 486, i32 1}
!5 = !{ptr @__UNIQUE_ID_license308, !4, !"__UNIQUE_ID_license308", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description309, !7, !"__UNIQUE_ID_description309", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 487, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 478, i32 11}
!10 = !{ptr @mtk_vcodec_enc_driver, !11, !"mtk_vcodec_enc_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 474, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 251, i32 47}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 254, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 258, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_vcodec_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_vcodec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 270, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtk_vcodec_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_vcodec_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 285, i32 3}
!30 = !{ptr @mtk_vcodec_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_vcodec_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 296, i32 3}
!34 = !{ptr @mtk_vcodec_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_vcodec_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mtk_vcodec_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 303, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_vcodec_probe.__key.18, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 304, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mtk_vcodec_probe.__key.20, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 305, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 307, i32 59}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 308, i32 4}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 312, i32 3}
!51 = !{ptr @mtk_vcodec_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_vcodec_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mtk_vcodec_probe.__key.27, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 316, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 321, i32 3}
!58 = !{ptr @mtk_vcodec_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_vcodec_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 342, i32 3}
!62 = !{ptr @mtk_vcodec_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_vcodec_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 352, i32 3}
!66 = !{ptr @mtk_vcodec_probe._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_vcodec_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 357, i32 41}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 362, i32 3}
!72 = !{ptr @mtk_vcodec_probe._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mtk_vcodec_probe._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 366, i32 2}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, !75, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!78 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 105, i32 2}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mtk_vcodec_enc_irq_handler.__UNIQUE_ID_ddebug299, !80, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!83 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mtk_vcodec_fops, !85, !"mtk_vcodec_fops", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 226, i32 42}
!86 = !{ptr @fops_vcodec_open.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 140, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 145, i32 3}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fops_vcodec_open._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @fops_vcodec_open._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 153, i32 3}
!96 = !{ptr @fops_vcodec_open._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fops_vcodec_open._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 173, i32 4}
!100 = !{ptr @fops_vcodec_open._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fops_vcodec_open._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 179, i32 3}
!104 = !{ptr @fops_vcodec_open.__UNIQUE_ID_ddebug300, !103, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!105 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 182, i32 2}
!108 = !{ptr @fops_vcodec_open.__UNIQUE_ID_ddebug301, !107, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!109 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 188, i32 2}
!112 = !{ptr @fops_vcodec_open.__UNIQUE_ID_ddebug302, !111, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!113 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 211, i32 2}
!116 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fops_vcodec_release.__UNIQUE_ID_ddebug303, !115, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!118 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 460, i32 2}
!121 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mtk_vcodec_enc_remove.__UNIQUE_ID_ddebug305, !120, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!123 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mtk_vcodec_enc_match, !125, !"mtk_vcodec_enc_match", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 444, i32 34}
!126 = !{ptr @mt8173_avc_pdata, !127, !"mt8173_avc_pdata", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 386, i32 42}
!128 = !{ptr @mtk_video_formats_capture_h264, !129, !"mtk_video_formats_capture_h264", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 49, i32 35}
!130 = !{ptr @mtk_video_formats_output, !131, !"mtk_video_formats_output", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 26, i32 35}
!132 = !{ptr @mt8173_vp8_pdata, !133, !"mt8173_vp8_pdata", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 397, i32 42}
!134 = !{ptr @mtk_video_formats_capture_vp8, !135, !"mtk_video_formats_capture_vp8", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 57, i32 35}
!136 = !{ptr @mt8183_pdata, !137, !"mt8183_pdata", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 408, i32 42}
!138 = !{ptr @mt8192_pdata, !139, !"mt8192_pdata", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 420, i32 42}
!140 = !{ptr @mt8195_pdata, !141, !"mt8195_pdata", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c", i32 432, i32 42}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
!152 = !{i64 2148212457, i64 2148212462, i64 2148212475, i64 2148212519, i64 2148212553, i64 2148212574}
!153 = !{i64 4658408}
!154 = !{i64 2156579295}
!155 = !{i64 2156573841}
!156 = !{i64 4657990}
!157 = !{i64 2156574218}
!158 = !{i64 2156574592}
!159 = !{i64 2156574963}
!160 = !{i64 2156575334}
!161 = !{i64 2156575705}
