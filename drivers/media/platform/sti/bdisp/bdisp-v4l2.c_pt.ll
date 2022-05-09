; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/bdisp/bdisp-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/bdisp/bdisp-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.bdisp_frame = type { i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_rect, [4 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.bdisp_fmt = type { i32, i8, i8, i8, i8, i8 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bdisp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.spinlock, %struct.mutex, i16, %struct.bdisp_m2m_device, i32, ptr, ptr, %struct.wait_queue_head, ptr, %struct.delayed_work, %struct.bdisp_dbg }
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
%struct.bdisp_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.bdisp_dbg = type { ptr, [4 x ptr], %struct.bdisp_request, i64, i64, i64, i64, i64 }
%struct.bdisp_request = type { %struct.bdisp_frame, %struct.bdisp_frame, i8, i32 }
%struct.bdisp_ctx = type { %struct.bdisp_frame, %struct.bdisp_frame, i32, i8, ptr, [4 x ptr], [4 x i32], %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.bdisp_ctrls, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bdisp_ctrls = type { ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@__initcall__kmod_bdisp__315_1427_bdisp_driver_init6 = internal global ptr @bdisp_driver_init, section ".initcall6.init", align 4
@bdisp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bdisp_probe, ptr @bdisp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bdisp_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bdisp_driver_exit = internal global ptr @bdisp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description316 = internal constant [56 x i8] c"bdisp.description=2D blitter for STMicroelectronics SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [54 x i8] c"bdisp.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [50 x i8] c"bdisp.file=drivers/media/platform/sti/bdisp/bdisp\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [18 x i8] c"bdisp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bdisp\00", [26 x i8] zeroinitializer }, align 32
@bdisp_match_types = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-bdisp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bdisp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bdisp_suspend, ptr @bdisp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_runtime_suspend, ptr @bdisp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@bdisp_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdisp_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/sti/bdisp/bdisp-v4l2.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bdisp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bdisp->irq_queue\00", [46 x i8] zeroinitializer }, align 32
@bdisp_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&bdisp->timeout_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@bdisp_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&bdisp->timeout_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@bdisp_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bdisp->slock\00", [18 x i8] zeroinitializer }, align 32
@bdisp_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bdisp->lock\00", [19 x i8] zeroinitializer }, align 32
@bdisp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1326, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr = internal global ptr @bdisp_probe._entry, section ".printk_index", align 4
@bdisp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 1333, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clock prepare failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.19 = internal global ptr @bdisp_probe._entry.17, section ".printk_index", align 4
@bdisp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 1340, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get IRQ resource\0A\00", [36 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.22 = internal global ptr @bdisp_probe._entry.20, section ".printk_index", align 4
@bdisp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 1349, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to install irq\0A\00", [41 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.25 = internal global ptr @bdisp_probe._entry.23, section ".printk_index", align 4
@bdisp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 1356, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to register\0A\00", [44 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.28 = internal global ptr @bdisp_probe._entry.26, section ".printk_index", align 4
@bdisp_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 1367, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to set PM\0A\00", [46 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.31 = internal global ptr @bdisp_probe._entry.29, section ".printk_index", align 4
@bdisp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 1373, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no memory for filters\0A\00", [41 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.34 = internal global ptr @bdisp_probe._entry.32, section ".printk_index", align 4
@bdisp_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 1381, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.36 = internal global ptr @bdisp_probe._entry.35, section ".printk_index", align 4
@bdisp_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 1386, ptr @.str.39, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s%d registered as /dev/video%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bdisp_probe._entry_ptr.40 = internal global ptr @bdisp_probe._entry.37, section ".printk_index", align 4
@bdisp_irq_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1149, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device work timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_irq_timeout\00", [46 x i8] zeroinitializer }, align 32
@bdisp_irq_timeout._entry_ptr = internal global ptr @bdisp_irq_timeout._entry, section ".printk_index", align 4
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Null hardware context\0A\00", [41 x i8] zeroinitializer }, align 32
@bdisp_job_finish.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bdisp_job_finish\00", [47 x i8] zeroinitializer }, align 32
@bdisp_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @bdisp_open, ptr @bdisp_release }, [60 x i8] zeroinitializer }, align 32
@bdisp_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @bdisp_querycap, ptr @bdisp_enum_fmt, ptr null, ptr @bdisp_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_g_fmt, ptr null, ptr @bdisp_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_s_fmt, ptr null, ptr @bdisp_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_try_fmt, ptr null, ptr @bdisp_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_g_selection, ptr @bdisp_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@bdisp_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @bdisp_device_run, ptr null, ptr @bdisp_job_abort }, [20 x i8] zeroinitializer }, align 32
@bdisp_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1065, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdisp_register_device\00", [42 x i8] zeroinitializer }, align 32
@bdisp_register_device._entry_ptr = internal global ptr @bdisp_register_device._entry, section ".printk_index", align 4
@bdisp_register_device._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1072, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@bdisp_register_device._entry_ptr.50 = internal global ptr @bdisp_register_device._entry.48, section ".printk_index", align 4
@bdisp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 593, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no memory for nodes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdisp_open\00", [21 x i8] zeroinitializer }, align 32
@bdisp_open._entry_ptr = internal global ptr @bdisp_open._entry, section ".printk_index", align 4
@bdisp_open._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 602, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to create control\0A\00", [38 x i8] zeroinitializer }, align 32
@bdisp_open._entry_ptr.55 = internal global ptr @bdisp_open._entry.53, section ".printk_index", align 4
@bdisp_dflt_fmt = internal constant { %struct.bdisp_frame, [36 x i8] } { %struct.bdisp_frame { i32 1920, i32 1080, ptr @bdisp_formats, i32 1, i32 7680, i32 8294400, i32 3, %struct.v4l2_rect { i32 0, i32 0, i32 1920, i32 1080 }, [4 x i32] zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@bdisp_open._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 619, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize m2m context\0A\00", [62 x i8] zeroinitializer }, align 32
@bdisp_open._entry_ptr.58 = internal global ptr @bdisp_open._entry.56, section ".printk_index", align 4
@bdisp_open.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.59, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver opened, ctx = 0x%p\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bdisp_ctrls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bdisp_v4l2:413:(&ctx->ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@bdisp_c_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @bdisp_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__bdisp_s_ctrl._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 381, ptr @.str.15, ptr @.str.16 }, align 1
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown control %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__bdisp_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@__bdisp_s_ctrl._entry_ptr = internal global ptr @__bdisp_s_ctrl._entry, section ".printk_index", align 4
@bdisp_formats = internal constant { [6 x %struct.bdisp_fmt], [56 x i8] } { [6 x %struct.bdisp_fmt] [%struct.bdisp_fmt { i32 875713089, i8 1, i8 32, i8 32, i8 1, i8 1 }, %struct.bdisp_fmt { i32 875713112, i8 1, i8 32, i8 32, i8 1, i8 1 }, %struct.bdisp_fmt { i32 1346520914, i8 1, i8 16, i8 16, i8 1, i8 1 }, %struct.bdisp_fmt { i32 842094158, i8 2, i8 12, i8 8, i8 2, i8 2 }, %struct.bdisp_fmt { i32 859981650, i8 1, i8 24, i8 24, i8 1, i8 1 }, %struct.bdisp_fmt { i32 842093913, i8 3, i8 12, i8 8, i8 2, i8 2 }], [56 x i8] zeroinitializer }, align 32
@bdisp_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @bdisp_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @bdisp_buf_prepare, ptr null, ptr null, ptr @bdisp_start_streaming, ptr @bdisp_stop_streaming, ptr @bdisp_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@bdisp_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 448, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid frame (%p)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_queue_setup\00", [46 x i8] zeroinitializer }, align 32
@bdisp_queue_setup._entry_ptr = internal global ptr @bdisp_queue_setup._entry, section ".printk_index", align 4
@bdisp_queue_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 453, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid format\0A\00", [16 x i8] zeroinitializer }, align 32
@bdisp_queue_setup._entry_ptr.67 = internal global ptr @bdisp_queue_setup._entry.65, section ".printk_index", align 4
@ctx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 174, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wrong buffer/video queue type (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx_get_frame\00", [18 x i8] zeroinitializer }, align 32
@ctx_get_frame._entry_ptr = internal global ptr @ctx_get_frame._entry, section ".printk_index", align 4
@bdisp_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.70, ptr @.str.2, i32 472, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_buf_prepare\00", [46 x i8] zeroinitializer }, align 32
@bdisp_buf_prepare._entry_ptr = internal global ptr @bdisp_buf_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@bdisp_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 505, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set runtime PM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdisp_start_streaming\00", [42 x i8] zeroinitializer }, align 32
@bdisp_start_streaming._entry_ptr = internal global ptr @bdisp_start_streaming._entry, section ".printk_index", align 4
@bdisp_ctx_stop_req.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdisp_ctx_stop_req\00", [45 x i8] zeroinitializer }, align 32
@bdisp_ctx_stop_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.74, ptr @.str.2, i32 229, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s IRQ timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@bdisp_ctx_stop_req._entry_ptr = internal global ptr @bdisp_ctx_stop_req._entry, section ".printk_index", align 4
@bdisp_buf_queue.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdisp_buf_queue\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0 data buffer, skip it\0A\00", [40 x i8] zeroinitializer }, align 32
@bdisp_release.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.3, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdisp_release\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"platform:%s%d\00", [18 x i8] zeroinitializer }, align 32
@bdisp_enum_fmt.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdisp_enum_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No YU12 on capture\0A\00", [44 x i8] zeroinitializer }, align 32
@bdisp_g_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.82, ptr @.str.2, i32 724, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdisp_g_fmt\00", [20 x i8] zeroinitializer }, align 32
@bdisp_g_fmt._entry_ptr = internal global ptr @bdisp_g_fmt._entry, section ".printk_index", align 4
@bdisp_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 802, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot set format\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdisp_s_fmt\00", [20 x i8] zeroinitializer }, align 32
@bdisp_s_fmt._entry_ptr = internal global ptr @bdisp_s_fmt._entry, section ".printk_index", align 4
@bdisp_s_fmt._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 808, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"queue (%d) busy\0A\00", [47 x i8] zeroinitializer }, align 32
@bdisp_s_fmt._entry_ptr.87 = internal global ptr @bdisp_s_fmt._entry.85, section ".printk_index", align 4
@bdisp_s_fmt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 818, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown format 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@bdisp_s_fmt._entry_ptr.90 = internal global ptr @bdisp_s_fmt._entry.88, section ".printk_index", align 4
@bdisp_try_fmt.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.89, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdisp_try_fmt\00", [18 x i8] zeroinitializer }, align 32
@bdisp_try_fmt.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.81, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@bdisp_try_fmt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s size updated: %dx%d -> %dx%d\0A\00", [63 x i8] zeroinitializer }, align 32
@bdisp_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1006, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"src not defined\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdisp_streamon\00", [17 x i8] zeroinitializer }, align 32
@bdisp_streamon._entry_ptr = internal global ptr @bdisp_streamon._entry, section ".printk_index", align 4
@bdisp_streamon._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1012, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dst not defined\0A\00", [47 x i8] zeroinitializer }, align 32
@bdisp_streamon._entry_ptr.97 = internal global ptr @bdisp_streamon._entry.95, section ".printk_index", align 4
@bdisp_g_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.98, ptr @.str.2, i32 851, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_g_selection\00", [46 x i8] zeroinitializer }, align 32
@bdisp_g_selection._entry_ptr = internal global ptr @bdisp_g_selection._entry, section ".printk_index", align 4
@bdisp_g_selection._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 871, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid target\0A\00", [16 x i8] zeroinitializer }, align 32
@bdisp_g_selection._entry_ptr.101 = internal global ptr @bdisp_g_selection._entry.99, section ".printk_index", align 4
@bdisp_g_selection._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 892, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@bdisp_g_selection._entry_ptr.103 = internal global ptr @bdisp_g_selection._entry.102, section ".printk_index", align 4
@bdisp_g_selection._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.98, ptr @.str.2, i32 898, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid type\0A\00", [18 x i8] zeroinitializer }, align 32
@bdisp_g_selection._entry_ptr.106 = internal global ptr @bdisp_g_selection._entry.104, section ".printk_index", align 4
@bdisp_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 938, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid type / target\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_s_selection\00", [46 x i8] zeroinitializer }, align 32
@bdisp_s_selection._entry_ptr = internal global ptr @bdisp_s_selection._entry, section ".printk_index", align 4
@bdisp_s_selection._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.108, ptr @.str.2, i32 944, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@bdisp_s_selection._entry_ptr.110 = internal global ptr @bdisp_s_selection._entry.109, section ".printk_index", align 4
@bdisp_s_selection._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.2, i32 960, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid crop: %dx%d@(%d,%d) vs frame: %dx%d\0A\00", [51 x i8] zeroinitializer }, align 32
@bdisp_s_selection._entry_ptr.113 = internal global ptr @bdisp_s_selection._entry.111, section ".printk_index", align 4
@bdisp_s_selection._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.2, i32 973, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@bdisp_s_selection._entry_ptr.115 = internal global ptr @bdisp_s_selection._entry.114, section ".printk_index", align 4
@bdisp_s_selection.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.116, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s crop updated: %dx%d@(%d,%d) -> %dx%d@(%d,%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@bdisp_device_run.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bdisp_device_run\00", [47 x i8] zeroinitializer }, align 32
@bdisp_device_run.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctx updated: %p -> %p\0A\00", [41 x i8] zeroinitializer }, align 32
@bdisp_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 335, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot get address\0A\00", [44 x i8] zeroinitializer }, align 32
@bdisp_device_run._entry_ptr = internal global ptr @bdisp_device_run._entry, section ".printk_index", align 4
@bdisp_device_run._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.117, ptr @.str.2, i32 343, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not get HW ready\0A\00", [40 x i8] zeroinitializer }, align 32
@bdisp_device_run._entry_ptr.122 = internal global ptr @bdisp_device_run._entry.120, section ".printk_index", align 4
@bdisp_device_run._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.117, ptr @.str.2, i32 349, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not send HW request\0A\00", [37 x i8] zeroinitializer }, align 32
@bdisp_device_run._entry_ptr.125 = internal global ptr @bdisp_device_run._entry.123, section ".printk_index", align 4
@bdisp_get_addr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.127, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdisp_get_addr\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ignoring some planes\0A\00", [42 x i8] zeroinitializer }, align 32
@bdisp_get_addr.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.128, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s plane[0]=%pad plane[1]=%pad plane[2]=%pad\0A\00", [50 x i8] zeroinitializer }, align 32
@bdisp_remove.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.2, ptr @.str.130, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdisp_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s driver unloaded\0A\00", [44 x i8] zeroinitializer }, align 32
@bdisp_m2m_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.131, ptr @.str.2, i32 1181, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdisp_m2m_suspend\00", [46 x i8] zeroinitializer }, align 32
@bdisp_m2m_suspend._entry_ptr = internal global ptr @bdisp_m2m_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963796, i64 9963797]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713089, i64 875713112, i64 1346520914]
@__sancov_gen_cov_switch_values.136 = internal global [8 x i64] [i64 6, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713089, i64 875713112, i64 1346520914]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 32, i64 256, i64 257, i64 258, i64 259]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"bdisp_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1417, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1421, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"bdisp_match_types\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1408, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"bdisp_pm_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1253, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1291, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1310, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1311, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1312, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1314, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1315, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1326, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1333, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1340, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1349, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1356, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1367, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1373, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1381, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1385, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1149, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 185, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 188, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [11 x i8] c"bdisp_fops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 675, i32 42 }
@___asan_gen_.275 = private unnamed_addr constant [16 x i8] c"bdisp_ioctl_ops\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1019, i32 36 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1057, i32 55 }
@___asan_gen_.281 = private unnamed_addr constant [14 x i8] c"bdisp_m2m_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 363, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1065, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1071, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 593, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 602, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"bdisp_dflt_fmt\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 108, i32 33 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 619, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 627, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 413, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [12 x i8] c"bdisp_c_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 404, i32 35 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 381, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [14 x i8] c"bdisp_formats\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 45, i32 31 }
@___asan_gen_.344 = private unnamed_addr constant [11 x i8] c"bdisp_qops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 530, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 448, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 453, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 173, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 472, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1163, i32 7 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 505, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 214, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 229, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 489, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 652, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 692, i32 49 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 709, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 724, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 802, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 808, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 817, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 750, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 778, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1006, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1012, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 851, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 871, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 892, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 898, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 938, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 944, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 957, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 970, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 986, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 316, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 320, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 335, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 343, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 349, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 272, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 274, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1279, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.552 = private constant [49 x i8] c"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1181, i32 3 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__bdisp_s_ctrl._entry, ptr @__bdisp_s_ctrl._entry_ptr, ptr @__exitcall_bdisp_driver_exit, ptr @__initcall__kmod_bdisp__315_1427_bdisp_driver_init6, ptr @bdisp_buf_prepare._entry, ptr @bdisp_buf_prepare._entry_ptr, ptr @bdisp_ctx_stop_req._entry, ptr @bdisp_ctx_stop_req._entry_ptr, ptr @bdisp_device_run._entry, ptr @bdisp_device_run._entry.120, ptr @bdisp_device_run._entry.123, ptr @bdisp_device_run._entry_ptr, ptr @bdisp_device_run._entry_ptr.122, ptr @bdisp_device_run._entry_ptr.125, ptr @bdisp_driver_exit, ptr @bdisp_g_fmt._entry, ptr @bdisp_g_fmt._entry_ptr, ptr @bdisp_g_selection._entry, ptr @bdisp_g_selection._entry.102, ptr @bdisp_g_selection._entry.104, ptr @bdisp_g_selection._entry.99, ptr @bdisp_g_selection._entry_ptr, ptr @bdisp_g_selection._entry_ptr.101, ptr @bdisp_g_selection._entry_ptr.103, ptr @bdisp_g_selection._entry_ptr.106, ptr @bdisp_irq_timeout._entry, ptr @bdisp_irq_timeout._entry_ptr, ptr @bdisp_m2m_suspend._entry, ptr @bdisp_m2m_suspend._entry_ptr, ptr @bdisp_open._entry, ptr @bdisp_open._entry.53, ptr @bdisp_open._entry.56, ptr @bdisp_open._entry_ptr, ptr @bdisp_open._entry_ptr.55, ptr @bdisp_open._entry_ptr.58, ptr @bdisp_probe._entry, ptr @bdisp_probe._entry.17, ptr @bdisp_probe._entry.20, ptr @bdisp_probe._entry.23, ptr @bdisp_probe._entry.26, ptr @bdisp_probe._entry.29, ptr @bdisp_probe._entry.32, ptr @bdisp_probe._entry.35, ptr @bdisp_probe._entry.37, ptr @bdisp_probe._entry_ptr, ptr @bdisp_probe._entry_ptr.19, ptr @bdisp_probe._entry_ptr.22, ptr @bdisp_probe._entry_ptr.25, ptr @bdisp_probe._entry_ptr.28, ptr @bdisp_probe._entry_ptr.31, ptr @bdisp_probe._entry_ptr.34, ptr @bdisp_probe._entry_ptr.36, ptr @bdisp_probe._entry_ptr.40, ptr @bdisp_queue_setup._entry, ptr @bdisp_queue_setup._entry.65, ptr @bdisp_queue_setup._entry_ptr, ptr @bdisp_queue_setup._entry_ptr.67, ptr @bdisp_register_device._entry, ptr @bdisp_register_device._entry.48, ptr @bdisp_register_device._entry_ptr, ptr @bdisp_register_device._entry_ptr.50, ptr @bdisp_s_fmt._entry, ptr @bdisp_s_fmt._entry.85, ptr @bdisp_s_fmt._entry.88, ptr @bdisp_s_fmt._entry_ptr, ptr @bdisp_s_fmt._entry_ptr.87, ptr @bdisp_s_fmt._entry_ptr.90, ptr @bdisp_s_selection._entry, ptr @bdisp_s_selection._entry.109, ptr @bdisp_s_selection._entry.111, ptr @bdisp_s_selection._entry.114, ptr @bdisp_s_selection._entry_ptr, ptr @bdisp_s_selection._entry_ptr.110, ptr @bdisp_s_selection._entry_ptr.113, ptr @bdisp_s_selection._entry_ptr.115, ptr @bdisp_start_streaming._entry, ptr @bdisp_start_streaming._entry_ptr, ptr @bdisp_streamon._entry, ptr @bdisp_streamon._entry.95, ptr @bdisp_streamon._entry_ptr, ptr @bdisp_streamon._entry_ptr.97, ptr @ctx_get_frame._entry, ptr @ctx_get_frame._entry_ptr, ptr @bdisp_driver, ptr @.str, ptr @bdisp_match_types, ptr @bdisp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bdisp_probe.__key, ptr @.str.4, ptr @bdisp_probe.__key.5, ptr @.str.6, ptr @bdisp_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @bdisp_probe.__key.10, ptr @.str.11, ptr @bdisp_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @bdisp_fops, ptr @bdisp_ioctl_ops, ptr @.str.45, ptr @bdisp_m2m_ops, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @bdisp_dflt_fmt, ptr @.str.57, ptr @.str.59, ptr @bdisp_ctrls_create._key, ptr @.str.60, ptr @bdisp_c_ops, ptr @.str.61, ptr @.str.62, ptr @bdisp_formats, ptr @bdisp_qops, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.112, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_match_types to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_irq_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_register_device._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_open._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_dflt_fmt to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_open._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_ctrls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_c_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_queue_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_ctx_stop_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_g_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_fmt._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_fmt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_streamon._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_g_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_g_selection._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_g_selection._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_g_selection._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_selection._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_selection._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_s_selection._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_device_run._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_device_run._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_m2m_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bdisp_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @bdisp_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_probe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_probe.__UNIQUE_ID_ddebug314, ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2008, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  %pdev12 = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev12 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev13, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 @of_alias_get_id(ptr noundef nonnull %5, ptr noundef nonnull @.str) #10
  br label %do.body23

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %id19 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id19, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.else, %if.then15
  %conv.sink.in = phi i32 [ %7, %if.else ], [ %call18, %if.then15 ]
  %conv.sink = trunc i32 %conv.sink.in to i16
  %8 = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.sink, ptr %8, align 8
  %irq_queue = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @bdisp_probe.__key) #10
  %timeout_work = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #10
  %10 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %timeout_work, align 8
  %lockdep_map = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @bdisp_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry34 = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %11 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bdisp_irq_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @bdisp_probe.__key.7) #10
  %call45 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str) #10
  %work_queue = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 12
  %14 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call45, ptr %work_queue, align 4
  %slock = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.11, ptr noundef nonnull @bdisp_probe.__key.10, i16 noundef signext 3) #10
  %lock = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @bdisp_probe.__key.12) #10
  %call53 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call53, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end59

if.then56:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call53 to i32
  br label %err_wq

if.end59:                                         ; preds = %do.body23
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str) #10
  %clock = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call60, ptr %clock, align 8
  %cmp.i216 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %err_wq

if.end69:                                         ; preds = %if.end59
  %call71 = tail call i32 @clk_prepare(ptr noundef %call60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #13
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock, align 8
  br label %err_wq

if.end79:                                         ; preds = %if.end69
  %call80 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end85, label %if.end86

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  br label %err_clk

if.end86:                                         ; preds = %if.end79
  %22 = ptrtoint ptr %call80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call80, align 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call87 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %23, ptr noundef nonnull @bdisp_irq_handler, ptr noundef nonnull @bdisp_irq_thread, i32 noundef 8192, ptr noundef %25, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end93, label %do.end92

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #13
  br label %err_clk

if.end93:                                         ; preds = %if.end86
  %call94 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end100, label %do.end99

do.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %err_clk

if.end100:                                        ; preds = %if.end93
  tail call void @bdisp_debugfs_create(ptr noundef nonnull %call.i) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call101 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end107, label %if.end108

do.end107:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #13
  br label %err_remove

if.end108:                                        ; preds = %if.end100
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13, align 4
  %call110 = tail call i32 @bdisp_hw_alloc_filters(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.33) #13
  br label %err_pm

if.end117:                                        ; preds = %if.end108
  %call118 = tail call fastcc i32 @bdisp_register_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.end127, label %do.end123

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  %30 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev13, align 4
  tail call void @bdisp_hw_free_filters(ptr noundef %31) #10
  br label %err_pm

do.end127:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %8, align 8
  %conv129 = zext i16 %33 to i32
  %num = getelementptr inbounds %struct.bdisp_dev, ptr %call.i, i32 0, i32 1, i32 16
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num, align 4
  %conv130 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str, i32 noundef %conv129, i32 noundef %conv130) #13
  %call.i217 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #10
  br label %cleanup

err_pm:                                           ; preds = %do.end123, %do.end115
  %ret.0 = phi i32 [ -12, %do.end115 ], [ %call118, %do.end123 ]
  %call.i218 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #10
  br label %err_remove

err_remove:                                       ; preds = %err_pm, %do.end107
  %ret.1 = phi i32 [ %call101, %do.end107 ], [ %ret.0, %err_pm ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @bdisp_debugfs_remove(ptr noundef nonnull %call.i) #10
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #10
  br label %err_clk

err_clk:                                          ; preds = %err_remove, %do.end99, %do.end92, %do.end85
  %ret.2 = phi i32 [ %call87, %do.end92 ], [ %call94, %do.end99 ], [ %ret.1, %err_remove ], [ -22, %do.end85 ]
  %36 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clock, align 8
  %cmp.i219 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %err_clk.err_wq_crit_edge, label %if.then137

err_clk.err_wq_crit_edge:                         ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_wq

if.then137:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %37) #10
  br label %err_wq

err_wq:                                           ; preds = %if.then137, %err_clk.err_wq_crit_edge, %do.end76, %do.end66, %if.then56
  %ret.3 = phi i32 [ %16, %if.then56 ], [ %20, %do.end66 ], [ %call71, %do.end76 ], [ %ret.2, %err_clk.err_wq_crit_edge ], [ %ret.2, %if.then137 ]
  %38 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %err_wq, %do.end127, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_wq ], [ 0, %do.end127 ], [ -12, %do.end.cleanup_crit_edge ], [ %call.i.i, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bdisp_unregister_device.exit_crit_edge, label %if.end.i

entry.bdisp_unregister_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdisp_unregister_device.exit

if.end.i:                                         ; preds = %entry
  %m2m.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7
  %m2m_dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_m2m_release(ptr noundef nonnull %3) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %4 = ptrtoint ptr %m2m.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m.i, align 4
  tail call void @video_unregister_device(ptr noundef %5) #10
  br label %bdisp_unregister_device.exit

bdisp_unregister_device.exit:                     ; preds = %if.end5.i, %entry.bdisp_unregister_device.exit_crit_edge
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @bdisp_hw_free_filters(ptr noundef %7) #10
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @bdisp_debugfs_remove(ptr noundef %1) #10
  tail call void @v4l2_device_unregister(ptr noundef %1) #10
  %clock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock, align 8
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bdisp_unregister_device.exit.if.end_crit_edge, label %if.then

bdisp_unregister_device.exit.if.end_crit_edge:    ; preds = %bdisp_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %bdisp_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %bdisp_unregister_device.exit.if.end_crit_edge
  %work_queue = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_remove.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_remove, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !291

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_remove.__UNIQUE_ID_ddebug313, ptr noundef %dev1, ptr noundef nonnull @.str.130, ptr noundef %13) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_irq_timeout(ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptr, i32 -1712
  %m2m_dev = getelementptr i8, ptr %ptr, i32 -80
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call1 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #10
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41) #13
  %slock = getelementptr i8, ptr %ptr, i32 -224
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %state = getelementptr i8, ptr %ptr, i32 -68
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #10
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  %call3 = tail call i32 @bdisp_hw_reset(ptr noundef %add.ptr) #10
  tail call fastcc void @bdisp_job_finish(ptr noundef %call1, i32 noundef 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_irq_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bdisp_hw_get_and_clear_irq(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 2, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_irq_thread(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  tail call void @bdisp_dbg_perf_end(ptr noundef %priv) #10
  %timeout_work = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 13
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #10
  %state = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 8
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.isr_unlock_crit_edge, label %if.end

entry.isr_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isr_unlock

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #10
  %irq_queue = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %isr_unlock

if.end7:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call8 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.isr_unlock_crit_edge, label %lor.lhs.false

if.end7.isr_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %isr_unlock

lor.lhs.false:                                    ; preds = %if.end7
  %m2m_ctx = getelementptr inbounds %struct.bdisp_ctx, ptr %call8, i32 0, i32 7, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %lor.lhs.false.isr_unlock_crit_edge, label %if.end12

lor.lhs.false.isr_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %isr_unlock

if.end12:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  tail call fastcc void @bdisp_job_finish(ptr noundef nonnull %call8, i32 noundef 5)
  %bdisp_dev.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call8, i32 0, i32 4
  %4 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdisp_dev.i, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call8, i32 0, i32 2
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdisp_dev.i, align 4
  %slock8.i = getelementptr inbounds %struct.bdisp_dev, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8.i, i32 noundef %call2.i) #10
  br i1 %cmp5.i.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdisp_dev.i, align 4
  %slock.i35 = getelementptr inbounds %struct.bdisp_dev, ptr %11, i32 0, i32 4
  %call2.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i35) #10
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and.i37 = and i32 %13, -9
  store i32 %and.i37, ptr %state.i, align 4
  %14 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdisp_dev.i, align 4
  %slock7.i = getelementptr inbounds %struct.bdisp_dev, ptr %15, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i, i32 noundef %call2.i36) #10
  %irq_queue16 = getelementptr inbounds %struct.bdisp_dev, ptr %priv, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %irq_queue16, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

isr_unlock:                                       ; preds = %lor.lhs.false.isr_unlock_crit_edge, %if.end7.isr_unlock_crit_edge, %if.then5, %entry.isr_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  br label %cleanup

cleanup:                                          ; preds = %isr_unlock, %if.then15, %if.end12.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_debugfs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !293
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_alloc_filters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_register_device(ptr noundef %bdisp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bdisp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1
  %fops = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bdisp_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 24
  %1 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bdisp_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 23
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 5
  %lock4 = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 26
  %3 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lock, ptr %lock4, align 8
  %vfl_dir = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %vfl_dir, align 4
  %v4l2_dev7 = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %v4l2_dev7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bdisp, ptr %v4l2_dev7, align 4
  %device_caps = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67141632, ptr %device_caps, align 8
  %name = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 12
  %id = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 6
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id, align 8
  %conv = zext i16 %8 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str, i32 noundef %conv)
  %driver_data.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 1, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bdisp, ptr %driver_data.i.i, align 4
  %m2m = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 7
  %10 = ptrtoint ptr %m2m to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vdev, ptr %m2m, align 4
  %call13 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @bdisp_m2m_ops) #10
  %m2m_dev = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.46) #13
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 3
  %21 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #13
  %23 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %call.i, %do.end29 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_hw_free_filters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdisp_job_finish(ptr noundef readonly %ctx, i32 noundef %vb_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 7, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %do.body25, !prof !295

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef 9, ptr noundef nonnull @.str.43) #10
  br label %cleanup

do.body25:                                        ; preds = %lor.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_job_finish.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_job_finish, %if.then34)) #10
          to label %do.end37 [label %if.then34], !srcloc !291

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_job_finish.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body25
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i75 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  %tobool44.not = icmp eq ptr %call.i, null
  %tobool45.not = icmp eq ptr %call.i75, null
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %do.end37.cleanup_crit_edge, label %if.then46

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %timestamp, align 8
  %timestamp48 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i75, i32 0, i32 5
  %12 = ptrtoint ptr %timestamp48 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %timestamp48, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i75, i32 0, i32 3
  %timecode49 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %timecode, ptr %timecode49, i32 16)
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i75, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, -458753
  store i32 %and, ptr %flags, align 8
  %flags50 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags50, align 8
  %and51 = and i32 %17, 458752
  %or = or i32 %and51, %and
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %vb_state) #10
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i75, i32 noundef %vb_state) #10
  %bdisp_dev53 = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %18 = ptrtoint ptr %bdisp_dev53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdisp_dev53, align 4
  %m2m_dev = getelementptr inbounds %struct.bdisp_dev, ptr %19, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_dev, align 4
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %21, ptr noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.end37.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_get_and_clear_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_dbg_perf_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 552) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %bdisp_dev, align 8
  %call6 = tail call i32 @bdisp_hw_alloc_nodes(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51) #13
  br label %mem_ctx

if.end9:                                          ; preds = %if.end5
  %fh = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 7
  %m2m = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %m2m to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m, align 4
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %7) #10
  %ctrls_rdy.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrls_rdy.i, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %if.end9
  %ctrl_handler.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 8
  %call.i87 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 10, ptr noundef nonnull @bdisp_ctrls_create._key, ptr noundef nonnull @.str.60) #10
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @bdisp_c_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %bdisp_ctrls.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %bdisp_ctrls.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %bdisp_ctrls.i, align 4
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @bdisp_c_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %vflip.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %vflip.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %vflip.i, align 8
  %error.i = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 8, i32 9
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %do.end15

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ctrls_rdy.i, align 4
  br label %if.end17

do.end15:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #10
  %dev16 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.54) #13
  br label %error_fh

if.end17:                                         ; preds = %if.end12.i, %if.end9.if.end17_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 8
  %ctrl_handler19 = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %ctrl_handler19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctrl_handler, ptr %ctrl_handler19, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #10
  %19 = call ptr @memcpy(ptr %call7.i.i, ptr @bdisp_dflt_fmt, i32 60)
  %dst = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %dst, ptr @bdisp_dflt_fmt, i32 60)
  %m2m_dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_dev, align 4
  %call23 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %22, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #10
  %m2m_ctx = getelementptr inbounds %struct.bdisp_ctx, ptr %call7.i.i, i32 0, i32 7, i32 10
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call23, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.end17
  %dev32 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.57) #13
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 8
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrls_rdy.i, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i90 = icmp eq i8 %30, 0
  br i1 %tobool.not.i90, label %do.end31.bdisp_ctrls_delete.exit_crit_edge, label %if.then.i

do.end31.bdisp_ctrls_delete.exit_crit_edge:       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdisp_ctrls_delete.exit

if.then.i:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  %31 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ctrls_rdy.i, align 4
  br label %bdisp_ctrls_delete.exit

bdisp_ctrls_delete.exit:                          ; preds = %if.then.i, %do.end31.bdisp_ctrls_delete.exit_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %fh) #10
  br label %error_fh

if.end36:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %refcnt, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %refcnt, align 4
  %state = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_open.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_open, %if.then43)) #10
          to label %cleanup.sink.split [label %if.then43], !srcloc !291

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %dev44 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_open.__UNIQUE_ID_ddebug306, ptr noundef %35, ptr noundef nonnull @.str.59, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup.sink.split

error_fh:                                         ; preds = %bdisp_ctrls_delete.exit, %do.end15
  %ret.0 = phi i32 [ %13, %do.end15 ], [ %28, %bdisp_ctrls_delete.exit ]
  tail call void @v4l2_fh_exit(ptr noundef %fh) #10
  tail call void @bdisp_hw_free_nodes(ptr noundef nonnull %call7.i.i) #10
  br label %mem_ctx

mem_ctx:                                          ; preds = %error_fh, %do.end
  %ret.1 = phi i32 [ -12, %do.end ], [ %ret.0, %error_fh ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mem_ctx, %if.then43, %if.end36, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end36 ], [ 0, %if.then43 ], [ %ret.1, %mem_ctx ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_release(ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %bdisp_dev = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_release.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_release.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %7) #10
  %ctrls_rdy.i = getelementptr i8, ptr %1, i32 384
  %8 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrls_rdy.i, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.bdisp_ctrls_delete.exit_crit_edge, label %if.then.i

do.end.bdisp_ctrls_delete.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdisp_ctrls_delete.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_handler.i = getelementptr i8, ptr %1, i32 192
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #10
  %10 = ptrtoint ptr %ctrls_rdy.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ctrls_rdy.i, align 4
  br label %bdisp_ctrls_delete.exit

bdisp_ctrls_delete.exit:                          ; preds = %if.then.i, %do.end.bdisp_ctrls_delete.exit_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  %refcnt = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then6, label %bdisp_ctrls_delete.exit.if.end7_crit_edge

bdisp_ctrls_delete.exit.if.end7_crit_edge:        ; preds = %bdisp_ctrls_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %bdisp_ctrls_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %bdisp_ctrls_delete.exit.if.end7_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -164
  tail call void @bdisp_hw_free_nodes(ptr noundef %add.ptr) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_alloc_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %src_vq, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 504)
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
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bdisp_qops, ptr %ops, align 4
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
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdisp_dev, align 4
  %lock = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 5
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %11 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock1, align 4
  %12 = load ptr, ptr %bdisp_dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev3, align 4
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
  store i32 1, ptr %dst_vq, align 4
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
  store ptr @bdisp_qops, ptr %ops7, align 4
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
  %25 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdisp_dev, align 4
  %lock12 = getelementptr inbounds %struct.bdisp_dev, ptr %26, i32 0, i32 5
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock12, ptr %lock13, align 4
  %28 = load ptr, ptr %bdisp_dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %31 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_hw_free_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %bdisp_dev = getelementptr i8, ptr %1, i32 -228
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %slock = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 20
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bdisp_s_ctrl.exit_crit_edge

entry.__bdisp_s_ctrl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bdisp_s_ctrl.exit

if.end.i:                                         ; preds = %entry
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end.i [
    i32 9963796, label %sw.bb.i
    i32 9963797, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %hflip.i = getelementptr i8, ptr %1, i32 -232
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %hflip.i, align 4
  %bf.shl.i = shl i8 %11, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %hflip.i, align 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val2.i, align 4
  %vflip.i = getelementptr i8, ptr %1, i32 -232
  %15 = trunc i32 %14 to i8
  %16 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load3.i = load i8, ptr %vflip.i, align 4
  %bf.value4.i = shl i8 %15, 6
  %bf.shl5.i = and i8 %bf.value4.i, 64
  %bf.clear6.i = and i8 %bf.load3.i, -65
  %bf.set7.i = or i8 %bf.shl5.i, %bf.clear6.i
  store i8 %bf.set7.i, ptr %vflip.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdisp_dev, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.61, i32 noundef %7) #13
  br label %__bdisp_s_ctrl.exit

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %state.i = getelementptr i8, ptr %1, i32 -236
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 4
  %or.i = or i32 %22, 1
  store i32 %or.i, ptr %state.i, align 4
  br label %__bdisp_s_ctrl.exit

__bdisp_s_ctrl.exit:                              ; preds = %sw.epilog.i, %do.end.i, %entry.__bdisp_s_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %sw.epilog.i ], [ 0, %entry.__bdisp_s_ctrl.exit_crit_edge ]
  %23 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdisp_dev, align 4
  %slock8 = getelementptr inbounds %struct.bdisp_dev, ptr %24, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8, i32 noundef %call3) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nb_buf, ptr nocapture noundef %nb_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %3, label %ctx_get_frame.exit.thread [
    i32 2, label %entry.ctx_get_frame.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 1
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev.i = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdisp_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.68, i32 noundef %3) #13
  br label %do.end

ctx_get_frame.exit:                               ; preds = %sw.bb1.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %dst.i, %sw.bb1.i ], [ %1, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.do.end_crit_edge, label %if.end

ctx_get_frame.exit.do.end_crit_edge:              ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ctx_get_frame.exit.do.end_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i29 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.do.end_crit_edge ]
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i29) #13
  %13 = ptrtoint ptr %retval.0.i29 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmt, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev8 = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %bdisp_dev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdisp_dev8, align 4
  %dev9 = getelementptr inbounds %struct.bdisp_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %20 = ptrtoint ptr %nb_planes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp = icmp ult i32 %23, %25
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %nb_planes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %nb_planes, align 4
  %sizeimage14 = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sizeimage14, align 4
  %29 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %do.end7, %do.end
  %retval.0 = phi i32 [ %13, %do.end ], [ %cond, %if.then12 ], [ 0, %if.end13 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %5, label %ctx_get_frame.exit.thread [
    i32 2, label %entry.ctx_get_frame.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 1
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev.i = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.68, i32 noundef %5) #13
  br label %do.end

ctx_get_frame.exit:                               ; preds = %sw.bb1.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %dst.i, %sw.bb1.i ], [ %3, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.do.end_crit_edge, label %if.end

ctx_get_frame.exit.do.end_crit_edge:              ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ctx_get_frame.exit.do.end_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i19 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.do.end_crit_edge ]
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i19) #13
  %15 = ptrtoint ptr %retval.0.i19 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %16 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vb, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  %sizeimage = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp1.i = icmp ult i32 %25, %23
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !297

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %27, %if.then38.i ], [ %23, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %15, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !293
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %7 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev, align 4
  %dev2 = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.72) #13
  %11 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp3 = icmp eq i32 %12, 2
  %m2m_ctx = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 7, i32 10
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  br i1 %cmp3, label %while.cond.preheader, label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %do.end
  %cap_q_ctx.i28 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 7
  %call.i2329 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i28) #10
  %tobool10.not30 = icmp eq ptr %call.i2329, null
  br i1 %tobool10.not30, label %while.cond6.preheader.cleanup_crit_edge, label %while.cond6.preheader.while.body11_crit_edge

while.cond6.preheader.while.body11_crit_edge:     ; preds = %while.cond6.preheader
  br label %while.body11

while.cond6.preheader.cleanup_crit_edge:          ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %out_q_ctx.i32 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %call.i2233 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i32) #10
  %tobool.not34 = icmp eq ptr %call.i2233, null
  br i1 %tobool.not34, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i2235 = phi ptr [ %call.i22, %while.body.while.body_crit_edge ], [ %call.i2233, %while.cond.preheader.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i2235, i32 noundef 3) #10
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %call.i22 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %tobool.not = icmp eq ptr %call.i22, null
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body11:                                     ; preds = %while.body11.while.body11_crit_edge, %while.cond6.preheader.while.body11_crit_edge
  %call.i2331 = phi ptr [ %call.i23, %while.body11.while.body11_crit_edge ], [ %call.i2329, %while.cond6.preheader.while.body11_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i2331, i32 noundef 3) #10
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 7
  %call.i23 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  %tobool10.not = icmp eq ptr %call.i23, null
  br i1 %tobool10.not, label %while.body11.cleanup_crit_edge, label %while.body11.while.body11_crit_edge

while.body11.while.body11_crit_edge:              ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body11

while.body11.cleanup_crit_edge:                   ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body11.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %while.cond6.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %while.cond.preheader.cleanup_crit_edge ], [ %call.i, %while.cond6.preheader.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ], [ %call.i, %while.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %call.i = tail call fastcc i32 @bdisp_ctx_stop_req(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -110
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bdisp_job_abort.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %bdisp_dev.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bdisp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdisp_dev.i.i, align 4
  %slock.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i.i) #10
  %state5.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state5.i.i, align 4
  %and.i.i = and i32 %7, -25
  store i32 %and.i.i, ptr %state5.i.i, align 4
  %8 = ptrtoint ptr %bdisp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdisp_dev.i.i, align 4
  %slock7.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i.i, i32 noundef %call2.i.i) #10
  tail call fastcc void @bdisp_job_finish(ptr noundef %1, i32 noundef 6) #10
  br label %__bdisp_job_abort.exit

__bdisp_job_abort.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i2 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.do.body_crit_edge, label %vb2_get_plane_payload.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

vb2_get_plane_payload.exit:                       ; preds = %entry
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %vb2_get_plane_payload.exit.do.body_crit_edge, label %if.end8

vb2_get_plane_payload.exit.do.body_crit_edge:     ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %vb2_get_plane_payload.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_buf_queue.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_buf_queue, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !291

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_buf_queue.__UNIQUE_ID_ddebug305, ptr noundef %11, ptr noundef nonnull @.str.77) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 5) #10
  br label %cleanup

if.end8:                                          ; preds = %vb2_get_plane_payload.exit
  %m2m_ctx = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 7, i32 10
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %13, ptr noundef %vb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_ctx_stop_req(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_ctx_stop_req.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_ctx_stop_req, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_ctx_stop_req.__UNIQUE_ID_ddebug300, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.74) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timeout_work = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 13
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #10
  %m2m_dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call5 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %7) #10
  %state = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp ne i32 %10, 0
  %cmp.not = icmp eq ptr %call5, %ctx
  %or.cond = select i1 %tobool7.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end9, label %do.end.cleanup67_crit_edge

do.end.cleanup67_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end9:                                          ; preds = %do.end
  %11 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdisp_dev, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %12, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state5.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 2
  %13 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %14, 8
  store i32 %or.i, ptr %state5.i, align 4
  %15 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdisp_dev, align 4
  %slock7.i = getelementptr inbounds %struct.bdisp_dev, ptr %16, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i, i32 noundef %call2.i) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 226) #10
  %17 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdisp_dev, align 4
  %slock.i89 = getelementptr inbounds %struct.bdisp_dev, ptr %18, i32 0, i32 4
  %call2.i90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i89) #10
  %19 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state5.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 0
  %21 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdisp_dev, align 4
  %slock8.i = getelementptr inbounds %struct.bdisp_dev, ptr %22, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8.i, i32 noundef %call2.i90) #10
  br i1 %cmp5.i.not, label %if.end9.cleanup67_crit_edge, label %if.then30

if.end9.cleanup67_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.then30:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %irq_queue = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then30
  %__ret31.0 = phi i32 [ 10, %if.then30 ], [ %call54, %cleanup ]
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %24 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdisp_dev, align 4
  %slock.i92 = getelementptr inbounds %struct.bdisp_dev, ptr %25, i32 0, i32 4
  %call2.i93 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i92) #10
  %26 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state5.i, align 4
  %and.i95 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %cmp5.i96.not = icmp eq i32 %and.i95, 0
  %28 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdisp_dev, align 4
  %slock8.i97 = getelementptr inbounds %struct.bdisp_dev, ptr %29, i32 0, i32 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8.i97, i32 noundef %call2.i93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.0)
  %tobool40.not = icmp eq i32 %__ret31.0, 0
  %30 = select i1 %cmp5.i96.not, i1 %tobool40.not, i1 false
  %__ret31.1 = select i1 %30, i32 1, i32 %__ret31.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1)
  %tobool46.not = icmp eq i32 %__ret31.1, 0
  %31 = select i1 %cmp5.i96.not, i1 true, i1 %tobool46.not
  br i1 %31, label %if.end57, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call i32 @schedule_timeout(i32 noundef %__ret31.1) #10
  br label %for.cond

if.end57:                                         ; preds = %for.cond
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %tobool46.not, label %do.end63, label %if.end57.cleanup67_crit_edge

if.end57.cleanup67_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdisp_dev, align 4
  %dev65 = getelementptr inbounds %struct.bdisp_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74) #13
  br label %cleanup67

cleanup67:                                        ; preds = %do.end63, %if.end57.cleanup67_crit_edge, %if.end9.cleanup67_crit_edge, %do.end.cleanup67_crit_edge
  %retval.0 = phi i32 [ -110, %do.end63 ], [ 0, %do.end.cleanup67_crit_edge ], [ 0, %if.end57.cleanup67_crit_edge ], [ 0, %if.end9.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  %pdev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %5, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %id = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 8
  %conv = zext i16 %11 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %3)
  %cmp2 = icmp eq i32 %3, 842093913
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %do.body, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_enum_fmt.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_enum_fmt, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !291

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %6 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_enum_fmt.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.81) #10
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %pixelformat12 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %pixelformat12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_g_fmt(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -164
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %1, label %ctx_get_frame.exit.thread [
    i32 2, label %entry.ctx_get_frame.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr i8, ptr %fh, i32 -104
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev.i = getelementptr i8, ptr %fh, i32 -36
  %3 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdisp_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.68, i32 noundef %1) #13
  br label %do.end

ctx_get_frame.exit:                               ; preds = %sw.bb1.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %dst.i, %sw.bb1.i ], [ %add.ptr, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.do.end_crit_edge, label %if.end

ctx_get_frame.exit.do.end_crit_edge:              ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ctx_get_frame.exit.do.end_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i34 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.do.end_crit_edge ]
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %7 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i34) #13
  %11 = ptrtoint ptr %retval.0.i34 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height4, align 4
  %fmt5 = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt5, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %pixelformat6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat6, align 4
  %field = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field, align 4
  %field7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %field7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %field7, align 4
  %bytesperline = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytesperline, align 4
  %bytesperline8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bytesperline8, align 4
  %sizeimage = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sizeimage, align 4
  %sizeimage9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %sizeimage9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sizeimage9, align 4
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp eq i32 %33, 2
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %colorspace = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 6
  %34 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorspace, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 3, %if.end.cond.end_crit_edge ]
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %colorspace11, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_s_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bdisp_try_fmt(ptr noundef %file, ptr noundef %fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %7) #10
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 28
  %8 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev8 = getelementptr i8, ptr %fh, i32 -36
  %9 = ptrtoint ptr %bdisp_dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdisp_dev8, align 4
  %dev9 = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.86, i32 noundef %14) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  %cond.v = select i1 %cmp, i32 -164, i32 -104
  %cond = getelementptr i8, ptr %fh, i32 %cond.v
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %18, label %do.end20 [
    i32 875713089, label %if.end11.if.end24_crit_edge
    i32 875713112, label %cleanup.fold.split.i
    i32 1346520914, label %cleanup.fold.split8.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 859981650, label %cleanup.fold.split10.i
    i32 842093913, label %cleanup.fold.split11.i
  ]

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cleanup.fold.split.i:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cleanup.fold.split8.i:                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cleanup.fold.split9.i:                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cleanup.fold.split10.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

cleanup.fold.split11.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %fmt14 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 2
  %20 = ptrtoint ptr %fmt14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fmt14, align 4
  %bdisp_dev21 = getelementptr i8, ptr %fh, i32 -36
  %21 = ptrtoint ptr %bdisp_dev21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdisp_dev21, align 4
  %dev22 = getelementptr inbounds %struct.bdisp_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 4
  %25 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.89, i32 noundef %26) #13
  br label %cleanup

if.end24:                                         ; preds = %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %if.end11.if.end24_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ @bdisp_formats, %if.end11.if.end24_crit_edge ]
  %fmt1486 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 2
  %27 = ptrtoint ptr %fmt1486 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i.ph, ptr %fmt1486, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmt, align 4
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cond, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %height26 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 1
  %33 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height26, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytesperline, align 4
  %bytesperline27 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 4
  %36 = ptrtoint ptr %bytesperline27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bytesperline27, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sizeimage, align 4
  %sizeimage28 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 5
  %39 = ptrtoint ptr %sizeimage28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sizeimage28, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %field, align 4
  %field29 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 3
  %42 = ptrtoint ptr %field29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %field29, align 4
  %43 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp31 = icmp eq i32 %44, 2
  br i1 %cmp31, label %if.then32, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %colorspace, align 4
  %colorspace33 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 6
  %47 = ptrtoint ptr %colorspace33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %colorspace33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end24.if.end34_crit_edge
  %48 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cond, align 4
  %crop = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 7
  %width36 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %width36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %width36, align 4
  %51 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height26, align 4
  %height39 = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height39, align 4
  %54 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.bdisp_frame, ptr %cond, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %top, align 4
  %56 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp43 = icmp eq i32 %57, 1
  %or = select i1 %cmp43, i32 5, i32 3
  %bdisp_dev.i = getelementptr i8, ptr %fh, i32 -36
  %58 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdisp_dev.i, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %59, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state5.i = getelementptr i8, ptr %fh, i32 -44
  %60 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %61, %or
  store i32 %or.i, ptr %state5.i, align 4
  %62 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdisp_dev.i, align 4
  %slock7.i = getelementptr inbounds %struct.bdisp_dev, ptr %63, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end20, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -16, %do.end7 ], [ 0, %if.end34 ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %1, label %do.body [
    i32 875713089, label %entry.if.end8_crit_edge
    i32 875713112, label %cleanup.fold.split.i
    i32 1346520914, label %cleanup.fold.split8.i
    i32 842094158, label %cleanup.fold.split9.i
    i32 859981650, label %cleanup.fold.split10.i
    i32 842093913, label %cleanup.fold.split11.i
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_try_fmt, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !291

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %3 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_try_fmt.__UNIQUE_ID_ddebug309, ptr noundef %6, ptr noundef nonnull @.str.89, i32 noundef %8) #10
  br label %cleanup

if.end8:                                          ; preds = %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end8_crit_edge
  %retval.0.i126.ph = phi ptr [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ @bdisp_formats, %entry.if.end8_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i126.ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i126.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %10)
  %cmp = icmp eq i32 %10, 842093913
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end8
  br i1 %cmp10, label %do.body12, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

do.body12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_try_fmt, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !291

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev25 = getelementptr i8, ptr %fh, i32 -36
  %13 = ptrtoint ptr %bdisp_dev25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdisp_dev25, align 4
  %dev26 = getelementptr inbounds %struct.bdisp_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_try_fmt.__UNIQUE_ID_ddebug310, ptr noundef %16, ptr noundef nonnull @.str.81) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end8
  br i1 %cmp10, label %if.end30.if.then34_crit_edge, label %if.end30.lor.lhs.false_crit_edge

if.end30.lor.lhs.false_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end30.if.then34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.end30.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp33.not = icmp eq i32 %18, 4
  br i1 %cmp33.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then34_crit_edge

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %if.end30.if.then34_crit_edge
  %field35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %lor.lhs.false.if.end36_crit_edge
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %w_align = getelementptr inbounds %struct.bdisp_fmt, ptr %retval.0.i126.ph, i32 0, i32 4
  %24 = ptrtoint ptr %w_align to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %w_align, align 1
  %26 = tail call i8 @llvm.cttz.i8(i8 %25, i1 true), !range !298
  %27 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %iszero = icmp eq i8 %25, 0
  %sub = select i1 %iszero, i32 -1, i32 %27
  %h_align = getelementptr inbounds %struct.bdisp_fmt, ptr %retval.0.i126.ph, i32 0, i32 5
  %28 = ptrtoint ptr %h_align to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %h_align, align 4
  %30 = tail call i8 @llvm.cttz.i8(i8 %29, i1 true), !range !298
  %31 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %iszero40 = icmp eq i8 %29, 0
  %sub42 = select i1 %iszero40, i32 -1, i32 %31
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 1, i32 noundef 8191, i32 noundef %sub, ptr noundef %height, i32 noundef 1, i32 noundef 8191, i32 noundef %sub42, i32 noundef 0) #10
  %32 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %21)
  %cmp44.not = icmp eq i32 %33, %21
  br i1 %cmp44.not, label %lor.lhs.false46, label %if.end36.do.body51_crit_edge

if.end36.do.body51_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

lor.lhs.false46:                                  ; preds = %if.end36
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %23)
  %cmp48.not = icmp eq i32 %35, %23
  br i1 %cmp48.not, label %lor.lhs.false46.if.end71_crit_edge, label %lor.lhs.false46.do.body51_crit_edge

lor.lhs.false46.do.body51_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

lor.lhs.false46.if.end71_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.body51:                                        ; preds = %lor.lhs.false46.do.body51_crit_edge, %if.end36.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_try_fmt, %if.then63)) #10
          to label %if.end71 [label %if.then63], !srcloc !291

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev64 = getelementptr i8, ptr %fh, i32 -36
  %36 = ptrtoint ptr %bdisp_dev64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdisp_dev64, align 4
  %dev65 = getelementptr inbounds %struct.bdisp_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev65, align 4
  %40 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt, align 4
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_try_fmt.__UNIQUE_ID_ddebug311, ptr noundef %39, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %21, i32 noundef %23, i32 noundef %41, i32 noundef %43) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %do.body51, %lor.lhs.false46.if.end71_crit_edge
  %44 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmt, align 4
  %bpp_plane0 = getelementptr inbounds %struct.bdisp_fmt, ptr %retval.0.i126.ph, i32 0, i32 3
  %46 = ptrtoint ptr %bpp_plane0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bpp_plane0, align 2
  %conv73 = zext i8 %47 to i32
  %mul = mul i32 %45, %conv73
  %div118 = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div118, ptr %bytesperline, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %mul76 = mul i32 %50, %45
  %bpp = getelementptr inbounds %struct.bdisp_fmt, ptr %retval.0.i126.ph, i32 0, i32 2
  %51 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bpp, align 1
  %conv77 = zext i8 %52 to i32
  %mul78 = mul i32 %mul76, %conv77
  %div79119 = lshr i32 %mul78, 3
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %53 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div79119, ptr %sizeimage, align 4
  %54 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp81 = icmp eq i32 %55, 1
  br i1 %cmp81, label %if.then83, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then83:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end71.cleanup_crit_edge, %if.then24, %do.body12, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then24 ], [ 0, %if.then83 ], [ 0, %if.end71.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body12 ]
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
define internal i32 @bdisp_streamon(ptr noundef %file, ptr nocapture noundef readonly %fh, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %type, label %entry.if.end10_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true2
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %bdisp_dev.i = getelementptr i8, ptr %fh, i32 -36
  %1 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdisp_dev.i, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %2, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state.i = getelementptr i8, ptr %fh, i32 -44
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 0
  %5 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdisp_dev.i, align 4
  %slock8.i = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8.i, i32 noundef %call2.i) #10
  br i1 %cmp5.i.not, label %do.end, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev.i, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.93) #13
  br label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %bdisp_dev.i19 = getelementptr i8, ptr %fh, i32 -36
  %11 = ptrtoint ptr %bdisp_dev.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdisp_dev.i19, align 4
  %slock.i20 = getelementptr inbounds %struct.bdisp_dev, ptr %12, i32 0, i32 4
  %call2.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i20) #10
  %state.i22 = getelementptr i8, ptr %fh, i32 -44
  %13 = ptrtoint ptr %state.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i22, align 4
  %and.i23 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %cmp5.i24.not = icmp eq i32 %and.i23, 0
  %15 = ptrtoint ptr %bdisp_dev.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdisp_dev.i19, align 4
  %slock8.i25 = getelementptr inbounds %struct.bdisp_dev, ptr %16, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock8.i25, i32 noundef %call2.i21) #10
  br i1 %cmp5.i24.not, label %do.end7, label %land.lhs.true2.if.end10_crit_edge

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %bdisp_dev.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdisp_dev.i19, align 4
  %dev9 = getelementptr inbounds %struct.bdisp_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.96) #13
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true2.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  %call12 = tail call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %22, i32 noundef %type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ -22, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_g_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -164
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %1, label %ctx_get_frame.exit.thread [
    i32 2, label %entry.ctx_get_frame.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.ctx_get_frame.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr i8, ptr %fh, i32 -104
  br label %ctx_get_frame.exit

ctx_get_frame.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev.i = getelementptr i8, ptr %fh, i32 -36
  %3 = ptrtoint ptr %bdisp_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdisp_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.68, i32 noundef %1) #13
  br label %do.end

ctx_get_frame.exit:                               ; preds = %sw.bb1.i, %entry.ctx_get_frame.exit_crit_edge
  %retval.0.i = phi ptr [ %dst.i, %sw.bb1.i ], [ %add.ptr, %entry.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ctx_get_frame.exit.do.end_crit_edge, label %if.end

ctx_get_frame.exit.do.end_crit_edge:              ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ctx_get_frame.exit.do.end_crit_edge, %ctx_get_frame.exit.thread
  %retval.0.i75 = phi ptr [ inttoptr (i32 -22 to ptr), %ctx_get_frame.exit.thread ], [ %retval.0.i, %ctx_get_frame.exit.do.end_crit_edge ]
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %7 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i75) #13
  %11 = ptrtoint ptr %retval.0.i75 to i32
  br label %cleanup

if.end:                                           ; preds = %ctx_get_frame.exit
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %13, label %do.end43 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %16, label %do.end14 [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb.sw.bb5_crit_edge
    i32 2, label %sw.bb.sw.bb5_crit_edge76
  ]

sw.bb.sw.bb5_crit_edge76:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge76
  %r6 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %19 = ptrtoint ptr %r6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %r6, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %top, align 4
  %21 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i, align 4
  %width9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %width9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width9, align 4
  %height = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %height11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height11, align 4
  br label %cleanup

do.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev15 = getelementptr i8, ptr %fh, i32 -36
  %27 = ptrtoint ptr %bdisp_dev15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdisp_dev15, align 4
  %dev16 = getelementptr inbounds %struct.bdisp_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.100) #13
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %target18 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %31 = ptrtoint ptr %target18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %target18, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %32, label %do.end36 [
    i32 256, label %sw.bb17.sw.bb19_crit_edge
    i32 259, label %sw.bb17.sw.bb19_crit_edge77
    i32 257, label %sw.bb17.sw.bb22_crit_edge
    i32 258, label %sw.bb17.sw.bb22_crit_edge78
  ]

sw.bb17.sw.bb22_crit_edge78:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

sw.bb17.sw.bb22_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

sw.bb17.sw.bb19_crit_edge77:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.bb19_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb17.sw.bb19_crit_edge, %sw.bb17.sw.bb19_crit_edge77
  %r20 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop21 = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 7
  %34 = call ptr @memcpy(ptr %r20, ptr %crop21, i32 16)
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb17.sw.bb22_crit_edge, %sw.bb17.sw.bb22_crit_edge78
  %r23 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %35 = ptrtoint ptr %r23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %r23, align 4
  %top26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %top26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %top26, align 4
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i, align 4
  %width29 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %width29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %width29, align 4
  %height30 = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height30, align 4
  %height32 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %height32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height32, align 4
  br label %cleanup

do.end36:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev37 = getelementptr i8, ptr %fh, i32 -36
  %43 = ptrtoint ptr %bdisp_dev37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdisp_dev37, align 4
  %dev38 = getelementptr inbounds %struct.bdisp_dev, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.100) #13
  br label %cleanup

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev44 = getelementptr i8, ptr %fh, i32 -36
  %47 = ptrtoint ptr %bdisp_dev44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bdisp_dev44, align 4
  %dev45 = getelementptr inbounds %struct.bdisp_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.105) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end36, %sw.bb22, %sw.bb19, %do.end14, %sw.bb5, %sw.bb4, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ -22, %do.end43 ], [ -22, %do.end36 ], [ -22, %do.end14 ], [ 0, %sw.bb19 ], [ 0, %sw.bb22 ], [ 0, %sw.bb4 ], [ 0, %sw.bb5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_s_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 2, label %if.end8
    i32 1, label %land.lhs.true4
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %entry
  %target5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %target5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp6 = icmp eq i32 %4, 256
  br i1 %cmp6, label %sw.bb1.i, label %land.lhs.true4.do.end_crit_edge

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end8:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %fh, i32 -164
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.end8.ctx_get_frame.exit_crit_edge, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end8.ctx_get_frame.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_get_frame.exit

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %entry.do.end_crit_edge
  %bdisp_dev = getelementptr i8, ptr %fh, i32 -36
  %7 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.107) #13
  br label %cleanup

sw.bb1.i:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr i8, ptr %fh, i32 -104
  br label %ctx_get_frame.exit

ctx_get_frame.exit:                               ; preds = %sw.bb1.i, %if.end8.ctx_get_frame.exit_crit_edge
  %retval.0.i225 = phi ptr [ %dst.i, %sw.bb1.i ], [ %add.ptr, %if.end8.ctx_get_frame.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i225, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end20

do.end16:                                         ; preds = %ctx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev17 = getelementptr i8, ptr %fh, i32 -36
  %11 = ptrtoint ptr %bdisp_dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdisp_dev17, align 4
  %dev18 = getelementptr inbounds %struct.bdisp_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.63, ptr noundef nonnull %retval.0.i225) #13
  %15 = ptrtoint ptr %retval.0.i225 to i32
  br label %cleanup

if.end20:                                         ; preds = %ctx_get_frame.exit
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %out.sroa.15.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %out.sroa.24.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %out.sroa.24.0.copyload = load i32, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %out.sroa.33.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %out.sroa.33.0.copyload = load i32, ptr %out.sroa.33.0.r.sroa_idx, align 4
  %18 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r, align 4
  %fmt = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 2
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt, align 4
  %w_align = getelementptr inbounds %struct.bdisp_fmt, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %w_align to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %w_align, align 1
  %conv = zext i8 %23 to i32
  %sub = add nsw i32 %conv, -1
  %add = add i32 %sub, %19
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add, %neg
  %24 = ptrtoint ptr %out.sroa.15.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out.sroa.15.0.r.sroa_idx, align 4
  %h_align = getelementptr inbounds %struct.bdisp_fmt, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %h_align to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %h_align, align 4
  %conv27 = zext i8 %27 to i32
  %sub28 = add i32 %25, -1
  %add29 = add i32 %sub28, %conv27
  %neg34 = sub nsw i32 0, %conv27
  %and35 = and i32 %add29, %neg34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp38 = icmp slt i32 %and, 0
  br i1 %cmp38, label %if.end20.do.end54_crit_edge, label %lor.lhs.false

if.end20.do.end54_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

lor.lhs.false:                                    ; preds = %if.end20
  %28 = ptrtoint ptr %retval.0.i225 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %retval.0.i225, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %29)
  %cmp41.not = icmp uge i32 %and, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp45 = icmp slt i32 %and35, 0
  %or.cond = select i1 %cmp41.not, i1 true, i1 %cmp45
  br i1 %or.cond, label %lor.lhs.false.do.end54_crit_edge, label %lor.lhs.false47

lor.lhs.false.do.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %height = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %31)
  %cmp49.not = icmp ult i32 %and35, %31
  br i1 %cmp49.not, label %if.end63, label %lor.lhs.false47.do.end54_crit_edge

lor.lhs.false47.do.end54_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.end54:                                         ; preds = %lor.lhs.false47.do.end54_crit_edge, %lor.lhs.false.do.end54_crit_edge, %if.end20.do.end54_crit_edge
  %bdisp_dev55 = getelementptr i8, ptr %fh, i32 -36
  %32 = ptrtoint ptr %bdisp_dev55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdisp_dev55, align 4
  %dev56 = getelementptr inbounds %struct.bdisp_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev56, align 4
  %36 = ptrtoint ptr %retval.0.i225 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %retval.0.i225, align 4
  %height62 = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 1
  %38 = ptrtoint ptr %height62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.112, i32 noundef %out.sroa.24.0.copyload, i32 noundef %out.sroa.33.0.copyload, i32 noundef %and, i32 noundef %and35, i32 noundef %37, i32 noundef %39) #13
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false47
  %40 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %add69 = add i32 %41, %sub
  %and75 = and i32 %add69, %neg
  %42 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out.sroa.33.0.r.sroa_idx, align 4
  %add82 = add i32 %43, %sub
  %and88 = and i32 %add82, %neg
  %add92 = add i32 %and75, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add92, i32 %29)
  %cmp94 = icmp ugt i32 %add92, %29
  br i1 %cmp94, label %if.end63.do.end106_crit_edge, label %lor.lhs.false96

if.end63.do.end106_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

lor.lhs.false96:                                  ; preds = %if.end63
  %add99 = add i32 %and88, %and35
  call void @__sanitizer_cov_trace_cmp4(i32 %add99, i32 %31)
  %cmp101 = icmp ugt i32 %add99, %31
  br i1 %cmp101, label %lor.lhs.false96.do.end106_crit_edge, label %if.end115

lor.lhs.false96.do.end106_crit_edge:              ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end106

do.end106:                                        ; preds = %lor.lhs.false96.do.end106_crit_edge, %if.end63.do.end106_crit_edge
  %bdisp_dev107 = getelementptr i8, ptr %fh, i32 -36
  %44 = ptrtoint ptr %bdisp_dev107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdisp_dev107, align 4
  %dev108 = getelementptr inbounds %struct.bdisp_dev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.112, i32 noundef %and75, i32 noundef %and88, i32 noundef %and, i32 noundef %and35, i32 noundef %29, i32 noundef %31) #13
  br label %cleanup

if.end115:                                        ; preds = %lor.lhs.false96
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and116 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end122_crit_edge, label %land.lhs.true118

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

land.lhs.true118:                                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %19)
  %cmp.i226 = icmp slt i32 %and, %19
  br i1 %cmp.i226, label %land.lhs.true118.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true118.cleanup_crit_edge:               ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true118
  %50 = ptrtoint ptr %out.sroa.15.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %out.sroa.15.0.r.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %51)
  %cmp3.i = icmp slt i32 %and35, %51
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %add7.i = add i32 %53, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add92, i32 %add7.i)
  %cmp8.i = icmp ugt i32 %add92, %add7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %is_rect_enclosed.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_rect_enclosed.exit:                            ; preds = %if.end.i
  %54 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out.sroa.33.0.r.sroa_idx, align 4
  %add15.i = add i32 %55, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add99, i32 %add15.i)
  %cmp16.i.not = icmp ugt i32 %add99, %add15.i
  br i1 %cmp16.i.not, label %is_rect_enclosed.exit.cleanup_crit_edge, label %is_rect_enclosed.exit.if.end122_crit_edge

is_rect_enclosed.exit.if.end122_crit_edge:        ; preds = %is_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

is_rect_enclosed.exit.cleanup_crit_edge:          ; preds = %is_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end122:                                        ; preds = %is_rect_enclosed.exit.if.end122_crit_edge, %if.end115.if.end122_crit_edge
  %and124 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end122.if.end130_crit_edge, label %land.lhs.true126

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

land.lhs.true126:                                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and)
  %cmp.i228 = icmp slt i32 %19, %and
  br i1 %cmp.i228, label %land.lhs.true126.cleanup_crit_edge, label %lor.lhs.false.i232

land.lhs.true126.cleanup_crit_edge:               ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i232:                               ; preds = %land.lhs.true126
  %56 = ptrtoint ptr %out.sroa.15.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %out.sroa.15.0.r.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %and35)
  %cmp3.i231 = icmp slt i32 %57, %and35
  br i1 %cmp3.i231, label %lor.lhs.false.i232.cleanup_crit_edge, label %if.end.i238

lor.lhs.false.i232.cleanup_crit_edge:             ; preds = %lor.lhs.false.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i238:                                      ; preds = %lor.lhs.false.i232
  %58 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %add.i234 = add i32 %59, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i234, i32 %add92)
  %cmp8.i237 = icmp ugt i32 %add.i234, %add92
  br i1 %cmp8.i237, label %if.end.i238.cleanup_crit_edge, label %is_rect_enclosed.exit247

if.end.i238.cleanup_crit_edge:                    ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_rect_enclosed.exit247:                         ; preds = %if.end.i238
  %60 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %out.sroa.33.0.r.sroa_idx, align 4
  %add12.i240 = add i32 %61, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i240, i32 %add99)
  %cmp16.i243.not = icmp ugt i32 %add12.i240, %add99
  br i1 %cmp16.i243.not, label %is_rect_enclosed.exit247.cleanup_crit_edge, label %is_rect_enclosed.exit247.if.end130_crit_edge

is_rect_enclosed.exit247.if.end130_crit_edge:     ; preds = %is_rect_enclosed.exit247
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

is_rect_enclosed.exit247.cleanup_crit_edge:       ; preds = %is_rect_enclosed.exit247
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end130:                                        ; preds = %is_rect_enclosed.exit247.if.end130_crit_edge, %if.end122.if.end130_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %19)
  %cmp133.not = icmp eq i32 %and, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %25)
  %cmp138.not = icmp eq i32 %and35, %25
  %or.cond292 = select i1 %cmp133.not, i1 %cmp138.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and75, i32 %41)
  %cmp143.not = icmp eq i32 %and75, %41
  %or.cond293 = select i1 %or.cond292, i1 %cmp143.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and88, i32 %43)
  %cmp148.not = icmp eq i32 %and88, %43
  %or.cond294 = select i1 %or.cond293, i1 %cmp148.not, i1 false
  br i1 %or.cond294, label %if.end130.if.end171_crit_edge, label %do.body151

if.end130.if.end171_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

do.body151:                                       ; preds = %if.end130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_s_selection.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_s_selection, %if.then157)) #10
          to label %do.end170 [label %if.then157], !srcloc !291

if.then157:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev158 = getelementptr i8, ptr %fh, i32 -36
  %62 = ptrtoint ptr %bdisp_dev158 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdisp_dev158, align 4
  %dev159 = getelementptr inbounds %struct.bdisp_dev, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev159, align 4
  %66 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %68 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %out.sroa.33.0.r.sroa_idx, align 4
  %70 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %r, align 4
  %72 = ptrtoint ptr %out.sroa.15.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %out.sroa.15.0.r.sroa_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_s_selection.__UNIQUE_ID_ddebug312, ptr noundef %65, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.108, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %and75, i32 noundef %and88, i32 noundef %and, i32 noundef %and35) #10
  br label %do.end170

do.end170:                                        ; preds = %if.then157, %do.body151
  %74 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and, ptr %r, align 4
  %75 = ptrtoint ptr %out.sroa.15.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and35, ptr %out.sroa.15.0.r.sroa_idx, align 4
  %76 = ptrtoint ptr %out.sroa.24.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and75, ptr %out.sroa.24.0.r.sroa_idx, align 4
  %77 = ptrtoint ptr %out.sroa.33.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and88, ptr %out.sroa.33.0.r.sroa_idx, align 4
  br label %if.end171

if.end171:                                        ; preds = %do.end170, %if.end130.if.end171_crit_edge
  %crop = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 7
  %78 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and, ptr %crop, align 4
  %out.sroa.15.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %out.sroa.15.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and35, ptr %out.sroa.15.0.crop.sroa_idx, align 4
  %out.sroa.24.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %out.sroa.24.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and75, ptr %out.sroa.24.0.crop.sroa_idx, align 4
  %out.sroa.33.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %retval.0.i225, i32 0, i32 7, i32 3
  %81 = ptrtoint ptr %out.sroa.33.0.crop.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and88, ptr %out.sroa.33.0.crop.sroa_idx, align 4
  %bdisp_dev.i248 = getelementptr i8, ptr %fh, i32 -36
  %82 = ptrtoint ptr %bdisp_dev.i248 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bdisp_dev.i248, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %83, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state5.i = getelementptr i8, ptr %fh, i32 -44
  %84 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state5.i, align 4
  %or.i = or i32 %85, 1
  store i32 %or.i, ptr %state5.i, align 4
  %86 = ptrtoint ptr %bdisp_dev.i248 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bdisp_dev.i248, align 4
  %slock7.i = getelementptr inbounds %struct.bdisp_dev, ptr %87, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %is_rect_enclosed.exit247.cleanup_crit_edge, %if.end.i238.cleanup_crit_edge, %lor.lhs.false.i232.cleanup_crit_edge, %land.lhs.true126.cleanup_crit_edge, %is_rect_enclosed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true118.cleanup_crit_edge, %do.end106, %do.end54, %do.end16, %do.end
  %retval.0 = phi i32 [ %15, %do.end16 ], [ -22, %do.end54 ], [ -22, %do.end106 ], [ 0, %if.end171 ], [ -22, %do.end ], [ -34, %is_rect_enclosed.exit.cleanup_crit_edge ], [ -34, %is_rect_enclosed.exit247.cleanup_crit_edge ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %land.lhs.true118.cleanup_crit_edge ], [ -34, %if.end.i.cleanup_crit_edge ], [ -34, %lor.lhs.false.i232.cleanup_crit_edge ], [ -34, %land.lhs.true126.cleanup_crit_edge ], [ -34, %if.end.i238.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !295

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 312, i32 noundef 9, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_device_run.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_device_run, %if.then33)) #10
          to label %do.body38 [label %if.then33], !srcloc !291

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_device_run.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117) #10
  br label %do.body38

do.body38:                                        ; preds = %if.then33, %if.end23
  %slock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 4
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %ctx46 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %ctx46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx46, align 4
  %cmp47.not = icmp eq ptr %5, %priv
  br i1 %cmp47.not, label %do.body38.if.end71_crit_edge, label %do.body50

do.body38.if.end71_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.body50:                                        ; preds = %do.body38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_device_run.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_device_run, %if.then62)) #10
          to label %do.end68 [label %if.then62], !srcloc !291

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %dev63 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev63, align 4
  %8 = ptrtoint ptr %ctx46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_device_run.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.118, ptr noundef %9, ptr noundef nonnull %priv) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  %state = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %state, align 4
  %12 = ptrtoint ptr %ctx46 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %priv, ptr %ctx46, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %do.body38.if.end71_crit_edge
  %state72 = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state72, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %if.end79, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %and76 = and i32 %14, -25
  %or78 = or i32 %and76, 16
  %15 = ptrtoint ptr %state72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or78, ptr %state72, align 4
  %irq_queue = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %16 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state72, align 4
  %and107 = and i32 %17, -2
  store i32 %and107, ptr %state72, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call41) #10
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %m2m_ctx.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 7, i32 10
  %18 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #10
  %paddr.i = getelementptr inbounds %struct.bdisp_frame, ptr %priv, i32 0, i32 8
  %call3.i = tail call fastcc i32 @bdisp_get_addr(ptr noundef nonnull %priv, ptr noundef %call.i.i, ptr noundef nonnull %priv, ptr noundef %paddr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end79.if.then110_crit_edge

if.end79.if.then110_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end.i:                                         ; preds = %if.end79
  %dst2.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 7
  %call.i33.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #10
  %paddr8.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 1, i32 8
  %call10.i = tail call fastcc i32 @bdisp_get_addr(ptr noundef nonnull %priv, ptr noundef %call.i33.i, ptr noundef %dst2.i, ptr noundef %paddr8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end87, label %if.end.i.if.then110_crit_edge

if.end.i.if.then110_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end87:                                         ; preds = %if.end.i
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timestamp.i, align 8
  %timestamp16.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i33.i, i32 0, i32 5
  %24 = ptrtoint ptr %timestamp16.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %timestamp16.i, align 8
  tail call void @bdisp_dbg_perf_begin(ptr noundef %1) #10
  %call88 = tail call i32 @bdisp_hw_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %if.end87.if.then110_crit_edge

if.end87.if.then110_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end95:                                         ; preds = %if.end87
  %call96 = tail call i32 @bdisp_hw_update(ptr noundef nonnull %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end103, label %if.end95.if.then110_crit_edge

if.end95.if.then110_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %work_queue = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %work_queue, align 4
  %timeout_work = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %timeout_work, i32 noundef 10) #10
  %state105 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state105) #10
  %27 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state72, align 4
  %and107.c = and i32 %28, -2
  store i32 %and107.c, ptr %state72, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call41) #10
  br label %cleanup

if.then110:                                       ; preds = %if.end95.if.then110_crit_edge, %if.end87.if.then110_crit_edge, %if.end.i.if.then110_crit_edge, %if.end79.if.then110_crit_edge
  %.str.119.sink = phi ptr [ @.str.119, %if.end79.if.then110_crit_edge ], [ @.str.119, %if.end.i.if.then110_crit_edge ], [ @.str.121, %if.end87.if.then110_crit_edge ], [ @.str.124, %if.end95.if.then110_crit_edge ]
  %dev86 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %.str.119.sink) #13
  %31 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state72, align 4
  %and107.c150 = and i32 %32, -2
  store i32 %and107.c150, ptr %state72, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call41) #10
  tail call fastcc void @bdisp_job_finish(ptr noundef nonnull %priv, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.end103, %if.then74, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdisp_job_abort(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @bdisp_ctx_stop_req(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -110
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__bdisp_job_abort.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %bdisp_dev.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %bdisp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev.i.i, align 4
  %slock.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i.i) #10
  %state5.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state5.i.i, align 4
  %and.i.i = and i32 %5, -25
  store i32 %and.i.i, ptr %state5.i.i, align 4
  %6 = ptrtoint ptr %bdisp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdisp_dev.i.i, align 4
  %slock7.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock7.i.i, i32 noundef %call2.i.i) #10
  tail call fastcc void @bdisp_job_finish(ptr noundef %priv, i32 noundef 6) #10
  br label %__bdisp_job_abort.exit

__bdisp_job_abort.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.__bdisp_job_abort.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_dbg_perf_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_get_addr(ptr nocapture noundef readonly %ctx, ptr noundef %vb, ptr noundef readonly %frame, ptr noundef %paddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vb, null
  %tobool1.not = icmp eq ptr %frame, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 0) #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %paddr, align 4
  %fmt = getelementptr inbounds %struct.bdisp_frame, ptr %frame, i32 0, i32 2
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fmt, align 4
  %nb_planes = getelementptr inbounds %struct.bdisp_fmt, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nb_planes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nb_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp ugt i8 %6, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bytesperline = getelementptr inbounds %struct.bdisp_frame, ptr %frame, i32 0, i32 4
  %7 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytesperline, align 4
  %height = getelementptr inbounds %struct.bdisp_frame, ptr %frame, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %mul = mul i32 %10, %8
  %add = add i32 %mul, %1
  %arrayidx5 = getelementptr i32, ptr %paddr, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 4
  %nb_planes8 = getelementptr inbounds %struct.bdisp_fmt, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nb_planes8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nb_planes8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp10 = icmp ugt i8 %15, 2
  br i1 %cmp10, label %if.then12, label %if.end6.if.end19_crit_edge

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13 = getelementptr i32, ptr %paddr, i32 1
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %bytesperline14 = getelementptr inbounds %struct.bdisp_frame, ptr %frame, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesperline14, align 4
  %height15 = getelementptr inbounds %struct.bdisp_frame, ptr %frame, i32 0, i32 1
  %20 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height15, align 4
  %mul16 = mul i32 %21, %19
  %div69 = lshr i32 %mul16, 2
  %add17 = add i32 %div69, %17
  %arrayidx18 = getelementptr i32, ptr %paddr, i32 2
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add17, ptr %arrayidx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end6.if.end19_crit_edge
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt, align 4
  %nb_planes21 = getelementptr inbounds %struct.bdisp_fmt, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nb_planes21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nb_planes21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp23 = icmp ugt i8 %26, 3
  br i1 %cmp23, label %do.body, label %if.end19.do.body33_crit_edge

if.end19.do.body33_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_get_addr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_get_addr, %if.then30)) #10
          to label %do.body33 [label %if.then30], !srcloc !291

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %27 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_get_addr.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.127) #10
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body, %if.end19.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_get_addr.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_get_addr, %if.then45)) #10
          to label %return [label %if.then45], !srcloc !291

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %bdisp_dev46 = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %31 = ptrtoint ptr %bdisp_dev46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdisp_dev46, align 4
  %dev47 = getelementptr inbounds %struct.bdisp_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev47, align 4
  %arrayidx49 = getelementptr i32, ptr %paddr, i32 1
  %arrayidx50 = getelementptr i32, ptr %paddr, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_get_addr.__UNIQUE_ID_ddebug302, ptr noundef %34, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.126, ptr noundef %paddr, ptr noundef %arrayidx49, ptr noundef %arrayidx50) #10
  br label %return

return:                                           ; preds = %if.then45, %do.body33, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then45 ], [ 0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @bdisp_runtime_suspend(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.then, %pm_runtime_suspended.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %pm_runtime_suspended.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %state = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then9_crit_edge

pm_runtime_suspended.exit.if.then9_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %pm_runtime_suspended.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %clock.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clock.i, align 8
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i18 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i18, label %if.end.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %slock.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i.i) #10
  %ctx5.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %ctx5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx5.i.i, align 4
  store ptr null, ptr %ctx5.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i.i, i32 noundef %call2.i.i) #10
  %state.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 8
  %call9.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bdisp_job_finish(ptr noundef %12, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %call1.i, %if.then9.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %state.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1176) #10
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool18.not.i = icmp eq i32 %7, 0
  br i1 %tobool18.not.i, label %if.then29.i, label %if.end57.thread.i

if.end57.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state.i) #10
  br label %if.then

if.then29.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %8 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %irq_queue.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 11
  %call3198.i = call i32 @prepare_to_wait_event(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool35.not99.not.i = icmp eq i32 %11, 0
  br i1 %tobool35.not99.not.i, label %if.then29.i.cleanup.i_crit_edge, label %cleanup66.critedge.i

if.then29.i.cleanup.i_crit_edge:                  ; preds = %if.then29.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then29.i.cleanup.i_crit_edge
  %__ret30.1101.i = phi i32 [ %__ret30.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then29.i.cleanup.i_crit_edge ]
  %call54.i = call i32 @schedule_timeout(i32 noundef %__ret30.1101.i) #10
  %call31.i = call i32 @prepare_to_wait_event(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool40.not.i = icmp eq i32 %call54.i, 0
  %spec.store.select68.i = select i1 %tobool40.not.i, i32 1, i32 %call54.i
  %__ret30.1.i = select i1 %tobool35.not.i, i32 %call54.i, i32 %spec.store.select68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1.i)
  %tobool47.not.i = icmp eq i32 %__ret30.1.i, 0
  %not.tobool35.not.i = xor i1 %tobool35.not.i, true
  %15 = select i1 %not.tobool35.not.i, i1 true, i1 %tobool47.not.i
  br i1 %15, label %if.end57.loopexit.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end57.loopexit.i:                              ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @_clear_bit(i32 noundef 3, ptr noundef %state.i) #10
  br i1 %tobool47.not.i, label %bdisp_m2m_suspend.exit, label %if.end57.loopexit.i.if.then_crit_edge

if.end57.loopexit.i.if.then_crit_edge:            ; preds = %if.end57.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cleanup66.critedge.i:                             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %irq_queue.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @_clear_bit(i32 noundef 3, ptr noundef %state.i) #10
  br label %if.then

bdisp_m2m_suspend.exit:                           ; preds = %if.end57.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.131) #13
  br label %if.end

if.then:                                          ; preds = %cleanup66.critedge.i, %if.end57.loopexit.i.if.then_crit_edge, %if.end57.thread.i, %if.then.i
  %clock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock, align 8
  call void @clk_disable(ptr noundef %19) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %bdisp_m2m_suspend.exit
  %retval.0.i6 = phi i32 [ 0, %if.then ], [ -11, %bdisp_m2m_suspend.exit ]
  ret i32 %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdisp_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %slock.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #10
  %ctx5.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx5.i, align 4
  store ptr null, ptr %ctx5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #10
  %state.i = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  %call9.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bdisp_job_finish(ptr noundef %5, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !242, !243, !245, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !274, !276, !278, !280, !281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @__initcall__kmod_bdisp__315_1427_bdisp_driver_init6, !1, !"__initcall__kmod_bdisp__315_1427_bdisp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1427, i32 1}
!2 = !{ptr @__exitcall_bdisp_driver_exit, !1, !"__exitcall_bdisp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description316, !4, !"__UNIQUE_ID_description316", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1429, i32 1}
!5 = !{ptr @__UNIQUE_ID_author317, !6, !"__UNIQUE_ID_author317", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1430, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1431, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1421, i32 21}
!12 = !{ptr @bdisp_driver, !13, !"bdisp_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1417, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1291, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bdisp_probe.__UNIQUE_ID_ddebug314, !15, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!19 = !{ptr @bdisp_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1310, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bdisp_probe.__key.5, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1311, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bdisp_probe.__key.7, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1312, i32 22}
!29 = !{ptr @bdisp_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1314, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bdisp_probe.__key.12, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1315, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1326, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bdisp_probe._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @bdisp_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1333, i32 3}
!43 = !{ptr @bdisp_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bdisp_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1340, i32 3}
!47 = !{ptr @bdisp_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bdisp_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1349, i32 3}
!51 = !{ptr @bdisp_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bdisp_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1356, i32 3}
!55 = !{ptr @bdisp_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bdisp_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1367, i32 3}
!59 = !{ptr @bdisp_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bdisp_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1373, i32 3}
!63 = !{ptr @bdisp_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bdisp_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @bdisp_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1381, i32 3}
!67 = !{ptr @bdisp_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1385, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bdisp_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @bdisp_probe._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1149, i32 2}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bdisp_irq_timeout._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @bdisp_irq_timeout._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 185, i32 6}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 188, i32 2}
!82 = !{ptr @bdisp_job_finish.__UNIQUE_ID_ddebug299, !81, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1057, i32 55}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1065, i32 3}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bdisp_register_device._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bdisp_register_device._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1071, i32 3}
!92 = !{ptr @bdisp_register_device._entry.48, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bdisp_register_device._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @bdisp_fops, !95, !"bdisp_fops", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 675, i32 42}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 593, i32 3}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @bdisp_open._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @bdisp_open._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 602, i32 3}
!103 = !{ptr @bdisp_open._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @bdisp_open._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 619, i32 3}
!107 = !{ptr @bdisp_open._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bdisp_open._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 627, i32 2}
!111 = !{ptr @bdisp_open.__UNIQUE_ID_ddebug306, !110, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!112 = !{ptr @bdisp_ctrls_create._key, !113, !"_key", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 413, i32 2}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bdisp_c_ops, !116, !"bdisp_c_ops", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 404, i32 35}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 381, i32 3}
!119 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__bdisp_s_ctrl._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @__bdisp_s_ctrl._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @bdisp_dflt_fmt, !123, !"bdisp_dflt_fmt", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 108, i32 33}
!124 = !{ptr @bdisp_formats, !125, !"bdisp_formats", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 45, i32 31}
!126 = !{ptr @bdisp_qops, !127, !"bdisp_qops", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 530, i32 29}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 448, i32 3}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bdisp_queue_setup._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bdisp_queue_setup._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 453, i32 3}
!135 = !{ptr @bdisp_queue_setup._entry.65, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bdisp_queue_setup._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 173, i32 3}
!139 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ctx_get_frame._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ctx_get_frame._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 472, i32 3}
!144 = !{ptr @bdisp_buf_prepare._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @bdisp_buf_prepare._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 505, i32 3}
!151 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @bdisp_start_streaming._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @bdisp_start_streaming._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 214, i32 2}
!156 = !{ptr @bdisp_ctx_stop_req.__UNIQUE_ID_ddebug300, !155, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 229, i32 3}
!159 = !{ptr @bdisp_ctx_stop_req._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @bdisp_ctx_stop_req._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 489, i32 3}
!163 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @bdisp_buf_queue.__UNIQUE_ID_ddebug305, !162, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 652, i32 2}
!167 = !{ptr @bdisp_release.__UNIQUE_ID_ddebug307, !166, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!168 = !{ptr @bdisp_ioctl_ops, !169, !"bdisp_ioctl_ops", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1019, i32 36}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 692, i32 49}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 709, i32 3}
!174 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @bdisp_enum_fmt.__UNIQUE_ID_ddebug308, !173, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 724, i32 3}
!178 = !{ptr @bdisp_g_fmt._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @bdisp_g_fmt._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 802, i32 3}
!182 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @bdisp_s_fmt._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @bdisp_s_fmt._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 808, i32 3}
!187 = !{ptr @bdisp_s_fmt._entry.85, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @bdisp_s_fmt._entry_ptr.87, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 817, i32 3}
!191 = !{ptr @bdisp_s_fmt._entry.88, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @bdisp_s_fmt._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 750, i32 3}
!195 = !{ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug309, !194, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!196 = !{ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug310, !197, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 758, i32 3}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 778, i32 3}
!200 = !{ptr @bdisp_try_fmt.__UNIQUE_ID_ddebug311, !199, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1006, i32 3}
!203 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @bdisp_streamon._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @bdisp_streamon._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1012, i32 3}
!208 = !{ptr @bdisp_streamon._entry.95, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @bdisp_streamon._entry_ptr.97, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 851, i32 3}
!212 = !{ptr @bdisp_g_selection._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @bdisp_g_selection._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 871, i32 4}
!216 = !{ptr @bdisp_g_selection._entry.99, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bdisp_g_selection._entry_ptr.101, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @bdisp_g_selection._entry.102, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 892, i32 4}
!220 = !{ptr @bdisp_g_selection._entry_ptr.103, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 898, i32 3}
!223 = !{ptr @bdisp_g_selection._entry.104, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @bdisp_g_selection._entry_ptr.106, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 938, i32 3}
!227 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @bdisp_s_selection._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @bdisp_s_selection._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @bdisp_s_selection._entry.109, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 944, i32 3}
!232 = !{ptr @bdisp_s_selection._entry_ptr.110, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 957, i32 3}
!235 = !{ptr @bdisp_s_selection._entry.111, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @bdisp_s_selection._entry_ptr.113, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @bdisp_s_selection._entry.114, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 970, i32 3}
!239 = !{ptr @bdisp_s_selection._entry_ptr.115, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 986, i32 3}
!242 = !{ptr @bdisp_s_selection.__UNIQUE_ID_ddebug312, !241, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!243 = !{ptr @bdisp_m2m_ops, !244, !"bdisp_m2m_ops", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 363, i32 34}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 316, i32 2}
!247 = !{ptr @bdisp_device_run.__UNIQUE_ID_ddebug303, !246, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 320, i32 3}
!250 = !{ptr @bdisp_device_run.__UNIQUE_ID_ddebug304, !249, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 335, i32 3}
!253 = !{ptr @bdisp_device_run._entry, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @bdisp_device_run._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 343, i32 3}
!257 = !{ptr @bdisp_device_run._entry.120, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @bdisp_device_run._entry_ptr.122, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 349, i32 3}
!261 = !{ptr @bdisp_device_run._entry.123, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @bdisp_device_run._entry_ptr.125, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 272, i32 3}
!265 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @bdisp_get_addr.__UNIQUE_ID_ddebug301, !264, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!267 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 274, i32 2}
!269 = !{ptr @bdisp_get_addr.__UNIQUE_ID_ddebug302, !268, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1279, i32 2}
!272 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @bdisp_remove.__UNIQUE_ID_ddebug313, !271, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!274 = !{ptr @bdisp_match_types, !275, !"bdisp_match_types", i1 false, i1 false}
!275 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1408, i32 34}
!276 = !{ptr @bdisp_pm_ops, !277, !"bdisp_pm_ops", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1253, i32 32}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/platform/sti/bdisp/bdisp-v4l2.c", i32 1181, i32 3}
!280 = !{ptr @bdisp_m2m_suspend._entry, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @bdisp_m2m_suspend._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{i64 2148751900, i64 2148751905, i64 2148751918, i64 2148751962, i64 2148751996, i64 2148752017}
!292 = !{i64 2148269504}
!293 = !{i64 754327, i64 754352, i64 754374, i64 754390, i64 754402, i64 754422, i64 754446, i64 754462, i64 754474}
!294 = !{i64 2148269692}
!295 = !{!"branch_weights", i32 1, i32 2000}
!296 = !{i8 0, i8 2}
!297 = !{!"branch_weights", i32 2000, i32 1}
!298 = !{i8 0, i8 9}
