; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mtk_vcodec_dec_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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

@__initcall__kmod_mtk_vcodec_dec__305_421_mtk_vcodec_dec_driver_init6 = internal global ptr @mtk_vcodec_dec_driver_init, section ".initcall6.init", align 4
@mtk_vcodec_dec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_vcodec_probe, ptr @mtk_vcodec_dec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_vcodec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_vcodec_dec_driver_exit = internal global ptr @mtk_vcodec_dec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file306 = internal constant [69 x i8] c"mtk_vcodec_dec.file=drivers/media/platform/mtk-vcodec/mtk-vcodec-dec\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [30 x i8] c"mtk_vcodec_dec.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [68 x i8] c"mtk_vcodec_dec.description=Mediatek video codec V4L2 decoder driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-vcodec-dec\00", [17 x i8] zeroinitializer }, align 32
@mtk_vcodec_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vcodec-dec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vdec_8173_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-vcodec-dec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vdec_8183_pdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,vpu\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,scp\00", [19 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Could not get vdec IPI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_vcodec_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c\00", [41 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr = internal global ptr @mtk_vcodec_probe._entry, section ".printk_index", align 4
@mtk_vcodec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 234, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get mt vcodec clock source\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.10 = internal global ptr @mtk_vcodec_probe._entry.6, section ".printk_index", align 4
@mtk_vcodec_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.4, ptr @.str.5, ptr @.str.12, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg[%d] base=%p\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: reg[%d] base=%p\00", [39 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 249, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get irq resource\00", [37 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.16 = internal global ptr @mtk_vcodec_probe._entry.14, section ".printk_index", align 4
@mtk_vcodec_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 261, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to install dev->dec_irq %d (%d)\00", [57 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.19 = internal global ptr @mtk_vcodec_probe._entry.17, section ".printk_index", align 4
@mtk_vcodec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dec_mutex\00", [16 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->irqlock\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[/MTK_V4L2_VDEC]\00", [47 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] v4l2_device_register err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.29 = internal global ptr @mtk_vcodec_probe._entry.27, section ".printk_index", align 4
@mtk_vcodec_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->queue\00", [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to allocate video device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.34 = internal global ptr @mtk_vcodec_probe._entry.32, section ".printk_index", align 4
@mtk_vcodec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fops_vcodec_open, ptr @fops_vcodec_release }, [60 x i8] zeroinitializer }, align 32
@mtk_vdec_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@mtk_vdec_m2m_ops = external dso_local constant %struct.v4l2_m2m_ops, align 4
@mtk_vcodec_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to init mem2mem dec device\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.37 = internal global ptr @mtk_vcodec_probe._entry.35, section ".printk_index", align 4
@mtk_vcodec_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to create decode workqueue\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.40 = internal global ptr @mtk_vcodec_probe._entry.38, section ".printk_index", align 4
@mtk_vcodec_media_ops = external dso_local constant %struct.media_device_ops, align 4
@mtk_vcodec_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.4, ptr @.str.5, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to register media controller\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.43 = internal global ptr @mtk_vcodec_probe._entry.41, section ".printk_index", align 4
@mtk_vcodec_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.5, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to register media device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.46 = internal global ptr @mtk_vcodec_probe._entry.44, section ".printk_index", align 4
@mtk_vcodec_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.4, ptr @.str.5, ptr @.str.47, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"media registered as /dev/media%d\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(),%d: media registered as /dev/media%d\00", [54 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.4, ptr @.str.5, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to register video device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_probe._entry_ptr.51 = internal global ptr @mtk_vcodec_probe._entry.49, section ".printk_index", align 4
@mtk_vcodec_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.4, ptr @.str.5, ptr @.str.52, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"decoder registered as /dev/video%d\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(),%d: decoder registered as /dev/video%d\00", [52 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] DEC ISR, VDEC active is not 0x0 (0x%08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_vcodec_dec_irq_handler\00", [37 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_irq_handler._entry_ptr = internal global ptr @mtk_vcodec_dec_irq_handler._entry, section ".printk_index", align 4
@mtk_vcodec_dec_irq_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mtk_vcodec_dec_irq_handler :wake up ctx %d, dec_done_status=%x\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s(),%d: mtk_vcodec_dec_irq_handler :wake up ctx %d, dec_done_status=%x\00", [56 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->queue\00", [20 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to setup mt vcodec controls\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fops_vcodec_open\00", [47 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr = internal global ptr @fops_vcodec_open._entry, section ".printk_index", align 4
@fops_vcodec_open._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to v4l2_m2m_ctx_init() (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr.65 = internal global ptr @fops_vcodec_open._entry.63, section ".printk_index", align 4
@fops_vcodec_open._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] failed to load firmware!\0A\00", [41 x i8] zeroinitializer }, align 32
@fops_vcodec_open._entry_ptr.68 = internal global ptr @fops_vcodec_open._entry.66, section ".printk_index", align 4
@fops_vcodec_open.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.62, ptr @.str.5, ptr @.str.69, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"decoder capability %x\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(),%d: decoder capability %x\00", [33 x i8] zeroinitializer }, align 32
@fops_vcodec_open.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.62, ptr @.str.5, ptr @.str.71, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s decoder [%d]\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: %s decoder [%d]\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fops_vcodec_release.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fops_vcodec_release\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%d] decoder\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(),%d: [%d] decoder\00", [42 x i8] zeroinitializer }, align 32
@mtk_vdec_8173_pdata = external dso_local constant %struct.mtk_vcodec_dec_pdata, align 4
@mtk_vdec_8183_pdata = external dso_local constant %struct.mtk_vcodec_dec_pdata, align 4
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"mtk_vcodec_dec_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 412, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 416, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"mtk_vcodec_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 374, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 216, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 219, i32 54 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 223, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 234, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 244, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 249, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 259, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 265, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 266, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 267, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 270, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 274, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 278, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 282, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"mtk_vcodec_fops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 190, i32 42 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 303, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 312, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 329, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 335, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 339, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 343, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 347, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 52, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 71, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 97, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 102, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 109, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 131, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 137, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 143, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [58 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 166, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_mtk_vcodec_dec_driver_exit, ptr @__initcall__kmod_mtk_vcodec_dec__305_421_mtk_vcodec_dec_driver_init6, ptr @fops_vcodec_open._entry, ptr @fops_vcodec_open._entry.63, ptr @fops_vcodec_open._entry.66, ptr @fops_vcodec_open._entry_ptr, ptr @fops_vcodec_open._entry_ptr.65, ptr @fops_vcodec_open._entry_ptr.68, ptr @mtk_vcodec_dec_driver_exit, ptr @mtk_vcodec_dec_irq_handler._entry, ptr @mtk_vcodec_dec_irq_handler._entry_ptr, ptr @mtk_vcodec_probe._entry, ptr @mtk_vcodec_probe._entry.14, ptr @mtk_vcodec_probe._entry.17, ptr @mtk_vcodec_probe._entry.27, ptr @mtk_vcodec_probe._entry.32, ptr @mtk_vcodec_probe._entry.35, ptr @mtk_vcodec_probe._entry.38, ptr @mtk_vcodec_probe._entry.41, ptr @mtk_vcodec_probe._entry.44, ptr @mtk_vcodec_probe._entry.49, ptr @mtk_vcodec_probe._entry.6, ptr @mtk_vcodec_probe._entry_ptr, ptr @mtk_vcodec_probe._entry_ptr.10, ptr @mtk_vcodec_probe._entry_ptr.16, ptr @mtk_vcodec_probe._entry_ptr.19, ptr @mtk_vcodec_probe._entry_ptr.29, ptr @mtk_vcodec_probe._entry_ptr.34, ptr @mtk_vcodec_probe._entry_ptr.37, ptr @mtk_vcodec_probe._entry_ptr.40, ptr @mtk_vcodec_probe._entry_ptr.43, ptr @mtk_vcodec_probe._entry_ptr.46, ptr @mtk_vcodec_probe._entry_ptr.51, ptr @mtk_vcodec_dec_driver, ptr @.str, ptr @mtk_vcodec_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @mtk_vcodec_probe.__key, ptr @.str.20, ptr @mtk_vcodec_probe.__key.21, ptr @.str.22, ptr @mtk_vcodec_probe.__key.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @mtk_vcodec_probe.__key.30, ptr @.str.31, ptr @.str.33, ptr @mtk_vcodec_fops, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @fops_vcodec_open.__key, ptr @.str.58, ptr @fops_vcodec_open.__key.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_vcodec_open._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_dec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_vcodec_dec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vcodec_dec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_vcodec_dec_driver) #7
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
  store i32 -1, ptr %rproc_phandle, align 4, !annotation !147
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
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %vdec_pdata, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %rproc_phandle, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.else

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i349 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %rproc_phandle, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i349)
  %tobool11.not = icmp sgt i32 %call.i.i349, -1
  br i1 %tobool11.not, label %if.else.if.end16_crit_edge, label %do.end

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 223) #10
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %fw_type.0 = phi i32 [ 0, %if.end.if.end16_crit_edge ], [ 1, %if.else.if.end16_crit_edge ]
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %9 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end16.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end16.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end16.dma_set_max_seg_size.exit_crit_edge
  %call19 = call ptr @mtk_vcodec_fw_select(ptr noundef nonnull %call.i, i32 noundef %fw_type.0, i32 noundef 0) #7
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 13
  %12 = ptrtoint ptr %fw_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %fw_handler, align 8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %dma_set_max_seg_size.exit
  %call26 = call i32 @mtk_vcodec_init_dec_pm(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %err_dec_pm

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0358 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %call34 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %i.0358) #7
  %arrayidx = getelementptr %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 10, i32 %i.0358
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %arrayidx, align 4
  %cmp.i350 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then38, label %do.body43

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call34 to i32
  br label %err_res

do.body43:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_probe, %if.then49)) #7
          to label %for.inc [label %if.then49], !srcloc !148

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_probe.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef 244, i32 noundef %i.0358, ptr noundef %17) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %do.body43
  %inc = add nuw nsw i32 %i.0358, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call55 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %cmp56 = icmp eq ptr %call55, null
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %err_res

if.end62:                                         ; preds = %for.end
  %call63 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %dec_irq = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 21
  %18 = ptrtoint ptr %dec_irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call63, ptr %dec_irq, align 8
  call void @irq_modify_status(i32 noundef %call63, i32 noundef 0, i32 noundef 4096) #7
  %19 = ptrtoint ptr %dec_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dec_irq, align 8
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %call.i351 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %20, ptr noundef nonnull @mtk_vcodec_dec_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %22, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool68.not = icmp eq i32 %call.i351, 0
  br i1 %tobool68.not, label %do.body76, label %do.end72

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dec_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dec_irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %24, i32 noundef %call.i351) #10
  br label %err_res

do.body76:                                        ; preds = %if.end62
  %dec_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 23
  call void @__mutex_init(ptr noundef %dec_mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @mtk_vcodec_probe.__key) #7
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 19
  call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @mtk_vcodec_probe.__key.21) #7
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.24, ptr noundef nonnull @mtk_vcodec_probe.__key.23, i16 noundef signext 3) #7
  %name86 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %name86, ptr @.str.26, i32 17)
  %call90 = call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body99, label %do.end95

do.end95:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef 274, i32 noundef %call90) #10
  br label %err_res

do.body99:                                        ; preds = %do.body76
  %queue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 20
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.31, ptr noundef nonnull @mtk_vcodec_probe.__key.30) #7
  %call102 = call ptr @video_device_alloc() #7
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %do.end107, label %if.end110

do.end107:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.4, i32 noundef 282) #10
  br label %err_dec_alloc

if.end110:                                        ; preds = %do.body99
  %fops = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 3
  %26 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mtk_vcodec_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 24
  %27 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mtk_vdec_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 23
  %28 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @video_device_release, ptr %release, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 26
  %29 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev113 = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 7
  %30 = ptrtoint ptr %v4l2_dev113 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %v4l2_dev113, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 14
  %31 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 4
  %32 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 67125248, ptr %device_caps, align 8
  %name114 = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 12
  %33 = call ptr @memcpy(ptr %name114, ptr @.str, i32 15)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd_dec117 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %vfd_dec117 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call102, ptr %vfd_dec117, align 8
  %driver_data.i.i352 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i352 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i352, align 4
  %call118 = call ptr @v4l2_m2m_init(ptr noundef nonnull @mtk_vdec_m2m_ops) #7
  %m2m_dev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call118, ptr %m2m_dev_dec, align 4
  %cmp.i353 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %do.end124, label %if.end129

do.end124:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, i32 noundef 303) #10
  %38 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %m2m_dev_dec, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %err_dec_mem_init

if.end129:                                        ; preds = %if.end110
  %call130 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655374, i32 noundef 1) #7
  %decode_workqueue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 15
  %41 = ptrtoint ptr %decode_workqueue to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call130, ptr %decode_workqueue, align 8
  %tobool132.not = icmp eq ptr %call130, null
  br i1 %tobool132.not, label %do.end136, label %if.end139

do.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, i32 noundef 312) #10
  br label %err_event_workq

if.end139:                                        ; preds = %if.end129
  %42 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %uses_stateless_api to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %uses_stateless_api, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool141.not = icmp eq i8 %45, 0
  br i1 %tobool141.not, label %if.end139.if.end189_crit_edge, label %if.then142

if.end139.if.end189_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then142:                                       ; preds = %if.end139
  %mdev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 2
  %46 = ptrtoint ptr %mdev_dec to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev1, ptr %mdev_dec, align 8
  %model = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 2, i32 2
  %call147 = call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #7
  call void @media_device_init(ptr noundef %mdev_dec) #7
  %ops = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 2, i32 21
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mtk_vcodec_media_ops, ptr %ops, align 8
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %mdev_dec, ptr %mdev, align 4
  %49 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_dev_dec, align 4
  %51 = ptrtoint ptr %vfd_dec117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vfd_dec117, align 8
  %call154 = call i32 @v4l2_m2m_register_media_controller(ptr noundef %50, ptr noundef %52, i32 noundef 16392) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end162, label %do.end159

do.end159:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef 329) #10
  br label %err_reg_cont

if.end162:                                        ; preds = %if.then142
  %call164 = call i32 @__media_device_register(ptr noundef %mdev_dec, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %do.body173, label %do.end169

do.end169:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef 335) #10
  br label %err_media_reg

do.body173:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_probe, %if.then185)) #7
          to label %if.end189 [label %if.then185], !srcloc !148

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #9
  %minor = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 15
  %53 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %minor, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_probe.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, i32 noundef 339, i32 noundef %54) #7
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %do.body173, %if.end139.if.end189_crit_edge
  %55 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fops, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.i354 = call i32 @__video_register_device(ptr noundef nonnull %call102, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool191.not = icmp eq i32 %call.i354, 0
  br i1 %tobool191.not, label %do.body199, label %do.end195

do.end195:                                        ; preds = %if.end189
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.4, i32 noundef 343) #10
  %59 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api217 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %uses_stateless_api217 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %uses_stateless_api217, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool218.not = icmp eq i8 %62, 0
  br i1 %tobool218.not, label %do.end195.err_media_reg_crit_edge, label %if.then219

do.end195.err_media_reg_crit_edge:                ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_media_reg

do.body199:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_probe, %if.then211)) #7
          to label %cleanup [label %if.then211], !srcloc !148

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %minor212 = getelementptr inbounds %struct.video_device, ptr %call102, i32 0, i32 15
  %63 = ptrtoint ptr %minor212 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %minor212, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.4, i32 noundef 347, i32 noundef %64) #7
  br label %cleanup

if.then219:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #9
  %mdev_dec220 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 2
  call void @media_device_unregister(ptr noundef %mdev_dec220) #7
  br label %err_media_reg

err_media_reg:                                    ; preds = %if.then219, %do.end195.err_media_reg_crit_edge, %do.end169
  %ret.0 = phi i32 [ %call164, %do.end169 ], [ %call.i354, %if.then219 ], [ %call.i354, %do.end195.err_media_reg_crit_edge ]
  %65 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api223 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %uses_stateless_api223 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %uses_stateless_api223, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool224.not = icmp eq i8 %68, 0
  br i1 %tobool224.not, label %err_media_reg.err_reg_cont_crit_edge, label %if.then225

err_media_reg.err_reg_cont_crit_edge:             ; preds = %err_media_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_reg_cont

if.then225:                                       ; preds = %err_media_reg
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %m2m_dev_dec, align 4
  call void @v4l2_m2m_unregister_media_controller(ptr noundef %70) #7
  br label %err_reg_cont

err_reg_cont:                                     ; preds = %if.then225, %err_media_reg.err_reg_cont_crit_edge, %do.end159
  %ret.1 = phi i32 [ %call154, %do.end159 ], [ %ret.0, %if.then225 ], [ %ret.0, %err_media_reg.err_reg_cont_crit_edge ]
  %71 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api229 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %uses_stateless_api229 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %uses_stateless_api229, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool230.not = icmp eq i8 %74, 0
  br i1 %tobool230.not, label %err_reg_cont.if.end233_crit_edge, label %if.then231

err_reg_cont.if.end233_crit_edge:                 ; preds = %err_reg_cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

if.then231:                                       ; preds = %err_reg_cont
  call void @__sanitizer_cov_trace_pc() #9
  %mdev_dec232 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %call.i, i32 0, i32 2
  call void @media_device_cleanup(ptr noundef %mdev_dec232) #7
  br label %if.end233

if.end233:                                        ; preds = %if.then231, %err_reg_cont.if.end233_crit_edge
  %75 = ptrtoint ptr %decode_workqueue to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %decode_workqueue, align 8
  call void @destroy_workqueue(ptr noundef %76) #7
  br label %err_event_workq

err_event_workq:                                  ; preds = %if.end233, %do.end136
  %ret.2 = phi i32 [ %ret.1, %if.end233 ], [ -22, %do.end136 ]
  %77 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m2m_dev_dec, align 4
  call void @v4l2_m2m_release(ptr noundef %78) #7
  br label %err_dec_mem_init

err_dec_mem_init:                                 ; preds = %err_event_workq, %do.end124
  %ret.3 = phi i32 [ %40, %do.end124 ], [ %ret.2, %err_event_workq ]
  call void @video_unregister_device(ptr noundef nonnull %call102) #7
  br label %err_dec_alloc

err_dec_alloc:                                    ; preds = %err_dec_mem_init, %do.end107
  %ret.4 = phi i32 [ %ret.3, %err_dec_mem_init ], [ -12, %do.end107 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  br label %err_res

err_res:                                          ; preds = %err_dec_alloc, %do.end95, %do.end72, %do.end60, %if.then38
  %ret.5 = phi i32 [ %15, %if.then38 ], [ -2, %do.end60 ], [ %call.i351, %do.end72 ], [ %call90, %do.end95 ], [ %ret.4, %err_dec_alloc ]
  call void @mtk_vcodec_release_dec_pm(ptr noundef nonnull %call.i) #7
  br label %err_dec_pm

err_dec_pm:                                       ; preds = %err_res, %do.end30
  %ret.6 = phi i32 [ %call26, %do.end30 ], [ %ret.5, %err_res ]
  %79 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw_handler, align 8
  call void @mtk_vcodec_fw_release(ptr noundef %80) #7
  br label %cleanup

cleanup:                                          ; preds = %err_dec_pm, %if.then211, %do.body199, %if.then22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %13, %if.then22 ], [ %ret.6, %err_dec_pm ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then211 ], [ 0, %do.body199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rproc_phandle) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_dec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %decode_workqueue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %decode_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decode_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #7
  %devnode = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devnode, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %media_devnode_is_registered.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

media_devnode_is_registered.exit:                 ; preds = %entry
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %media_devnode_is_registered.exit.if.end_crit_edge, label %if.then

media_devnode_is_registered.exit.if.end_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mdev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev_dec) #7
  %m2m_dev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev_dec, align 4
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %9) #7
  tail call void @media_device_cleanup(ptr noundef %mdev_dec) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %media_devnode_is_registered.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %m2m_dev_dec4 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %m2m_dev_dec4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_dev_dec4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_m2m_release(ptr noundef nonnull %11) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %vfd_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfd_dec, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @video_unregister_device(ptr noundef nonnull %13) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  tail call void @mtk_vcodec_release_dec_pm(ptr noundef %1) #7
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_handler, align 8
  tail call void @mtk_vcodec_fw_release(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_init_dec_pm(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_dec_irq_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 10
  %arrayidx = getelementptr %struct.mtk_vcodec_dev, ptr %priv, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %call = tail call ptr @mtk_vcodec_get_curr_ctx(ptr noundef %priv) #7
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 53, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %irq_status = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call, i32 0, i32 18
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq_status, align 8
  %and12 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not.not, label %if.end.cleanup_crit_edge, label %do.body16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %10 = or i32 %9, 285212672
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.ptr26 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %10) #7, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %14 = and i32 %13, -268435457
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %add.ptr38 = getelementptr i8, ptr %16, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %14) #7, !srcloc !155
  %int_cond.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %int_cond.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %int_cond.i, align 4
  %queue.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_dec_irq_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_dec_irq_handler, %if.then44)) #7
          to label %cleanup [label %if.then44], !srcloc !148

if.then44:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call, i32 0, i32 6
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_dec_irq_handler.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 73, i32 noundef %19, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body16, %if.end.cleanup_crit_edge, %do.end
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
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_register_media_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_unregister_media_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_release_dec_pm(ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @mtk_vcodec_get_curr_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

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
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.58, ptr noundef nonnull @fops_vcodec_open.__key) #7
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.60, ptr noundef nonnull @fops_vcodec_open.__key.59) #7
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %call7.i.i, align 8
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdec_pdata, align 8
  %ctrls_setup = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ctrls_setup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrls_setup, align 4
  %call9 = tail call i32 %14(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 102) #10
  br label %err_ctrls_setup

if.end16:                                         ; preds = %if.end
  %m2m_dev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_dev_dec, align 4
  %call17 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %16, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mtk_vcodec_dec_queue_init) #7
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call17 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 110, i32 noundef %18) #10
  br label %err_m2m_ctx_init

if.end28:                                         ; preds = %if.end16
  %call30 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %call17, i32 noundef 10) #7
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 23
  %19 = ptrtoint ptr %empty_flush_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30, ptr %empty_flush_buf, align 8
  tail call void @mtk_vcodec_dec_set_default_params(ptr noundef nonnull %call7.i.i) #7
  %call32 = tail call i32 @v4l2_fh_is_singular(ptr noundef %fh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.if.end60_crit_edge, label %if.then34

if.end28.if.end60_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then34:                                        ; preds = %if.end28
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 25
  %call35 = tail call i32 @mtk_vcodec_dec_pw_on(ptr noundef %pm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.then34.err_load_fw_crit_edge, label %if.end37

if.then34.err_load_fw_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_load_fw

if.end37:                                         ; preds = %if.then34
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw_handler, align 8
  %call38 = tail call i32 @mtk_vcodec_fw_load_firmware(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef 131) #10
  br label %err_load_fw

if.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw_handler, align 8
  %call48 = tail call i32 @mtk_vcodec_fw_get_vdec_capa(ptr noundef %23) #7
  %dec_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %dec_capability to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call48, ptr %dec_capability, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_open.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_open, %if.then55)) #7
          to label %if.end60 [label %if.then55], !srcloc !148

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dec_capability to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dec_capability, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_open.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.62, i32 noundef 137, i32 noundef %26) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end46, %if.end28.if.end60_crit_edge
  %ret.0 = phi i32 [ %call38, %if.then55 ], [ 0, %if.end28.if.end60_crit_edge ], [ %call38, %if.end46 ]
  %ctx_list = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %ctx_list, ptr noundef %28) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_add.exit_crit_edge

if.end60.list_add.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %list, align 8
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ctx_list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %ctx_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end60.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_open.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_open, %if.then75)) #7
          to label %cleanup [label %if.then75], !srcloc !148

if.then75:                                        ; preds = %list_add.exit
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %plat_dev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then75.dev_name.exit_crit_edge

if.then75.dev_name.exit_crit_edge:                ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  %dev76 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev76, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then75.dev_name.exit_crit_edge
  %retval.0.i137 = phi ptr [ %38, %if.end.i ], [ %36, %if.then75.dev_name.exit_crit_edge ]
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_open.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.62, i32 noundef 144, ptr noundef %retval.0.i137, i32 noundef %40) #7
  br label %cleanup

err_load_fw:                                      ; preds = %do.end43, %if.then34.err_load_fw_crit_edge
  %ret.1 = phi i32 [ %call35, %if.then34.err_load_fw_crit_edge ], [ %call38, %do.end43 ]
  %41 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %42) #7
  br label %err_m2m_ctx_init

err_m2m_ctx_init:                                 ; preds = %err_load_fw, %if.then20
  %ret.2 = phi i32 [ %18, %if.then20 ], [ %ret.1, %err_load_fw ]
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %call7.i.i, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #7
  br label %err_ctrls_setup

err_ctrls_setup:                                  ; preds = %err_m2m_ctx_init, %do.end14
  %ret.3 = phi i32 [ %call9, %do.end14 ], [ %ret.2, %err_m2m_ctx_init ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #7
  tail call void @v4l2_fh_exit(ptr noundef %fh) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_ctrls_setup, %dev_name.exit, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_ctrls_setup ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %dev_name.exit ], [ %ret.0, %list_add.exit ]
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_vcodec_release.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_vcodec_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr i8, ptr %3, i32 292
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_vcodec_release.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef 166, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %m2m_ctx = getelementptr i8, ptr %3, i32 192
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %7) #7
  tail call void @mtk_vcodec_dec_release(ptr noundef %add.ptr.i) #7
  %call5 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 25
  tail call void @mtk_vcodec_dec_pw_off(ptr noundef %pm) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %3) #7
  tail call void @v4l2_fh_exit(ptr noundef %3) #7
  %ctrl_hdl = getelementptr i8, ptr %3, i32 492
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #7
  %list = getelementptr i8, ptr %3, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del_init.exit_crit_edge

if.end8.list_del_init.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end8
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end8.list_del_init.exit_crit_edge
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
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_dec_queue_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_dec_set_default_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_dec_pw_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_load_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_get_vdec_capa(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @mtk_vcodec_dec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_dec_pw_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_mtk_vcodec_dec__305_421_mtk_vcodec_dec_driver_init6, !1, !"__initcall__kmod_mtk_vcodec_dec__305_421_mtk_vcodec_dec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 421, i32 1}
!2 = !{ptr @__exitcall_mtk_vcodec_dec_driver_exit, !1, !"__exitcall_mtk_vcodec_dec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file306, !4, !"__UNIQUE_ID_file306", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 423, i32 1}
!5 = !{ptr @__UNIQUE_ID_license307, !4, !"__UNIQUE_ID_license307", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description308, !7, !"__UNIQUE_ID_description308", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 424, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 416, i32 11}
!10 = !{ptr @mtk_vcodec_dec_driver, !11, !"mtk_vcodec_dec_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 412, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 216, i32 47}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 219, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 223, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_vcodec_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_vcodec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 234, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtk_vcodec_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_vcodec_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 244, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug302, !29, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!32 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 249, i32 3}
!35 = !{ptr @mtk_vcodec_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_vcodec_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 259, i32 3}
!39 = !{ptr @mtk_vcodec_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_vcodec_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mtk_vcodec_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 265, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mtk_vcodec_probe.__key.21, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 266, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk_vcodec_probe.__key.23, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 267, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 269, i32 59}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 270, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 274, i32 3}
!56 = !{ptr @mtk_vcodec_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtk_vcodec_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mtk_vcodec_probe.__key.30, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 278, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 282, i32 3}
!63 = !{ptr @mtk_vcodec_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtk_vcodec_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 303, i32 3}
!67 = !{ptr @mtk_vcodec_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtk_vcodec_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 312, i32 3}
!71 = !{ptr @mtk_vcodec_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_vcodec_probe._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 329, i32 4}
!75 = !{ptr @mtk_vcodec_probe._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtk_vcodec_probe._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 335, i32 4}
!79 = !{ptr @mtk_vcodec_probe._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mtk_vcodec_probe._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 339, i32 3}
!83 = !{ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug303, !82, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!84 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 343, i32 3}
!87 = !{ptr @mtk_vcodec_probe._entry.49, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mtk_vcodec_probe._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 347, i32 2}
!91 = !{ptr @mtk_vcodec_probe.__UNIQUE_ID_ddebug304, !90, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!92 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 52, i32 3}
!95 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mtk_vcodec_dec_irq_handler._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @mtk_vcodec_dec_irq_handler._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 71, i32 2}
!100 = !{ptr @mtk_vcodec_dec_irq_handler.__UNIQUE_ID_ddebug298, !99, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!101 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtk_vcodec_fops, !103, !"mtk_vcodec_fops", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 190, i32 42}
!104 = !{ptr @fops_vcodec_open.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 96, i32 2}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @fops_vcodec_open.__key.59, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 97, i32 2}
!109 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 102, i32 3}
!112 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fops_vcodec_open._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fops_vcodec_open._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 109, i32 3}
!117 = !{ptr @fops_vcodec_open._entry.63, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @fops_vcodec_open._entry_ptr.65, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 131, i32 4}
!121 = !{ptr @fops_vcodec_open._entry.66, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @fops_vcodec_open._entry_ptr.68, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 137, i32 3}
!125 = !{ptr @fops_vcodec_open.__UNIQUE_ID_ddebug299, !124, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!126 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 143, i32 2}
!129 = !{ptr @fops_vcodec_open.__UNIQUE_ID_ddebug300, !128, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!130 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 166, i32 2}
!133 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @fops_vcodec_release.__UNIQUE_ID_ddebug301, !132, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!135 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mtk_vcodec_match, !137, !"mtk_vcodec_match", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c", i32 374, i32 34}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i64 2148210586, i64 2148210591, i64 2148210604, i64 2148210648, i64 2148210682, i64 2148210703}
!149 = !{i8 0, i8 2}
!150 = !{i64 4656537}
!151 = !{i64 2156545142}
!152 = !{i64 2156547763}
!153 = !{i64 2156548743}
!154 = !{i64 2156549667}
!155 = !{i64 4656119}
!156 = !{i64 2156550654}
!157 = !{i64 2156551582}
