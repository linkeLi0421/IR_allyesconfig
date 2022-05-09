; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar_jpu.c_pt.bc'
source_filename = "../drivers/media/platform/rcar_jpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.jpu_fmt = type { i32, i32, [2 x i8], i8, i8, i8, i8, i16 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.jpu = type { %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.video_device, %struct.video_device, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.jpu_ctx = type { ptr, i8, i16, %struct.jpu_q_data, %struct.jpu_q_data, %struct.v4l2_fh, %struct.v4l2_ctrl_handler }
%struct.jpu_q_data = type { ptr, %struct.v4l2_pix_format_mplane, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.jpu_buffer = type { %struct.v4l2_m2m_buffer, i16, i8 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }

@__initcall__kmod_rcar_jpu__308_1759_jpu_driver_init6 = internal global ptr @jpu_driver_init, section ".initcall6.init", align 4
@jpu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jpu_probe, ptr @jpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jpu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jpu_driver_exit = internal global ptr @jpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias309 = internal constant [33 x i8] c"rcar_jpu.alias=platform:rcar_jpu\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [69 x i8] c"rcar_jpu.author=Mikhail Ulianov <mikhail.ulyanov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [63 x i8] c"rcar_jpu.description=Renesas R-Car JPEG processing unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [46 x i8] c"rcar_jpu.file=drivers/media/platform/rcar_jpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [24 x i8] c"rcar_jpu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_jpu\00", [23 x i8] zeroinitializer }, align 32
@jpu_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-jpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@jpu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @jpu_suspend, ptr @jpu_resume, ptr @jpu_suspend, ptr @jpu_resume, ptr @jpu_suspend, ptr @jpu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jpu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&jpu->mutex\00", [20 x i8] zeroinitializer }, align 32
@jpu_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&jpu->lock\00", [21 x i8] zeroinitializer }, align 32
@jpu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1612, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot find IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/platform/rcar_jpu.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr = internal global ptr @jpu_probe._entry, section ".printk_index", align 4
@jpu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1619, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot claim IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.11 = internal global ptr @jpu_probe._entry.9, section ".printk_index", align 4
@jpu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1626, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.14 = internal global ptr @jpu_probe._entry.12, section ".printk_index", align 4
@jpu_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.17 = internal global ptr @jpu_probe._entry.15, section ".printk_index", align 4
@jpu_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @jpu_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@jpu_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.20 = internal global ptr @jpu_probe._entry.18, section ".printk_index", align 4
@jpeg_hdrs = internal global { [4 x [640 x i8]], [640 x i8] } { [4 x [640 x i8]] [[640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [640 x i8] zeroinitializer }, align 32
@jpu_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @jpu_open, ptr @jpu_release }, [60 x i8] zeroinitializer }, align 32
@jpu_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @jpu_querycap, ptr @jpu_enum_fmt_cap, ptr null, ptr @jpu_enum_fmt_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_g_fmt, ptr @jpu_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_s_fmt, ptr @jpu_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_try_fmt, ptr @jpu_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @jpu_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@jpu_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.23 = internal global ptr @jpu_probe._entry.21, section ".printk_index", align 4
@jpu_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.25 = internal global ptr @jpu_probe._entry.24, section ".printk_index", align 4
@jpu_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: encoder device registered as /dev/video%d\0A\00", [47 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.28 = internal global ptr @jpu_probe._entry.26, section ".printk_index", align 4
@jpu_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: decoder device registered as /dev/video%d\0A\00", [47 x i8] zeroinitializer }, align 32
@jpu_probe._entry_ptr.31 = internal global ptr @jpu_probe._entry.29, section ".printk_index", align 4
@jpu_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 1523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no active context for m2m\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jpu_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@jpu_irq_handler._entry_ptr = internal global ptr @jpu_irq_handler._entry, section ".printk_index", align 4
@jpu_irq_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 1, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"processing error: %#X: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@error_to_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOI not detected\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SOF1 to SOFF detected\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Subsampling not detected\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOF accuracy error\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DQT accuracy error\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Component error 1\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Component error 2\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SOF0, DQT, and DHT not detected when SOS detected\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOS not detected\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EOI not detected\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Restart interval data number error detected\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Image size error\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Last MCU data number error\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Block data number error\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@jpu_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 1449, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"src and dst formats do not match.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jpu_device_run\00", [17 x i8] zeroinitializer }, align 32
@jpu_device_run._entry_ptr = internal global ptr @jpu_device_run._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jpu_wait_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 525, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"timed out in reset\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jpu_wait_reset\00", [17 x i8] zeroinitializer }, align 32
@jpu_wait_reset._entry_ptr = internal global ptr @jpu_wait_reset._entry, section ".printk_index", align 4
@qtbl_lum = internal constant { [4 x [16 x i32]], [64 x i8] } { [4 x [16 x i32]] [[16 x i32] [i32 336599335, i32 841891396, i32 269621030, i32 641024324, i32 420945702, i32 893469764, i32 656811573, i32 1094992964, i32 841364801, i32 1145324612, i32 775242052, i32 1145324612, i32 1044464708, i32 1145324612, i32 1145324612, i32 1145324612], [16 x i32] [i32 269159184, i32 387653406, i32 185338895, i32 337057566, i32 185339152, i32 387588911, i32 269422615, i32 438644544, i32 387192602, i32 657670208, i32 454498853, i32 859848768, i32 521610031, i32 1077952576, i32 505294656, i32 1077952576], [16 x i32] [i32 201852940, i32 286595095, i32 134809867, i32 252908055, i32 134810124, i32 320084772, i32 202050581, i32 337388597, i32 286200596, i32 505885499, i32 353571868, i32 657668923, i32 403839780, i32 859519803, i32 387392565, i32 993737531], [16 x i32] [i32 134612488, i32 202248209, i32 101058056, i32 168627215, i32 101058312, i32 219025944, i32 134744078, i32 219355171, i32 201985293, i32 337256999, i32 235736595, i32 438445863, i32 269226776, i32 572991271, i32 286201891, i32 656877351]], [64 x i8] zeroinitializer }, align 32
@qtbl_chr = internal constant { [4 x [16 x i32]], [64 x i8] } { [4 x [16 x i32]] [[16 x i32] [i32 353968166, i32 910443588, i32 421271590, i32 910443588, i32 538452011, i32 1111770180, i32 640035637, i32 1145324612, i32 910312516, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612], [16 x i32] [i32 286200085, i32 337258032, i32 252908049, i32 337257259, i32 286397462, i32 438185525, i32 353441308, i32 505886016, i32 336861726, i32 657473600, i32 437919271, i32 809451584, i32 639839797, i32 1077952576, i32 808138048, i32 1077952576], [16 x i32] [i32 218828048, i32 336862501, i32 185470478, i32 269752864, i32 219025169, i32 337060648, i32 269357333, i32 387852338, i32 336598039, i32 505754171, i32 336860958, i32 623917883, i32 488252200, i32 842742587, i32 622864434, i32 993737531], [16 x i32] [i32 151521547, i32 236000024, i32 134875403, i32 235737366, i32 151588110, i32 219092762, i32 185273870, i32 252975649, i32 235801871, i32 337125671, i32 286068500, i32 404760359, i32 319887130, i32 556214055, i32 404101665, i32 656877351]], [64 x i8] zeroinitializer }, align 32
@hactbl_lum = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 131331, i32 50463747, i32 84214788, i32 381, i32 16909056, i32 68224274, i32 556876038, i32 324100359, i32 577836082, i32 -2121162488, i32 591573441, i32 357749232, i32 607347314, i32 -2113336810, i32 387455258, i32 623257384, i32 690631733, i32 909588537, i32 977486917, i32 1179076681, i32 1246975061, i32 1448564825, i32 1516463205, i32 1718052969, i32 1785951349, i32 1987541113, i32 2055439493, i32 -2037938039, i32 -1970105452, i32 -1785292904, i32 -1717919069, i32 -1532647769, i32 -1465275726, i32 -1280002634, i32 -1212630598, i32 -1027357499, i32 -959985463, i32 -892152876, i32 -707340328, i32 -639966750, i32 -471538202, i32 -404166166, i32 -235736076, i32 -168364040, i32 -101056512], [44 x i8] zeroinitializer }, align 32
@hactbl_chr = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 131331, i32 50463747, i32 84214788, i32 381, i32 16909056, i32 68224274, i32 556876038, i32 324100359, i32 577836082, i32 -2121162488, i32 591573441, i32 357749232, i32 607347314, i32 -2113336810, i32 387455258, i32 623257384, i32 690631733, i32 909588537, i32 977486917, i32 1179076681, i32 1246975061, i32 1448564825, i32 1516463205, i32 1718052969, i32 1785951349, i32 1987541113, i32 2055439493, i32 -2037938039, i32 -1970105452, i32 -1785292904, i32 -1717919069, i32 -1532647769, i32 -1465275726, i32 -1280002634, i32 -1212630598, i32 -1027357499, i32 -959985463, i32 -892152876, i32 -707340328, i32 -639966750, i32 -471538202, i32 -404166166, i32 -235736076, i32 -168364040, i32 -101056512], [44 x i8] zeroinitializer }, align 32
@zigzag = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\03\02\0B\13\0A\01\00\09\12\1B#\1A\11\08\07\06\0F\10\19\22+3*!\18\17\0E\05\04\0D\16\1F )2;:1('\1E\15\0E\14\10&/0987.%\1C$+6?>5,4=<", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__jpu_try_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.6, ptr @.str.57, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__jpu_try_fmt\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unknown format; set default format\0A\00", [60 x i8] zeroinitializer }, align 32
@jpu_formats = internal global { [5 x %struct.jpu_fmt], [48 x i8] } { [5 x %struct.jpu_fmt] [%struct.jpu_fmt { i32 1195724874, i32 7, [2 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 1, i16 9 }, %struct.jpu_fmt { i32 909200718, i32 8, [2 x i8] c"\08\08", i8 2, i8 2, i8 33, i8 2, i16 6 }, %struct.jpu_fmt { i32 842091854, i32 8, [2 x i8] c"\08\04", i8 2, i8 2, i8 34, i8 2, i16 6 }, %struct.jpu_fmt { i32 909203022, i32 8, [2 x i8] c"\10\00", i8 2, i8 2, i8 33, i8 1, i16 6 }, %struct.jpu_fmt { i32 842094158, i32 8, [2 x i8] c"\0C\00", i8 2, i8 2, i8 34, i8 1, i16 6 }], [48 x i8] zeroinitializer }, align 32
@jpu_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @jpu_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @jpu_buf_prepare, ptr @jpu_buf_finish, ptr null, ptr @jpu_start_streaming, ptr @jpu_stop_streaming, ptr @jpu_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@jpu_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 1049, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s field isn't supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jpu_buf_prepare\00", [16 x i8] zeroinitializer }, align 32
@jpu_buf_prepare._entry_ptr = internal global ptr @jpu_buf_prepare._entry, section ".printk_index", align 4
@jpu_buf_prepare._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.6, i32 1060, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: data will not fit into plane (%lu < %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@jpu_buf_prepare._entry_ptr.62 = internal global ptr @jpu_buf_prepare._entry.60, section ".printk_index", align 4
@jpu_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 1117, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"incompatible or corrupted JPEG data\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jpu_buf_queue\00", [18 x i8] zeroinitializer }, align 32
@jpu_buf_queue._entry_ptr = internal global ptr @jpu_buf_queue._entry, section ".printk_index", align 4
@jpu_controls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rcar_jpu:973:(&ctx->ctrl_handler)->_lock\00", [55 x i8] zeroinitializer }, align 32
@jpu_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @jpu_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_jpu encoder\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_jpu decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@jpu_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpu_s_fmt\00", [22 x i8] zeroinitializer }, align 32
@jpu_s_fmt._entry_ptr = internal global ptr @jpu_s_fmt._entry, section ".printk_index", align 4
@jpu_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.71, ptr @.str.6, i32 934, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jpu_streamon\00", [19 x i8] zeroinitializer }, align 32
@jpu_streamon._entry_ptr = internal global ptr @jpu_streamon._entry, section ".printk_index", align 4
@switch.table.jpu_g_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400], [44 x i8] zeroinitializer }, align 32
@switch.table.jpu_s_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.72 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.77 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.78 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.79 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.80 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.81 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.83 = internal global [23 x i64] [i64 21, i64 8, i64 192, i64 196, i64 219, i64 221, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 254]
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"jpu_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1749, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1754, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"jpu_dt_ids\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1580, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"jpu_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1745, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1600, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1601, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1612, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1619, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1626, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1633, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"jpu_m2m_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1486, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1640, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"jpeg_hdrs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 358, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"jpu_fops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1310, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"jpu_ioctl_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 942, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1662, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1681, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1688, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1690, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1523, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1553, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"error_to_text\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 448, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1163, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 449, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 450, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 451, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 452, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 453, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 454, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 455, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 456, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 457, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 458, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 459, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 460, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 461, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 462, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 463, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 464, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1448, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 525, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [9 x i8] c"qtbl_lum\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 362, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant [9 x i8] c"qtbl_chr\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 389, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant [11 x i8] c"hactbl_lum\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 426, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant [11 x i8] c"hactbl_chr\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 437, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"zigzag\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 309, i32 17 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 783, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [12 x i8] c"jpu_formats\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 296, i32 23 }
@___asan_gen_.291 = private unnamed_addr constant [9 x i8] c"jpu_qops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1175, i32 29 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1048, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1058, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1117, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 973, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"jpu_ctrl_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 902, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 668, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 670, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 673, i32 49 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 856, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [37 x i8] c"../drivers/media/platform/rcar_jpu.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 934, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [23 x i8] c"switch.table.jpu_g_fmt\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [23 x i8] c"switch.table.jpu_s_fmt\00", align 1
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_jpu_driver_exit, ptr @__initcall__kmod_rcar_jpu__308_1759_jpu_driver_init6, ptr @jpu_buf_prepare._entry, ptr @jpu_buf_prepare._entry.60, ptr @jpu_buf_prepare._entry_ptr, ptr @jpu_buf_prepare._entry_ptr.62, ptr @jpu_buf_queue._entry, ptr @jpu_buf_queue._entry_ptr, ptr @jpu_device_run._entry, ptr @jpu_device_run._entry_ptr, ptr @jpu_driver_exit, ptr @jpu_irq_handler._entry, ptr @jpu_irq_handler._entry_ptr, ptr @jpu_probe._entry, ptr @jpu_probe._entry.12, ptr @jpu_probe._entry.15, ptr @jpu_probe._entry.18, ptr @jpu_probe._entry.21, ptr @jpu_probe._entry.24, ptr @jpu_probe._entry.26, ptr @jpu_probe._entry.29, ptr @jpu_probe._entry.9, ptr @jpu_probe._entry_ptr, ptr @jpu_probe._entry_ptr.11, ptr @jpu_probe._entry_ptr.14, ptr @jpu_probe._entry_ptr.17, ptr @jpu_probe._entry_ptr.20, ptr @jpu_probe._entry_ptr.23, ptr @jpu_probe._entry_ptr.25, ptr @jpu_probe._entry_ptr.28, ptr @jpu_probe._entry_ptr.31, ptr @jpu_s_fmt._entry, ptr @jpu_s_fmt._entry_ptr, ptr @jpu_streamon._entry, ptr @jpu_streamon._entry_ptr, ptr @jpu_wait_reset._entry, ptr @jpu_wait_reset._entry_ptr, ptr @jpu_driver, ptr @.str, ptr @jpu_dt_ids, ptr @jpu_pm_ops, ptr @jpu_probe.__key, ptr @.str.1, ptr @jpu_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @jpu_m2m_ops, ptr @.str.19, ptr @jpeg_hdrs, ptr @jpu_fops, ptr @jpu_ioctl_ops, ptr @.str.22, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @error_to_text, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @qtbl_lum, ptr @qtbl_chr, ptr @hactbl_lum, ptr @hactbl_chr, ptr @zigzag, ptr @.str.56, ptr @.str.57, ptr @jpu_formats, ptr @jpu_qops, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @jpu_controls_create._key, ptr @.str.65, ptr @jpu_ctrl_ops, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @switch.table.jpu_g_fmt, ptr @switch.table.jpu_s_fmt], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_hdrs to i32), i32 2560, i32 3200, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_to_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_wait_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtbl_lum to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtbl_chr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hactbl_lum to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hactbl_chr to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zigzag to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_formats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_buf_prepare._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_controls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpu_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jpu_g_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jpu_s_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jpu_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jpu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @jpu_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3000, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @jpu_probe.__key) #10
  %lock = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @jpu_probe.__key.2, i16 noundef signext 3) #10
  %dev6 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev6, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %do.body
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end20.dev_name.exit_crit_edge ]
  %call.i238 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @jpu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool26.not = icmp eq i32 %call.i238, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %9) #13
  br label %cleanup

if.end33:                                         ; preds = %dev_name.exit
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %clk, align 8
  %cmp.i239 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %v4l2_dev = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 2
  %call47 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %call55 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @jpu_m2m_ops) #10
  %m2m_dev = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call55, ptr %m2m_dev, align 8
  %cmp.i240 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %do.end61, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 2, i32 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name) #13
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_dev, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %device_register_rollback

for.body:                                         ; preds = %jpu_generate_hdr.exit.for.body_crit_edge, %if.end54.for.body_crit_edge
  %i.0246 = phi i32 [ %inc, %jpu_generate_hdr.exit.for.body_crit_edge ], [ 0, %if.end54.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x [640 x i8]], ptr @jpeg_hdrs, i32 0, i32 %i.0246
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 7
  %arrayidx.i = getelementptr [4 x [16 x i32]], ptr @qtbl_lum, i32 0, i32 %i.0246
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %i.05.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.05.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i, i32 %conv.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.05.i.i
  %22 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx1.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %put_qtbl.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

put_qtbl.exit.i:                                  ; preds = %for.body.i.i
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 76
  %arrayidx3.i = getelementptr [4 x [16 x i32]], ptr @qtbl_chr, i32 0, i32 %i.0246
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %put_qtbl.exit.i
  %i.05.i15.i = phi i32 [ 0, %put_qtbl.exit.i ], [ %inc.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %arrayidx.i16.i = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.05.i15.i
  %23 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i16.i, align 1
  %conv.i17.i = zext i8 %24 to i32
  %add.ptr.i18.i = getelementptr i8, ptr %arrayidx3.i, i32 %conv.i17.i
  %25 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i18.i, align 1
  %arrayidx1.i19.i = getelementptr i8, ptr %add.ptr1.i, i32 %i.05.i15.i
  %27 = ptrtoint ptr %arrayidx1.i19.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx1.i19.i, align 1
  %inc.i20.i = add nuw nsw i32 %i.05.i15.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, 64
  br i1 %exitcond.not.i21.i, label %for.inc8.i.6.i, label %for.body.i22.i.for.body.i22.i_crit_edge

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i22.i

for.inc8.i.6.i:                                   ; preds = %for.body.i22.i
  %add.ptr5.i = getelementptr i8, ptr %arrayidx, i32 164
  %28 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %add.ptr5.i, align 1
  %arrayidx7.1.i.i = getelementptr i8, ptr %arrayidx, i32 165
  %29 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 5, ptr %arrayidx7.1.i.i, align 1
  %arrayidx7.2.i.i = getelementptr i8, ptr %arrayidx, i32 166
  %30 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx7.2.i.i, align 1
  %arrayidx7.3.i.i = getelementptr i8, ptr %arrayidx, i32 167
  %31 = ptrtoint ptr %arrayidx7.3.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx7.3.i.i, align 1
  %arrayidx7.i.1.i = getelementptr i8, ptr %arrayidx, i32 168
  %arrayidx7.i.2.i = getelementptr i8, ptr %arrayidx, i32 172
  %32 = ptrtoint ptr %arrayidx7.i.1.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 16843009, ptr %arrayidx7.i.1.i, align 1
  %33 = ptrtoint ptr %arrayidx7.i.2.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx7.i.2.i, align 1
  %arrayidx7.1.i.2.i = getelementptr i8, ptr %arrayidx, i32 173
  %34 = ptrtoint ptr %arrayidx7.1.i.2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx7.1.i.2.i, align 1
  %arrayidx7.2.i.2.i = getelementptr i8, ptr %arrayidx, i32 174
  %35 = ptrtoint ptr %arrayidx7.2.i.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx7.2.i.2.i, align 1
  %arrayidx7.3.i.2.i = getelementptr i8, ptr %arrayidx, i32 175
  %36 = ptrtoint ptr %arrayidx7.3.i.2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx7.3.i.2.i, align 1
  %arrayidx7.i.3.i = getelementptr i8, ptr %arrayidx, i32 176
  %arrayidx7.i.4.i = getelementptr i8, ptr %arrayidx, i32 180
  %37 = ptrtoint ptr %arrayidx7.i.3.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 0, ptr %arrayidx7.i.3.i, align 1
  %38 = ptrtoint ptr %arrayidx7.i.4.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %arrayidx7.i.4.i, align 1
  %arrayidx7.1.i.4.i = getelementptr i8, ptr %arrayidx, i32 181
  %39 = ptrtoint ptr %arrayidx7.1.i.4.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %arrayidx7.1.i.4.i, align 1
  %arrayidx7.2.i.4.i = getelementptr i8, ptr %arrayidx, i32 182
  %40 = ptrtoint ptr %arrayidx7.2.i.4.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx7.2.i.4.i, align 1
  %arrayidx7.3.i.4.i = getelementptr i8, ptr %arrayidx, i32 183
  %41 = ptrtoint ptr %arrayidx7.3.i.4.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx7.3.i.4.i, align 1
  %arrayidx7.i.5.i = getelementptr i8, ptr %arrayidx, i32 184
  %42 = ptrtoint ptr %arrayidx7.i.5.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 7, ptr %arrayidx7.i.5.i, align 1
  %arrayidx7.1.i.5.i = getelementptr i8, ptr %arrayidx, i32 185
  %43 = ptrtoint ptr %arrayidx7.1.i.5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 6, ptr %arrayidx7.1.i.5.i, align 1
  %arrayidx7.2.i.5.i = getelementptr i8, ptr %arrayidx, i32 186
  %44 = ptrtoint ptr %arrayidx7.2.i.5.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %arrayidx7.2.i.5.i, align 1
  %arrayidx7.3.i.5.i = getelementptr i8, ptr %arrayidx, i32 187
  %45 = ptrtoint ptr %arrayidx7.3.i.5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %arrayidx7.3.i.5.i, align 1
  %arrayidx7.i.6.i = getelementptr i8, ptr %arrayidx, i32 188
  %46 = ptrtoint ptr %arrayidx7.i.6.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 11, ptr %arrayidx7.i.6.i, align 1
  %arrayidx7.1.i.6.i = getelementptr i8, ptr %arrayidx, i32 189
  %47 = ptrtoint ptr %arrayidx7.1.i.6.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %arrayidx7.1.i.6.i, align 1
  %arrayidx7.2.i.6.i = getelementptr i8, ptr %arrayidx, i32 190
  %48 = ptrtoint ptr %arrayidx7.2.i.6.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 9, ptr %arrayidx7.2.i.6.i, align 1
  %arrayidx7.3.i.6.i = getelementptr i8, ptr %arrayidx, i32 191
  %49 = ptrtoint ptr %arrayidx7.3.i.6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %arrayidx7.3.i.6.i, align 1
  %add.ptr6.i = getelementptr i8, ptr %arrayidx, i32 197
  br label %for.body4.1.i37.i

for.body4.1.i37.i:                                ; preds = %for.inc8.i49.i.for.body4.1.i37.i_crit_edge, %for.inc8.i.6.i
  %i.022.i25.i = phi i32 [ %add9.i47.i, %for.inc8.i49.i.for.body4.1.i37.i_crit_edge ], [ 0, %for.inc8.i.6.i ]
  %add5.i26.i = or i32 %i.022.i25.i, 3
  %arrayidx.i27.i = getelementptr i8, ptr @hactbl_lum, i32 %add5.i26.i
  %50 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i27.i, align 1
  %arrayidx7.i28.i = getelementptr i8, ptr %add.ptr6.i, i32 %i.022.i25.i
  %52 = ptrtoint ptr %arrayidx7.i28.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx7.i28.i, align 1
  %add.1.i29.i = or i32 %i.022.i25.i, 1
  %sub.1.i32.i = or i32 %i.022.i25.i, 2
  %arrayidx.1.i33.i = getelementptr i8, ptr @hactbl_lum, i32 %sub.1.i32.i
  %53 = ptrtoint ptr %arrayidx.1.i33.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.1.i33.i, align 2
  %arrayidx7.1.i34.i = getelementptr i8, ptr %add.ptr6.i, i32 %add.1.i29.i
  %55 = ptrtoint ptr %arrayidx7.1.i34.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx7.1.i34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %sub.1.i32.i)
  %cmp3.2.i36.i = icmp ult i32 %sub.1.i32.i, 178
  br i1 %cmp3.2.i36.i, label %for.body4.2.i43.i, label %for.body4.1.i37.i.for.inc8.i49.i_crit_edge

for.body4.1.i37.i.for.inc8.i49.i_crit_edge:       ; preds = %for.body4.1.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i49.i

for.body4.2.i43.i:                                ; preds = %for.body4.1.i37.i
  %arrayidx.2.i39.i = getelementptr i8, ptr @hactbl_lum, i32 %add.1.i29.i
  %56 = ptrtoint ptr %arrayidx.2.i39.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.2.i39.i, align 1
  %arrayidx7.2.i40.i = getelementptr i8, ptr %add.ptr6.i, i32 %sub.1.i32.i
  %58 = ptrtoint ptr %arrayidx7.2.i40.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx7.2.i40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %add5.i26.i)
  %cmp3.3.i42.i = icmp ult i32 %add5.i26.i, 178
  br i1 %cmp3.3.i42.i, label %for.body4.3.i46.i, label %for.body4.2.i43.i.for.inc8.i49.i_crit_edge

for.body4.2.i43.i.for.inc8.i49.i_crit_edge:       ; preds = %for.body4.2.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i49.i

for.body4.3.i46.i:                                ; preds = %for.body4.2.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3.i44.i = getelementptr i8, ptr @hactbl_lum, i32 %i.022.i25.i
  %59 = ptrtoint ptr %arrayidx.3.i44.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.3.i44.i, align 4
  %arrayidx7.3.i45.i = getelementptr i8, ptr %add.ptr6.i, i32 %add5.i26.i
  %61 = ptrtoint ptr %arrayidx7.3.i45.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx7.3.i45.i, align 1
  br label %for.inc8.i49.i

for.inc8.i49.i:                                   ; preds = %for.body4.3.i46.i, %for.body4.2.i43.i.for.inc8.i49.i_crit_edge, %for.body4.1.i37.i.for.inc8.i49.i_crit_edge
  %add9.i47.i = add nuw nsw i32 %i.022.i25.i, 4
  %cmp.i48.i = icmp ult i32 %i.022.i25.i, 174
  br i1 %cmp.i48.i, label %for.inc8.i49.i.for.body4.1.i37.i_crit_edge, label %for.inc8.i75.6.i

for.inc8.i49.i.for.body4.1.i37.i_crit_edge:       ; preds = %for.inc8.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.1.i37.i

for.inc8.i75.6.i:                                 ; preds = %for.inc8.i49.i
  %add.ptr7.i = getelementptr i8, ptr %arrayidx, i32 380
  %62 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %add.ptr7.i, align 1
  %arrayidx7.1.i60.i = getelementptr i8, ptr %arrayidx, i32 381
  %63 = ptrtoint ptr %arrayidx7.1.i60.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %arrayidx7.1.i60.i, align 1
  %arrayidx7.2.i66.i = getelementptr i8, ptr %arrayidx, i32 382
  %64 = ptrtoint ptr %arrayidx7.2.i66.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %arrayidx7.2.i66.i, align 1
  %arrayidx7.3.i71.i = getelementptr i8, ptr %arrayidx, i32 383
  %65 = ptrtoint ptr %arrayidx7.3.i71.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx7.3.i71.i, align 1
  %arrayidx7.i54.1.i = getelementptr i8, ptr %arrayidx, i32 384
  %arrayidx7.i54.2.i = getelementptr i8, ptr %arrayidx, i32 388
  %66 = ptrtoint ptr %arrayidx7.i54.1.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 16843009, ptr %arrayidx7.i54.1.i, align 1
  %67 = ptrtoint ptr %arrayidx7.i54.2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx7.i54.2.i, align 1
  %arrayidx7.1.i60.2.i = getelementptr i8, ptr %arrayidx, i32 389
  %68 = ptrtoint ptr %arrayidx7.1.i60.2.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx7.1.i60.2.i, align 1
  %arrayidx7.2.i66.2.i = getelementptr i8, ptr %arrayidx, i32 390
  %69 = ptrtoint ptr %arrayidx7.2.i66.2.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx7.2.i66.2.i, align 1
  %arrayidx7.3.i71.2.i = getelementptr i8, ptr %arrayidx, i32 391
  %70 = ptrtoint ptr %arrayidx7.3.i71.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %arrayidx7.3.i71.2.i, align 1
  %arrayidx7.i54.3.i = getelementptr i8, ptr %arrayidx, i32 392
  %arrayidx7.i54.4.i = getelementptr i8, ptr %arrayidx, i32 396
  %71 = ptrtoint ptr %arrayidx7.i54.3.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %arrayidx7.i54.3.i, align 1
  %72 = ptrtoint ptr %arrayidx7.i54.4.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %arrayidx7.i54.4.i, align 1
  %arrayidx7.1.i60.4.i = getelementptr i8, ptr %arrayidx, i32 397
  %73 = ptrtoint ptr %arrayidx7.1.i60.4.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %arrayidx7.1.i60.4.i, align 1
  %arrayidx7.2.i66.4.i = getelementptr i8, ptr %arrayidx, i32 398
  %74 = ptrtoint ptr %arrayidx7.2.i66.4.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %arrayidx7.2.i66.4.i, align 1
  %arrayidx7.3.i71.4.i = getelementptr i8, ptr %arrayidx, i32 399
  %75 = ptrtoint ptr %arrayidx7.3.i71.4.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx7.3.i71.4.i, align 1
  %arrayidx7.i54.5.i = getelementptr i8, ptr %arrayidx, i32 400
  %76 = ptrtoint ptr %arrayidx7.i54.5.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 7, ptr %arrayidx7.i54.5.i, align 1
  %arrayidx7.1.i60.5.i = getelementptr i8, ptr %arrayidx, i32 401
  %77 = ptrtoint ptr %arrayidx7.1.i60.5.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 6, ptr %arrayidx7.1.i60.5.i, align 1
  %arrayidx7.2.i66.5.i = getelementptr i8, ptr %arrayidx, i32 402
  %78 = ptrtoint ptr %arrayidx7.2.i66.5.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %arrayidx7.2.i66.5.i, align 1
  %arrayidx7.3.i71.5.i = getelementptr i8, ptr %arrayidx, i32 403
  %79 = ptrtoint ptr %arrayidx7.3.i71.5.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 4, ptr %arrayidx7.3.i71.5.i, align 1
  %arrayidx7.i54.6.i = getelementptr i8, ptr %arrayidx, i32 404
  %80 = ptrtoint ptr %arrayidx7.i54.6.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 11, ptr %arrayidx7.i54.6.i, align 1
  %arrayidx7.1.i60.6.i = getelementptr i8, ptr %arrayidx, i32 405
  %81 = ptrtoint ptr %arrayidx7.1.i60.6.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 10, ptr %arrayidx7.1.i60.6.i, align 1
  %arrayidx7.2.i66.6.i = getelementptr i8, ptr %arrayidx, i32 406
  %82 = ptrtoint ptr %arrayidx7.2.i66.6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 9, ptr %arrayidx7.2.i66.6.i, align 1
  %arrayidx7.3.i71.6.i = getelementptr i8, ptr %arrayidx, i32 407
  %83 = ptrtoint ptr %arrayidx7.3.i71.6.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 8, ptr %arrayidx7.3.i71.6.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %arrayidx, i32 413
  br label %for.body4.1.i89.i

for.body4.1.i89.i:                                ; preds = %for.inc8.i101.i.for.body4.1.i89.i_crit_edge, %for.inc8.i75.6.i
  %i.022.i77.i = phi i32 [ %add9.i99.i, %for.inc8.i101.i.for.body4.1.i89.i_crit_edge ], [ 0, %for.inc8.i75.6.i ]
  %add5.i78.i = or i32 %i.022.i77.i, 3
  %arrayidx.i79.i = getelementptr i8, ptr @hactbl_chr, i32 %add5.i78.i
  %84 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i79.i, align 1
  %arrayidx7.i80.i = getelementptr i8, ptr %add.ptr8.i, i32 %i.022.i77.i
  %86 = ptrtoint ptr %arrayidx7.i80.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx7.i80.i, align 1
  %add.1.i81.i = or i32 %i.022.i77.i, 1
  %sub.1.i84.i = or i32 %i.022.i77.i, 2
  %arrayidx.1.i85.i = getelementptr i8, ptr @hactbl_chr, i32 %sub.1.i84.i
  %87 = ptrtoint ptr %arrayidx.1.i85.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.1.i85.i, align 2
  %arrayidx7.1.i86.i = getelementptr i8, ptr %add.ptr8.i, i32 %add.1.i81.i
  %89 = ptrtoint ptr %arrayidx7.1.i86.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx7.1.i86.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %sub.1.i84.i)
  %cmp3.2.i88.i = icmp ult i32 %sub.1.i84.i, 178
  br i1 %cmp3.2.i88.i, label %for.body4.2.i95.i, label %for.body4.1.i89.i.for.inc8.i101.i_crit_edge

for.body4.1.i89.i.for.inc8.i101.i_crit_edge:      ; preds = %for.body4.1.i89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i101.i

for.body4.2.i95.i:                                ; preds = %for.body4.1.i89.i
  %arrayidx.2.i91.i = getelementptr i8, ptr @hactbl_chr, i32 %add.1.i81.i
  %90 = ptrtoint ptr %arrayidx.2.i91.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.2.i91.i, align 1
  %arrayidx7.2.i92.i = getelementptr i8, ptr %add.ptr8.i, i32 %sub.1.i84.i
  %92 = ptrtoint ptr %arrayidx7.2.i92.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx7.2.i92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %add5.i78.i)
  %cmp3.3.i94.i = icmp ult i32 %add5.i78.i, 178
  br i1 %cmp3.3.i94.i, label %for.body4.3.i98.i, label %for.body4.2.i95.i.for.inc8.i101.i_crit_edge

for.body4.2.i95.i.for.inc8.i101.i_crit_edge:      ; preds = %for.body4.2.i95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i101.i

for.body4.3.i98.i:                                ; preds = %for.body4.2.i95.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3.i96.i = getelementptr i8, ptr @hactbl_chr, i32 %i.022.i77.i
  %93 = ptrtoint ptr %arrayidx.3.i96.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.3.i96.i, align 4
  %arrayidx7.3.i97.i = getelementptr i8, ptr %add.ptr8.i, i32 %add5.i78.i
  %95 = ptrtoint ptr %arrayidx7.3.i97.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx7.3.i97.i, align 1
  br label %for.inc8.i101.i

for.inc8.i101.i:                                  ; preds = %for.body4.3.i98.i, %for.body4.2.i95.i.for.inc8.i101.i_crit_edge, %for.body4.1.i89.i.for.inc8.i101.i_crit_edge
  %add9.i99.i = add nuw nsw i32 %i.022.i77.i, 4
  %cmp.i100.i = icmp ult i32 %i.022.i77.i, 174
  br i1 %cmp.i100.i, label %for.inc8.i101.i.for.body4.1.i89.i_crit_edge, label %jpu_generate_hdr.exit

for.inc8.i101.i.for.body4.1.i89.i_crit_edge:      ; preds = %for.inc8.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.1.i89.i

jpu_generate_hdr.exit:                            ; preds = %for.inc8.i101.i
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %jpu_generate_hdr.exit.for.body_crit_edge

jpu_generate_hdr.exit.for.body_crit_edge:         ; preds = %jpu_generate_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %jpu_generate_hdr.exit
  %vfd_encoder = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3
  %name69 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 12
  %call71 = tail call i32 @strscpy(ptr noundef %name69, ptr noundef nonnull @.str, i32 noundef 32) #10
  %fops = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 3
  %96 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @jpu_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 24
  %97 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @jpu_ioctl_ops, ptr %ioctl_ops, align 4
  %minor = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 15
  %98 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 23
  %99 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock78 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 26
  %100 = ptrtoint ptr %lock78 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i, ptr %lock78, align 8
  %v4l2_dev81 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 7
  %101 = ptrtoint ptr %v4l2_dev81 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %v4l2_dev, ptr %v4l2_dev81, align 4
  %vfl_dir = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 14
  %102 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 67125248, ptr %device_caps, align 8
  %call.i241 = tail call i32 @__video_register_device(ptr noundef %vfd_encoder, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool86.not = icmp eq i32 %call.i241, 0
  br i1 %tobool86.not, label %if.end96, label %do.end90

do.end90:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name93 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 2, i32 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name93) #13
  br label %m2m_init_rollback

if.end96:                                         ; preds = %for.end
  %driver_data.i.i = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 5, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd_decoder = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4
  %name98 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 12
  %call100 = tail call i32 @strscpy(ptr noundef %name98, ptr noundef nonnull @.str, i32 noundef 32) #10
  %fops102 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 3
  %105 = ptrtoint ptr %fops102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @jpu_fops, ptr %fops102, align 4
  %ioctl_ops104 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 24
  %106 = ptrtoint ptr %ioctl_ops104 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @jpu_ioctl_ops, ptr %ioctl_ops104, align 4
  %minor106 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 15
  %107 = ptrtoint ptr %minor106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %minor106, align 8
  %release108 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 23
  %108 = ptrtoint ptr %release108 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @video_device_release_empty, ptr %release108, align 8
  %lock111 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 26
  %109 = ptrtoint ptr %lock111 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i, ptr %lock111, align 8
  %v4l2_dev114 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 7
  %110 = ptrtoint ptr %v4l2_dev114 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %v4l2_dev, ptr %v4l2_dev114, align 4
  %vfl_dir116 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 14
  %111 = ptrtoint ptr %vfl_dir116 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %vfl_dir116, align 4
  %device_caps118 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 4
  %112 = ptrtoint ptr %device_caps118 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 67125248, ptr %device_caps118, align 8
  %call.i243 = tail call i32 @__video_register_device(ptr noundef %vfd_decoder, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool121.not = icmp eq i32 %call.i243, 0
  br i1 %tobool121.not, label %if.end131, label %do.end125

do.end125:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %name128 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 2, i32 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name128) #13
  tail call void @video_unregister_device(ptr noundef %vfd_encoder) #10
  br label %m2m_init_rollback

if.end131:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i244 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 5, i32 8
  %113 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i, ptr %driver_data.i.i244, align 4
  %driver_data.i.i245 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %114 = ptrtoint ptr %driver_data.i.i245 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %driver_data.i.i245, align 4
  %name138 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 2, i32 4
  %num = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 3, i32 16
  %115 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %num, align 4
  %conv141 = zext i16 %116 to i32
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name138, i32 noundef %conv141) #13
  %num151 = getelementptr inbounds %struct.jpu, ptr %call.i, i32 0, i32 4, i32 16
  %117 = ptrtoint ptr %num151 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num151, align 4
  %conv152 = zext i16 %118 to i32
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name138, i32 noundef %conv152) #13
  br label %cleanup

m2m_init_rollback:                                ; preds = %do.end125, %do.end90
  %ret.0 = phi i32 [ %call.i241, %do.end90 ], [ %call.i243, %do.end125 ]
  %119 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %120) #10
  br label %device_register_rollback

device_register_rollback:                         ; preds = %m2m_init_rollback, %do.end61
  %ret.1 = phi i32 [ %17, %do.end61 ], [ %ret.0, %m2m_init_rollback ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %device_register_rollback, %if.end131, %do.end52, %do.end41, %do.end30, %do.end18, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %call14, %do.end18 ], [ %call.i238, %do.end30 ], [ %13, %do.end41 ], [ %call47, %do.end52 ], [ %ret.1, %device_register_rollback ], [ 0, %if.end131 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vfd_decoder = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %vfd_decoder) #10
  %vfd_encoder = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %vfd_encoder) #10
  %m2m_dev = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %3) #10
  %v4l2_dev = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %and = and i32 %3, 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 31848
  %neg = xor i32 %and1, -1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i109 = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %neg) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %6) #10, !srcloc !196
  %and2 = and i32 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i111 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 67108864) #10, !srcloc !196
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %lock = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %and8 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %9 = and i32 %3, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %if.end5.handled_crit_edge, label %if.end11

if.end5.handled_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %handled

if.end11:                                         ; preds = %if.end5
  %m2m_dev = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 5
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev, align 8
  %call12 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %12) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32) #13
  br label %handled

if.end15:                                         ; preds = %if.end11
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %call12, i32 0, i32 5, i32 10
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 7
  %call.i112 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  br i1 %tobool9.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end15
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %call12, i32 0, i32 1
  %19 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool23.not, label %if.then22.if.end30_crit_edge, label %if.then24

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.then22
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i114 = getelementptr i8, ptr %22, i32 44
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %add.ptr.i116 = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i118 = getelementptr i8, ptr %28, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i112, i32 0, i32 4
  %30 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.not = icmp eq i32 %31, 0
  br i1 %cmp.i.not, label %if.then24.if.end30_crit_edge, label %if.then.i

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then.i:                                        ; preds = %if.then24
  %32 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %shl = shl i32 %32, 16
  %33 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %shl27 = shl i32 %33, 8
  %or = or i32 %shl27, %shl
  %34 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %or29 = or i32 %or, %34
  %add = add i32 %or29, 640
  %length.i = getelementptr %struct.vb2_buffer, ptr %call.i112, i32 0, i32 10, i32 0, i32 4
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add)
  %cmp1.i = icmp ult i32 %36, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !198

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %38, %if.then38.i ], [ %add, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %call.i112, i32 0, i32 10, i32 0, i32 3
  %39 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end42.i, %if.then24.if.end30_crit_edge, %if.then22.if.end30_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %field, align 4
  %field31 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i112, i32 0, i32 2
  %42 = ptrtoint ptr %field31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %field31, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %timestamp, align 8
  %timestamp34 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i112, i32 0, i32 5
  %45 = ptrtoint ptr %timestamp34 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %timestamp34, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %and35 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end30.if.end39_crit_edge, label %if.then37

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i112, i32 0, i32 3
  %timecode38 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %48 = call ptr @memcpy(ptr %timecode, ptr %timecode38, i32 16)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end30.if.end39_crit_edge
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 8
  %and41 = and i32 %50, 459064
  %flags42 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i112, i32 0, i32 1
  %51 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and41, ptr %flags42, align 8
  br label %if.end60.sink.split

if.else:                                          ; preds = %if.end15
  %and43 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.if.end60_crit_edge, label %if.then45

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i120 = getelementptr i8, ptr %53, i32 64
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jpu_irq_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jpu_irq_handler, %if.then53)) #10
          to label %if.end60.sink.split [label %if.then53], !srcloc !199

if.then53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %55 = lshr i32 %54, 24
  %conv = and i32 %55, 15
  %dev54 = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 10
  %56 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev54, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @error_to_text, i32 0, i32 %conv
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jpu_irq_handler.__UNIQUE_ID_ddebug307, ptr noundef %57, ptr noundef nonnull @.str.34, i32 noundef %conv, ptr noundef %59) #10
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.then53, %if.then45, %if.end39
  %.sink124 = phi i32 [ 5, %if.end39 ], [ 6, %if.then45 ], [ 6, %if.then53 ]
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %.sink124) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i112, i32 noundef %.sink124) #10
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else.if.end60_crit_edge
  %curr = getelementptr inbounds %struct.jpu, ptr %dev_id, i32 0, i32 6
  %60 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %curr, align 4
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 1048576) #10, !srcloc !196
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %63 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %m2m_dev, align 8
  %65 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %64, ptr noundef %66) #10
  br label %cleanup

handled:                                          ; preds = %do.end, %if.end5.handled_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %handled, %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end60 ], [ 1, %handled ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpu_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 10
  %regs.i.i = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not4.i = icmp eq i32 %6, 0
  br i1 %tobool.not4.i, label %entry.do.body2_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @schedule() #10
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %11 = and i32 %10, 1048576
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i.do.body2_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.do.body2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54) #13
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %lock.i = getelementptr inbounds %struct.jpu, ptr %15, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %m2m_ctx.i = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 5, i32 10
  %16 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i) #10
  %18 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 7
  %call.i21.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i.i, i32 noundef 6) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i21.i, i32 noundef 6) #10
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %regs.i.i169 = getelementptr inbounds %struct.jpu, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %regs.i.i169 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i169, align 8
  %add.ptr.i.i170 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170, i32 1048576) #10, !srcloc !196
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %lock11.i = getelementptr inbounds %struct.jpu, ptr %25, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i, i32 noundef %call2.i) #10
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %m2m_dev.i = getelementptr inbounds %struct.jpu, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_dev.i, align 8
  %30 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m2m_ctx.i, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %29, ptr noundef %31) #10
  br label %cleanup86

do.body2:                                         ; preds = %if.end.i.do.body2_crit_edge, %entry.do.body2_crit_edge
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.jpu, ptr %33, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %curr = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %priv, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 5, i32 10
  %35 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %36, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #10
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %38, i32 0, i32 7
  %call.i172 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #10
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 1
  %39 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not = icmp eq i8 %40, 0
  br i1 %tobool12.not, label %if.else51, label %if.then24

if.then24:                                        ; preds = %do.body2
  %out_q = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 3
  %format = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 3, i32 1, i32 1
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %bytesperline = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 3, i32 1, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytesperline, align 4
  %47 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_q, align 4
  %subsampling21 = getelementptr inbounds %struct.jpu_fmt, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %subsampling21 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %subsampling21, align 4
  %num_planes19 = getelementptr inbounds %struct.jpu_fmt, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %num_planes19 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_planes19, align 1
  %call.i173 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i172, i32 noundef 0) #10
  %53 = ptrtoint ptr %call.i173 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call.i173, align 4
  %call.i174 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #10
  %55 = ptrtoint ptr %call.i174 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp29 = icmp ugt i8 %52, 1
  br i1 %cmp29, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call.i175 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 1) #10
  %57 = ptrtoint ptr %call.i175 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call.i175, align 4
  br label %if.end35

if.else34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %44, %42
  %add = add i32 %56, %mul
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then31
  %src_2_addr.0 = phi i32 [ %58, %if.then31 ], [ %add, %if.else34 ]
  %compr_quality = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 2
  %59 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %compr_quality, align 2
  %compr_quality36 = getelementptr inbounds %struct.jpu_buffer, ptr %call.i172, i32 0, i32 1
  %61 = ptrtoint ptr %compr_quality36 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %compr_quality36, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %50)
  %cmp38 = icmp eq i8 %50, 34
  %. = select i1 %cmp38, i32 -1577058304, i32 -1593835520
  %.168 = select i1 %cmp38, i32 822083584, i32 805306368
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %.) #10, !srcloc !196
  %64 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %65, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %.168) #10, !srcloc !196
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i178 = getelementptr i8, ptr %67, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 100663296) #10, !srcloc !196
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i180 = getelementptr i8, ptr %69, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 262144) #10, !srcloc !196
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i182 = getelementptr i8, ptr %71, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %72 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %72) #10, !srcloc !196
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %74, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %75 = tail call i32 @llvm.bswap.i32(i32 %src_2_addr.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %75) #10, !srcloc !196
  %76 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i186 = getelementptr i8, ptr %77, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %78 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %78) #10, !srcloc !196
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i188 = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %81 = shl i32 %42, 16
  %and = and i32 %81, -16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %and) #10, !srcloc !196
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i190 = getelementptr i8, ptr %83, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %and45 = shl i32 %42, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %and45) #10, !srcloc !196
  %84 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i192 = getelementptr i8, ptr %85, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %86 = shl i32 %44, 16
  %and47 = and i32 %86, -16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %and47) #10, !srcloc !196
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i194 = getelementptr i8, ptr %88, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %and48 = shl i32 %44, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %and48) #10, !srcloc !196
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i196 = getelementptr i8, ptr %90, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %91 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %91) #10, !srcloc !196
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i198 = getelementptr i8, ptr %93, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %94 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %94) #10, !srcloc !196
  %add49 = add i32 %54, 640
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i200 = getelementptr i8, ptr %96, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %97 = tail call i32 @llvm.bswap.i32(i32 %add49) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %97) #10, !srcloc !196
  %98 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i202 = getelementptr i8, ptr %99, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 335544320) #10, !srcloc !196
  %100 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i204 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 1006632960) #10, !srcloc !196
  %102 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %compr_quality, align 2
  %idxprom.i = zext i16 %103 to i32
  %arrayidx.i = getelementptr [4 x [16 x i32]], ptr @qtbl_lum, i32 0, i32 %idxprom.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end35
  %i.05.i.i = phi i32 [ 0, %if.end35 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %arrayidx.i, i32 %i.05.i.i
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i, align 4
  %shl.i.i = shl i32 %i.05.i.i, 2
  %add.i.i = add nuw nsw i32 %shl.i.i, 65536
  %106 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %107, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %108 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %108) #10, !srcloc !196
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %jpu_set_tbl.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

jpu_set_tbl.exit.i:                               ; preds = %for.body.i.i
  %arrayidx2.i = getelementptr [4 x [16 x i32]], ptr @qtbl_chr, i32 0, i32 %idxprom.i
  br label %for.body.i14.i

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %jpu_set_tbl.exit.i
  %i.05.i7.i = phi i32 [ 0, %jpu_set_tbl.exit.i ], [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ]
  %arrayidx.i8.i = getelementptr i32, ptr %arrayidx2.i, i32 %i.05.i7.i
  %109 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i8.i, align 4
  %shl.i9.i = shl i32 %i.05.i7.i, 2
  %add.i10.i = add nuw nsw i32 %shl.i9.i, 65600
  %111 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i11.i = getelementptr i8, ptr %112, i32 %add.i10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %113 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 %113) #10, !srcloc !196
  %inc.i12.i = add nuw nsw i32 %i.05.i7.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, 16
  br i1 %exitcond.not.i13.i, label %jpu_set_qtbl.exit, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i14.i

jpu_set_qtbl.exit:                                ; preds = %for.body.i14.i
  %114 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i206 = getelementptr i8, ptr %115, i32 65792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i206, i32 17105152) #10, !srcloc !196
  %116 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.1.i = getelementptr i8, ptr %117, i32 65796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 16843009) #10, !srcloc !196
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.2.i = getelementptr i8, ptr %119, i32 65800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 1) #10, !srcloc !196
  %120 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.3.i = getelementptr i8, ptr %121, i32 65804
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 0) #10, !srcloc !196
  %122 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.4.i = getelementptr i8, ptr %123, i32 65808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i, i32 50462976) #10, !srcloc !196
  %124 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.5.i = getelementptr i8, ptr %125, i32 65812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i, i32 117835012) #10, !srcloc !196
  %126 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.6.i = getelementptr i8, ptr %127, i32 65816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6.i, i32 185207048) #10, !srcloc !196
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.body.i12.i.for.body.i12.i_crit_edge, %jpu_set_qtbl.exit
  %i.05.i5.i = phi i32 [ %inc.i10.i, %for.body.i12.i.for.body.i12.i_crit_edge ], [ 0, %jpu_set_qtbl.exit ]
  %arrayidx.i6.i = getelementptr i32, ptr @hactbl_lum, i32 %i.05.i5.i
  %128 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i6.i, align 4
  %shl.i7.i = shl i32 %i.05.i5.i, 2
  %add.i8.i = add nuw nsw i32 %shl.i7.i, 65824
  %130 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %131, i32 %add.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %132 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 %132) #10, !srcloc !196
  %inc.i10.i = add nuw nsw i32 %i.05.i5.i, 1
  %exitcond.not.i11.i = icmp eq i32 %inc.i10.i, 45
  br i1 %exitcond.not.i11.i, label %for.body.i22.preheader.i, label %for.body.i12.i.for.body.i12.i_crit_edge

for.body.i12.i.for.body.i12.i_crit_edge:          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i12.i

for.body.i22.preheader.i:                         ; preds = %for.body.i12.i
  %133 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.i = getelementptr i8, ptr %134, i32 66048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.i, i32 17105152) #10, !srcloc !196
  %135 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.1.i = getelementptr i8, ptr %136, i32 66052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.1.i, i32 16843009) #10, !srcloc !196
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.2.i = getelementptr i8, ptr %138, i32 66056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.2.i, i32 1) #10, !srcloc !196
  %139 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.3.i = getelementptr i8, ptr %140, i32 66060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.3.i, i32 0) #10, !srcloc !196
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.4.i = getelementptr i8, ptr %142, i32 66064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.4.i, i32 50462976) #10, !srcloc !196
  %143 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.5.i = getelementptr i8, ptr %144, i32 66068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.5.i, i32 117835012) #10, !srcloc !196
  %145 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i19.6.i = getelementptr i8, ptr %146, i32 66072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19.6.i, i32 185207048) #10, !srcloc !196
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %for.body.i32.i.for.body.i32.i_crit_edge, %for.body.i22.preheader.i
  %i.05.i25.i = phi i32 [ %inc.i30.i, %for.body.i32.i.for.body.i32.i_crit_edge ], [ 0, %for.body.i22.preheader.i ]
  %arrayidx.i26.i = getelementptr i32, ptr @hactbl_chr, i32 %i.05.i25.i
  %147 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i26.i, align 4
  %shl.i27.i = shl i32 %i.05.i25.i, 2
  %add.i28.i = add nuw nsw i32 %shl.i27.i, 66080
  %149 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i29.i = getelementptr i8, ptr %150, i32 %add.i28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %151 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 %151) #10, !srcloc !196
  %inc.i30.i = add nuw nsw i32 %i.05.i25.i, 1
  %exitcond.not.i31.i = icmp eq i32 %inc.i30.i, 45
  br i1 %exitcond.not.i31.i, label %for.body.i32.i.if.end83_crit_edge, label %for.body.i32.i.for.body.i32.i_crit_edge

for.body.i32.i.for.body.i32.i_crit_edge:          ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32.i

for.body.i32.i.if.end83_crit_edge:                ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.else51:                                        ; preds = %do.body2
  %cap_q = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 4
  %format231 = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 4, i32 1
  %152 = ptrtoint ptr %format231 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %format231, align 4
  %height232 = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 4, i32 1, i32 1
  %154 = ptrtoint ptr %height232 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %height232, align 4
  %bytesperline233 = getelementptr inbounds %struct.jpu_ctx, ptr %priv, i32 0, i32 4, i32 1, i32 5, i32 0, i32 1
  %156 = ptrtoint ptr %bytesperline233 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bytesperline233, align 4
  %158 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cap_q, align 4
  %subsampling21234 = getelementptr inbounds %struct.jpu_fmt, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %subsampling21234 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %subsampling21234, align 4
  %subsampling52 = getelementptr inbounds %struct.jpu_buffer, ptr %call.i, i32 0, i32 2
  %162 = ptrtoint ptr %subsampling52 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %subsampling52, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %163, i8 %161)
  %cmp55.not = icmp eq i8 %163, %161
  br i1 %cmp55.not, label %if.end64, label %do.end60

do.end60:                                         ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.52) #13
  %168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %priv, align 4
  %lock63 = getelementptr inbounds %struct.jpu, ptr %169, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock63, i32 noundef %call5) #10
  tail call fastcc void @jpu_cleanup(ptr noundef %priv, i1 noundef zeroext false)
  br label %cleanup86

if.end64:                                         ; preds = %if.else51
  %call.i207 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #10
  %170 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %call.i207, align 4
  %call.i208 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i172, i32 noundef 0) #10
  %172 = ptrtoint ptr %call.i208 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %call.i208, align 4
  %174 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cap_q, align 4
  %num_planes70 = getelementptr inbounds %struct.jpu_fmt, ptr %175, i32 0, i32 6
  %176 = ptrtoint ptr %num_planes70 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %num_planes70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %cmp72 = icmp ugt i8 %177, 1
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call.i209 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i172, i32 noundef 1) #10
  %178 = ptrtoint ptr %call.i209 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %call.i209, align 4
  br label %if.end80

if.else77:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %mul78 = mul i32 %155, %153
  %add79 = add i32 %173, %mul78
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.then74
  %dst_2_addr.0 = phi i32 [ %179, %if.then74 ], [ %add79, %if.else77 ]
  %180 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 -2013265920) #10, !srcloc !196
  %182 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i212 = getelementptr i8, ptr %183, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 805306368) #10, !srcloc !196
  %184 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i214 = getelementptr i8, ptr %185, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 100663296) #10, !srcloc !196
  %186 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i216 = getelementptr i8, ptr %187, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 -536608768) #10, !srcloc !196
  %188 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i218 = getelementptr i8, ptr %189, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %190 = tail call i32 @llvm.bswap.i32(i32 %171) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %190) #10, !srcloc !196
  %191 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i220 = getelementptr i8, ptr %192, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %193 = tail call i32 @llvm.bswap.i32(i32 %173) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %193) #10, !srcloc !196
  %194 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i222 = getelementptr i8, ptr %195, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %196 = tail call i32 @llvm.bswap.i32(i32 %dst_2_addr.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %196) #10, !srcloc !196
  %197 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i224 = getelementptr i8, ptr %198, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %199 = tail call i32 @llvm.bswap.i32(i32 %157) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %199) #10, !srcloc !196
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %for.body.i32.i.if.end83_crit_edge
  %200 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i226 = getelementptr i8, ptr %201, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 16777216) #10, !srcloc !196
  %202 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %priv, align 4
  %lock85 = getelementptr inbounds %struct.jpu, ptr %203, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock85, i32 noundef %call5) #10
  br label %cleanup86

cleanup86:                                        ; preds = %if.end83, %do.end60, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpu_cleanup(ptr nocapture noundef readonly %ctx, i1 noundef zeroext %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %lock = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %ctx, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i21 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 6) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i21, i32 noundef 6) #10
  br i1 %reset, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %regs.i = getelementptr inbounds %struct.jpu, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048576) #10, !srcloc !196
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %lock11 = getelementptr inbounds %struct.jpu, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call2) #10
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %m2m_dev = getelementptr inbounds %struct.jpu, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 8
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %15, ptr noundef %17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 784) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 5
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #10
  %ctrl_handler = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 6
  %ctrl_handler4 = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %ctrl_handler4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_handler, ptr %ctrl_handler4, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #10
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %vfd_encoder = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 3
  %cmp = icmp eq ptr %call1, %vfd_encoder
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 1
  %frombool = zext i1 %cmp to i8
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %encoder, align 4
  %out_q = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 3
  %format = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call fastcc void @__jpu_try_fmt(ptr noundef nonnull %call7.i.i, ptr noundef %out_q, ptr noundef %format, i32 noundef 10)
  %cap_q = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 4
  %format12 = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call fastcc void @__jpu_try_fmt(ptr noundef nonnull %call7.i.i, ptr noundef %cap_q, ptr noundef %format12, i32 noundef 9)
  %m2m_dev = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_dev, align 8
  %call14 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @jpu_queue_init) #10
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 5, i32 10
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call14 to i32
  br label %v4l_prepare_rollback

if.end23:                                         ; preds = %if.end
  %call.i89 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 1, ptr noundef nonnull @jpu_controls_create._key, ptr noundef nonnull @.str.65) #10
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @jpu_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 0) #10
  %error.i = getelementptr inbounds %struct.jpu_ctx, ptr %call7.i.i, i32 0, i32 6, i32 9
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %jpu_controls_create.exit

if.end.i:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not.i = icmp eq i8 %14, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %16, 132
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %call10.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i90 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i90, label %jpu_controls_create.exit.thread97, label %if.end8.i.if.end27_crit_edge

if.end8.i.if.end27_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

jpu_controls_create.exit.thread97:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  br label %v4l_prepare_rollback

jpu_controls_create.exit:                         ; preds = %if.end23
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp25 = icmp slt i32 %12, 0
  br i1 %cmp25, label %jpu_controls_create.exit.v4l_prepare_rollback_crit_edge, label %jpu_controls_create.exit.if.end27_crit_edge

jpu_controls_create.exit.if.end27_crit_edge:      ; preds = %jpu_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

jpu_controls_create.exit.v4l_prepare_rollback_crit_edge: ; preds = %jpu_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l_prepare_rollback

if.end27:                                         ; preds = %jpu_controls_create.exit.if.end27_crit_edge, %if.end8.i.if.end27_crit_edge
  %call28 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.v4l_prepare_rollback_crit_edge

if.end27.v4l_prepare_rollback_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l_prepare_rollback

if.end31:                                         ; preds = %if.end27
  %ref_count = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32 = icmp eq i32 %18, 0
  br i1 %cmp32, label %if.then33, label %if.end31.if.end42_crit_edge

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then33:                                        ; preds = %if.end31
  %clk = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 8
  %call.i91 = tail call i32 @clk_prepare(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i93, label %if.then33.clk_prepare_enable.exit_crit_edge

if.then33.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i93:                                       ; preds = %if.then33
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i93.if.end37_crit_edge, label %if.then3.i

if.end.i93.if.end37_crit_edge:                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then3.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %20) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then33.clk_prepare_enable.exit_crit_edge
  %retval.0.i94 = phi i32 [ %call.i91, %if.then33.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %cmp35 = icmp slt i32 %retval.0.i94, 0
  br i1 %cmp35, label %clk_prepare_enable.exit.device_prepare_rollback_crit_edge, label %clk_prepare_enable.exit.if.end37_crit_edge

clk_prepare_enable.exit.if.end37_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

clk_prepare_enable.exit.device_prepare_rollback_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_prepare_rollback

if.end37:                                         ; preds = %clk_prepare_enable.exit.if.end37_crit_edge, %if.end.i93.if.end37_crit_edge
  %call38 = tail call fastcc i32 @jpu_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %jpu_reset_rollback

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.end37.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %21 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ref_count, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %ref_count, align 8
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %cleanup

jpu_reset_rollback:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %24) #10
  tail call void @clk_unprepare(ptr noundef %24) #10
  br label %device_prepare_rollback

device_prepare_rollback:                          ; preds = %jpu_reset_rollback, %clk_prepare_enable.exit.device_prepare_rollback_crit_edge
  %ret.0 = phi i32 [ %retval.0.i94, %clk_prepare_enable.exit.device_prepare_rollback_crit_edge ], [ %call38, %jpu_reset_rollback ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %v4l_prepare_rollback

v4l_prepare_rollback:                             ; preds = %device_prepare_rollback, %if.end27.v4l_prepare_rollback_crit_edge, %jpu_controls_create.exit.v4l_prepare_rollback_crit_edge, %jpu_controls_create.exit.thread97, %if.then19
  %ret.1 = phi i32 [ %10, %if.then19 ], [ %12, %jpu_controls_create.exit.v4l_prepare_rollback_crit_edge ], [ %ret.0, %device_prepare_rollback ], [ -512, %if.end27.v4l_prepare_rollback_crit_edge ], [ %call10.i, %jpu_controls_create.exit.thread97 ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #10
  tail call void @v4l2_fh_exit(ptr noundef %fh) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %v4l_prepare_rollback, %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %v4l_prepare_rollback ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -408
  %m2m_ctx = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #10
  %ctrl_handler = getelementptr i8, ptr %3, i32 192
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  tail call void @v4l2_fh_del(ptr noundef %3) #10
  tail call void @v4l2_fh_exit(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %ref_count = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__jpu_try_fmt(ptr nocapture noundef readonly %ctx, ptr noundef writeonly %fmtinfo, ptr noundef %pix, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry._crit_edge [
    i32 2, label %entry._crit_edge68
    i32 10, label %entry._crit_edge69
    i32 3, label %entry._crit_edge70
    i32 8, label %entry._crit_edge71
    i32 5, label %entry._crit_edge72
    i32 7, label %entry._crit_edge73
    i32 12, label %entry._crit_edge74
    i32 14, label %entry._crit_edge75
  ]

entry._crit_edge75:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge74:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge73:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge72:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge71:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge70:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge69:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge68:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %1

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %2

1:                                                ; preds = %entry._crit_edge68, %entry._crit_edge69, %entry._crit_edge70, %entry._crit_edge71, %entry._crit_edge72, %entry._crit_edge73, %entry._crit_edge74, %entry._crit_edge75
  br label %2

2:                                                ; preds = %1, %entry._crit_edge
  %3 = phi i32 [ 2, %1 ], [ 1, %entry._crit_edge ]
  %4 = phi i1 [ true, %1 ], [ false, %entry._crit_edge ]
  %5 = phi i32 [ 8, %1 ], [ 4, %entry._crit_edge ]
  %pixelformat4853 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %encoder4457 = getelementptr inbounds %struct.jpu_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %pixelformat4853 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pixelformat4853, align 1
  %8 = ptrtoint ptr %encoder4457 to i32
  call void @__asan_load1_noabort(i32 %8)
  %tobool4655.in = load i8, ptr %encoder4457, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool4655.in)
  %tobool4655.not = icmp eq i8 %tobool4655.in, 0
  %fmt_flag.0.i = select i1 %tobool4655.not, i32 %5, i32 %3
  %9 = load i32, ptr @jpu_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp4.i = icmp eq i32 %9, %7
  br i1 %cmp4.i, label %land.lhs.true.i, label %.for.inc.i_crit_edge

.for.inc.i_crit_edge:                             ; preds = %2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %2
  %10 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %conv.i = zext i16 %10 to i32
  %and.i = and i32 %fmt_flag.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end31_crit_edge

land.lhs.true.i.if.end31_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %.for.inc.i_crit_edge
  %11 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp4.1.i = icmp eq i32 %11, %7
  br i1 %cmp4.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %12 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %conv.1.i = zext i16 %12 to i32
  %and.1.i = and i32 %fmt_flag.0.i, %conv.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool5.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool5.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.end31_crit_edge

land.lhs.true.1.i.if.end31_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %13 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp4.2.i = icmp eq i32 %13, %7
  br i1 %cmp4.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %14 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %conv.2.i = zext i16 %14 to i32
  %and.2.i = and i32 %fmt_flag.0.i, %conv.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool5.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool5.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.if.end31_crit_edge

land.lhs.true.2.i.if.end31_crit_edge:             ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp4.3.i = icmp eq i32 %15, %7
  br i1 %cmp4.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %16 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %conv.3.i = zext i16 %16 to i32
  %and.3.i = and i32 %fmt_flag.0.i, %conv.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool5.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool5.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.if.end31_crit_edge

land.lhs.true.3.i.if.end31_crit_edge:             ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %17 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp4.4.i = icmp eq i32 %17, %7
  br i1 %cmp4.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.if.then_crit_edge

for.inc.3.i.if.then_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %18 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %conv.4.i = zext i16 %18 to i32
  %and.4.i = and i32 %fmt_flag.0.i, %conv.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool5.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool5.not.4.i, label %land.lhs.true.4.i.if.then_crit_edge, label %land.lhs.true.4.i.if.end31_crit_edge

land.lhs.true.4.i.if.end31_crit_edge:             ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.4.i.if.then_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.4.i.if.then_crit_edge, %for.inc.3.i.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__jpu_try_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__jpu_try_fmt, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !199

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__jpu_try_fmt.__UNIQUE_ID_ddebug300, ptr noundef %22, ptr noundef nonnull @.str.57) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.then
  %23 = ptrtoint ptr %encoder4457 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %encoder4457, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  %cond24 = select i1 %4, i32 909200718, i32 1195724874
  %cond26 = select i1 %4, i32 1195724874, i32 909200718
  %pixelformat14.0 = select i1 %tobool21.not, i32 %cond26, i32 %cond24
  %fmt_flag.0.i5 = select i1 %tobool21.not, i32 %5, i32 %3
  %25 = load i32, ptr @jpu_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %pixelformat14.0)
  %cmp4.i6 = icmp eq i32 %25, %pixelformat14.0
  br i1 %cmp4.i6, label %land.lhs.true.i10, label %do.end.for.inc.i12_crit_edge

do.end.for.inc.i12_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i12

land.lhs.true.i10:                                ; preds = %do.end
  %26 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %conv.i7 = zext i16 %26 to i32
  %and.i8 = and i32 %fmt_flag.0.i5, %conv.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool5.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool5.not.i9, label %land.lhs.true.i10.for.inc.i12_crit_edge, label %land.lhs.true.i10.if.end31_crit_edge

land.lhs.true.i10.if.end31_crit_edge:             ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.i10.for.inc.i12_crit_edge:          ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i12

for.inc.i12:                                      ; preds = %land.lhs.true.i10.for.inc.i12_crit_edge, %do.end.for.inc.i12_crit_edge
  %27 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %pixelformat14.0)
  %cmp4.1.i11 = icmp eq i32 %27, %pixelformat14.0
  br i1 %cmp4.1.i11, label %land.lhs.true.1.i16, label %for.inc.i12.for.inc.1.i18_crit_edge

for.inc.i12.for.inc.1.i18_crit_edge:              ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i18

land.lhs.true.1.i16:                              ; preds = %for.inc.i12
  %28 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %conv.1.i13 = zext i16 %28 to i32
  %and.1.i14 = and i32 %fmt_flag.0.i5, %conv.1.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i14)
  %tobool5.not.1.i15 = icmp eq i32 %and.1.i14, 0
  br i1 %tobool5.not.1.i15, label %land.lhs.true.1.i16.for.inc.1.i18_crit_edge, label %land.lhs.true.1.i16.if.end31_crit_edge

land.lhs.true.1.i16.if.end31_crit_edge:           ; preds = %land.lhs.true.1.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.1.i16.for.inc.1.i18_crit_edge:      ; preds = %land.lhs.true.1.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i18

for.inc.1.i18:                                    ; preds = %land.lhs.true.1.i16.for.inc.1.i18_crit_edge, %for.inc.i12.for.inc.1.i18_crit_edge
  %29 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %pixelformat14.0)
  %cmp4.2.i17 = icmp eq i32 %29, %pixelformat14.0
  br i1 %cmp4.2.i17, label %land.lhs.true.2.i22, label %for.inc.1.i18.for.inc.2.i24_crit_edge

for.inc.1.i18.for.inc.2.i24_crit_edge:            ; preds = %for.inc.1.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i24

land.lhs.true.2.i22:                              ; preds = %for.inc.1.i18
  %30 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %conv.2.i19 = zext i16 %30 to i32
  %and.2.i20 = and i32 %fmt_flag.0.i5, %conv.2.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i20)
  %tobool5.not.2.i21 = icmp eq i32 %and.2.i20, 0
  br i1 %tobool5.not.2.i21, label %land.lhs.true.2.i22.for.inc.2.i24_crit_edge, label %land.lhs.true.2.i22.if.end31_crit_edge

land.lhs.true.2.i22.if.end31_crit_edge:           ; preds = %land.lhs.true.2.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.2.i22.for.inc.2.i24_crit_edge:      ; preds = %land.lhs.true.2.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i24

for.inc.2.i24:                                    ; preds = %land.lhs.true.2.i22.for.inc.2.i24_crit_edge, %for.inc.1.i18.for.inc.2.i24_crit_edge
  %31 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %pixelformat14.0)
  %cmp4.3.i23 = icmp eq i32 %31, %pixelformat14.0
  br i1 %cmp4.3.i23, label %land.lhs.true.3.i28, label %for.inc.2.i24.for.inc.3.i30_crit_edge

for.inc.2.i24.for.inc.3.i30_crit_edge:            ; preds = %for.inc.2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i30

land.lhs.true.3.i28:                              ; preds = %for.inc.2.i24
  %32 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %conv.3.i25 = zext i16 %32 to i32
  %and.3.i26 = and i32 %fmt_flag.0.i5, %conv.3.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i26)
  %tobool5.not.3.i27 = icmp eq i32 %and.3.i26, 0
  br i1 %tobool5.not.3.i27, label %land.lhs.true.3.i28.for.inc.3.i30_crit_edge, label %land.lhs.true.3.i28.if.end31_crit_edge

land.lhs.true.3.i28.if.end31_crit_edge:           ; preds = %land.lhs.true.3.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.3.i28.for.inc.3.i30_crit_edge:      ; preds = %land.lhs.true.3.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i30

for.inc.3.i30:                                    ; preds = %land.lhs.true.3.i28.for.inc.3.i30_crit_edge, %for.inc.2.i24.for.inc.3.i30_crit_edge
  %33 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %pixelformat14.0)
  %cmp4.4.i29 = icmp eq i32 %33, %pixelformat14.0
  br i1 %cmp4.4.i29, label %land.lhs.true.4.i34, label %for.inc.3.i30.for.inc.4.i35_crit_edge

for.inc.3.i30.for.inc.4.i35_crit_edge:            ; preds = %for.inc.3.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i35

land.lhs.true.4.i34:                              ; preds = %for.inc.3.i30
  %34 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %conv.4.i31 = zext i16 %34 to i32
  %and.4.i32 = and i32 %fmt_flag.0.i5, %conv.4.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i32)
  %tobool5.not.4.i33 = icmp eq i32 %and.4.i32, 0
  br i1 %tobool5.not.4.i33, label %land.lhs.true.4.i34.for.inc.4.i35_crit_edge, label %land.lhs.true.4.i34.if.end31_crit_edge

land.lhs.true.4.i34.if.end31_crit_edge:           ; preds = %land.lhs.true.4.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true.4.i34.for.inc.4.i35_crit_edge:      ; preds = %land.lhs.true.4.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i35

for.inc.4.i35:                                    ; preds = %land.lhs.true.4.i34.for.inc.4.i35_crit_edge, %for.inc.3.i30.for.inc.4.i35_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %for.inc.4.i35, %land.lhs.true.4.i34.if.end31_crit_edge, %land.lhs.true.3.i28.if.end31_crit_edge, %land.lhs.true.2.i22.if.end31_crit_edge, %land.lhs.true.1.i16.if.end31_crit_edge, %land.lhs.true.i10.if.end31_crit_edge, %land.lhs.true.4.i.if.end31_crit_edge, %land.lhs.true.3.i.if.end31_crit_edge, %land.lhs.true.2.i.if.end31_crit_edge, %land.lhs.true.1.i.if.end31_crit_edge, %land.lhs.true.i.if.end31_crit_edge
  %fmt.0 = phi ptr [ @jpu_formats, %land.lhs.true.i10.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), %land.lhs.true.1.i16.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), %land.lhs.true.2.i22.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), %land.lhs.true.3.i28.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), %land.lhs.true.4.i34.if.end31_crit_edge ], [ null, %for.inc.4.i35 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), %land.lhs.true.4.i.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), %land.lhs.true.3.i.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), %land.lhs.true.2.i.if.end31_crit_edge ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), %land.lhs.true.1.i.if.end31_crit_edge ], [ @jpu_formats, %land.lhs.true.i.if.end31_crit_edge ]
  %35 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt.0, align 4
  %37 = ptrtoint ptr %pixelformat4853 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %pixelformat4853, align 1
  %colorspace = getelementptr inbounds %struct.jpu_fmt, ptr %fmt.0, i32 0, i32 1
  %38 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %colorspace, align 4
  %colorspace33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 4
  %40 = ptrtoint ptr %colorspace33 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %colorspace33, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %41 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 1, ptr %field, align 1
  %num_planes = getelementptr inbounds %struct.jpu_fmt, ptr %fmt.0, i32 0, i32 6
  %42 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_planes, align 1
  %num_planes34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 6
  %44 = ptrtoint ptr %num_planes34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_planes34, align 1
  %h_align = getelementptr inbounds %struct.jpu_fmt, ptr %fmt.0, i32 0, i32 3
  %45 = ptrtoint ptr %h_align to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %h_align, align 2
  %conv = zext i8 %46 to i32
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %v_align = getelementptr inbounds %struct.jpu_fmt, ptr %fmt.0, i32 0, i32 4
  %47 = ptrtoint ptr %v_align to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %v_align, align 1
  %conv35 = zext i8 %48 to i32
  %49 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pix, align 4
  %51 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height, align 4
  %shl1.i = shl nuw i32 1, %conv35
  tail call void @v4l_bound_align_image(ptr noundef %pix, i32 noundef 16, i32 noundef 4096, i32 noundef %conv, ptr noundef %height, i32 noundef 16, i32 noundef 4096, i32 noundef %conv35, i32 noundef 3) #10
  %53 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pix, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %50)
  %cmp.i = icmp ult i32 %54, %50
  br i1 %cmp.i, label %land.lhs.true.i38, label %if.end31.if.end.i_crit_edge

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i38:                                ; preds = %if.end31
  %shl.i = shl nuw i32 1, %conv
  %add.i = add i32 %54, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp2.i = icmp ult i32 %add.i, 4096
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i38.if.end.i_crit_edge

land.lhs.true.i38.if.end.i_crit_edge:             ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i, ptr %pix, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i38.if.end.i_crit_edge, %if.end31.if.end.i_crit_edge
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %52)
  %cmp4.i39 = icmp ult i32 %57, %52
  br i1 %cmp4.i39, label %land.lhs.true5.i, label %if.end.i.jpu_bound_align_image.exit_crit_edge

if.end.i.jpu_bound_align_image.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_bound_align_image.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %add6.i = add i32 %57, %shl1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add6.i)
  %cmp7.i = icmp ult i32 %add6.i, 4096
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true5.i.jpu_bound_align_image.exit_crit_edge

land.lhs.true5.i.jpu_bound_align_image.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_bound_align_image.exit

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add6.i, ptr %height, align 4
  br label %jpu_bound_align_image.exit

jpu_bound_align_image.exit:                       ; preds = %if.then8.i, %land.lhs.true5.i.jpu_bound_align_image.exit_crit_edge, %if.end.i.jpu_bound_align_image.exit_crit_edge
  %59 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %pix, align 1
  %61 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %height, align 1
  %63 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fmt.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %64)
  %cmp39 = icmp eq i32 %64, 1195724874
  br i1 %cmp39, label %if.then41, label %for.cond.preheader

for.cond.preheader:                               ; preds = %jpu_bound_align_image.exit
  %65 = ptrtoint ptr %num_planes34 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_planes34, align 1
  %conv58 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp5962.not = icmp eq i8 %66, 0
  br i1 %cmp5962.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then41:                                        ; preds = %jpu_bound_align_image.exit
  %plane_fmt = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5
  %67 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp42 = icmp eq i32 %68, 0
  br i1 %cmp42, label %if.then41.if.then48_crit_edge, label %lor.lhs.false44

if.then41.if.then48_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false44:                                  ; preds = %if.then41
  %69 = ptrtoint ptr %encoder4457 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %encoder4457, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool46.not = icmp eq i8 %70, 0
  br i1 %tobool46.not, label %lor.lhs.false44.if.end53_crit_edge, label %lor.lhs.false44.if.then48_crit_edge

lor.lhs.false44.if.then48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false44.if.end53_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then48:                                        ; preds = %lor.lhs.false44.if.then48_crit_edge, %if.then41.if.then48_crit_edge
  %mul = shl i32 %60, 1
  %mul49 = mul i32 %mul, %62
  %add = add i32 %mul49, 640
  %71 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %add, ptr %plane_fmt, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %lor.lhs.false44.if.end53_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %72 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %bytesperline, align 1
  br label %if.end102

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bpl.064 = phi i32 [ %75, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bytesperline63 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %i.063, i32 1
  %73 = ptrtoint ptr %bytesperline63 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %bytesperline63, align 1
  %75 = tail call i32 @llvm.umax.i32(i32 %bpl.064, i32 %74)
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %conv58
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %num_planes34 to i32
  call void @__asan_load1_noabort(i32 %76)
  %.pr = load i8, ptr %num_planes34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.cond.preheader.for.end_crit_edge
  %77 = phi i1 [ %phi.cmp, %for.endthread-pre-split ], [ true, %for.cond.preheader.for.end_crit_edge ]
  %bpl.0.lcssa = phi i32 [ %75, %for.endthread-pre-split ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %78 = tail call i32 @llvm.umax.i32(i32 %bpl.0.lcssa, i32 %60)
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 4096)
  %sub = add nsw i32 %79, -1
  %or = or i32 %sub, 7
  %add82 = add nsw i32 %or, 1
  br i1 %77, label %for.end.if.end102_crit_edge, label %for.body88.lr.ph

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

for.body88.lr.ph:                                 ; preds = %for.end
  %mul92 = mul i32 %add82, %62
  br label %for.body88

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.body88.lr.ph
  %i.167 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc100, %for.body88.for.body88_crit_edge ]
  %arrayidx90 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %i.167
  %bytesperline91 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %i.167, i32 1
  %80 = ptrtoint ptr %bytesperline91 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %add82, ptr %bytesperline91, align 1
  %arrayidx93 = getelementptr %struct.jpu_fmt, ptr %fmt.0, i32 0, i32 2, i32 %i.167
  %81 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %82 to i32
  %mul95 = mul i32 %mul92, %conv94
  %div1 = lshr exact i32 %mul95, 3
  %83 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %div1, ptr %arrayidx90, align 1
  %inc100 = add nuw nsw i32 %i.167, 1
  %84 = ptrtoint ptr %num_planes34 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_planes34, align 1
  %conv85 = zext i8 %85 to i32
  %cmp86 = icmp ult i32 %inc100, %conv85
  br i1 %cmp86, label %for.body88.for.body88_crit_edge, label %for.body88.if.end102_crit_edge

for.body88.if.end102_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body88

if.end102:                                        ; preds = %for.body88.if.end102_crit_edge, %for.end.if.end102_crit_edge, %if.end53
  %tobool103.not = icmp eq ptr %fmtinfo, null
  br i1 %tobool103.not, label %if.end102.if.end105_crit_edge, label %if.then104

if.end102.if.end105_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %fmt.0, ptr %fmtinfo, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end102.if.end105_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 752, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @jpu_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %7 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %timestamp_flags, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %lock, align 4
  %12 = load ptr, ptr %priv, align 4
  %v4l2_dev = getelementptr inbounds %struct.jpu, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev, align 8
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev2, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = getelementptr inbounds i8, ptr %dst_vq, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 504)
  %18 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %dst_vq, align 4
  %io_modes4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %19 = ptrtoint ptr %io_modes4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %io_modes4, align 4
  %drv_priv5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv5, align 4
  %buf_struct_size6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %21 = ptrtoint ptr %buf_struct_size6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 752, ptr %buf_struct_size6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %22 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @jpu_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %23 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %timestamp_flags9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %24 = ptrtoint ptr %timestamp_flags9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %timestamp_flags9, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %lock12, align 4
  %28 = load ptr, ptr %priv, align 4
  %v4l2_dev14 = getelementptr inbounds %struct.jpu, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %v4l2_dev14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v4l2_dev14, align 8
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %31 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jpu_reset(ptr nocapture noundef readonly %jpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.jpu, ptr %jpu, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048576) #10, !srcloc !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 10
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not4.i = icmp eq i32 %6, 0
  br i1 %tobool.not4.i, label %entry.jpu_wait_reset.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.jpu_wait_reset.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_wait_reset.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.jpu, ptr %jpu, i32 0, i32 10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54) #13
  br label %jpu_wait_reset.exit

if.end.i:                                         ; preds = %while.body.i
  tail call void @schedule() #10
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %13 = and i32 %12, 1048576
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i.jpu_wait_reset.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.jpu_wait_reset.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_wait_reset.exit

jpu_wait_reset.exit:                              ; preds = %if.end.i.jpu_wait_reset.exit_crit_edge, %do.end.i, %entry.jpu_wait_reset.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ 0, %entry.jpu_wait_reset.exit_crit_edge ], [ 0, %if.end.i.jpu_wait_reset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge57
    i32 3, label %entry.if.then.i_crit_edge58
    i32 8, label %entry.if.then.i_crit_edge59
    i32 5, label %entry.if.then.i_crit_edge60
    i32 7, label %entry.if.then.i_crit_edge61
    i32 12, label %entry.if.then.i_crit_edge62
    i32 14, label %entry.if.then.i_crit_edge63
  ]

entry.if.then.i_crit_edge63:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge62:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge57, %entry.if.then.i_crit_edge58, %entry.if.then.i_crit_edge59, %entry.if.then.i_crit_edge60, %entry.if.then.i_crit_edge61, %entry.if.then.i_crit_edge62, %entry.if.then.i_crit_edge63
  %out_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %1, i32 0, i32 3
  br label %jpu_get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cap_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %1, i32 0, i32 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %num_planes14 = getelementptr inbounds %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %num_planes14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes14, align 4
  %conv15 = zext i8 %8 to i32
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv15)
  %cmp.not = icmp eq i32 %6, %conv15
  br i1 %cmp.not, label %if.then.for.body_crit_edge, label %if.then.cleanup28_crit_edge

if.then.cleanup28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup28_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup28_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.049
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr i32, ptr %sizes, i32 %i.049
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp8 = icmp ult i32 %12, %10
  br i1 %cmp8, label %for.body.cleanup28_crit_edge, label %for.cond

for.body.cleanup28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.end12:                                         ; preds = %jpu_get_q_data.exit
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv15, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1751.not = icmp eq i8 %8, 0
  br i1 %cmp1751.not, label %if.end12.cleanup28_crit_edge, label %if.end12.for.body19_crit_edge

if.end12.for.body19_crit_edge:                    ; preds = %if.end12
  br label %for.body19

if.end12.cleanup28_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.end12.for.body19_crit_edge
  %i.152 = phi i32 [ %inc26, %for.body19.for.body19_crit_edge ], [ 0, %if.end12.for.body19_crit_edge ]
  %arrayidx22 = getelementptr %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.152
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr i32, ptr %sizes, i32 %i.152
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx24, align 4
  %inc26 = add nuw i32 %i.152, 1
  %17 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nplanes, align 4
  %cmp17 = icmp ult i32 %inc26, %18
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.cleanup28_crit_edge

for.body19.cleanup28_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

cleanup28:                                        ; preds = %for.body19.cleanup28_crit_edge, %if.end12.cleanup28_crit_edge, %for.body.cleanup28_crit_edge, %for.cond.cleanup28_crit_edge, %if.then.cleanup28_crit_edge
  %retval.2 = phi i32 [ -22, %if.then.cleanup28_crit_edge ], [ 0, %if.end12.cleanup28_crit_edge ], [ 0, %for.body19.cleanup28_crit_edge ], [ -22, %for.body.cleanup28_crit_edge ], [ 0, %for.cond.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %5, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge173
    i32 3, label %entry.if.then.i_crit_edge174
    i32 8, label %entry.if.then.i_crit_edge175
    i32 5, label %entry.if.then.i_crit_edge176
    i32 7, label %entry.if.then.i_crit_edge177
    i32 12, label %entry.if.then.i_crit_edge178
    i32 14, label %entry.if.then.i_crit_edge179
  ]

entry.if.then.i_crit_edge179:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge178:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge177:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge176:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge175:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge174:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge173:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge173, %entry.if.then.i_crit_edge174, %entry.if.then.i_crit_edge175, %entry.if.then.i_crit_edge176, %entry.if.then.i_crit_edge177, %entry.if.then.i_crit_edge178, %entry.if.then.i_crit_edge179
  %out_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3
  br label %jpu_get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cap_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %jpu_get_q_data.exit.if.end39_crit_edge [
    i32 2, label %jpu_get_q_data.exit.if.then_crit_edge
    i32 10, label %jpu_get_q_data.exit.if.then_crit_edge180
    i32 3, label %jpu_get_q_data.exit.if.then_crit_edge181
    i32 8, label %jpu_get_q_data.exit.if.then_crit_edge182
    i32 5, label %jpu_get_q_data.exit.if.then_crit_edge183
    i32 7, label %jpu_get_q_data.exit.if.then_crit_edge184
    i32 12, label %jpu_get_q_data.exit.if.then_crit_edge185
    i32 14, label %jpu_get_q_data.exit.if.then_crit_edge186
  ]

jpu_get_q_data.exit.if.then_crit_edge186:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge185:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge184:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge183:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge182:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge181:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge180:         ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.then_crit_edge:            ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

jpu_get_q_data.exit.if.end39_crit_edge:           ; preds = %jpu_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then:                                          ; preds = %jpu_get_q_data.exit.if.then_crit_edge, %jpu_get_q_data.exit.if.then_crit_edge180, %jpu_get_q_data.exit.if.then_crit_edge181, %jpu_get_q_data.exit.if.then_crit_edge182, %jpu_get_q_data.exit.if.then_crit_edge183, %jpu_get_q_data.exit.if.then_crit_edge184, %jpu_get_q_data.exit.if.then_crit_edge185, %jpu_get_q_data.exit.if.then_crit_edge186
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %9, label %do.end [
    i32 0, label %if.end.thread
    i32 1, label %if.then.if.end39_crit_edge
  ]

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  br label %if.end39

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #13
  br label %cleanup95

if.end39:                                         ; preds = %if.end.thread, %if.then.if.end39_crit_edge, %jpu_get_q_data.exit.if.end39_crit_edge
  %num_planes = getelementptr inbounds %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp40157.not = icmp eq i8 %17, 0
  br i1 %cmp40157.not, label %if.end39.cleanup95_crit_edge, label %for.body.lr.ph

if.end39.cleanup95_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

for.body.lr.ph:                                   ; preds = %if.end39
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.0158
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %i.0158)
  %cmp.i = icmp ugt i32 %21, %i.0158
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0158, i32 4
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp44 = icmp ult i32 %23, %19
  br i1 %cmp44, label %if.then.i142, label %vb2_plane_size.exit.if.end53_crit_edge

vb2_plane_size.exit.if.end53_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp44151.not = icmp eq i32 %19, 0
  br i1 %cmp44151.not, label %vb2_plane_size.exit.thread.if.end53_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit144_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit144_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit144

vb2_plane_size.exit.thread.if.end53_crit_edge:    ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then.i142:                                     ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit144

vb2_plane_size.exit144:                           ; preds = %if.then.i142, %vb2_plane_size.exit.thread.vb2_plane_size.exit144_crit_edge
  %retval.0.i143 = phi i32 [ %25, %if.then.i142 ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit144_crit_edge ]
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %3, align 4
  %.in = getelementptr inbounds %struct.jpu, ptr %.pn, i32 0, i32 10
  %27 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i143, i32 noundef %19) #13
  br label %cleanup95

if.end53:                                         ; preds = %vb2_plane_size.exit.thread.if.end53_crit_edge, %vb2_plane_size.exit.if.end53_crit_edge
  %29 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end53.for.inc_crit_edge

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end53
  %31 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vb, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %34, label %if.then93 [
    i32 2, label %land.lhs.true.for.inc_crit_edge
    i32 10, label %land.lhs.true.for.inc_crit_edge187
    i32 3, label %land.lhs.true.for.inc_crit_edge188
    i32 8, label %land.lhs.true.for.inc_crit_edge189
    i32 5, label %land.lhs.true.for.inc_crit_edge190
    i32 7, label %land.lhs.true.for.inc_crit_edge191
    i32 12, label %land.lhs.true.for.inc_crit_edge192
    i32 14, label %land.lhs.true.for.inc_crit_edge193
  ]

land.lhs.true.for.inc_crit_edge193:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge192:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge191:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge190:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge189:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge188:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge187:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then93:                                        ; preds = %land.lhs.true
  br i1 %cmp.i, label %if.then.i148, label %if.then93.for.inc_crit_edge

if.then93.for.inc_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i148:                                     ; preds = %if.then93
  %length.i147 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0158, i32 4
  %36 = ptrtoint ptr %length.i147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %19)
  %cmp1.i = icmp ult i32 %37, %19
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i148.if.end42.i_crit_edge

if.then.i148.if.end42.i_crit_edge:                ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i148
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !198

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %38 = ptrtoint ptr %length.i147 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i147, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i148.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %39, %if.then38.i ], [ %19, %if.then.i148.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0158, i32 3
  %40 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end42.i, %if.then93.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge187, %land.lhs.true.for.inc_crit_edge188, %land.lhs.true.for.inc_crit_edge189, %land.lhs.true.for.inc_crit_edge190, %land.lhs.true.for.inc_crit_edge191, %land.lhs.true.for.inc_crit_edge192, %land.lhs.true.for.inc_crit_edge193, %if.end53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0158, 1
  %41 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %42 to i32
  %cmp40 = icmp ult i32 %inc, %conv
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.cleanup95_crit_edge

for.inc.cleanup95_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup95:                                        ; preds = %for.inc.cleanup95_crit_edge, %vb2_plane_size.exit144, %if.end39.cleanup95_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %vb2_plane_size.exit144 ], [ 0, %if.end39.cleanup95_crit_edge ], [ 0, %for.inc.cleanup95_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpu_buf_finish(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %out_q = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %state = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp eq i32 %7, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %5, label %if.else.i [
    i32 2, label %if.then.jpu_get_q_data.exit_crit_edge
    i32 10, label %if.then.jpu_get_q_data.exit_crit_edge65
    i32 3, label %if.then.jpu_get_q_data.exit_crit_edge66
    i32 8, label %if.then.jpu_get_q_data.exit_crit_edge67
    i32 5, label %if.then.jpu_get_q_data.exit_crit_edge68
    i32 7, label %if.then.jpu_get_q_data.exit_crit_edge69
    i32 12, label %if.then.jpu_get_q_data.exit_crit_edge70
    i32 14, label %if.then.jpu_get_q_data.exit_crit_edge71
  ]

if.then.jpu_get_q_data.exit_crit_edge71:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge70:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge69:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge68:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge67:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge66:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge65:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.then.jpu_get_q_data.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cap_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %if.else.i, %if.then.jpu_get_q_data.exit_crit_edge, %if.then.jpu_get_q_data.exit_crit_edge65, %if.then.jpu_get_q_data.exit_crit_edge66, %if.then.jpu_get_q_data.exit_crit_edge67, %if.then.jpu_get_q_data.exit_crit_edge68, %if.then.jpu_get_q_data.exit_crit_edge69, %if.then.jpu_get_q_data.exit_crit_edge70, %if.then.jpu_get_q_data.exit_crit_edge71
  %retval.0.i = phi ptr [ %cap_q.i, %if.else.i ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge65 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge66 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge67 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge68 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge69 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge70 ], [ %out_q, %if.then.jpu_get_q_data.exit_crit_edge71 ]
  %sequence = getelementptr inbounds %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %11 = ptrtoint ptr %sequence5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sequence5, align 8
  br label %if.end

if.end:                                           ; preds = %jpu_get_q_data.exit, %entry.if.end_crit_edge
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 8
  %.fr = freeze i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.fr)
  %cmp7.not.not = icmp eq i32 %.fr, 5
  br i1 %cmp7.not.not, label %switch.early.test, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test:                                ; preds = %lor.lhs.false
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %5, label %if.end25 [
    i32 14, label %switch.early.test.cleanup_crit_edge
    i32 12, label %switch.early.test.cleanup_crit_edge72
    i32 10, label %switch.early.test.cleanup_crit_edge73
    i32 8, label %switch.early.test.cleanup_crit_edge74
    i32 7, label %switch.early.test.cleanup_crit_edge75
    i32 5, label %switch.early.test.cleanup_crit_edge76
    i32 3, label %switch.early.test.cleanup_crit_edge77
    i32 2, label %switch.early.test.cleanup_crit_edge78
  ]

switch.early.test.cleanup_crit_edge78:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge77:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge76:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge75:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge74:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge73:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge72:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #10
  %compr_quality = getelementptr inbounds %struct.jpu_buffer, ptr %vb, i32 0, i32 1
  %17 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %compr_quality, align 8
  %idxprom = zext i16 %18 to i32
  %arrayidx = getelementptr [4 x [640 x i8]], ptr @jpeg_hdrs, i32 0, i32 %idxprom
  %19 = call ptr @memcpy(ptr %call26, ptr %arrayidx, i32 640)
  %format = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3, i32 1
  %height = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3, i32 1, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %conv = trunc i32 %21 to i16
  %add.ptr27 = getelementptr i8, ptr %call26, i32 145
  %22 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %add.ptr27, align 2
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format, align 4
  %conv29 = trunc i32 %24 to i16
  %add.ptr30 = getelementptr i8, ptr %call26, i32 147
  %25 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv29, ptr %add.ptr30, align 2
  %26 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out_q, align 4
  %subsampling = getelementptr inbounds %struct.jpu_fmt, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %subsampling to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %subsampling, align 4
  %add.ptr31 = getelementptr i8, ptr %call26, i32 151
  %30 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %add.ptr31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge72, %switch.early.test.cleanup_crit_edge73, %switch.early.test.cleanup_crit_edge74, %switch.early.test.cleanup_crit_edge75, %switch.early.test.cleanup_crit_edge76, %switch.early.test.cleanup_crit_edge77, %switch.early.test.cleanup_crit_edge78, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpu_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %3, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge3
    i32 3, label %entry.if.then.i_crit_edge4
    i32 8, label %entry.if.then.i_crit_edge5
    i32 5, label %entry.if.then.i_crit_edge6
    i32 7, label %entry.if.then.i_crit_edge7
    i32 12, label %entry.if.then.i_crit_edge8
    i32 14, label %entry.if.then.i_crit_edge9
  ]

entry.if.then.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge3, %entry.if.then.i_crit_edge4, %entry.if.then.i_crit_edge5, %entry.if.then.i_crit_edge6, %entry.if.then.i_crit_edge7, %entry.if.then.i_crit_edge8, %entry.if.then.i_crit_edge9
  %out_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %1, i32 0, i32 3
  br label %jpu_get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cap_q.i = getelementptr inbounds %struct.jpu_ctx, ptr %1, i32 0, i32 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %sequence = getelementptr inbounds %struct.jpu_q_data, ptr %retval.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpu_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %1, i32 0, i32 5, i32 10
  br label %for.cond

for.cond:                                         ; preds = %do.body28, %entry
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %if.else [
    i32 2, label %for.cond.if.then_crit_edge
    i32 10, label %for.cond.if.then_crit_edge49
    i32 3, label %for.cond.if.then_crit_edge50
    i32 8, label %for.cond.if.then_crit_edge51
    i32 5, label %for.cond.if.then_crit_edge52
    i32 7, label %for.cond.if.then_crit_edge53
    i32 12, label %for.cond.if.then_crit_edge54
    i32 14, label %for.cond.if.then_crit_edge55
  ]

for.cond.if.then_crit_edge55:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge54:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge53:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge52:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge51:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge50:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge49:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge49, %for.cond.if.then_crit_edge50, %for.cond.if.then_crit_edge51, %for.cond.if.then_crit_edge52, %for.cond.if.then_crit_edge53, %for.cond.if.then_crit_edge54, %for.cond.if.then_crit_edge55
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i48 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #10
  %cmp25 = icmp eq ptr %call.i48, null
  br i1 %cmp25, label %if.then26, label %do.body28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  ret void

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.jpu, ptr %10, i32 0, i32 1
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i48, i32 noundef 6) #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %lock35 = getelementptr inbounds %struct.jpu, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock35, i32 noundef %call31) #10
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpu_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  %adjust = alloca %struct.jpu_q_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %encoder = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %7, label %land.lhs.true.if.end68_crit_edge [
    i32 2, label %land.lhs.true.if.then_crit_edge
    i32 10, label %land.lhs.true.if.then_crit_edge142
    i32 3, label %land.lhs.true.if.then_crit_edge143
    i32 8, label %land.lhs.true.if.then_crit_edge144
    i32 5, label %land.lhs.true.if.then_crit_edge145
    i32 7, label %land.lhs.true.if.then_crit_edge146
    i32 12, label %land.lhs.true.if.then_crit_edge147
    i32 14, label %land.lhs.true.if.then_crit_edge148
  ]

land.lhs.true.if.then_crit_edge148:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge147:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge146:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge145:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge144:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge143:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge142:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge142, %land.lhs.true.if.then_crit_edge143, %land.lhs.true.if.then_crit_edge144, %land.lhs.true.if.then_crit_edge145, %land.lhs.true.if.then_crit_edge146, %land.lhs.true.if.then_crit_edge147, %land.lhs.true.if.then_crit_edge148
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %adjust) #10
  %9 = call ptr @memset(ptr %adjust, i32 255, i32 200)
  %call30 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #10
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.then.do.end_crit_edge, label %vb2_get_plane_payload.exit

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

vb2_get_plane_payload.exit:                       ; preds = %if.then
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytesused.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call30, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %13)
  %cmp.i = icmp ult i32 %13, 25
  br i1 %cmp.i, label %vb2_get_plane_payload.exit.do.end_crit_edge, label %lor.lhs.false.i

vb2_get_plane_payload.exit.do.end_crit_edge:      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.i:                                  ; preds = %vb2_get_plane_payload.exit
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 -1
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %15)
  %cmp3.not.i = icmp eq i8 %15, -39
  %cmp.not.i171173.i = icmp ugt ptr %add.ptr.i, %call30
  %or.cond176.i = and i1 %cmp.not.i171173.i, %cmp3.not.i
  br i1 %or.cond176.i, label %get_byte.exit.lr.ph.lr.ph.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

get_byte.exit.lr.ph.lr.ph.i:                      ; preds = %lor.lhs.false.i
  %sub.ptr.lhs.cast.i97.i = ptrtoint ptr %add.ptr.i to i32
  br label %get_byte.exit.lr.ph.i

get_byte.exit.lr.ph.i:                            ; preds = %cleanup.i.get_byte.exit.lr.ph.i_crit_edge, %get_byte.exit.lr.ph.lr.ph.i
  %soi.0.off0175.i = phi i1 [ false, %get_byte.exit.lr.ph.lr.ph.i ], [ %soi.1.off0.i, %cleanup.i.get_byte.exit.lr.ph.i_crit_edge ]
  %jpeg_buffer.sroa.13.0174.i = phi ptr [ %call30, %get_byte.exit.lr.ph.lr.ph.i ], [ %jpeg_buffer.sroa.13.9.i, %cleanup.i.get_byte.exit.lr.ph.i_crit_edge ]
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %do.body.backedge.i.get_byte.exit.i_crit_edge, %get_byte.exit.lr.ph.i
  %jpeg_buffer.sroa.13.1172.i = phi ptr [ %jpeg_buffer.sroa.13.0174.i, %get_byte.exit.lr.ph.i ], [ %incdec.ptr.i.i, %do.body.backedge.i.get_byte.exit.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %jpeg_buffer.sroa.13.1172.i, i32 1
  %16 = ptrtoint ptr %jpeg_buffer.sroa.13.1172.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %jpeg_buffer.sroa.13.1172.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %17, label %do.end.i [
    i8 -1, label %get_byte.exit.i.do.body.backedge.i_crit_edge
    i8 0, label %get_byte.exit.i.do.body.backedge.i_crit_edge149
  ]

get_byte.exit.i.do.body.backedge.i_crit_edge149:  ; preds = %get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.i

get_byte.exit.i.do.body.backedge.i_crit_edge:     ; preds = %get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %get_byte.exit.i.do.body.backedge.i_crit_edge, %get_byte.exit.i.do.body.backedge.i_crit_edge149
  %cmp.not.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i
  br i1 %cmp.not.i.i, label %do.body.backedge.i.get_byte.exit.i_crit_edge, label %do.body.backedge.i.do.end_crit_edge

do.body.backedge.i.do.end_crit_edge:              ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.backedge.i.get_byte.exit.i_crit_edge:     ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_byte.exit.i

do.end.i:                                         ; preds = %get_byte.exit.i
  %soi.0.off0.not.i = xor i1 %soi.0.off0175.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %17)
  %cmp9.i = icmp eq i8 %17, -40
  %or.cond.i = select i1 %soi.0.off0.not.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %do.end.i.cleanup.i_crit_edge, label %if.else.i

do.end.i.cleanup.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.else.i:                                        ; preds = %do.end.i
  %cmp16.not.i = xor i1 %soi.0.off0175.i, %cmp9.i
  br i1 %cmp16.not.i, label %if.end20.i, label %if.else.i.do.end_crit_edge

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end20.i:                                       ; preds = %if.else.i
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %17, label %if.end20.i.do.end_crit_edge [
    i8 -64, label %sw.bb.i
    i8 -60, label %if.end20.i.sw.bb35.i_crit_edge
    i8 -37, label %if.end20.i.sw.bb35.i_crit_edge150
    i8 -2, label %if.end20.i.sw.bb35.i_crit_edge151
    i8 -35, label %if.end20.i.sw.bb35.i_crit_edge152
    i8 -32, label %if.end20.i.sw.bb35.i_crit_edge153
    i8 -31, label %if.end20.i.sw.bb35.i_crit_edge154
    i8 -30, label %if.end20.i.sw.bb35.i_crit_edge155
    i8 -29, label %if.end20.i.sw.bb35.i_crit_edge156
    i8 -28, label %if.end20.i.sw.bb35.i_crit_edge157
    i8 -27, label %if.end20.i.sw.bb35.i_crit_edge158
    i8 -26, label %if.end20.i.sw.bb35.i_crit_edge159
    i8 -25, label %if.end20.i.sw.bb35.i_crit_edge160
    i8 -24, label %if.end20.i.sw.bb35.i_crit_edge161
    i8 -23, label %if.end20.i.sw.bb35.i_crit_edge162
    i8 -22, label %if.end20.i.sw.bb35.i_crit_edge163
    i8 -21, label %if.end20.i.sw.bb35.i_crit_edge164
    i8 -20, label %if.end20.i.sw.bb35.i_crit_edge165
    i8 -19, label %if.end20.i.sw.bb35.i_crit_edge166
    i8 -18, label %if.end20.i.sw.bb35.i_crit_edge167
    i8 -17, label %if.end20.i.sw.bb35.i_crit_edge168
  ]

if.end20.i.sw.bb35.i_crit_edge168:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge167:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge166:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge165:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge164:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge163:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge162:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge161:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge160:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge159:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge158:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge157:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge156:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge155:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge154:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge153:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge152:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge151:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge150:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.sw.bb35.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35.i

if.end20.i.do.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb.i:                                          ; preds = %if.end20.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i.i
  %20 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i.i, i32 3) #10
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %20
  %sub.ptr.rhs.cast.i61.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i62.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i62.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i62.i, 2
  br i1 %cmp.i.i, label %sw.bb.i.do.end_crit_edge, label %lor.lhs.false23.i

sw.bb.i.do.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false23.i:                                ; preds = %sw.bb.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr.i.i, align 1
  %conv.i63.i = zext i16 %22 to i32
  %add.ptr.i64.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %sub.ptr.rhs.cast.i69.i = ptrtoint ptr %add.ptr.i64.i to i32
  %sub.ptr.sub.i70.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i70.i)
  %cmp.i71.i = icmp slt i32 %sub.ptr.sub.i70.i, 2
  br i1 %cmp.i71.i, label %lor.lhs.false23.i.do.end_crit_edge, label %lor.lhs.false26.i

lor.lhs.false23.i.do.end_crit_edge:               ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %23 = ptrtoint ptr %add.ptr.i64.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr.i64.i, align 1
  %conv.i72.i = zext i16 %24 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %add.ptr.i64.i, i32 2
  %cmp.not.i78.i = icmp ult ptr %add.ptr.i73.i, %add.ptr.i
  br i1 %cmp.not.i78.i, label %get_byte.exit83.i, label %lor.lhs.false26.i.do.end_crit_edge

lor.lhs.false26.i.do.end_crit_edge:               ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

get_byte.exit83.i:                                ; preds = %lor.lhs.false26.i
  %25 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp28.not.i = icmp eq i8 %26, 3
  br i1 %cmp28.not.i, label %if.end31.i, label %get_byte.exit83.i.do.end_crit_edge

get_byte.exit83.i.do.end_crit_edge:               ; preds = %get_byte.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end31.i:                                       ; preds = %get_byte.exit83.i
  %incdec.ptr.i79.i = getelementptr i8, ptr %add.ptr.i73.i, i32 1
  %27 = icmp ne ptr %add.ptr.i, %incdec.ptr.i79.i
  %28 = zext i1 %27 to i32
  %add.ptr.i88.i = getelementptr i8, ptr %incdec.ptr.i79.i, i32 %28
  %cmp.not.i90.i = icmp ult ptr %add.ptr.i88.i, %add.ptr.i
  br i1 %cmp.not.i90.i, label %jpu_parse_hdr.exit, label %if.end31.i.do.end_crit_edge

if.end31.i.do.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb35.i:                                        ; preds = %if.end20.i.sw.bb35.i_crit_edge, %if.end20.i.sw.bb35.i_crit_edge150, %if.end20.i.sw.bb35.i_crit_edge151, %if.end20.i.sw.bb35.i_crit_edge152, %if.end20.i.sw.bb35.i_crit_edge153, %if.end20.i.sw.bb35.i_crit_edge154, %if.end20.i.sw.bb35.i_crit_edge155, %if.end20.i.sw.bb35.i_crit_edge156, %if.end20.i.sw.bb35.i_crit_edge157, %if.end20.i.sw.bb35.i_crit_edge158, %if.end20.i.sw.bb35.i_crit_edge159, %if.end20.i.sw.bb35.i_crit_edge160, %if.end20.i.sw.bb35.i_crit_edge161, %if.end20.i.sw.bb35.i_crit_edge162, %if.end20.i.sw.bb35.i_crit_edge163, %if.end20.i.sw.bb35.i_crit_edge164, %if.end20.i.sw.bb35.i_crit_edge165, %if.end20.i.sw.bb35.i_crit_edge166, %if.end20.i.sw.bb35.i_crit_edge167, %if.end20.i.sw.bb35.i_crit_edge168
  %sub.ptr.rhs.cast.i98.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i99.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i99.i)
  %cmp.i100.i = icmp slt i32 %sub.ptr.sub.i99.i, 2
  br i1 %cmp.i100.i, label %sw.bb35.i.do.end_crit_edge, label %if.end39.i

sw.bb35.i.do.end_crit_edge:                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end39.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %incdec.ptr.i.i, align 1
  %conv.i101.i = zext i16 %30 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %jpeg_buffer.sroa.13.1172.i, i32 3
  %sub.i = add nsw i32 %conv.i101.i, -2
  %sub.ptr.rhs.cast.i108.i = ptrtoint ptr %add.ptr.i102.i to i32
  %sub.ptr.sub.i109.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i108.i
  %31 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i109.i, i32 %sub.i) #10
  %add.ptr.i110.i = getelementptr i8, ptr %add.ptr.i102.i, i32 %31
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end39.i, %do.end.i.cleanup.i_crit_edge
  %jpeg_buffer.sroa.13.9.i = phi ptr [ %incdec.ptr.i.i, %do.end.i.cleanup.i_crit_edge ], [ %add.ptr.i110.i, %if.end39.i ]
  %soi.1.off0.i = phi i1 [ true, %do.end.i.cleanup.i_crit_edge ], [ %soi.0.off0175.i, %if.end39.i ]
  %cmp.not.i171.i = icmp ult ptr %jpeg_buffer.sroa.13.9.i, %add.ptr.i
  br i1 %cmp.not.i171.i, label %cleanup.i.get_byte.exit.lr.ph.i_crit_edge, label %cleanup.i.do.end_crit_edge

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cleanup.i.get_byte.exit.lr.ph.i_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_byte.exit.lr.ph.i

jpu_parse_hdr.exit:                               ; preds = %if.end31.i
  %32 = ptrtoint ptr %add.ptr.i88.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i88.i, align 1
  %call32.off = add i8 %33, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call32.off)
  %switch102 = icmp ult i8 %call32.off, 2
  br i1 %switch102, label %if.end, label %jpu_parse_hdr.exit.do.end_crit_edge

jpu_parse_hdr.exit.do.end_crit_edge:              ; preds = %jpu_parse_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %jpu_parse_hdr.exit
  %out_q = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %adjust, ptr %out_q, i32 200)
  %format = getelementptr inbounds %struct.jpu_q_data, ptr %adjust, i32 0, i32 1
  %35 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i72.i, ptr %format, align 4
  %height42 = getelementptr inbounds %struct.jpu_q_data, ptr %adjust, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i63.i, ptr %height42, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %3, ptr noundef nonnull %adjust, ptr noundef %format, i32 noundef 10)
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format, align 4
  %format47 = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %format47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %format47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp49.not = icmp eq i32 %38, %40
  br i1 %cmp49.not, label %lor.lhs.false51, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false51:                                  ; preds = %if.end
  %41 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height42, align 4
  %height55 = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 3, i32 1, i32 1
  %43 = ptrtoint ptr %height55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp56.not = icmp eq i32 %42, %44
  br i1 %cmp56.not, label %cleanup, label %lor.lhs.false51.do.end_crit_edge

lor.lhs.false51.do.end_crit_edge:                 ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cleanup:                                          ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  %subsampling60 = getelementptr inbounds %struct.jpu_buffer, ptr %vb, i32 0, i32 2
  %45 = ptrtoint ptr %subsampling60 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %33, ptr %subsampling60, align 2
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %adjust) #10
  br label %if.end68

if.end68:                                         ; preds = %cleanup, %land.lhs.true.if.end68_crit_edge, %entry.if.end68_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 5, i32 10
  %46 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m2m_ctx, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %if.end68.cleanup74_crit_edge, label %if.then70

if.end68.cleanup74_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  call void @v4l2_m2m_buf_queue(ptr noundef nonnull %47, ptr noundef %vb) #10
  br label %cleanup74

do.end:                                           ; preds = %lor.lhs.false51.do.end_crit_edge, %if.end.do.end_crit_edge, %jpu_parse_hdr.exit.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %sw.bb35.i.do.end_crit_edge, %if.end31.i.do.end_crit_edge, %get_byte.exit83.i.do.end_crit_edge, %lor.lhs.false26.i.do.end_crit_edge, %lor.lhs.false23.i.do.end_crit_edge, %sw.bb.i.do.end_crit_edge, %if.end20.i.do.end_crit_edge, %if.else.i.do.end_crit_edge, %do.body.backedge.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %vb2_get_plane_payload.exit.do.end_crit_edge, %if.then.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %adjust) #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.63) #13
  call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #10
  br label %cleanup74

cleanup74:                                        ; preds = %do.end, %if.then70, %if.end68.cleanup74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291459, i32 %5)
  %cmp6 = icmp eq i32 %5, 10291459
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv8 = trunc i32 %7 to i16
  %compr_quality = getelementptr i8, ptr %1, i32 -594
  %8 = ptrtoint ptr %compr_quality to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %compr_quality, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %lock10 = getelementptr inbounds %struct.jpu, ptr %10, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -408
  %encoder = getelementptr i8, ptr %priv, i32 -404
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %card2 = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %.str.67..str.66 = select i1 %tobool.not, ptr @.str.67, ptr @.str.66
  %call4 = tail call i32 @strscpy(ptr noundef %card2, ptr noundef nonnull %.str.67..str.66, i32 noundef 32) #10
  %call6 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i)
  %reserved = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 6
  %10 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpu_enum_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %priv, i32 -404
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 4, i32 1
  %2 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %cond, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.i = icmp eq i32 %4, 0
  br i1 %cmp1.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %num.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 1, %if.then.i.for.inc.i_crit_edge ]
  %5 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %conv.1.i = zext i16 %5 to i32
  %and.1.i = and i32 %cond, %conv.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.i, i32 %7)
  %cmp1.1.i = icmp eq i32 %num.1.i, %7
  br i1 %cmp1.1.i, label %if.then.1.i.if.end9.i_crit_edge, label %if.end.1.i

if.then.1.i.if.end9.i_crit_edge:                  ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.1.i:                                       ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1.i = add nuw nsw i32 %num.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %num.1.1.i = phi i32 [ %inc.1.i, %if.end.1.i ], [ %num.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %8 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %conv.2.i = zext i16 %8 to i32
  %and.2.i = and i32 %cond, %conv.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.1.i, i32 %10)
  %cmp1.2.i = icmp eq i32 %num.1.1.i, %10
  br i1 %cmp1.2.i, label %if.then.2.i.if.end9.i_crit_edge, label %if.end.2.i

if.then.2.i.if.end9.i_crit_edge:                  ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.2.i:                                       ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2.i = add nuw nsw i32 %num.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %num.1.2.i = phi i32 [ %inc.2.i, %if.end.2.i ], [ %num.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %11 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %conv.3.i = zext i16 %11 to i32
  %and.3.i = and i32 %cond, %conv.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.2.i, i32 %13)
  %cmp1.3.i = icmp eq i32 %num.1.2.i, %13
  br i1 %cmp1.3.i, label %if.then.3.i.if.end9.i_crit_edge, label %if.end.3.i

if.then.3.i.if.end9.i_crit_edge:                  ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.3.i:                                       ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3.i = add nuw nsw i32 %num.1.2.i, 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %num.1.3.i = phi i32 [ %inc.3.i, %if.end.3.i ], [ %num.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %14 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %conv.4.i = zext i16 %14 to i32
  %and.4.i = and i32 %cond, %conv.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.jpu_enum_fmt.exit_crit_edge, label %if.then.4.i

for.inc.3.i.jpu_enum_fmt.exit_crit_edge:          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_enum_fmt.exit

if.then.4.i:                                      ; preds = %for.inc.3.i
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.3.i, i32 %16)
  %cmp1.4.i = icmp eq i32 %num.1.3.i, %16
  br i1 %cmp1.4.i, label %if.then.4.i.if.end9.i_crit_edge, label %if.then.4.i.jpu_enum_fmt.exit_crit_edge

if.then.4.i.jpu_enum_fmt.exit_crit_edge:          ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_enum_fmt.exit

if.then.4.i.if.end9.i_crit_edge:                  ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.4.i.if.end9.i_crit_edge, %if.then.3.i.if.end9.i_crit_edge, %if.then.2.i.if.end9.i_crit_edge, %if.then.1.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge
  %i.020.lcssa.i = phi i32 [ 0, %if.then.i.if.end9.i_crit_edge ], [ 1, %if.then.1.i.if.end9.i_crit_edge ], [ 2, %if.then.2.i.if.end9.i_crit_edge ], [ 3, %if.then.3.i.if.end9.i_crit_edge ], [ 4, %if.then.4.i.if.end9.i_crit_edge ]
  %arrayidx10.i = getelementptr [5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 %i.020.lcssa.i
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat.i, align 4
  br label %jpu_enum_fmt.exit

jpu_enum_fmt.exit:                                ; preds = %if.end9.i, %if.then.4.i.jpu_enum_fmt.exit_crit_edge, %for.inc.3.i.jpu_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -22, %if.then.4.i.jpu_enum_fmt.exit_crit_edge ], [ -22, %for.inc.3.i.jpu_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpu_enum_fmt_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %priv, i32 -404
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 8, i32 2
  %2 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %cond, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.i = icmp eq i32 %4, 0
  br i1 %cmp1.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %num.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 1, %if.then.i.for.inc.i_crit_edge ]
  %5 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %conv.1.i = zext i16 %5 to i32
  %and.1.i = and i32 %cond, %conv.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.i, i32 %7)
  %cmp1.1.i = icmp eq i32 %num.1.i, %7
  br i1 %cmp1.1.i, label %if.then.1.i.if.end9.i_crit_edge, label %if.end.1.i

if.then.1.i.if.end9.i_crit_edge:                  ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.1.i:                                       ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1.i = add nuw nsw i32 %num.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %num.1.1.i = phi i32 [ %inc.1.i, %if.end.1.i ], [ %num.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %8 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %conv.2.i = zext i16 %8 to i32
  %and.2.i = and i32 %cond, %conv.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.1.i, i32 %10)
  %cmp1.2.i = icmp eq i32 %num.1.1.i, %10
  br i1 %cmp1.2.i, label %if.then.2.i.if.end9.i_crit_edge, label %if.end.2.i

if.then.2.i.if.end9.i_crit_edge:                  ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.2.i:                                       ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2.i = add nuw nsw i32 %num.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %num.1.2.i = phi i32 [ %inc.2.i, %if.end.2.i ], [ %num.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %11 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %conv.3.i = zext i16 %11 to i32
  %and.3.i = and i32 %cond, %conv.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.2.i, i32 %13)
  %cmp1.3.i = icmp eq i32 %num.1.2.i, %13
  br i1 %cmp1.3.i, label %if.then.3.i.if.end9.i_crit_edge, label %if.end.3.i

if.then.3.i.if.end9.i_crit_edge:                  ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.3.i:                                       ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3.i = add nuw nsw i32 %num.1.2.i, 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %num.1.3.i = phi i32 [ %inc.3.i, %if.end.3.i ], [ %num.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %14 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %conv.4.i = zext i16 %14 to i32
  %and.4.i = and i32 %cond, %conv.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.jpu_enum_fmt.exit_crit_edge, label %if.then.4.i

for.inc.3.i.jpu_enum_fmt.exit_crit_edge:          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_enum_fmt.exit

if.then.4.i:                                      ; preds = %for.inc.3.i
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.3.i, i32 %16)
  %cmp1.4.i = icmp eq i32 %num.1.3.i, %16
  br i1 %cmp1.4.i, label %if.then.4.i.if.end9.i_crit_edge, label %if.then.4.i.jpu_enum_fmt.exit_crit_edge

if.then.4.i.jpu_enum_fmt.exit_crit_edge:          ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_enum_fmt.exit

if.then.4.i.if.end9.i_crit_edge:                  ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.4.i.if.end9.i_crit_edge, %if.then.3.i.if.end9.i_crit_edge, %if.then.2.i.if.end9.i_crit_edge, %if.then.1.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge
  %i.020.lcssa.i = phi i32 [ 0, %if.then.i.if.end9.i_crit_edge ], [ 1, %if.then.1.i.if.end9.i_crit_edge ], [ 2, %if.then.2.i.if.end9.i_crit_edge ], [ 3, %if.then.3.i.if.end9.i_crit_edge ], [ 4, %if.then.4.i.if.end9.i_crit_edge ]
  %arrayidx10.i = getelementptr [5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 %i.020.lcssa.i
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat.i, align 4
  br label %jpu_enum_fmt.exit

jpu_enum_fmt.exit:                                ; preds = %if.end9.i, %if.then.4.i.jpu_enum_fmt.exit_crit_edge, %for.inc.3.i.jpu_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -22, %if.then.4.i.jpu_enum_fmt.exit_crit_edge ], [ -22, %for.inc.3.i.jpu_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %priv, i32 188
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %if.end.jpu_get_q_data.exit_crit_edge

if.end.jpu_get_q_data.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.jpu_g_fmt, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %switch.lookup, %if.end.jpu_get_q_data.exit_crit_edge
  %8 = phi i32 [ %switch.load, %switch.lookup ], [ -200, %if.end.jpu_get_q_data.exit_crit_edge ]
  %9 = getelementptr i8, ptr %priv, i32 %8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.jpu_q_data, ptr %9, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %fmt, ptr %format, i32 192)
  br label %cleanup

cleanup:                                          ; preds = %jpu_get_q_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %jpu_get_q_data.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_s_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  %fmtinfo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -408
  %m2m_ctx1 = getelementptr i8, ptr %priv, i32 188
  %0 = ptrtoint ptr %m2m_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmtinfo) #10
  %2 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fmtinfo, align 4, !annotation !200
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %4) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.jpu, ptr %8, i32 0, i32 2, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, ptr noundef nonnull @.str.70) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %add.ptr.i, ptr noundef nonnull %fmtinfo, ptr noundef %fmt, i32 noundef %10)
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 13
  br i1 %13, label %switch.lookup, label %if.end6.jpu_get_q_data.exit_crit_edge

if.end6.jpu_get_q_data.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %jpu_get_q_data.exit

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.jpu_s_fmt, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jpu_get_q_data.exit

jpu_get_q_data.exit:                              ; preds = %switch.lookup, %if.end6.jpu_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -200, %if.end6.jpu_get_q_data.exit_crit_edge ]
  %out_q.i = getelementptr i8, ptr %priv, i32 %.sink
  %format = getelementptr inbounds %struct.jpu_q_data, ptr %out_q.i, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %format, ptr %fmt, i32 192)
  %16 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmtinfo, align 4
  %18 = ptrtoint ptr %out_q.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %out_q.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %jpu_get_q_data.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %jpu_get_q_data.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmtinfo) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr i8, ptr %priv, i32 188
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -408
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  tail call fastcc void @__jpu_try_fmt(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %fmt, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @jpu_streamon(ptr noundef %file, ptr nocapture noundef readonly %priv, i32 noundef %type) #2 align 64 {
entry:
  %adj = alloca %struct.jpu_q_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -408
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %adj) #10
  %out_q.i = getelementptr i8, ptr %priv, i32 -400
  %cap_q.i = getelementptr i8, ptr %priv, i32 -200
  %encoder = getelementptr i8, ptr %priv, i32 -404
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encoder, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cap_q.i.out_q.i = select i1 %tobool.not, ptr %cap_q.i, ptr %out_q.i
  %out_q.i.cap_q.i = select i1 %tobool.not, ptr %out_q.i, ptr %cap_q.i
  %. = select i1 %tobool.not, i32 9, i32 10
  %2 = call ptr @memcpy(ptr %adj, ptr %cap_q.i.out_q.i, i32 200)
  %format = getelementptr inbounds %struct.jpu_q_data, ptr %out_q.i.cap_q.i, i32 0, i32 1
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format3 = getelementptr inbounds %struct.jpu_q_data, ptr %adj, i32 0, i32 1
  %5 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format3, align 4
  %height = getelementptr inbounds %struct.jpu_q_data, ptr %out_q.i.cap_q.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.jpu_q_data, ptr %adj, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height7, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %format3, i32 noundef %.)
  %9 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format3, align 4
  %format12 = getelementptr inbounds %struct.jpu_q_data, ptr %cap_q.i.out_q.i, i32 0, i32 1
  %11 = ptrtoint ptr %format12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height7, align 4
  %height17 = getelementptr inbounds %struct.jpu_q_data, ptr %cap_q.i.out_q.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp18.not = icmp eq i32 %14, %16
  br i1 %cmp18.not, label %if.end20, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.jpu, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.52) #13
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %m2m_ctx = getelementptr i8, ptr %priv, i32 188
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  %call21 = call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %22, i32 noundef %type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call21, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %adj) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_count = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpu_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_count = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_rcar_jpu__308_1759_jpu_driver_init6, !1, !"__initcall__kmod_rcar_jpu__308_1759_jpu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1759, i32 1}
!2 = !{ptr @__exitcall_jpu_driver_exit, !1, !"__exitcall_jpu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias309, !4, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1761, i32 1}
!5 = !{ptr @__UNIQUE_ID_author310, !6, !"__UNIQUE_ID_author310", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1762, i32 1}
!7 = !{ptr @__UNIQUE_ID_description311, !8, !"__UNIQUE_ID_description311", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1763, i32 1}
!9 = !{ptr @__UNIQUE_ID_file312, !10, !"__UNIQUE_ID_file312", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1764, i32 1}
!11 = !{ptr @__UNIQUE_ID_license313, !10, !"__UNIQUE_ID_license313", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1754, i32 11}
!14 = !{ptr @jpu_driver, !15, !"jpu_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1749, i32 31}
!16 = !{ptr @jpu_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1600, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @jpu_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1601, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1612, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jpu_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @jpu_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1619, i32 3}
!32 = !{ptr @jpu_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jpu_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1626, i32 3}
!36 = !{ptr @jpu_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jpu_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1633, i32 3}
!40 = !{ptr @jpu_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @jpu_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1640, i32 3}
!44 = !{ptr @jpu_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @jpu_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1662, i32 3}
!48 = !{ptr @jpu_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @jpu_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @jpu_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1681, i32 3}
!52 = !{ptr @jpu_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1688, i32 2}
!55 = !{ptr @jpu_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @jpu_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1690, i32 2}
!59 = !{ptr @jpu_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @jpu_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1523, i32 3}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @jpu_irq_handler._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @jpu_irq_handler._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1553, i32 3}
!68 = !{ptr @jpu_irq_handler.__UNIQUE_ID_ddebug307, !67, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/rcar_jpu.c", i32 449, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/rcar_jpu.c", i32 450, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/rcar_jpu.c", i32 451, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/rcar_jpu.c", i32 452, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/rcar_jpu.c", i32 453, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/rcar_jpu.c", i32 454, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/rcar_jpu.c", i32 455, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/rcar_jpu.c", i32 456, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/rcar_jpu.c", i32 457, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/rcar_jpu.c", i32 458, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/rcar_jpu.c", i32 459, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/rcar_jpu.c", i32 460, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/rcar_jpu.c", i32 461, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/rcar_jpu.c", i32 462, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/rcar_jpu.c", i32 463, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/rcar_jpu.c", i32 464, i32 2}
!104 = !{ptr @error_to_text, !105, !"error_to_text", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/rcar_jpu.c", i32 448, i32 20}
!106 = !{ptr @jpu_m2m_ops, !107, !"jpu_m2m_ops", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1486, i32 34}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1448, i32 4}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @jpu_device_run._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @jpu_device_run._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/rcar_jpu.c", i32 525, i32 4}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @jpu_wait_reset._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @jpu_wait_reset._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @qtbl_lum, !119, !"qtbl_lum", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/rcar_jpu.c", i32 362, i32 27}
!120 = !{ptr @qtbl_chr, !121, !"qtbl_chr", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/rcar_jpu.c", i32 389, i32 27}
!122 = distinct !{null, !123, !"hdctbl_lum", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/rcar_jpu.c", i32 416, i32 27}
!124 = !{ptr @hactbl_lum, !125, !"hactbl_lum", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/rcar_jpu.c", i32 426, i32 27}
!126 = distinct !{null, !127, !"hdctbl_chr", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/rcar_jpu.c", i32 421, i32 27}
!128 = !{ptr @hactbl_chr, !129, !"hactbl_chr", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/rcar_jpu.c", i32 437, i32 27}
!130 = !{ptr @zigzag, !131, !"zigzag", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/rcar_jpu.c", i32 309, i32 17}
!132 = !{ptr @jpeg_hdrs, !133, !"jpeg_hdrs", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/rcar_jpu.c", i32 358, i32 22}
!134 = !{ptr @jpu_fops, !135, !"jpu_fops", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1310, i32 42}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/rcar_jpu.c", i32 783, i32 3}
!138 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__jpu_try_fmt.__UNIQUE_ID_ddebug300, !137, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!140 = !{ptr @jpu_formats, !141, !"jpu_formats", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/rcar_jpu.c", i32 296, i32 23}
!142 = !{ptr @jpu_qops, !143, !"jpu_qops", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1175, i32 29}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1048, i32 4}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @jpu_buf_prepare._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @jpu_buf_prepare._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1058, i32 4}
!151 = !{ptr @jpu_buf_prepare._entry.60, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @jpu_buf_prepare._entry_ptr.62, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1117, i32 2}
!155 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @jpu_buf_queue._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @jpu_buf_queue._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @jpu_controls_create._key, !159, !"_key", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/rcar_jpu.c", i32 973, i32 2}
!160 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @jpu_ctrl_ops, !162, !"jpu_ctrl_ops", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/rcar_jpu.c", i32 902, i32 35}
!163 = !{ptr @jpu_ioctl_ops, !164, !"jpu_ioctl_ops", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/rcar_jpu.c", i32 942, i32 36}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/rcar_jpu.c", i32 668, i32 22}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/rcar_jpu.c", i32 670, i32 22}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/rcar_jpu.c", i32 673, i32 49}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/rcar_jpu.c", i32 856, i32 3}
!173 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @jpu_s_fmt._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @jpu_s_fmt._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/rcar_jpu.c", i32 934, i32 3}
!178 = !{ptr @jpu_streamon._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @jpu_streamon._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @jpu_dt_ids, !181, !"jpu_dt_ids", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1580, i32 34}
!182 = !{ptr @jpu_pm_ops, !183, !"jpu_pm_ops", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/rcar_jpu.c", i32 1745, i32 32}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 4290347}
!194 = !{i64 2151830696}
!195 = !{i64 2151832051}
!196 = !{i64 4289929}
!197 = !{i8 0, i8 2}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2148782216, i64 2148782221, i64 2148782234, i64 2148782278, i64 2148782312, i64 2148782333}
!200 = !{!"auto-init"}
