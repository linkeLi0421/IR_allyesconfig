; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar_fdp1.c_pt.bc'
source_filename = "../drivers/media/platform/rcar_fdp1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.fdp1_fmt = type { i32, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fdp1_dev = type { %struct.v4l2_device, %struct.video_device, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, i32, ptr, [8 x %struct.fdp1_job], %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.fdp1_job = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.fdp1_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_ctrl_handler, i32, i8, i32, i32, i32, i32, [2 x i32], ptr, i8, %struct.fdp1_q_data, %struct.fdp1_q_data, %struct.list_head, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.fdp1_q_data = type { ptr, %struct.v4l2_pix_format_mplane, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.fdp1_field_buffer = type { ptr, [3 x i32], i32, i8, %struct.list_head }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fdp1_buffer = type { %struct.v4l2_m2m_buffer, [2 x %struct.fdp1_field_buffer], i32 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }

@__param_str_debug = internal constant [16 x i8] c"rcar_fdp1.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [30 x i8] c"rcar_fdp1.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug300 = internal constant [41 x i8] c"rcar_fdp1.parm=debug:activate debug info\00", section ".modinfo", align 1
@__initcall__kmod_rcar_fdp1__325_2452_fdp1_pdrv_init6 = internal global ptr @fdp1_pdrv_init, section ".initcall6.init", align 4
@fdp1_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fdp1_probe, ptr @fdp1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fdp1_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fdp1_pdrv_exit = internal global ptr @fdp1_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description326 = internal constant [66 x i8] c"rcar_fdp1.description=Renesas R-Car Fine Display Processor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author327 = internal constant [53 x i8] c"rcar_fdp1.author=Kieran Bingham <kieran@bingham.xyz>\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [48 x i8] c"rcar_fdp1.file=drivers/media/platform/rcar_fdp1\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [22 x i8] c"rcar_fdp1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias330 = internal constant [35 x i8] c"rcar_fdp1.alias=platform:rcar_fdp1\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_fdp1\00", [22 x i8] zeroinitializer }, align 32
@fdp1_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,fdp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fdp1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_pm_runtime_suspend, ptr @fdp1_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fdp1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fdp1->dev_mutex\00", [47 x i8] zeroinitializer }, align 32
@fdp1_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fdp1->irqlock\00", [17 x i8] zeroinitializer }, align 32
@fdp1_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&fdp1->device_process_lock\00", [37 x i8] zeroinitializer }, align 32
@fdp1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2298, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot claim IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fdp1_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/platform/rcar_fdp1.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr = internal global ptr @fdp1_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas,fcp\00", [20 x i8] zeroinitializer }, align 32
@fdp1_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.12, i8 2, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FCP not found (%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@fdp1_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.8, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.15 = internal global ptr @fdp1_probe._entry.13, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @fdp1_m2m_device_run, ptr @fdp1_m2m_job_ready, ptr @fdp1_m2m_job_abort }, [20 x i8] zeroinitializer }, align 32
@fdp1_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.8, i32 2332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.18 = internal global ptr @fdp1_probe._entry.16, section ".printk_index", align 4
@fdp1_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @fdp1_fops, i32 67125248, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"rcar_fdp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @fdp1_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@fdp1_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.8, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.20 = internal global ptr @fdp1_probe._entry.19, section ".printk_index", align 4
@fdp1_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 2352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.23 = internal global ptr @fdp1_probe._entry.21, section ".printk_index", align 4
@fdp1_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 2363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: FDP1 Version R-Car H3 ES1\0A\00", [59 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.26 = internal global ptr @fdp1_probe._entry.24, section ".printk_index", align 4
@fdp1_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str.8, i32 2366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: FDP1 Version R-Car M3-W\0A\00", [61 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.29 = internal global ptr @fdp1_probe._entry.27, section ".printk_index", align 4
@fdp1_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.8, i32 2369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: FDP1 Version R-Car H3\0A\00", [63 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.32 = internal global ptr @fdp1_probe._entry.30, section ".printk_index", align 4
@fdp1_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.7, ptr @.str.8, i32 2372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: FDP1 Version R-Car M3-N\0A\00", [61 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.35 = internal global ptr @fdp1_probe._entry.33, section ".printk_index", align 4
@fdp1_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.8, i32 2375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: FDP1 Version R-Car E3\0A\00", [63 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.38 = internal global ptr @fdp1_probe._entry.36, section ".printk_index", align 4
@fdp1_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.7, ptr @.str.8, i32 2379, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FDP1 Unidentifiable (0x%08x)\0A\00", [34 x i8] zeroinitializer }, align 32
@fdp1_probe._entry_ptr.41 = internal global ptr @fdp1_probe._entry.39, section ".printk_index", align 4
@fdp1_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 2226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: IRQ: 0x%x %s%s%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdp1_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry_ptr = internal global ptr @fdp1_irq_handler._entry, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[Error]\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[!E]\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[VSync]\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[!V]\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[FrameEnd]\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[!F]\00", [27 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.8, i32 2229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: CycleStatus = %d (%dms)\0A\00", [61 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry_ptr.52 = internal global ptr @fdp1_irq_handler._entry.50, section ".printk_index", align 4
@fdp1_irq_handler._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.8, i32 2237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s: Control Status = 0x%08x : VINT_CNT = %d %s:%s:%s:%s\0A\00", [33 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry_ptr.55 = internal global ptr @fdp1_irq_handler._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RegSet\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Vsync Error\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FrameEnd\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Busy\00", [27 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.43, ptr @.str.8, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: %s: ***********************************\0A\00", [49 x i8] zeroinitializer }, align 32
@fdp1_irq_handler._entry_ptr.63 = internal global ptr @fdp1_irq_handler._entry.61, section ".printk_index", align 4
@fdp1_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.8, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: Write 0x%08x to 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fdp1_write\00", [21 x i8] zeroinitializer }, align 32
@fdp1_write._entry_ptr = internal global ptr @fdp1_write._entry, section ".printk_index", align 4
@device_frame_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.8, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s: +\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_frame_end\00", [47 x i8] zeroinitializer }, align 32
@device_frame_end._entry_ptr = internal global ptr @device_frame_end._entry, section ".printk_index", align 4
@device_frame_end._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.8, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@device_frame_end._entry_ptr.70 = internal global ptr @device_frame_end._entry.68, section ".printk_index", align 4
@device_frame_end._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.8, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: %s: curr_ctx->num_processed %d curr_ctx->translen %d\0A\00", [36 x i8] zeroinitializer }, align 32
@device_frame_end._entry_ptr.73 = internal global ptr @device_frame_end._entry.71, section ".printk_index", align 4
@device_frame_end._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.8, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Finishing transaction\0A\00", [63 x i8] zeroinitializer }, align 32
@device_frame_end._entry_ptr.76 = internal global ptr @device_frame_end._entry.74, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.8, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: Progressive Mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fdp1_configure_deint_mode\00", [38 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr = internal global ptr @fdp1_configure_deint_mode._entry, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.8, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: Adapt2D3D Mode\0A\00", [38 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr.81 = internal global ptr @fdp1_configure_deint_mode._entry.79, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.8, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: Fixed 3D Mode\0A\00", [39 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr.84 = internal global ptr @fdp1_configure_deint_mode._entry.82, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.8, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: Fixed 2D Mode\0A\00", [39 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr.87 = internal global ptr @fdp1_configure_deint_mode._entry.85, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.8, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: Previous Field Mode\0A\00", [33 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr.90 = internal global ptr @fdp1_configure_deint_mode._entry.88, section ".printk_index", align 4
@fdp1_configure_deint_mode._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.78, ptr @.str.8, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: Next Field Mode\0A\00", [37 x i8] zeroinitializer }, align 32
@fdp1_configure_deint_mode._entry_ptr.93 = internal global ptr @fdp1_configure_deint_mode._entry.91, section ".printk_index", align 4
@fdp1_m2m_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.94, ptr @.str.8, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fdp1_m2m_device_run\00", [44 x i8] zeroinitializer }, align 32
@fdp1_m2m_device_run._entry_ptr = internal global ptr @fdp1_m2m_device_run._entry, section ".printk_index", align 4
@fdp1_m2m_device_run._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.8, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: Queued Buffer [%d] last_field:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@fdp1_m2m_device_run._entry_ptr.97 = internal global ptr @fdp1_m2m_device_run._entry.95, section ".printk_index", align 4
@fdp1_m2m_device_run._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.8, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: No jobs were processed. M2M action complete\0A\00", [41 x i8] zeroinitializer }, align 32
@fdp1_m2m_device_run._entry_ptr.100 = internal global ptr @fdp1_m2m_device_run._entry.98, section ".printk_index", align 4
@fdp1_prepare_job._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.101, ptr @.str.8, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdp1_prepare_job\00", [47 x i8] zeroinitializer }, align 32
@fdp1_prepare_job._entry_ptr = internal global ptr @fdp1_prepare_job._entry, section ".printk_index", align 4
@fdp1_prepare_job._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.8, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: No free jobs currently available\0A\00", [52 x i8] zeroinitializer }, align 32
@fdp1_prepare_job._entry_ptr.104 = internal global ptr @fdp1_prepare_job._entry.102, section ".printk_index", align 4
@fdp1_prepare_job._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.8, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: %s: No input buffers currently available\0A\00", [48 x i8] zeroinitializer }, align 32
@fdp1_prepare_job._entry_ptr.107 = internal global ptr @fdp1_prepare_job._entry.105, section ".printk_index", align 4
@fdp1_prepare_job._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.8, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: + Buffer en-route...\0A\00", [32 x i8] zeroinitializer }, align 32
@fdp1_prepare_job._entry_ptr.110 = internal global ptr @fdp1_prepare_job._entry.108, section ".printk_index", align 4
@fdp1_prepare_job._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.8, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: Job Queued translen = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fdp1_prepare_job._entry_ptr.113 = internal global ptr @fdp1_prepare_job._entry.111, section ".printk_index", align 4
@fdp1_m2m_job_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.8, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: + Src: %d : Dst: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fdp1_m2m_job_ready\00", [45 x i8] zeroinitializer }, align 32
@fdp1_m2m_job_ready._entry_ptr = internal global ptr @fdp1_m2m_job_ready._entry, section ".printk_index", align 4
@fdp1_m2m_job_ready._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.8, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: Not enough buffers available\0A\00", [56 x i8] zeroinitializer }, align 32
@fdp1_m2m_job_ready._entry_ptr.118 = internal global ptr @fdp1_m2m_job_ready._entry.116, section ".printk_index", align 4
@fdp1_m2m_job_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.119, ptr @.str.8, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fdp1_m2m_job_abort\00", [45 x i8] zeroinitializer }, align 32
@fdp1_m2m_job_abort._entry_ptr = internal global ptr @fdp1_m2m_job_abort._entry, section ".printk_index", align 4
@fdp1_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fdp1_open, ptr @fdp1_release }, [60 x i8] zeroinitializer }, align 32
@fdp1_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @fdp1_vidioc_querycap, ptr @fdp1_enum_fmt_vid_cap, ptr null, ptr @fdp1_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_g_fmt, ptr @fdp1_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_s_fmt, ptr @fdp1_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_try_fmt, ptr @fdp1_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@fdp1_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rcar_fdp1:2104:(&ctx->hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@fdp1_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @fdp1_g_ctrl, ptr null, ptr @fdp1_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fdp1_ctrl_deint_menu = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr null], [36 x i8] zeroinitializer }, align 32
@fdp1_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.8, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: Created instance: %p, m2m_ctx: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fdp1_open\00", [22 x i8] zeroinitializer }, align 32
@fdp1_open._entry_ptr = internal global ptr @fdp1_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Progressive\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Adaptive 2D/3D\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fixed 2D\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fixed 3D\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Previous field\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Next field\00", [21 x i8] zeroinitializer }, align 32
@fdp1_formats = internal constant { [26 x %struct.fdp1_fmt], [96 x i8] } { [26 x %struct.fdp1_fmt] [%struct.fdp1_fmt { i32 826427218, [3 x i8] c"\08\00\00", i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 842093144, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 892424792, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 4, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 1346520914, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 6, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 875713089, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 12, i8 1 }, %struct.fdp1_fmt { i32 875713112, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 12, i8 1 }, %struct.fdp1_fmt { i32 875708738, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 875714626, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 859981650, [3 x i8] c"\18\00\00", i8 1, i8 1, i8 1, i8 21, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 861030210, [3 x i8] c"\18\00\00", i8 1, i8 1, i8 1, i8 24, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 842093121, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 25, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 892424769, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 27, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 909200718, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 1, i8 65, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825642318, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 1, i8 65, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842091854, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 2, i8 66, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825380174, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 2, i8 66, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1498831189, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1498765654, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1448695129, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 1, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1431918169, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 1, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 875711833, [3 x i8] c"\08\08\08", i8 3, i8 1, i8 1, i8 74, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842288473, [3 x i8] c"\08\08\08", i8 3, i8 1, i8 1, i8 74, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 909200729, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 1, i8 75, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825642329, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 1, i8 75, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842091865, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 2, i8 76, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825380185, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 2, i8 76, i8 0, i8 1, i8 15, i8 3 }], [96 x i8] zeroinitializer }, align 32
@fdp1_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @fdp1_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @fdp1_buf_prepare, ptr null, ptr null, ptr @fdp1_start_streaming, ptr @fdp1_stop_streaming, ptr @fdp1_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@fdp1_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.8, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: buffer field %u invalid for format field %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdp1_buf_prepare\00", [47 x i8] zeroinitializer }, align 32
@fdp1_buf_prepare._entry_ptr = internal global ptr @fdp1_buf_prepare._entry, section ".printk_index", align 4
@fdp1_buf_prepare._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.8, i32 1899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: %s: data will not fit into plane [%u/%u] (%lu < %lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@fdp1_buf_prepare._entry_ptr.133 = internal global ptr @fdp1_buf_prepare._entry.131, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@fdp1_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.8, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: Failed to alloc smsk\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fdp1_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@fdp1_start_streaming._entry_ptr = internal global ptr @fdp1_start_streaming._entry, section ".printk_index", align 4
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer queue not empty\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Queued Job List not empty\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW Job list not empty\00", [42 x i8] zeroinitializer }, align 32
@fdp1_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.8, i32 2165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fdp1_release\00", [19 x i8] zeroinitializer }, align 32
@fdp1_release._entry_ptr = internal global ptr @fdp1_release._entry, section ".printk_index", align 4
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@fdp1_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.8, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fdp1_s_fmt\00", [21 x i8] zeroinitializer }, align 32
@fdp1_s_fmt._entry_ptr = internal global ptr @fdp1_s_fmt._entry, section ".printk_index", align 4
@fdp1_s_fmt._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.8, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: Set %s format: %4.4s (0x%08x) %ux%u field %u\0A\00", [40 x i8] zeroinitializer }, align 32
@fdp1_s_fmt._entry_ptr.147 = internal global ptr @fdp1_s_fmt._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@fdp1_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.8, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: Try %s format: %4.4s (0x%08x) %ux%u field %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fdp1_try_fmt\00", [19 x i8] zeroinitializer }, align 32
@fdp1_try_fmt._entry_ptr = internal global ptr @fdp1_try_fmt._entry, section ".printk_index", align 4
@fdp1_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.8, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: Read 0x%08x from 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fdp1_read\00", [22 x i8] zeroinitializer }, align 32
@fdp1_read._entry_ptr = internal global ptr @fdp1_read._entry, section ".printk_index", align 4
@fdp1_diff_adj = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00$C^v\8C\9E\AF\BD\C9\D4\DD\E4\EA\EF\F3\F6\F9\FB\FC\FD\FE\FE\FF", [40 x i8] zeroinitializer }, align 32
@fdp1_sad_adj = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00$C^v\8C\9E\AF\BD\C9\D4\DD\E4\EA\EF\F3\F6\F9\FB\FC\FD\FE\FE\FF", [40 x i8] zeroinitializer }, align 32
@fdp1_bld_gain = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\80", [31 x i8] zeroinitializer }, align 32
@fdp1_dif_gain = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\80", [31 x i8] zeroinitializer }, align 32
@fdp1_mdet = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@switch.table.fdp1_m2m_device_run = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 1, i32 2, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.fdp1_m2m_job_ready = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 2, i32 1, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.fdp1_g_ctrl = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 2, i32 2, i32 1, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 33620225, i64 33620482, i64 33620483, i64 33620484, i64 33620485]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.158 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 9963817, i64 10422532]
@__sancov_gen_cov_switch_values.161 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [28 x i64] [i64 26, i64 32, i64 825380174, i64 825380185, i64 825642318, i64 825642329, i64 826427218, i64 842091854, i64 842091865, i64 842093121, i64 842093144, i64 842288473, i64 859981650, i64 861030210, i64 875708738, i64 875711833, i64 875713089, i64 875713112, i64 875714626, i64 892424769, i64 892424792, i64 909200718, i64 909200729, i64 1346520914, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.165 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.166 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.167 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.168 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.169 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.170 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.171 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.172 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.173 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.174 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.176 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 35, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"fdp1_pdrv\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2442, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2446, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"fdp1_dt_ids\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2436, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"fdp1_pm_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2430, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2277, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2279, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2280, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2298, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2303, i32 49 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2308, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2325, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2199, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2332, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [14 x i8] c"fdp1_videodev\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2189, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2347, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2351, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2363, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2366, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2369, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2372, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2375, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2378, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2223, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2228, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2231, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2238, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 789, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1312, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1317, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1341, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1346, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1011, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1016, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1032, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1039, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1044, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1049, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1270, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1282, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1291, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1188, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1198, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1205, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1211, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1251, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1143, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1153, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1164, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [10 x i8] c"fdp1_fops\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2180, i32 42 }
@___asan_gen_.504 = private unnamed_addr constant [15 x i8] c"fdp1_ioctl_ops\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1728, i32 36 }
@___asan_gen_.507 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2104, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [14 x i8] c"fdp1_ctrl_ops\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1713, i32 35 }
@___asan_gen_.516 = private unnamed_addr constant [21 x i8] c"fdp1_ctrl_deint_menu\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1718, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2144, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1719, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1720, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1721, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1722, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1723, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1724, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [13 x i8] c"fdp1_formats\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 296, i32 30 }
@___asan_gen_.549 = private unnamed_addr constant [10 x i8] c"fdp1_qops\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2029, i32 29 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1882, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1896, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1163, i32 7 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1949, i32 5 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1999, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2021, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2024, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2165, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1367, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1663, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1669, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1594, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 781, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant [14 x i8] c"fdp1_diff_adj\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 417, i32 17 }
@___asan_gen_.642 = private unnamed_addr constant [13 x i8] c"fdp1_sad_adj\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 423, i32 17 }
@___asan_gen_.645 = private unnamed_addr constant [14 x i8] c"fdp1_bld_gain\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 429, i32 17 }
@___asan_gen_.648 = private unnamed_addr constant [14 x i8] c"fdp1_dif_gain\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 433, i32 17 }
@___asan_gen_.651 = private unnamed_addr constant [10 x i8] c"fdp1_mdet\00", align 1
@___asan_gen_.652 = private constant [38 x i8] c"../drivers/media/platform/rcar_fdp1.c\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 437, i32 17 }
@___asan_gen_.654 = private unnamed_addr constant [33 x i8] c"switch.table.fdp1_m2m_device_run\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [32 x i8] c"switch.table.fdp1_m2m_job_ready\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [25 x i8] c"switch.table.fdp1_g_ctrl\00", align 1
@llvm.compiler.used = appending global [219 x ptr] [ptr @__UNIQUE_ID_alias330, ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_debug300, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_fdp1_pdrv_exit, ptr @__initcall__kmod_rcar_fdp1__325_2452_fdp1_pdrv_init6, ptr @__param_debug, ptr @device_frame_end._entry, ptr @device_frame_end._entry.68, ptr @device_frame_end._entry.71, ptr @device_frame_end._entry.74, ptr @device_frame_end._entry_ptr, ptr @device_frame_end._entry_ptr.70, ptr @device_frame_end._entry_ptr.73, ptr @device_frame_end._entry_ptr.76, ptr @fdp1_buf_prepare._entry, ptr @fdp1_buf_prepare._entry.131, ptr @fdp1_buf_prepare._entry_ptr, ptr @fdp1_buf_prepare._entry_ptr.133, ptr @fdp1_configure_deint_mode._entry, ptr @fdp1_configure_deint_mode._entry.79, ptr @fdp1_configure_deint_mode._entry.82, ptr @fdp1_configure_deint_mode._entry.85, ptr @fdp1_configure_deint_mode._entry.88, ptr @fdp1_configure_deint_mode._entry.91, ptr @fdp1_configure_deint_mode._entry_ptr, ptr @fdp1_configure_deint_mode._entry_ptr.81, ptr @fdp1_configure_deint_mode._entry_ptr.84, ptr @fdp1_configure_deint_mode._entry_ptr.87, ptr @fdp1_configure_deint_mode._entry_ptr.90, ptr @fdp1_configure_deint_mode._entry_ptr.93, ptr @fdp1_irq_handler._entry, ptr @fdp1_irq_handler._entry.50, ptr @fdp1_irq_handler._entry.53, ptr @fdp1_irq_handler._entry.61, ptr @fdp1_irq_handler._entry_ptr, ptr @fdp1_irq_handler._entry_ptr.52, ptr @fdp1_irq_handler._entry_ptr.55, ptr @fdp1_irq_handler._entry_ptr.63, ptr @fdp1_m2m_device_run._entry, ptr @fdp1_m2m_device_run._entry.95, ptr @fdp1_m2m_device_run._entry.98, ptr @fdp1_m2m_device_run._entry_ptr, ptr @fdp1_m2m_device_run._entry_ptr.100, ptr @fdp1_m2m_device_run._entry_ptr.97, ptr @fdp1_m2m_job_abort._entry, ptr @fdp1_m2m_job_abort._entry_ptr, ptr @fdp1_m2m_job_ready._entry, ptr @fdp1_m2m_job_ready._entry.116, ptr @fdp1_m2m_job_ready._entry_ptr, ptr @fdp1_m2m_job_ready._entry_ptr.118, ptr @fdp1_open._entry, ptr @fdp1_open._entry_ptr, ptr @fdp1_pdrv_exit, ptr @fdp1_prepare_job._entry, ptr @fdp1_prepare_job._entry.102, ptr @fdp1_prepare_job._entry.105, ptr @fdp1_prepare_job._entry.108, ptr @fdp1_prepare_job._entry.111, ptr @fdp1_prepare_job._entry_ptr, ptr @fdp1_prepare_job._entry_ptr.104, ptr @fdp1_prepare_job._entry_ptr.107, ptr @fdp1_prepare_job._entry_ptr.110, ptr @fdp1_prepare_job._entry_ptr.113, ptr @fdp1_probe._entry, ptr @fdp1_probe._entry.13, ptr @fdp1_probe._entry.16, ptr @fdp1_probe._entry.19, ptr @fdp1_probe._entry.21, ptr @fdp1_probe._entry.24, ptr @fdp1_probe._entry.27, ptr @fdp1_probe._entry.30, ptr @fdp1_probe._entry.33, ptr @fdp1_probe._entry.36, ptr @fdp1_probe._entry.39, ptr @fdp1_probe._entry_ptr, ptr @fdp1_probe._entry_ptr.15, ptr @fdp1_probe._entry_ptr.18, ptr @fdp1_probe._entry_ptr.20, ptr @fdp1_probe._entry_ptr.23, ptr @fdp1_probe._entry_ptr.26, ptr @fdp1_probe._entry_ptr.29, ptr @fdp1_probe._entry_ptr.32, ptr @fdp1_probe._entry_ptr.35, ptr @fdp1_probe._entry_ptr.38, ptr @fdp1_probe._entry_ptr.41, ptr @fdp1_read._entry, ptr @fdp1_read._entry_ptr, ptr @fdp1_release._entry, ptr @fdp1_release._entry_ptr, ptr @fdp1_s_fmt._entry, ptr @fdp1_s_fmt._entry.145, ptr @fdp1_s_fmt._entry_ptr, ptr @fdp1_s_fmt._entry_ptr.147, ptr @fdp1_start_streaming._entry, ptr @fdp1_start_streaming._entry_ptr, ptr @fdp1_try_fmt._entry, ptr @fdp1_try_fmt._entry_ptr, ptr @fdp1_write._entry, ptr @fdp1_write._entry_ptr, ptr @debug, ptr @fdp1_pdrv, ptr @.str, ptr @fdp1_dt_ids, ptr @fdp1_pm_ops, ptr @fdp1_probe.__key, ptr @.str.1, ptr @fdp1_probe.__key.2, ptr @.str.3, ptr @fdp1_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @m2m_ops, ptr @.str.17, ptr @fdp1_videodev, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @fdp1_fops, ptr @fdp1_ioctl_ops, ptr @fdp1_open._key, ptr @.str.120, ptr @fdp1_ctrl_ops, ptr @fdp1_ctrl_deint_menu, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @fdp1_formats, ptr @fdp1_qops, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @fdp1_diff_adj, ptr @fdp1_sad_adj, ptr @fdp1_bld_gain, ptr @fdp1_dif_gain, ptr @fdp1_mdet, ptr @switch.table.fdp1_m2m_device_run, ptr @switch.table.fdp1_m2m_job_ready, ptr @switch.table.fdp1_g_ctrl], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_irq_handler._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_irq_handler._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_irq_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_frame_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_frame_end._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_frame_end._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_frame_end._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_configure_deint_mode._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_device_run._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_device_run._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_prepare_job._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_prepare_job._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_prepare_job._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_prepare_job._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_prepare_job._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_job_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_job_ready._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_m2m_job_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_ctrl_deint_menu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_formats to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_buf_prepare._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_s_fmt._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_diff_adj to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_sad_adj to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_bld_gain to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_dif_gain to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp1_mdet to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fdp1_m2m_device_run to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fdp1_m2m_job_ready to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fdp1_g_ctrl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fdp1_pdrv, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fdp1_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @fdp1_pdrv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1904, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_job_list = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_job_list, ptr %free_job_list, align 4
  %prev.i = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_job_list, ptr %prev.i, align 4
  %queued_job_list = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 10
  %2 = ptrtoint ptr %queued_job_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queued_job_list, ptr %queued_job_list, align 4
  %prev.i304 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queued_job_list, ptr %prev.i304, align 4
  %hw_job_list = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %hw_job_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %hw_job_list, ptr %hw_job_list, align 4
  %prev.i305 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %prev.i305 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw_job_list, ptr %prev.i305, align 4
  %list = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %free_job_list, ptr noundef %free_job_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_job_list, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %free_job_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %free_job_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %list.1 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 1, i32 4
  %10 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_job_list, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.1, ptr noundef %free_job_list, ptr noundef %11) #15
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.1, ptr %prev1.i.i.1, align 4
  %13 = ptrtoint ptr %list.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %list.1, align 4
  %prev3.i.i.1 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 1, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %free_job_list, ptr %prev3.i.i.1, align 4
  %15 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.1, ptr %free_job_list, align 4
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %list.2 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 2, i32 4
  %16 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_job_list, align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.2, ptr noundef %free_job_list, ptr noundef %17) #15
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add.exit.1.list_add.exit.2_crit_edge

list_add.exit.1.list_add.exit.2_crit_edge:        ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.2

if.end.i.i.2:                                     ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.2 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list.2, ptr %prev1.i.i.2, align 4
  %19 = ptrtoint ptr %list.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %list.2, align 4
  %prev3.i.i.2 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 2, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_job_list, ptr %prev3.i.i.2, align 4
  %21 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list.2, ptr %free_job_list, align 4
  br label %list_add.exit.2

list_add.exit.2:                                  ; preds = %if.end.i.i.2, %list_add.exit.1.list_add.exit.2_crit_edge
  %list.3 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 3, i32 4
  %22 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_job_list, align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.3, ptr noundef %free_job_list, ptr noundef %23) #15
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add.exit.2.list_add.exit.3_crit_edge

list_add.exit.2.list_add.exit.3_crit_edge:        ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.3

if.end.i.i.3:                                     ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.3 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.3, ptr %prev1.i.i.3, align 4
  %25 = ptrtoint ptr %list.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list.3, align 4
  %prev3.i.i.3 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 3, i32 4, i32 1
  %26 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %free_job_list, ptr %prev3.i.i.3, align 4
  %27 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.3, ptr %free_job_list, align 4
  br label %list_add.exit.3

list_add.exit.3:                                  ; preds = %if.end.i.i.3, %list_add.exit.2.list_add.exit.3_crit_edge
  %list.4 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 4, i32 4
  %28 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %free_job_list, align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.4, ptr noundef %free_job_list, ptr noundef %29) #15
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add.exit.3.list_add.exit.4_crit_edge

list_add.exit.3.list_add.exit.4_crit_edge:        ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.4

if.end.i.i.4:                                     ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.4 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.4, ptr %prev1.i.i.4, align 4
  %31 = ptrtoint ptr %list.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list.4, align 4
  %prev3.i.i.4 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 4, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %free_job_list, ptr %prev3.i.i.4, align 4
  %33 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.4, ptr %free_job_list, align 4
  br label %list_add.exit.4

list_add.exit.4:                                  ; preds = %if.end.i.i.4, %list_add.exit.3.list_add.exit.4_crit_edge
  %list.5 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 5, i32 4
  %34 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free_job_list, align 4
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.5, ptr noundef %free_job_list, ptr noundef %35) #15
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add.exit.4.list_add.exit.5_crit_edge

list_add.exit.4.list_add.exit.5_crit_edge:        ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.5

if.end.i.i.5:                                     ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.5 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.5, ptr %prev1.i.i.5, align 4
  %37 = ptrtoint ptr %list.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %list.5, align 4
  %prev3.i.i.5 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 5, i32 4, i32 1
  %38 = ptrtoint ptr %prev3.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_job_list, ptr %prev3.i.i.5, align 4
  %39 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.5, ptr %free_job_list, align 4
  br label %list_add.exit.5

list_add.exit.5:                                  ; preds = %if.end.i.i.5, %list_add.exit.4.list_add.exit.5_crit_edge
  %list.6 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 6, i32 4
  %40 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %free_job_list, align 4
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.6, ptr noundef %free_job_list, ptr noundef %41) #15
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add.exit.5.list_add.exit.6_crit_edge

list_add.exit.5.list_add.exit.6_crit_edge:        ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.6

if.end.i.i.6:                                     ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.6 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.6, ptr %prev1.i.i.6, align 4
  %43 = ptrtoint ptr %list.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %list.6, align 4
  %prev3.i.i.6 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 6, i32 4, i32 1
  %44 = ptrtoint ptr %prev3.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %free_job_list, ptr %prev3.i.i.6, align 4
  %45 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list.6, ptr %free_job_list, align 4
  br label %list_add.exit.6

list_add.exit.6:                                  ; preds = %if.end.i.i.6, %list_add.exit.5.list_add.exit.6_crit_edge
  %list.7 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 7, i32 4
  %46 = ptrtoint ptr %free_job_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %free_job_list, align 4
  %call.i.i.7 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.7, ptr noundef %free_job_list, ptr noundef %47) #15
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_add.exit.6.list_add.exit.7_crit_edge

list_add.exit.6.list_add.exit.7_crit_edge:        ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.7

if.end.i.i.7:                                     ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.7 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %list.7, ptr %prev1.i.i.7, align 4
  %49 = ptrtoint ptr %list.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %list.7, align 4
  %prev3.i.i.7 = getelementptr %struct.fdp1_dev, ptr %call.i, i32 0, i32 8, i32 7, i32 4, i32 1
  %50 = ptrtoint ptr %prev3.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %free_job_list, ptr %prev3.i.i.7, align 4
  %51 = ptrtoint ptr %free_job_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list.7, ptr %free_job_list, align 4
  br label %list_add.exit.7

list_add.exit.7:                                  ; preds = %if.end.i.i.7, %list_add.exit.6.list_add.exit.7_crit_edge
  %dev_mutex = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @fdp1_probe.__key) #15
  %irqlock = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @fdp1_probe.__key.2, i16 noundef signext 3) #15
  %device_process_lock = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %device_process_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @fdp1_probe.__key.4, i16 noundef signext 3) #15
  %dev11 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 7
  %52 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %dev11, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #15
  %regs = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call12, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %list_add.exit.7
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %list_add.exit.7
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %irq = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call19, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i306 = phi ptr [ %60, %if.end.i ], [ %58, %if.end22.dev_name.exit_crit_edge ]
  %call.i307 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call19, ptr noundef nonnull @fdp1_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i306, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool28.not = icmp eq i32 %call.i307, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %62) #18
  br label %cleanup

if.end35:                                         ; preds = %dev_name.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %65 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i308 = call i32 @__of_parse_phandle_with_args(ptr noundef %64, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  br label %if.end59

of_parse_phandle.exit:                            ; preds = %if.end35
  %66 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %tobool38.not = icmp eq ptr %67, null
  br i1 %tobool38.not, label %of_parse_phandle.exit.if.end59_crit_edge, label %if.then39

of_parse_phandle.exit.if.end59_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then39:                                        ; preds = %of_parse_phandle.exit
  %call40 = call ptr @rcar_fcp_get(ptr noundef nonnull %67) #15
  %fcp = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 13
  %68 = ptrtoint ptr %fcp to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call40, ptr %fcp, align 4
  call void @of_node_put(ptr noundef nonnull %67) #15
  %69 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fcp, align 4
  %cmp.i312 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %do.body44, label %if.then39.if.end59_crit_edge

if.then39.if.end59_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

do.body44:                                        ; preds = %if.then39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp1_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp1_probe, %if.then49)) #15
          to label %do.end55 [label %if.then49], !srcloc !315

if.then49:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fcp, align 4
  %73 = ptrtoint ptr %72 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp1_probe.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %73) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body44
  %74 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fcp, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.then39.if.end59_crit_edge, %of_parse_phandle.exit.if.end59_crit_edge, %of_parse_phandle.exit.thread
  %call61 = call ptr @clk_get(ptr noundef %dev, ptr noundef null) #15
  %cmp.i313 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %call66 = call i32 @clk_get_rate(ptr noundef %call61) #15
  %clk_rate = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 12
  %78 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call66, ptr %clk_rate, align 8
  call void @clk_put(ptr noundef %call61) #15
  %call68 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end77, label %do.end73

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name) #18
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %call78 = call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #15
  %m2m_dev = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 14
  %79 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call78, ptr %m2m_dev, align 8
  %cmp.i314 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %do.end84, label %if.end92

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %name87 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name87) #18
  %80 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %m2m_dev, align 8
  %82 = ptrtoint ptr %81 to i32
  br label %unreg_dev

if.end92:                                         ; preds = %if.end77
  %vfd93 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1
  %83 = call ptr @memcpy(ptr %vfd93, ptr @fdp1_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 26
  %84 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev97 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 7
  %85 = ptrtoint ptr %v4l2_dev97 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %v4l2_dev97, align 4
  %driver_data.i.i315 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %86 = ptrtoint ptr %driver_data.i.i315 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %driver_data.i.i315, align 4
  %name98 = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 12
  %call100 = call i32 @strscpy(ptr noundef %name98, ptr noundef getelementptr inbounds (%struct.video_device, ptr @fdp1_videodev, i32 0, i32 12), i32 noundef 32) #15
  %fops.i = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fops.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call.i316 = call i32 @__video_register_device(ptr noundef %vfd93, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %90) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool102.not = icmp eq i32 %call.i316, 0
  %name118 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool102.not, label %do.end115, label %do.end106

do.end106:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name118) #18
  br label %release_m2m

do.end115:                                        ; preds = %if.end92
  %num = getelementptr inbounds %struct.fdp1_dev, ptr %call.i, i32 0, i32 1, i32 16
  %91 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num, align 4
  %conv = zext i16 %92 to i32
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name118, i32 noundef %conv) #18
  call void @pm_runtime_enable(ptr noundef %dev) #15
  %93 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev11, align 4
  %call123 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %disable_pm, label %if.end127

if.end127:                                        ; preds = %do.end115
  %call128 = call fastcc i32 @fdp1_read(ptr noundef nonnull %call.i, i32 noundef 2048)
  %95 = zext i32 %call128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call128, label %do.end210 [
    i32 33620225, label %do.body129
    i32 33620482, label %do.body145
    i32 33620483, label %do.body161
    i32 33620484, label %do.body177
    i32 33620485, label %do.body193
  ]

do.body129:                                       ; preds = %if.end127
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp130.not = icmp eq i32 %96, 0
  br i1 %cmp130.not, label %do.body129.sw.epilog_crit_edge, label %do.end135

do.body129.sw.epilog_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #17
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name118, ptr noundef nonnull @.str.7) #18
  br label %sw.epilog

do.body145:                                       ; preds = %if.end127
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp146.not = icmp eq i32 %97, 0
  br i1 %cmp146.not, label %do.body145.sw.epilog_crit_edge, label %do.end151

do.body145.sw.epilog_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end151:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #17
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name118, ptr noundef nonnull @.str.7) #18
  br label %sw.epilog

do.body161:                                       ; preds = %if.end127
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp162.not = icmp eq i32 %98, 0
  br i1 %cmp162.not, label %do.body161.sw.epilog_crit_edge, label %do.end167

do.body161.sw.epilog_crit_edge:                   ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end167:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #17
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name118, ptr noundef nonnull @.str.7) #18
  br label %sw.epilog

do.body177:                                       ; preds = %if.end127
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp178.not = icmp eq i32 %99, 0
  br i1 %cmp178.not, label %do.body177.sw.epilog_crit_edge, label %do.end183

do.body177.sw.epilog_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end183:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #17
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name118, ptr noundef nonnull @.str.7) #18
  br label %sw.epilog

do.body193:                                       ; preds = %if.end127
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp194.not = icmp eq i32 %100, 0
  br i1 %cmp194.not, label %do.body193.sw.epilog_crit_edge, label %do.end199

do.body193.sw.epilog_crit_edge:                   ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end199:                                        ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #17
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name118, ptr noundef nonnull @.str.7) #18
  br label %sw.epilog

do.end210:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.40, i32 noundef %call128) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end210, %do.end199, %do.body193.sw.epilog_crit_edge, %do.end183, %do.body177.sw.epilog_crit_edge, %do.end167, %do.body161.sw.epilog_crit_edge, %do.end151, %do.body145.sw.epilog_crit_edge, %do.end135, %do.body129.sw.epilog_crit_edge
  %103 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev11, align 4
  %call.i317 = call i32 @__pm_runtime_idle(ptr noundef %104, i32 noundef 5) #15
  br label %cleanup

disable_pm:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev11, align 4
  call void @__pm_runtime_disable(ptr noundef %106, i1 noundef zeroext true) #15
  br label %release_m2m

release_m2m:                                      ; preds = %disable_pm, %do.end106
  %ret.0 = phi i32 [ %call.i316, %do.end106 ], [ %call123, %disable_pm ]
  %107 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %m2m_dev, align 8
  call void @v4l2_m2m_release(ptr noundef %108) #15
  br label %unreg_dev

unreg_dev:                                        ; preds = %release_m2m, %do.end84
  %ret.1 = phi i32 [ %82, %do.end84 ], [ %ret.0, %release_m2m ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %unreg_dev, %sw.epilog, %do.end73, %if.then63, %do.end55, %do.end32, %if.end18.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %55, %if.then15 ], [ %call.i307, %do.end32 ], [ %76, %do.end55 ], [ %77, %if.then63 ], [ %call68, %do.end73 ], [ %ret.1, %unreg_dev ], [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %m2m_dev = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %3) #15
  %vfd = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #15
  tail call void @v4l2_device_unregister(ptr noundef %1) #15
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.fdp1_dev, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !316
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp ugt i32 %4, 1
  br i1 %cmp.i, label %do.end.i, label %entry.fdp1_read.exit_crit_edge

entry.fdp1_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name.i, ptr noundef nonnull @.str.153, i32 noundef %3, i32 noundef 60) #18
  br label %fdp1_read.exit

fdp1_read.exit:                                   ; preds = %do.end.i, %entry.fdp1_read.exit_crit_edge
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #15, !srcloc !316
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i114 = icmp ugt i32 %9, 1
  br i1 %cmp.i114, label %do.end.i117, label %fdp1_read.exit.fdp1_read.exit118_crit_edge

fdp1_read.exit.fdp1_read.exit118_crit_edge:       ; preds = %fdp1_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_read.exit118

do.end.i117:                                      ; preds = %fdp1_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i115 = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %call4.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name.i115, ptr noundef nonnull @.str.153, i32 noundef %8, i32 noundef 40) #18
  br label %fdp1_read.exit118

fdp1_read.exit118:                                ; preds = %do.end.i117, %fdp1_read.exit.fdp1_read.exit118_crit_edge
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #15, !srcloc !316
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i121 = icmp ugt i32 %14, 1
  br i1 %cmp.i121, label %fdp1_read.exit125, label %fdp1_read.exit125.thread

fdp1_read.exit125.thread:                         ; preds = %fdp1_read.exit118
  call void @__sanitizer_cov_trace_pc() #17
  %neg132 = and i32 %3, 65553
  %and3133 = xor i32 %neg132, 65553
  br label %fdp1_write.exit

fdp1_read.exit125:                                ; preds = %fdp1_read.exit118
  %name.i122 = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %call4.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name.i122, ptr noundef nonnull @.str.153, i32 noundef %13, i32 noundef 36) #18
  %.pr = load i32, ptr @debug, align 4
  %neg = and i32 %3, 65553
  %and3 = xor i32 %neg, 65553
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i126 = icmp ugt i32 %.pr, 1
  br i1 %cmp.i126, label %do.end.i128, label %fdp1_read.exit125.fdp1_write.exit_crit_edge

fdp1_read.exit125.fdp1_write.exit_crit_edge:      ; preds = %fdp1_read.exit125
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit

do.end.i128:                                      ; preds = %fdp1_read.exit125
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i122, ptr noundef nonnull @.str.65, i32 noundef %and3, i32 noundef 60) #18
  br label %fdp1_write.exit

fdp1_write.exit:                                  ; preds = %do.end.i128, %fdp1_read.exit125.fdp1_write.exit_crit_edge, %fdp1_read.exit125.thread
  %and3137 = phi i32 [ %and3133, %fdp1_read.exit125.thread ], [ %and3, %fdp1_read.exit125.fdp1_write.exit_crit_edge ], [ %and3, %do.end.i128 ]
  %neg136 = phi i32 [ %neg132, %fdp1_read.exit125.thread ], [ %neg, %fdp1_read.exit125.fdp1_write.exit_crit_edge ], [ %neg, %do.end.i128 ]
  %shr135 = lshr i32 %13, 16
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %and3137) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %17) #15, !srcloc !319
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %do.end, label %fdp1_write.exit.if.end72_crit_edge

fdp1_write.exit.if.end72_crit_edge:               ; preds = %fdp1_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.end:                                           ; preds = %fdp1_write.exit
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %and7 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  %and8 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.47, ptr @.str.46
  %and11 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.49, ptr @.str.48
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull @.str.43, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond10, ptr noundef nonnull %cond13) #18
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.not = icmp eq i32 %19, 0
  br i1 %cmp18.not, label %do.end.if.end72_crit_edge, label %do.body32

do.end.if.end72_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.body32:                                        ; preds = %do.end
  %clk_rate = getelementptr inbounds %struct.fdp1_dev, ptr %dev_id, i32 0, i32 12
  %20 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_rate, align 8
  %div = udiv i32 %21, 1000
  %div27 = udiv i32 %8, %div
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name, ptr noundef nonnull @.str.43, i32 noundef %8, i32 noundef %div27) #18
  %.pr138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr138)
  %cmp33.not = icmp eq i32 %.pr138, 0
  br i1 %cmp33.not, label %do.body32.if.end72_crit_edge, label %do.body58

do.body32.if.end72_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.body58:                                        ; preds = %do.body32
  %and42 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.57, ptr @.str.56
  %and45 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.57, ptr @.str.58
  %and48 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.57, ptr @.str.59
  %and51 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.57, ptr @.str.60
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef nonnull @.str.43, i32 noundef %13, i32 noundef %shr135, ptr noundef nonnull %cond44, ptr noundef nonnull %cond47, ptr noundef nonnull %cond50, ptr noundef nonnull %cond53) #18
  %.pr140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr140)
  %cmp59.not = icmp eq i32 %.pr140, 0
  br i1 %cmp59.not, label %do.body58.if.end72_crit_edge, label %do.end63

do.body58.if.end72_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #17
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef nonnull @.str.43) #18
  br label %if.end72

if.end72:                                         ; preds = %do.end63, %do.body58.if.end72_crit_edge, %do.body32.if.end72_crit_edge, %do.end.if.end72_crit_edge, %fdp1_write.exit.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg136)
  %tobool74.not = icmp eq i32 %neg136, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.end76

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %and77 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else, label %if.end76.cleanup.sink.split_crit_edge

if.end76.cleanup.sink.split_crit_edge:            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end76
  %and80 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end76.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.end76.cleanup.sink.split_crit_edge ], [ 5, %if.else.cleanup.sink.split_crit_edge ]
  tail call fastcc void @device_frame_end(ptr noundef %dev_id, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_fcp_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #15, !srcloc !321
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !322
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdp1_read(ptr noundef %fdp1, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !316
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name, ptr noundef nonnull @.str.153, i32 noundef %3, i32 noundef %reg) #18
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_frame_end(ptr noundef %fdp1, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_job_list.i = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 11
  %irqlock.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %0 = ptrtoint ptr %hw_job_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_job_list.i, align 4
  %cmp10.not.i.i = icmp eq ptr %1, %hw_job_list.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  %spec.select.i.i = select i1 %cmp10.not.i.i, ptr null, ptr %add.ptr.i.i
  %tobool.not.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i.i, label %entry.get_hw_queued_job.exit_crit_edge, label %if.then.i.i

entry.get_hw_queued_job.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_hw_queued_job.exit

if.then.i.i:                                      ; preds = %entry
  %list13.i.i = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list13.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i.i, align 4
  %4 = ptrtoint ptr %list13.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list13.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %list13.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list13.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %get_hw_queued_job.exit

get_hw_queued_job.exit:                           ; preds = %list_del.exit.i.i, %entry.get_hw_queued_job.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i) #15
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %get_hw_queued_job.exit.do.end4_crit_edge, label %do.end

get_hw_queued_job.exit.do.end4_crit_edge:         ; preds = %get_hw_queued_job.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end:                                           ; preds = %get_hw_queued_job.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, ptr noundef nonnull @.str.67) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %get_hw_queued_job.exit.do.end4_crit_edge
  %m2m_dev = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 14
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_dev, align 8
  %call5 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %12) #15
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %do.end10, label %if.end16

do.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  %name13 = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name13) #18
  br label %cleanup

if.end16:                                         ; preds = %do.end4
  %num_processed = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 4
  %13 = ptrtoint ptr %num_processed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_processed, align 4
  %inc = add i8 %14, 1
  store i8 %inc, ptr %num_processed, align 4
  %deint_mode = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 7
  %15 = ptrtoint ptr %deint_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %deint_mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %16, label %if.else [
    i32 1, label %if.end16.if.then23_crit_edge
    i32 3, label %if.end16.if.then23_crit_edge123
    i32 4, label %if.end16.if.then23_crit_edge124
  ]

if.end16.if.then23_crit_edge124:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.end16.if.then23_crit_edge123:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.end16.if.then23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.then23:                                        ; preds = %if.end16.if.then23_crit_edge, %if.end16.if.then23_crit_edge123, %if.end16.if.then23_crit_edge124
  %18 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec.select.i.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then23.do.body26_crit_edge, label %if.end.i

if.then23.do.body26_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

if.end.i:                                         ; preds = %if.then23
  %last_field.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %last_field.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %last_field.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.end.i.do.body26_crit_edge, label %if.end.i.do.body26.sink.split_crit_edge

if.end.i.do.body26.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26.sink.split

if.end.i.do.body26_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

if.else:                                          ; preds = %if.end16
  %active = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active, align 4
  %tobool.not.i111 = icmp eq ptr %23, null
  br i1 %tobool.not.i111, label %if.else.do.body26_crit_edge, label %if.end.i114

if.else.do.body26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

if.end.i114:                                      ; preds = %if.else
  %last_field.i112 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %last_field.i112 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_field.i112, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not.i113 = icmp eq i8 %25, 0
  br i1 %tobool1.not.i113, label %if.end.i114.do.body26_crit_edge, label %if.end.i114.do.body26.sink.split_crit_edge

if.end.i114.do.body26.sink.split_crit_edge:       ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26.sink.split

if.end.i114.do.body26_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body26

do.body26.sink.split:                             ; preds = %if.end.i114.do.body26.sink.split_crit_edge, %if.end.i.do.body26.sink.split_crit_edge
  %.sink122 = phi ptr [ %19, %if.end.i.do.body26.sink.split_crit_edge ], [ %23, %if.end.i114.do.body26.sink.split_crit_edge ]
  %26 = ptrtoint ptr %.sink122 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.sink122, align 4
  tail call void @vb2_buffer_done(ptr noundef %27, i32 noundef 5) #15
  br label %do.body26

do.body26:                                        ; preds = %do.body26.sink.split, %if.end.i114.do.body26_crit_edge, %if.else.do.body26_crit_edge, %if.end.i.do.body26_crit_edge, %if.then23.do.body26_crit_edge
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %dst = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @vb2_buffer_done(ptr noundef %31, i32 noundef %state) #15
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dst, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call30) #15
  %33 = call ptr @memset(ptr %spec.select.i.i, i32 0, i32 24)
  %free_job_list.i = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 9
  %call2.i.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %list5.i.i = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 4
  %prev.i.i.i119 = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %prev.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i119, align 4
  %call.i.i.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %list5.i.i, ptr noundef %35, ptr noundef %free_job_list.i) #15
  br i1 %call.i.i.i.i120, label %if.end.i.i.i.i121, label %do.body26.fdp1_job_free.exit_crit_edge

do.body26.fdp1_job_free.exit_crit_edge:           ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_job_free.exit

if.end.i.i.i.i121:                                ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %prev.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list5.i.i, ptr %prev.i.i.i119, align 4
  %37 = ptrtoint ptr %list5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %free_job_list.i, ptr %list5.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.fdp1_job, ptr %spec.select.i.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list5.i.i, ptr %35, align 4
  br label %fdp1_job_free.exit

fdp1_job_free.exit:                               ; preds = %if.end.i.i.i.i121, %do.body26.fdp1_job_free.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i118) #15
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp38.not = icmp eq i32 %40, 0
  br i1 %cmp38.not, label %fdp1_job_free.exit.do.end53_crit_edge, label %do.end43

fdp1_job_free.exit.do.end53_crit_edge:            ; preds = %fdp1_job_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end53

do.end43:                                         ; preds = %fdp1_job_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name46 = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %41 = ptrtoint ptr %num_processed to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_processed, align 4
  %conv49 = zext i8 %42 to i32
  %translen = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 5
  %43 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %translen, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name46, ptr noundef nonnull @.str.67, i32 noundef %conv49, i32 noundef %44) #18
  br label %do.end53

do.end53:                                         ; preds = %do.end43, %fdp1_job_free.exit.do.end53_crit_edge
  %45 = ptrtoint ptr %num_processed to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_processed, align 4
  %conv55 = zext i8 %46 to i32
  %translen56 = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 5
  %47 = ptrtoint ptr %translen56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %translen56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv55)
  %cmp57 = icmp eq i32 %48, %conv55
  br i1 %cmp57, label %do.end53.do.body61_crit_edge, label %lor.lhs.false59

do.end53.do.body61_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body61

lor.lhs.false59:                                  ; preds = %do.end53
  %aborting = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 6
  %49 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %if.else79, label %lor.lhs.false59.do.body61_crit_edge

lor.lhs.false59.do.body61_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body61

do.body61:                                        ; preds = %lor.lhs.false59.do.body61_crit_edge, %do.end53.do.body61_crit_edge
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp62.not = icmp eq i32 %51, 0
  br i1 %cmp62.not, label %do.body61.do.end76_crit_edge, label %do.end67

do.body61.do.end76_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end76

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #17
  %fdp169 = getelementptr inbounds %struct.fdp1_ctx, ptr %call5, i32 0, i32 1
  %52 = ptrtoint ptr %fdp169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fdp169, align 4
  %name71 = getelementptr inbounds %struct.v4l2_device, ptr %53, i32 0, i32 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name71, ptr noundef nonnull @.str.67) #18
  br label %do.end76

do.end76:                                         ; preds = %do.end67, %do.body61.do.end76_crit_edge
  %54 = ptrtoint ptr %num_processed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %num_processed, align 4
  %55 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m2m_dev, align 8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call5, i32 0, i32 10
  %57 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %56, ptr noundef %58) #15
  br label %cleanup

if.else79:                                        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fdp1_device_process(ptr noundef nonnull %call5)
  br label %cleanup

cleanup:                                          ; preds = %if.else79, %do.end76, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp1_device_process(ptr noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fdp11 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdp11, align 4
  %device_process_lock = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %device_process_lock) #15
  %queued_job_list.i = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 10
  %irqlock.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %2 = ptrtoint ptr %queued_job_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued_job_list.i, align 4
  %cmp10.not.i.i = icmp eq ptr %3, %queued_job_list.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -16
  %tobool.not.i.i101 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp10.not.i.i, %tobool.not.i.i101
  br i1 %tobool.not.i.i, label %if.then, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i.i, %if.then.i.i.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i.i = getelementptr i8, ptr %3, i32 4
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i) #15
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.fdp1_write.exit_crit_edge

if.end.fdp1_write.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 24) #18
  br label %fdp1_write.exit

fdp1_write.exit:                                  ; preds = %do.end.i, %if.end.fdp1_write.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #15, !srcloc !319
  %15 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fdp11, align 4
  %deint_mode.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 7
  %17 = ptrtoint ptr %deint_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %deint_mode.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %18, label %do.body.i [
    i32 5, label %do.body95.i
    i32 1, label %do.body7.i
    i32 3, label %do.body38.i
    i32 2, label %do.body62.i
    i32 4, label %do.body78.i
  ]

do.body.i:                                        ; preds = %fdp1_write.exit
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %do.body.i.fdp1_write.exit.i_crit_edge, label %do.end.i3

do.body.i.fdp1_write.exit.i_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i

do.end.i3:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i1 = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call.i2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i1, ptr noundef nonnull @.str.78) #18
  br label %sw.epilog.i

do.body7.i:                                       ; preds = %fdp1_write.exit
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.not.i = icmp eq i32 %21, 0
  br i1 %cmp8.not.i, label %do.body7.i.do.end20.i_crit_edge, label %do.end12.i

do.body7.i.do.end20.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %name15.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name15.i, ptr noundef nonnull @.str.78) #18
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end12.i, %do.body7.i.do.end20.i_crit_edge
  %sequence.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21.i = icmp eq i32 %23, 0
  br i1 %cmp21.i, label %do.end20.i.if.end25.i_crit_edge, label %lor.lhs.false.i

do.end20.i.if.end25.i_crit_edge:                  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

lor.lhs.false.i:                                  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %aborting.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 6
  %24 = ptrtoint ptr %aborting.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aborting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %spec.select2.i = select i1 %tobool.not.i, i32 256, i32 257
  br label %if.end25.i

if.end25.i:                                       ; preds = %lor.lhs.false.i, %do.end20.i.if.end25.i_crit_edge
  %ipcmode.0.i = phi i32 [ 257, %do.end20.i.if.end25.i_crit_edge ], [ %spec.select2.i, %lor.lhs.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp27.i = icmp ugt i32 %23, 1
  %spec.select.i = select i1 %cmp27.i, i32 775, i32 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp33.i = icmp ugt i32 %23, 2
  %or35.i = or i32 %spec.select.i, 8
  %spec.select3.i = select i1 %cmp33.i, i32 %or35.i, i32 %spec.select.i
  br label %sw.epilog.i

do.body38.i:                                      ; preds = %fdp1_write.exit
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp39.not.i = icmp eq i32 %26, 0
  br i1 %cmp39.not.i, label %do.body38.i.do.end51.i_crit_edge, label %do.end43.i

do.body38.i.do.end51.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end51.i

do.end43.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  %name46.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name46.i, ptr noundef nonnull @.str.78) #18
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end43.i, %do.body38.i.do.end51.i_crit_edge
  %sequence53.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 3
  %27 = ptrtoint ptr %sequence53.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sequence53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp54.i = icmp eq i32 %28, 0
  br i1 %cmp54.i, label %do.end51.i.sw.epilog.i_crit_edge, label %lor.lhs.false55.i

do.end51.i.sw.epilog.i_crit_edge:                 ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

lor.lhs.false55.i:                                ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  %aborting56.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 6
  %29 = ptrtoint ptr %aborting56.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aborting56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool57.not.i = icmp eq i32 %30, 0
  %spec.select1.i = select i1 %tobool57.not.i, i32 263, i32 258
  br label %sw.epilog.i

do.body62.i:                                      ; preds = %fdp1_write.exit
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp63.not.i = icmp eq i32 %31, 0
  br i1 %cmp63.not.i, label %do.body62.i.fdp1_write.exit.i_crit_edge, label %do.end67.i

do.body62.i.fdp1_write.exit.i_crit_edge:          ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i

do.end67.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #17
  %name70.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name70.i, ptr noundef nonnull @.str.78) #18
  br label %sw.epilog.i

do.body78.i:                                      ; preds = %fdp1_write.exit
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp79.not.i = icmp eq i32 %32, 0
  br i1 %cmp79.not.i, label %do.body78.i.fdp1_write.exit.i_crit_edge, label %do.end83.i

do.body78.i.fdp1_write.exit.i_crit_edge:          ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i

do.end83.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #17
  %name86.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name86.i, ptr noundef nonnull @.str.78) #18
  br label %sw.epilog.i

do.body95.i:                                      ; preds = %fdp1_write.exit
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp96.not.i = icmp eq i32 %33, 0
  br i1 %cmp96.not.i, label %do.body95.i.fdp1_write.exit.i_crit_edge, label %do.end100.i

do.body95.i.fdp1_write.exit.i_crit_edge:          ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i

do.end100.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #17
  %name103.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name103.i, ptr noundef nonnull @.str.78) #18
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end100.i, %do.end83.i, %do.end67.i, %lor.lhs.false55.i, %do.end51.i.sw.epilog.i_crit_edge, %if.end25.i, %do.end.i3
  %channels.1.ph.i = phi i32 [ %spec.select3.i, %if.end25.i ], [ 262, %do.end100.i ], [ 259, %do.end83.i ], [ 258, %do.end67.i ], [ %spec.select1.i, %lor.lhs.false55.i ], [ 258, %do.end.i3 ], [ 258, %do.end51.i.sw.epilog.i_crit_edge ]
  %ipcmode.1.ph.i = phi i32 [ %ipcmode.0.i, %if.end25.i ], [ 260, %do.end100.i ], [ 259, %do.end83.i ], [ 257, %do.end67.i ], [ 258, %lor.lhs.false55.i ], [ 257, %do.end.i3 ], [ 258, %do.end51.i.sw.epilog.i_crit_edge ]
  %opmode.0.ph.i = phi i32 [ 2, %if.end25.i ], [ 2, %do.end100.i ], [ 2, %do.end83.i ], [ 2, %do.end67.i ], [ 2, %lor.lhs.false55.i ], [ 18, %do.end.i3 ], [ 2, %do.end51.i.sw.epilog.i_crit_edge ]
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp.i.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.epilog.i.fdp1_write.exit.i_crit_edge

sw.epilog.i.fdp1_write.exit.i_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i

do.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i, ptr noundef nonnull @.str.65, i32 noundef %channels.1.ph.i, i32 noundef 12) #18
  br label %fdp1_write.exit.i

fdp1_write.exit.i:                                ; preds = %do.end.i.i, %sw.epilog.i.fdp1_write.exit.i_crit_edge, %do.body95.i.fdp1_write.exit.i_crit_edge, %do.body78.i.fdp1_write.exit.i_crit_edge, %do.body62.i.fdp1_write.exit.i_crit_edge, %do.body.i.fdp1_write.exit.i_crit_edge
  %opmode.027.i = phi i32 [ %opmode.0.ph.i, %sw.epilog.i.fdp1_write.exit.i_crit_edge ], [ %opmode.0.ph.i, %do.end.i.i ], [ 2, %do.body95.i.fdp1_write.exit.i_crit_edge ], [ 2, %do.body78.i.fdp1_write.exit.i_crit_edge ], [ 2, %do.body62.i.fdp1_write.exit.i_crit_edge ], [ 18, %do.body.i.fdp1_write.exit.i_crit_edge ]
  %ipcmode.126.i = phi i32 [ %ipcmode.1.ph.i, %sw.epilog.i.fdp1_write.exit.i_crit_edge ], [ %ipcmode.1.ph.i, %do.end.i.i ], [ 260, %do.body95.i.fdp1_write.exit.i_crit_edge ], [ 259, %do.body78.i.fdp1_write.exit.i_crit_edge ], [ 257, %do.body62.i.fdp1_write.exit.i_crit_edge ], [ 257, %do.body.i.fdp1_write.exit.i_crit_edge ]
  %channels.125.i = phi i32 [ %channels.1.ph.i, %sw.epilog.i.fdp1_write.exit.i_crit_edge ], [ %channels.1.ph.i, %do.end.i.i ], [ 262, %do.body95.i.fdp1_write.exit.i_crit_edge ], [ 259, %do.body78.i.fdp1_write.exit.i_crit_edge ], [ 258, %do.body62.i.fdp1_write.exit.i_crit_edge ], [ 258, %do.body.i.fdp1_write.exit.i_crit_edge ]
  %regs.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %16, i32 0, i32 5
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %36 = tail call i32 @llvm.bswap.i32(i32 %channels.125.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %36) #15, !srcloc !319
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i4.i = icmp ugt i32 %37, 1
  br i1 %cmp.i4.i, label %do.end.i7.i, label %fdp1_write.exit.i.fdp1_write.exit10.i_crit_edge

fdp1_write.exit.i.fdp1_write.exit10.i_crit_edge:  ; preds = %fdp1_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit10.i

do.end.i7.i:                                      ; preds = %fdp1_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i5.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i5.i, ptr noundef nonnull @.str.65, i32 noundef %opmode.027.i, i32 noundef 16) #18
  br label %fdp1_write.exit10.i

fdp1_write.exit10.i:                              ; preds = %do.end.i7.i, %fdp1_write.exit.i.fdp1_write.exit10.i_crit_edge
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %40 = tail call i32 @llvm.bswap.i32(i32 %opmode.027.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %40) #15, !srcloc !319
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i11.i = icmp ugt i32 %41, 1
  br i1 %cmp.i11.i, label %do.end.i14.i, label %fdp1_write.exit10.i.fdp1_configure_deint_mode.exit_crit_edge

fdp1_write.exit10.i.fdp1_configure_deint_mode.exit_crit_edge: ; preds = %fdp1_write.exit10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_configure_deint_mode.exit

do.end.i14.i:                                     ; preds = %fdp1_write.exit10.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i12.i = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i12.i, ptr noundef nonnull @.str.65, i32 noundef %ipcmode.126.i, i32 noundef 256) #18
  br label %fdp1_configure_deint_mode.exit

fdp1_configure_deint_mode.exit:                   ; preds = %do.end.i14.i, %fdp1_write.exit10.i.fdp1_configure_deint_mode.exit_crit_edge
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %43, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %44 = tail call i32 @llvm.bswap.i32(i32 %ipcmode.126.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %44) #15, !srcloc !319
  %45 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fdp11, align 4
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.i6 = icmp ugt i32 %47, 1
  br i1 %cmp.i.i6, label %do.end.i.i9, label %fdp1_configure_deint_mode.exit.fdp1_write.exit.i12_crit_edge

fdp1_configure_deint_mode.exit.fdp1_write.exit.i12_crit_edge: ; preds = %fdp1_configure_deint_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i12

do.end.i.i9:                                      ; preds = %fdp1_configure_deint_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i7 = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i7, ptr noundef nonnull @.str.65, i32 noundef 65538, i32 noundef 260) #18
  br label %fdp1_write.exit.i12

fdp1_write.exit.i12:                              ; preds = %do.end.i.i9, %fdp1_configure_deint_mode.exit.fdp1_write.exit.i12_crit_edge
  %regs.i.i10 = getelementptr inbounds %struct.fdp1_dev, ptr %46, i32 0, i32 5
  %48 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %49, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 33554688) #15, !srcloc !319
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i10.i = icmp ugt i32 %50, 1
  br i1 %cmp.i10.i, label %do.end.i13.i, label %fdp1_write.exit.i12.fdp1_write.exit16.i_crit_edge

fdp1_write.exit.i12.fdp1_write.exit16.i_crit_edge: ; preds = %fdp1_write.exit.i12
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit16.i

do.end.i13.i:                                     ; preds = %fdp1_write.exit.i12
  call void @__sanitizer_cov_trace_pc() #17
  %name.i11.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i11.i, ptr noundef nonnull @.str.65, i32 noundef 2097216, i32 noundef 264) #18
  br label %fdp1_write.exit16.i

fdp1_write.exit16.i:                              ; preds = %do.end.i13.i, %fdp1_write.exit.i12.fdp1_write.exit16.i_crit_edge
  %51 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %52, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 1073750016) #15, !srcloc !319
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i17.i = icmp ugt i32 %53, 1
  br i1 %cmp.i17.i, label %do.end.i20.i, label %fdp1_write.exit16.i.fdp1_write.exit23.i_crit_edge

fdp1_write.exit16.i.fdp1_write.exit23.i_crit_edge: ; preds = %fdp1_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit23.i

do.end.i20.i:                                     ; preds = %fdp1_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i18.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i18.i, ptr noundef nonnull @.str.65, i32 noundef 32800, i32 noundef 268) #18
  br label %fdp1_write.exit23.i

fdp1_write.exit23.i:                              ; preds = %do.end.i20.i, %fdp1_write.exit16.i.fdp1_write.exit23.i_crit_edge
  %54 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %55, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 545259520) #15, !srcloc !319
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i24.i = icmp ugt i32 %56, 1
  br i1 %cmp.i24.i, label %do.end.i27.i, label %fdp1_write.exit23.i.fdp1_write.exit30.i_crit_edge

fdp1_write.exit23.i.fdp1_write.exit30.i_crit_edge: ; preds = %fdp1_write.exit23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit30.i

do.end.i27.i:                                     ; preds = %fdp1_write.exit23.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i25.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i25.i, ptr noundef nonnull @.str.65, i32 noundef 8453890, i32 noundef 288) #18
  br label %fdp1_write.exit30.i

fdp1_write.exit30.i:                              ; preds = %do.end.i27.i, %fdp1_write.exit23.i.fdp1_write.exit30.i_crit_edge
  %57 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %58, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 50298880) #15, !srcloc !319
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i31.i = icmp ugt i32 %59, 1
  br i1 %cmp.i31.i, label %do.end.i34.i, label %fdp1_write.exit30.i.fdp1_write.exit37.i_crit_edge

fdp1_write.exit30.i.fdp1_write.exit37.i_crit_edge: ; preds = %fdp1_write.exit30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit37.i

do.end.i34.i:                                     ; preds = %fdp1_write.exit30.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i32.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i32.i, ptr noundef nonnull @.str.65, i32 noundef 1048831, i32 noundef 292) #18
  br label %fdp1_write.exit37.i

fdp1_write.exit37.i:                              ; preds = %do.end.i34.i, %fdp1_write.exit30.i.fdp1_write.exit37.i_crit_edge
  %60 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %61, i32 292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 -16773120) #15, !srcloc !319
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i38.i = icmp ugt i32 %62, 1
  br i1 %cmp.i38.i, label %do.end.i41.i, label %fdp1_write.exit37.i.fdp1_write.exit44.i_crit_edge

fdp1_write.exit37.i.fdp1_write.exit44.i_crit_edge: ; preds = %fdp1_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit44.i

do.end.i41.i:                                     ; preds = %fdp1_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i39.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i39.i, ptr noundef nonnull @.str.65, i32 noundef 9438463, i32 noundef 296) #18
  br label %fdp1_write.exit44.i

fdp1_write.exit44.i:                              ; preds = %do.end.i41.i, %fdp1_write.exit37.i.fdp1_write.exit44.i_crit_edge
  %63 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %64, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 -16478208) #15, !srcloc !319
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i45.i = icmp ugt i32 %65, 1
  br i1 %cmp.i45.i, label %do.end.i48.i, label %fdp1_write.exit44.i.fdp1_write.exit51.i_crit_edge

fdp1_write.exit44.i.fdp1_write.exit51.i_crit_edge: ; preds = %fdp1_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit51.i

do.end.i48.i:                                     ; preds = %fdp1_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i46.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i46.i, ptr noundef nonnull @.str.65, i32 noundef 264204, i32 noundef 300) #18
  br label %fdp1_write.exit51.i

fdp1_write.exit51.i:                              ; preds = %do.end.i48.i, %fdp1_write.exit44.i.fdp1_write.exit51.i_crit_edge
  %66 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %67, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 201851904) #15, !srcloc !319
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i52.i = icmp ugt i32 %68, 1
  br i1 %cmp.i52.i, label %do.end.i55.i, label %fdp1_write.exit51.i.fdp1_write.exit58.i_crit_edge

fdp1_write.exit51.i.fdp1_write.exit58.i_crit_edge: ; preds = %fdp1_write.exit51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit58.i

do.end.i55.i:                                     ; preds = %fdp1_write.exit51.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i53.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i53.i, ptr noundef nonnull @.str.65, i32 noundef -15663344, i32 noundef 304) #18
  br label %fdp1_write.exit58.i

fdp1_write.exit58.i:                              ; preds = %do.end.i55.i, %fdp1_write.exit51.i.fdp1_write.exit58.i_crit_edge
  %69 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %70, i32 304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 285151487) #15, !srcloc !319
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i59.i = icmp ugt i32 %71, 1
  br i1 %cmp.i59.i, label %do.end.i62.i, label %fdp1_write.exit58.i.fdp1_set_ipc_dli.exit_crit_edge

fdp1_write.exit58.i.fdp1_set_ipc_dli.exit_crit_edge: ; preds = %fdp1_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_set_ipc_dli.exit

do.end.i62.i:                                     ; preds = %fdp1_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i60.i = getelementptr inbounds %struct.v4l2_device, ptr %46, i32 0, i32 4
  %call.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i60.i, ptr noundef nonnull @.str.65, i32 noundef 65296, i32 noundef 308) #18
  br label %fdp1_set_ipc_dli.exit

fdp1_set_ipc_dli.exit:                            ; preds = %do.end.i62.i, %fdp1_write.exit58.i.fdp1_set_ipc_dli.exit_crit_edge
  %72 = ptrtoint ptr %regs.i.i10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i10, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %73, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 285147136) #15, !srcloc !319
  %74 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fdp11, align 4
  %format.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %76 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 1
  %78 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height.i, align 4
  %div.i = udiv i32 %77, 3
  %mul.i = shl i32 %77, 1
  %div3.i = udiv i32 %mul.i, 3
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i.i14 = icmp ugt i32 %80, 1
  br i1 %cmp.i.i14, label %do.end.i.i17, label %fdp1_set_ipc_dli.exit.fdp1_write.exit.i20_crit_edge

fdp1_set_ipc_dli.exit.fdp1_write.exit.i20_crit_edge: ; preds = %fdp1_set_ipc_dli.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i20

do.end.i.i17:                                     ; preds = %fdp1_set_ipc_dli.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i15 = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i15, ptr noundef nonnull @.str.65, i32 noundef 539000960, i32 noundef 320) #18
  br label %fdp1_write.exit.i20

fdp1_write.exit.i20:                              ; preds = %do.end.i.i17, %fdp1_set_ipc_dli.exit.fdp1_write.exit.i20_crit_edge
  %regs.i.i18 = getelementptr inbounds %struct.fdp1_dev, ptr %75, i32 0, i32 5
  %81 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %82, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 -2139086816) #15, !srcloc !319
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i18.i = icmp ugt i32 %83, 1
  br i1 %cmp.i18.i, label %do.end.i21.i, label %fdp1_write.exit.i20.fdp1_write.exit24.i_crit_edge

fdp1_write.exit.i20.fdp1_write.exit24.i_crit_edge: ; preds = %fdp1_write.exit.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit24.i

do.end.i21.i:                                     ; preds = %fdp1_write.exit.i20
  call void @__sanitizer_cov_trace_pc() #17
  %name.i19.i = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i19.i, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 324) #18
  br label %fdp1_write.exit24.i

fdp1_write.exit24.i:                              ; preds = %do.end.i21.i, %fdp1_write.exit.i20.fdp1_write.exit24.i_crit_edge
  %84 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %85, i32 324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 0) #15, !srcloc !319
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i25.i = icmp ugt i32 %86, 1
  br i1 %cmp.i25.i, label %do.end.i28.i, label %fdp1_write.exit24.i.fdp1_write.exit31.i_crit_edge

fdp1_write.exit24.i.fdp1_write.exit31.i_crit_edge: ; preds = %fdp1_write.exit24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit31.i

do.end.i28.i:                                     ; preds = %fdp1_write.exit24.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i26.i = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i26.i, ptr noundef nonnull @.str.65, i32 noundef 8705, i32 noundef 368) #18
  br label %fdp1_write.exit31.i

fdp1_write.exit31.i:                              ; preds = %do.end.i28.i, %fdp1_write.exit24.i.fdp1_write.exit31.i_crit_edge
  %87 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %88, i32 368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 19005440) #15, !srcloc !319
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i32.i = icmp ugt i32 %89, 1
  br i1 %cmp.i32.i, label %do.end.i35.i, label %fdp1_write.exit31.i.fdp1_write.exit38.i_crit_edge

fdp1_write.exit31.i.fdp1_write.exit38.i_crit_edge: ; preds = %fdp1_write.exit31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit38.i

do.end.i35.i:                                     ; preds = %fdp1_write.exit31.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i33.i = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i33.i, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 372) #18
  br label %fdp1_write.exit38.i

fdp1_write.exit38.i:                              ; preds = %do.end.i35.i, %fdp1_write.exit31.i.fdp1_write.exit38.i_crit_edge
  %90 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %91, i32 372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 0) #15, !srcloc !319
  %sub.i = shl i32 %77, 16
  %shl.i = add i32 %sub.i, -65536
  %sub4.i = add i32 %79, -1
  %or.i = or i32 %shl.i, %sub4.i
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.i39.i = icmp ugt i32 %92, 1
  br i1 %cmp.i39.i, label %do.end.i42.i, label %fdp1_write.exit38.i.fdp1_write.exit45.i_crit_edge

fdp1_write.exit38.i.fdp1_write.exit45.i_crit_edge: ; preds = %fdp1_write.exit38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit45.i

do.end.i42.i:                                     ; preds = %fdp1_write.exit38.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i40.i = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i40.i, ptr noundef nonnull @.str.65, i32 noundef %or.i, i32 noundef 376) #18
  br label %fdp1_write.exit45.i

fdp1_write.exit45.i:                              ; preds = %do.end.i42.i, %fdp1_write.exit38.i.fdp1_write.exit45.i_crit_edge
  %93 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %94, i32 376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %95) #15, !srcloc !319
  %shl6.i = shl i32 %div.i, 16
  %or8.i = or i32 %shl6.i, %div3.i
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp.i46.i = icmp ugt i32 %96, 1
  br i1 %cmp.i46.i, label %do.end.i49.i, label %fdp1_write.exit45.i.fdp1_set_ipc_sensor.exit_crit_edge

fdp1_write.exit45.i.fdp1_set_ipc_sensor.exit_crit_edge: ; preds = %fdp1_write.exit45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_set_ipc_sensor.exit

do.end.i49.i:                                     ; preds = %fdp1_write.exit45.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i47.i = getelementptr inbounds %struct.v4l2_device, ptr %75, i32 0, i32 4
  %call.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i47.i, ptr noundef nonnull @.str.65, i32 noundef %or8.i, i32 noundef 380) #18
  br label %fdp1_set_ipc_sensor.exit

fdp1_set_ipc_sensor.exit:                         ; preds = %do.end.i49.i, %fdp1_write.exit45.i.fdp1_set_ipc_sensor.exit_crit_edge
  %97 = ptrtoint ptr %regs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i18, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %98, i32 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %99 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %99) #15, !srcloc !319
  %100 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fdp11, align 4
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12
  %102 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %format.i, align 4
  %shl.i22 = shl i32 %103, 16
  %vsize.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 2
  %104 = ptrtoint ptr %vsize.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vsize.i, align 4
  %or.i23 = or i32 %shl.i22, %105
  %stride_y.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 3
  %106 = ptrtoint ptr %stride_y.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stride_y.i, align 4
  %shl4.i = shl i32 %107, 16
  %num_planes.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 6
  %108 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp.i24 = icmp ugt i8 %109, 1
  br i1 %cmp.i24, label %if.then.i, label %fdp1_set_ipc_sensor.exit.if.end.i_crit_edge

fdp1_set_ipc_sensor.exit.if.end.i_crit_edge:      ; preds = %fdp1_set_ipc_sensor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %fdp1_set_ipc_sensor.exit
  call void @__sanitizer_cov_trace_pc() #17
  %stride_c.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 4
  %110 = ptrtoint ptr %stride_c.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %stride_c.i, align 4
  %or8.i25 = or i32 %111, %shl4.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %fdp1_set_ipc_sensor.exit.if.end.i_crit_edge
  %pstride.0.i = phi i32 [ %or8.i25, %if.then.i ], [ %shl4.i, %fdp1_set_ipc_sensor.exit.if.end.i_crit_edge ]
  %112 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %out_q.i, align 4
  %fmt9.i = getelementptr inbounds %struct.fdp1_fmt, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %fmt9.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fmt9.i, align 2
  %conv10.i = zext i8 %115 to i32
  %swap_yc.i = getelementptr inbounds %struct.fdp1_fmt, ptr %113, i32 0, i32 6
  %116 = ptrtoint ptr %swap_yc.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %swap_yc.i, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i26 = icmp eq i8 %117, 0
  %or13.i = or i32 %conv10.i, 8192
  %spec.select.i27 = select i1 %tobool.not.i26, i32 %conv10.i, i32 %or13.i
  %swap_uv.i = getelementptr inbounds %struct.fdp1_fmt, ptr %113, i32 0, i32 7
  %118 = ptrtoint ptr %swap_uv.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %swap_uv.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool16.not.i = icmp eq i8 %119, 0
  %or18.i = or i32 %spec.select.i27, 4096
  %format.1.i = select i1 %tobool16.not.i, i32 %spec.select.i27, i32 %or18.i
  %active.i = getelementptr i8, ptr %3, i32 -12
  %120 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %active.i, align 4
  %field.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %123)
  %cmp20.i = icmp eq i32 %123, 3
  %or23.i = or i32 %format.1.i, 256
  %smsk_addr24.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 9
  %arrayidx26.i = getelementptr %struct.fdp1_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %format.2.i = select i1 %cmp20.i, i32 %or23.i, i32 %format.1.i
  %smsk_addr.0.in.i = select i1 %cmp20.i, ptr %smsk_addr24.i, ptr %arrayidx26.i
  %124 = ptrtoint ptr %smsk_addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %smsk_addr.0.i = load i32, ptr %smsk_addr.0.in.i, align 4
  %125 = ptrtoint ptr %deint_mode.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %deint_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool28.not.i = icmp eq i32 %126, 0
  %or30.i = or i32 %format.2.i, 65536
  %format.3.i = select i1 %tobool28.not.i, i32 %format.2.i, i32 %or30.i
  %127 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i.i29 = icmp ugt i32 %127, 1
  br i1 %cmp.i.i29, label %do.end.i.i32, label %if.end.i.fdp1_write.exit.i35_crit_edge

if.end.i.fdp1_write.exit.i35_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i35

do.end.i.i32:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i30 = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i30, ptr noundef nonnull @.str.65, i32 noundef %format.3.i, i32 noundef 100) #18
  br label %fdp1_write.exit.i35

fdp1_write.exit.i35:                              ; preds = %do.end.i.i32, %if.end.i.fdp1_write.exit.i35_crit_edge
  %regs.i.i33 = getelementptr inbounds %struct.fdp1_dev, ptr %101, i32 0, i32 5
  %128 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %129, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %130 = tail call i32 @llvm.bswap.i32(i32 %format.3.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %130) #15, !srcloc !319
  %131 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %out_q.i, align 4
  %swap.i = getelementptr inbounds %struct.fdp1_fmt, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %swap.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %swap.i, align 1
  %conv33.i = zext i8 %134 to i32
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i88.i = icmp ugt i32 %135, 1
  br i1 %cmp.i88.i, label %do.end.i91.i, label %fdp1_write.exit.i35.fdp1_write.exit94.i_crit_edge

fdp1_write.exit.i35.fdp1_write.exit94.i_crit_edge: ; preds = %fdp1_write.exit.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit94.i

do.end.i91.i:                                     ; preds = %fdp1_write.exit.i35
  call void @__sanitizer_cov_trace_pc() #17
  %name.i89.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i89.i, ptr noundef nonnull @.str.65, i32 noundef %conv33.i, i32 noundef 148) #18
  br label %fdp1_write.exit94.i

fdp1_write.exit94.i:                              ; preds = %do.end.i91.i, %fdp1_write.exit.i35.fdp1_write.exit94.i_crit_edge
  %136 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %137, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %138 = shl nuw i32 %conv33.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 %138) #15, !srcloc !319
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.i95.i = icmp ugt i32 %139, 1
  br i1 %cmp.i95.i, label %do.end.i98.i, label %fdp1_write.exit94.i.fdp1_write.exit101.i_crit_edge

fdp1_write.exit94.i.fdp1_write.exit101.i_crit_edge: ; preds = %fdp1_write.exit94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit101.i

do.end.i98.i:                                     ; preds = %fdp1_write.exit94.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i96.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i96.i, ptr noundef nonnull @.str.65, i32 noundef %or.i23, i32 noundef 96) #18
  br label %fdp1_write.exit101.i

fdp1_write.exit101.i:                             ; preds = %do.end.i98.i, %fdp1_write.exit94.i.fdp1_write.exit101.i_crit_edge
  %140 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %141, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i23) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 %142) #15, !srcloc !319
  %143 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp.i102.i = icmp ugt i32 %143, 1
  br i1 %cmp.i102.i, label %do.end.i105.i, label %fdp1_write.exit101.i.fdp1_write.exit108.i_crit_edge

fdp1_write.exit101.i.fdp1_write.exit108.i_crit_edge: ; preds = %fdp1_write.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit108.i

do.end.i105.i:                                    ; preds = %fdp1_write.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i103.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i103.i, ptr noundef nonnull @.str.65, i32 noundef %pstride.0.i, i32 noundef 104) #18
  br label %fdp1_write.exit108.i

fdp1_write.exit108.i:                             ; preds = %do.end.i105.i, %fdp1_write.exit101.i.fdp1_write.exit108.i_crit_edge
  %144 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %145, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %146 = tail call i32 @llvm.bswap.i32(i32 %pstride.0.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %146) #15, !srcloc !319
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i109.i = icmp ugt i32 %147, 1
  br i1 %cmp.i109.i, label %do.end.i112.i, label %fdp1_write.exit108.i.fdp1_write.exit115.i_crit_edge

fdp1_write.exit108.i.fdp1_write.exit115.i_crit_edge: ; preds = %fdp1_write.exit108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit115.i

do.end.i112.i:                                    ; preds = %fdp1_write.exit108.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i110.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i110.i, ptr noundef nonnull @.str.65, i32 noundef %smsk_addr.0.i, i32 noundef 144) #18
  br label %fdp1_write.exit115.i

fdp1_write.exit115.i:                             ; preds = %do.end.i112.i, %fdp1_write.exit108.i.fdp1_write.exit115.i_crit_edge
  %148 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %149, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %150 = tail call i32 @llvm.bswap.i32(i32 %smsk_addr.0.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %150) #15, !srcloc !319
  %151 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool34.not.i = icmp eq ptr %152, null
  br i1 %tobool34.not.i, label %fdp1_write.exit115.i.if.end38.i_crit_edge, label %if.then35.i

fdp1_write.exit115.i.if.end38.i_crit_edge:        ; preds = %fdp1_write.exit115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then35.i:                                      ; preds = %fdp1_write.exit115.i
  %addrs.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %addrs.i, align 4
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp.i116.i = icmp ugt i32 %155, 1
  br i1 %cmp.i116.i, label %do.end.i119.i, label %if.then35.i.fdp1_write.exit122.i_crit_edge

if.then35.i.fdp1_write.exit122.i_crit_edge:       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit122.i

do.end.i119.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i117.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i117.i, ptr noundef nonnull @.str.65, i32 noundef %154, i32 noundef 108) #18
  br label %fdp1_write.exit122.i

fdp1_write.exit122.i:                             ; preds = %do.end.i119.i, %if.then35.i.fdp1_write.exit122.i_crit_edge
  %156 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %157, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %158 = tail call i32 @llvm.bswap.i32(i32 %154) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %158) #15, !srcloc !319
  br label %if.end38.i

if.end38.i:                                       ; preds = %fdp1_write.exit122.i, %fdp1_write.exit115.i.if.end38.i_crit_edge
  %159 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %active.i, align 4
  %addrs40.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %addrs40.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %addrs40.i, align 4
  %163 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp.i123.i = icmp ugt i32 %163, 1
  br i1 %cmp.i123.i, label %do.end.i126.i, label %if.end38.i.fdp1_write.exit129.i_crit_edge

if.end38.i.fdp1_write.exit129.i_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit129.i

do.end.i126.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i124.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i124.i, ptr noundef nonnull @.str.65, i32 noundef %162, i32 noundef 120) #18
  br label %fdp1_write.exit129.i

fdp1_write.exit129.i:                             ; preds = %do.end.i126.i, %if.end38.i.fdp1_write.exit129.i_crit_edge
  %164 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %165, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %166 = tail call i32 @llvm.bswap.i32(i32 %162) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %166) #15, !srcloc !319
  %167 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %active.i, align 4
  %arrayidx44.i = getelementptr %struct.fdp1_field_buffer, ptr %168, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx44.i, align 4
  %171 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp.i130.i = icmp ugt i32 %171, 1
  br i1 %cmp.i130.i, label %do.end.i133.i, label %fdp1_write.exit129.i.fdp1_write.exit136.i_crit_edge

fdp1_write.exit129.i.fdp1_write.exit136.i_crit_edge: ; preds = %fdp1_write.exit129.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit136.i

do.end.i133.i:                                    ; preds = %fdp1_write.exit129.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i131.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i131.i, ptr noundef nonnull @.str.65, i32 noundef %170, i32 noundef 124) #18
  br label %fdp1_write.exit136.i

fdp1_write.exit136.i:                             ; preds = %do.end.i133.i, %fdp1_write.exit129.i.fdp1_write.exit136.i_crit_edge
  %172 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %173, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %174 = tail call i32 @llvm.bswap.i32(i32 %170) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %174) #15, !srcloc !319
  %175 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %active.i, align 4
  %arrayidx47.i = getelementptr %struct.fdp1_field_buffer, ptr %176, i32 0, i32 1, i32 2
  %177 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx47.i, align 4
  %179 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp.i137.i = icmp ugt i32 %179, 1
  br i1 %cmp.i137.i, label %do.end.i140.i, label %fdp1_write.exit136.i.fdp1_write.exit143.i_crit_edge

fdp1_write.exit136.i.fdp1_write.exit143.i_crit_edge: ; preds = %fdp1_write.exit136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit143.i

do.end.i140.i:                                    ; preds = %fdp1_write.exit136.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i138.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i138.i, ptr noundef nonnull @.str.65, i32 noundef %178, i32 noundef 128) #18
  br label %fdp1_write.exit143.i

fdp1_write.exit143.i:                             ; preds = %do.end.i140.i, %fdp1_write.exit136.i.fdp1_write.exit143.i_crit_edge
  %180 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %181, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %182 = tail call i32 @llvm.bswap.i32(i32 %178) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 %182) #15, !srcloc !319
  %next.i = getelementptr i8, ptr %3, i32 -8
  %183 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %next.i, align 4
  %tobool48.not.i = icmp eq ptr %184, null
  br i1 %tobool48.not.i, label %fdp1_write.exit143.i.fdp1_configure_rpf.exit_crit_edge, label %if.then49.i

fdp1_write.exit143.i.fdp1_configure_rpf.exit_crit_edge: ; preds = %fdp1_write.exit143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_configure_rpf.exit

if.then49.i:                                      ; preds = %fdp1_write.exit143.i
  %addrs51.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %addrs51.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %addrs51.i, align 4
  %187 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp.i144.i = icmp ugt i32 %187, 1
  br i1 %cmp.i144.i, label %do.end.i147.i, label %if.then49.i.fdp1_write.exit150.i_crit_edge

if.then49.i.fdp1_write.exit150.i_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit150.i

do.end.i147.i:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i145.i = getelementptr inbounds %struct.v4l2_device, ptr %101, i32 0, i32 4
  %call.i146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i145.i, ptr noundef nonnull @.str.65, i32 noundef %186, i32 noundef 132) #18
  br label %fdp1_write.exit150.i

fdp1_write.exit150.i:                             ; preds = %do.end.i147.i, %if.then49.i.fdp1_write.exit150.i_crit_edge
  %188 = ptrtoint ptr %regs.i.i33 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i33, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %189, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %190 = tail call i32 @llvm.bswap.i32(i32 %186) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 %190) #15, !srcloc !319
  br label %fdp1_configure_rpf.exit

fdp1_configure_rpf.exit:                          ; preds = %fdp1_write.exit150.i, %fdp1_write.exit143.i.fdp1_configure_rpf.exit_crit_edge
  %191 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %fdp11, align 4
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13
  %bytesperline.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 5, i32 0, i32 1
  %193 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bytesperline.i, align 4
  %shl.i37 = shl i32 %194, 16
  %num_planes.i38 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 6
  %195 = ptrtoint ptr %num_planes.i38 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %num_planes.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp.i39 = icmp ugt i8 %196, 1
  br i1 %cmp.i39, label %if.then.i41, label %fdp1_configure_rpf.exit.if.end.i49_crit_edge

fdp1_configure_rpf.exit.if.end.i49_crit_edge:     ; preds = %fdp1_configure_rpf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i49

if.then.i41:                                      ; preds = %fdp1_configure_rpf.exit
  call void @__sanitizer_cov_trace_pc() #17
  %bytesperline8.i = getelementptr %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 5, i32 1, i32 1
  %197 = ptrtoint ptr %bytesperline8.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %bytesperline8.i, align 4
  %or.i40 = or i32 %198, %shl.i37
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i41, %fdp1_configure_rpf.exit.if.end.i49_crit_edge
  %pstride.0.i42 = phi i32 [ %or.i40, %if.then.i41 ], [ %shl.i37, %fdp1_configure_rpf.exit.if.end.i49_crit_edge ]
  %199 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cap_q.i, align 4
  %fmt10.i = getelementptr inbounds %struct.fdp1_fmt, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %fmt10.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %fmt10.i, align 2
  %conv11.i = zext i8 %202 to i32
  %swap_yc.i43 = getelementptr inbounds %struct.fdp1_fmt, ptr %200, i32 0, i32 6
  %203 = ptrtoint ptr %swap_yc.i43 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %swap_yc.i43, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i44 = icmp eq i8 %204, 0
  %or14.i = or i32 %conv11.i, 32768
  %spec.select.i45 = select i1 %tobool.not.i44, i32 %conv11.i, i32 %or14.i
  %swap_uv.i46 = getelementptr inbounds %struct.fdp1_fmt, ptr %200, i32 0, i32 7
  %205 = ptrtoint ptr %swap_uv.i46 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %swap_uv.i46, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool17.not.i = icmp eq i8 %206, 0
  %or19.i = or i32 %spec.select.i45, 16384
  %format.1.i47 = select i1 %tobool17.not.i, i32 %spec.select.i45, i32 %or19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %202)
  %cmp.i.i48 = icmp ugt i8 %202, 27
  br i1 %cmp.i.i48, label %if.end.i49.if.end41.i_crit_edge, label %if.then23.i

if.end.i49.if.end41.i_crit_edge:                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i

if.then23.i:                                      ; preds = %if.end.i49
  %207 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 8
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %209)
  %cmp27.i50 = icmp eq i8 %209, 2
  br i1 %cmp27.i50, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  %or30.i51 = or i32 %format.1.i47, 1280
  br label %if.end41.i

if.else.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  %quantization.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 9
  %210 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %quantization.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %211)
  %cmp33.i52 = icmp eq i8 %211, 1
  %spec.select92.v.i = select i1 %cmp33.i52, i32 768, i32 256
  %spec.select92.i = or i32 %spec.select92.v.i, %format.1.i47
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then29.i, %if.end.i49.if.end41.i_crit_edge
  %format.2.i53 = phi i32 [ %or30.i51, %if.then29.i ], [ %format.1.i47, %if.end.i49.if.end41.i_crit_edge ], [ %spec.select92.i, %if.else.i ]
  %alpha.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 11
  %212 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %alpha.i, align 4
  %conv42.i = zext i8 %213 to i32
  %shl43.i = shl nuw i32 %conv42.i, 24
  %or44.i = or i32 %shl43.i, %format.2.i53
  %swap47.i = getelementptr inbounds %struct.fdp1_fmt, ptr %200, i32 0, i32 8
  %214 = ptrtoint ptr %swap47.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %swap47.i, align 1
  %conv48.i = zext i8 %215 to i32
  %216 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %out_q.i, align 4
  %swap51.i = getelementptr inbounds %struct.fdp1_fmt, ptr %217, i32 0, i32 8
  %218 = ptrtoint ptr %swap51.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %swap51.i, align 1
  %conv52.i = zext i8 %219 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 4
  %or54.i = or i32 %shl53.i, %conv48.i
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp.i93.i = icmp ugt i32 %220, 1
  br i1 %cmp.i93.i, label %do.end.i.i57, label %if.end41.i.fdp1_write.exit.i60_crit_edge

if.end41.i.fdp1_write.exit.i60_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i60

do.end.i.i57:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i55 = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i55, ptr noundef nonnull @.str.65, i32 noundef %or44.i, i32 noundef 192) #18
  br label %fdp1_write.exit.i60

fdp1_write.exit.i60:                              ; preds = %do.end.i.i57, %if.end41.i.fdp1_write.exit.i60_crit_edge
  %regs.i.i58 = getelementptr inbounds %struct.fdp1_dev, ptr %192, i32 0, i32 5
  %221 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %222, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %223 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 %223) #15, !srcloc !319
  %224 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp.i94.i = icmp ugt i32 %224, 1
  br i1 %cmp.i94.i, label %do.end.i97.i, label %fdp1_write.exit.i60.fdp1_write.exit100.i_crit_edge

fdp1_write.exit.i60.fdp1_write.exit100.i_crit_edge: ; preds = %fdp1_write.exit.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit100.i

do.end.i97.i:                                     ; preds = %fdp1_write.exit.i60
  call void @__sanitizer_cov_trace_pc() #17
  %name.i95.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i95.i, ptr noundef nonnull @.str.65, i32 noundef 268435456, i32 noundef 196) #18
  br label %fdp1_write.exit100.i

fdp1_write.exit100.i:                             ; preds = %do.end.i97.i, %fdp1_write.exit.i60.fdp1_write.exit100.i_crit_edge
  %225 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %226, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 16) #15, !srcloc !319
  %227 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %227)
  %cmp.i101.i = icmp ugt i32 %227, 1
  br i1 %cmp.i101.i, label %do.end.i104.i, label %fdp1_write.exit100.i.fdp1_write.exit107.i_crit_edge

fdp1_write.exit100.i.fdp1_write.exit107.i_crit_edge: ; preds = %fdp1_write.exit100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit107.i

do.end.i104.i:                                    ; preds = %fdp1_write.exit100.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i102.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i102.i, ptr noundef nonnull @.str.65, i32 noundef %or54.i, i32 noundef 216) #18
  br label %fdp1_write.exit107.i

fdp1_write.exit107.i:                             ; preds = %do.end.i104.i, %fdp1_write.exit100.i.fdp1_write.exit107.i_crit_edge
  %228 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %229, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %230 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %230) #15, !srcloc !319
  %231 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %231)
  %cmp.i108.i = icmp ugt i32 %231, 1
  br i1 %cmp.i108.i, label %do.end.i111.i, label %fdp1_write.exit107.i.fdp1_write.exit114.i_crit_edge

fdp1_write.exit107.i.fdp1_write.exit114.i_crit_edge: ; preds = %fdp1_write.exit107.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit114.i

do.end.i111.i:                                    ; preds = %fdp1_write.exit107.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i109.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i109.i, ptr noundef nonnull @.str.65, i32 noundef %pstride.0.i42, i32 noundef 200) #18
  br label %fdp1_write.exit114.i

fdp1_write.exit114.i:                             ; preds = %do.end.i111.i, %fdp1_write.exit107.i.fdp1_write.exit114.i_crit_edge
  %232 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %233, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %234 = tail call i32 @llvm.bswap.i32(i32 %pstride.0.i42) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %234) #15, !srcloc !319
  %dst.i = getelementptr i8, ptr %3, i32 -4
  %235 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dst.i, align 4
  %addrs.i61 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %addrs.i61 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %addrs.i61, align 4
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp.i115.i = icmp ugt i32 %239, 1
  br i1 %cmp.i115.i, label %do.end.i118.i, label %fdp1_write.exit114.i.fdp1_write.exit121.i_crit_edge

fdp1_write.exit114.i.fdp1_write.exit121.i_crit_edge: ; preds = %fdp1_write.exit114.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit121.i

do.end.i118.i:                                    ; preds = %fdp1_write.exit114.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i116.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i116.i, ptr noundef nonnull @.str.65, i32 noundef %238, i32 noundef 204) #18
  br label %fdp1_write.exit121.i

fdp1_write.exit121.i:                             ; preds = %do.end.i118.i, %fdp1_write.exit114.i.fdp1_write.exit121.i_crit_edge
  %240 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %241, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %242 = tail call i32 @llvm.bswap.i32(i32 %238) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i, i32 %242) #15, !srcloc !319
  %243 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dst.i, align 4
  %arrayidx58.i = getelementptr %struct.fdp1_field_buffer, ptr %244, i32 0, i32 1, i32 1
  %245 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx58.i, align 4
  %247 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp.i122.i = icmp ugt i32 %247, 1
  br i1 %cmp.i122.i, label %do.end.i125.i, label %fdp1_write.exit121.i.fdp1_write.exit128.i_crit_edge

fdp1_write.exit121.i.fdp1_write.exit128.i_crit_edge: ; preds = %fdp1_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit128.i

do.end.i125.i:                                    ; preds = %fdp1_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i123.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i123.i, ptr noundef nonnull @.str.65, i32 noundef %246, i32 noundef 208) #18
  br label %fdp1_write.exit128.i

fdp1_write.exit128.i:                             ; preds = %do.end.i125.i, %fdp1_write.exit121.i.fdp1_write.exit128.i_crit_edge
  %248 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %249, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %250 = tail call i32 @llvm.bswap.i32(i32 %246) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %250) #15, !srcloc !319
  %251 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dst.i, align 4
  %arrayidx61.i = getelementptr %struct.fdp1_field_buffer, ptr %252, i32 0, i32 1, i32 2
  %253 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx61.i, align 4
  %255 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %255)
  %cmp.i129.i = icmp ugt i32 %255, 1
  br i1 %cmp.i129.i, label %do.end.i132.i, label %fdp1_write.exit128.i.fdp1_configure_wpf.exit_crit_edge

fdp1_write.exit128.i.fdp1_configure_wpf.exit_crit_edge: ; preds = %fdp1_write.exit128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_configure_wpf.exit

do.end.i132.i:                                    ; preds = %fdp1_write.exit128.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i130.i = getelementptr inbounds %struct.v4l2_device, ptr %192, i32 0, i32 4
  %call.i131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i130.i, ptr noundef nonnull @.str.65, i32 noundef %254, i32 noundef 212) #18
  br label %fdp1_configure_wpf.exit

fdp1_configure_wpf.exit:                          ; preds = %do.end.i132.i, %fdp1_write.exit128.i.fdp1_configure_wpf.exit_crit_edge
  %256 = ptrtoint ptr %regs.i.i58 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i58, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %257, i32 212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %258 = tail call i32 @llvm.bswap.i32(i32 %254) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %258) #15, !srcloc !319
  %259 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %259)
  %cmp.i62 = icmp ugt i32 %259, 1
  br i1 %cmp.i62, label %do.end.i65, label %fdp1_configure_wpf.exit.fdp1_write.exit68_crit_edge

fdp1_configure_wpf.exit.fdp1_write.exit68_crit_edge: ; preds = %fdp1_configure_wpf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit68

do.end.i65:                                       ; preds = %fdp1_configure_wpf.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i63 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i63, ptr noundef nonnull @.str.65, i32 noundef 1024, i32 noundef 480) #18
  br label %fdp1_write.exit68

fdp1_write.exit68:                                ; preds = %do.end.i65, %fdp1_configure_wpf.exit.fdp1_write.exit68_crit_edge
  %260 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %261, i32 480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 262144) #15, !srcloc !319
  %262 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %262)
  %cmp.i69 = icmp ugt i32 %262, 1
  br i1 %cmp.i69, label %do.end.i72, label %fdp1_write.exit68.fdp1_write.exit75_crit_edge

fdp1_write.exit68.fdp1_write.exit75_crit_edge:    ; preds = %fdp1_write.exit68
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit75

do.end.i72:                                       ; preds = %fdp1_write.exit68
  call void @__sanitizer_cov_trace_pc() #17
  %name.i70 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i70, ptr noundef nonnull @.str.65, i32 noundef 65553, i32 noundef 56) #18
  br label %fdp1_write.exit75

fdp1_write.exit75:                                ; preds = %do.end.i72, %fdp1_write.exit68.fdp1_write.exit75_crit_edge
  %263 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %264, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 285212928) #15, !srcloc !319
  %hw_job_list.i = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 11
  %call2.i.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %prev.i.i.i78 = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 11, i32 1
  %265 = ptrtoint ptr %prev.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %prev.i.i.i78, align 4
  %call.i.i.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %266, ptr noundef %hw_job_list.i) #15
  br i1 %call.i.i.i.i79, label %if.end.i.i.i.i80, label %fdp1_write.exit75.queue_hw_job.exit_crit_edge

fdp1_write.exit75.queue_hw_job.exit_crit_edge:    ; preds = %fdp1_write.exit75
  call void @__sanitizer_cov_trace_pc() #17
  br label %queue_hw_job.exit

if.end.i.i.i.i80:                                 ; preds = %fdp1_write.exit75
  call void @__sanitizer_cov_trace_pc() #17
  %267 = ptrtoint ptr %prev.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %3, ptr %prev.i.i.i78, align 4
  %268 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %hw_job_list.i, ptr %3, align 4
  %269 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %266, ptr %prev.i.i.i, align 4
  %270 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile ptr %3, ptr %266, align 4
  br label %queue_hw_job.exit

queue_hw_job.exit:                                ; preds = %if.end.i.i.i.i80, %fdp1_write.exit75.queue_hw_job.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i77) #15
  %271 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %271)
  %cmp.i81 = icmp ugt i32 %271, 1
  br i1 %cmp.i81, label %do.end.i84, label %queue_hw_job.exit.fdp1_write.exit86_crit_edge

queue_hw_job.exit.fdp1_write.exit86_crit_edge:    ; preds = %queue_hw_job.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit86

do.end.i84:                                       ; preds = %queue_hw_job.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i82 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i82, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 0) #18
  br label %fdp1_write.exit86

fdp1_write.exit86:                                ; preds = %do.end.i84, %queue_hw_job.exit.fdp1_write.exit86_crit_edge
  %272 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 16777216) #15, !srcloc !319
  %274 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %274)
  %cmp.i87 = icmp ugt i32 %274, 1
  br i1 %cmp.i87, label %do.end.i90, label %fdp1_write.exit86.fdp1_write.exit93_crit_edge

fdp1_write.exit86.fdp1_write.exit93_crit_edge:    ; preds = %fdp1_write.exit86
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit93

do.end.i90:                                       ; preds = %fdp1_write.exit86
  call void @__sanitizer_cov_trace_pc() #17
  %name.i88 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i88, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 8) #18
  br label %fdp1_write.exit93

fdp1_write.exit93:                                ; preds = %do.end.i90, %fdp1_write.exit86.fdp1_write.exit93_crit_edge
  %275 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %276, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 16777216) #15, !srcloc !319
  %277 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %277)
  %cmp.i94 = icmp ugt i32 %277, 1
  br i1 %cmp.i94, label %do.end.i97, label %fdp1_write.exit93.fdp1_write.exit100_crit_edge

fdp1_write.exit93.fdp1_write.exit100_crit_edge:   ; preds = %fdp1_write.exit93
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit100

do.end.i97:                                       ; preds = %fdp1_write.exit93
  call void @__sanitizer_cov_trace_pc() #17
  %name.i95 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i95, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 4) #18
  br label %fdp1_write.exit100

fdp1_write.exit100:                               ; preds = %do.end.i97, %fdp1_write.exit93.fdp1_write.exit100_crit_edge
  %278 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %279, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 16777216) #15, !srcloc !319
  br label %cleanup

cleanup:                                          ; preds = %fdp1_write.exit100, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %device_process_lock, i32 noundef %call3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp1_m2m_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fdp11 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdp11, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, ptr noundef nonnull @.str.94) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %translen = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %translen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %translen, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #15
  %num_fields = getelementptr inbounds %struct.fdp1_buffer, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_fields, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp779.not = icmp eq i32 %7, 0
  br i1 %cmp779.not, label %do.end4.while.cond.preheader_crit_edge, label %for.body.lr.ph

do.end4.while.cond.preheader_crit_edge:           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %do.end4
  %fields_queue.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 14, i32 1
  %buffers_queued.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 15
  %name16 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  br label %for.body

while.cond.preheader:                             ; preds = %do.end21.while.cond.preheader_crit_edge, %do.end4.while.cond.preheader_crit_edge
  %deint_mode.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 7
  %buffers_queued.i67 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 15
  %fields_queue.i.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 14
  %sequence.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 3
  %previous.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 16
  br label %while.cond

for.body:                                         ; preds = %do.end21.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end21.for.body_crit_edge ]
  %8 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdp11, align 4
  %irqlock.i = getelementptr inbounds %struct.fdp1_dev, ptr %9, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #15
  %list.i = getelementptr %struct.fdp1_buffer, ptr %call.i, i32 0, i32 1, i32 %i.080, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %11, ptr noundef %fields_queue.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.fdp1_queue_field.exit_crit_edge

for.body.fdp1_queue_field.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_queue_field.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fields_queue.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.fdp1_buffer, ptr %call.i, i32 0, i32 1, i32 %i.080, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %11, align 4
  br label %fdp1_queue_field.exit

fdp1_queue_field.exit:                            ; preds = %if.end.i.i.i, %for.body.fdp1_queue_field.exit_crit_edge
  %16 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fdp11, align 4
  %irqlock6.i = getelementptr inbounds %struct.fdp1_dev, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock6.i, i32 noundef %call2.i) #15
  %18 = ptrtoint ptr %buffers_queued.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffers_queued.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %buffers_queued.i, align 4
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.not = icmp eq i32 %20, 0
  br i1 %cmp9.not, label %fdp1_queue_field.exit.do.end21_crit_edge, label %do.end13

fdp1_queue_field.exit.do.end21_crit_edge:         ; preds = %fdp1_queue_field.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

do.end13:                                         ; preds = %fdp1_queue_field.exit
  call void @__sanitizer_cov_trace_pc() #17
  %last_field = getelementptr %struct.fdp1_buffer, ptr %call.i, i32 0, i32 1, i32 %i.080, i32 3
  %21 = ptrtoint ptr %last_field to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %last_field, align 4, !range !323
  %23 = zext i8 %22 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name16, ptr noundef nonnull @.str.94, i32 noundef %i.080, i32 noundef %23) #18
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %fdp1_queue_field.exit.do.end21_crit_edge
  %inc = add nuw i32 %i.080, 1
  %24 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_fields, align 8
  %cmp7 = icmp ult i32 %inc, %25
  br i1 %cmp7, label %do.end21.for.body_crit_edge, label %do.end21.while.cond.preheader_crit_edge

do.end21.while.cond.preheader_crit_edge:          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %26 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fdp11, align 4
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %while.cond.do.end4.i_crit_edge, label %do.end.i

while.cond.do.end4.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4.i

do.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %call.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name.i, ptr noundef nonnull @.str.101) #18
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %while.cond.do.end4.i_crit_edge
  %29 = ptrtoint ptr %deint_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %deint_mode.i, align 4
  %switch.tableidx = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 5
  br i1 %31, label %switch.lookup, label %do.end4.i.if.end12.i_crit_edge

do.end4.i.if.end12.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

switch.lookup:                                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.fdp1_m2m_device_run, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %switch.lookup, %do.end4.i.if.end12.i_crit_edge
  %buffers_required.0.i = phi i32 [ 1, %do.end4.i.if.end12.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %33 = ptrtoint ptr %buffers_queued.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffers_queued.i67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %buffers_required.0.i)
  %cmp13.i = icmp ult i32 %34, %buffers_required.0.i
  br i1 %cmp13.i, label %if.end12.i.while.end_crit_edge, label %if.end15.i

if.end12.i.while.end_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end15.i:                                       ; preds = %if.end12.i
  %free_job_list.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 9
  %irqlock.i.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 3
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i.i) #15
  %35 = ptrtoint ptr %free_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %free_job_list.i.i, align 4
  %cmp10.not.i.i.i = icmp eq ptr %36, %free_job_list.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 -16
  %tobool.not.i.i196.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i.i = or i1 %cmp10.not.i.i.i, %tobool.not.i.i196.i
  br i1 %tobool.not.i.i.i, label %do.body18.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end15.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.if.end32.i_crit_edge

if.then.i.i.i.if.end32.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %if.end32.i

do.body18.i:                                      ; preds = %if.end15.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i.i, i32 noundef %call2.i.i.i) #15
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp19.not.i = icmp eq i32 %43, 0
  br i1 %cmp19.not.i, label %do.body18.i.while.end_crit_edge, label %do.end23.i

do.body18.i.while.end_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  %name26.i = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name26.i, ptr noundef nonnull @.str.101) #18
  br label %while.end

if.end32.i:                                       ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.end32.i_crit_edge
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %36, i32 4
  %45 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i.i, i32 noundef %call2.i.i.i) #15
  %46 = ptrtoint ptr %buffers_queued.i67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buffers_queued.i67, align 4
  %dec.i.i = add i32 %47, -1
  store i32 %dec.i.i, ptr %buffers_queued.i67, align 4
  %48 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fdp11, align 4
  %irqlock.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %49, i32 0, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %50 = ptrtoint ptr %fields_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %fields_queue.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %51, %fields_queue.i.i
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 -24
  %spec.select.i.i = select i1 %cmp10.not.i.i, ptr null, ptr %add.ptr.i.i
  %tobool.not.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i.i, label %if.end32.i.fdp1_dequeue_field.exit.i_crit_edge, label %if.then.i.i

if.end32.i.fdp1_dequeue_field.exit.i_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_dequeue_field.exit.i

if.then.i.i:                                      ; preds = %if.end32.i
  %list.i.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i174.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev.i.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i174.i, align 4
  %54 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %58 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i.i, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %fdp1_dequeue_field.exit.i

fdp1_dequeue_field.exit.i:                        ; preds = %list_del.exit.i.i, %if.end32.i.fdp1_dequeue_field.exit.i_crit_edge
  %60 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fdp11, align 4
  %irqlock14.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %61, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock14.i.i, i32 noundef %call2.i.i) #15
  %active.i = getelementptr i8, ptr %36, i32 -12
  %62 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %spec.select.i.i, ptr %active.i, align 4
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp38.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i, label %do.body37.i, label %do.body52.i

do.body37.i:                                      ; preds = %fdp1_dequeue_field.exit.i
  br i1 %cmp38.not.i, label %do.body37.i.do.end50.i_crit_edge, label %do.end42.i

do.body37.i.do.end50.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end50.i

do.end42.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  %name45.i = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name45.i, ptr noundef nonnull @.str.101) #18
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end42.i, %do.body37.i.do.end50.i_crit_edge
  %64 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 24)
  %call2.i.i177.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i.i) #15
  %prev.i.i.i178.i = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %prev.i.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i178.i, align 4
  %call.i.i.i.i179.i = tail call zeroext i1 @__list_add_valid(ptr noundef %36, ptr noundef %66, ptr noundef %free_job_list.i.i) #15
  br i1 %call.i.i.i.i179.i, label %if.end.i.i.i.i180.i, label %do.end50.i.fdp1_job_free.exit.i_crit_edge

do.end50.i.fdp1_job_free.exit.i_crit_edge:        ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_job_free.exit.i

if.end.i.i.i.i180.i:                              ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %prev.i.i.i178.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %36, ptr %prev.i.i.i178.i, align 4
  %68 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %free_job_list.i.i, ptr %36, align 4
  %69 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %36, ptr %66, align 4
  br label %fdp1_job_free.exit.i

fdp1_job_free.exit.i:                             ; preds = %if.end.i.i.i.i180.i, %do.end50.i.fdp1_job_free.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i.i, i32 noundef %call2.i.i177.i) #15
  br label %while.end

do.body52.i:                                      ; preds = %fdp1_dequeue_field.exit.i
  br i1 %cmp38.not.i, label %do.body52.i.do.end65.i_crit_edge, label %do.end57.i

do.body52.i.do.end65.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65.i

do.end57.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #17
  %name60.i = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name60.i, ptr noundef nonnull @.str.101) #18
  br label %do.end65.i

do.end65.i:                                       ; preds = %do.end57.i, %do.body52.i.do.end65.i_crit_edge
  %71 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %72, i32 0, i32 7
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #15
  %fields.i = getelementptr inbounds %struct.fdp1_buffer, ptr %call.i.i, i32 0, i32 1
  %dst.i = getelementptr i8, ptr %36, i32 -4
  %73 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fields.i, ptr %dst.i, align 4
  %74 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sequence.i, align 4
  %76 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %active.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %sequence69.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %sequence69.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %75, ptr %sequence69.i, align 8
  %81 = load i32, ptr %sequence.i, align 4
  %82 = load ptr, ptr %dst.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %sequence73.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %sequence73.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %81, ptr %sequence73.i, align 8
  %86 = load i32, ptr %sequence.i, align 4
  %inc.i68 = add i32 %86, 1
  store i32 %inc.i68, ptr %sequence.i, align 4
  %87 = ptrtoint ptr %deint_mode.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %deint_mode.i, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %88, label %do.end65.i.if.end87.i_crit_edge [
    i32 1, label %do.end65.i.if.then83.i_crit_edge
    i32 3, label %do.end65.i.if.then83.i_crit_edge123
    i32 4, label %do.end65.i.if.then83.i_crit_edge124
  ]

do.end65.i.if.then83.i_crit_edge124:              ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then83.i

do.end65.i.if.then83.i_crit_edge123:              ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then83.i

do.end65.i.if.then83.i_crit_edge:                 ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then83.i

do.end65.i.if.end87.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87.i

if.then83.i:                                      ; preds = %do.end65.i.if.then83.i_crit_edge, %do.end65.i.if.then83.i_crit_edge123, %do.end65.i.if.then83.i_crit_edge124
  %90 = ptrtoint ptr %previous.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %previous.i, align 4
  %92 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %add.ptr.i.i.i, align 4
  %93 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %active.i, align 4
  store ptr %94, ptr %previous.i, align 4
  %95 = ptrtoint ptr %deint_mode.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i = load i32, ptr %deint_mode.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i, %do.end65.i.if.end87.i_crit_edge
  %96 = phi i32 [ %88, %do.end65.i.if.end87.i_crit_edge ], [ %.pr.i, %if.then83.i ]
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %96, label %if.end87.i.if.end98.i_crit_edge [
    i32 1, label %if.end87.i.if.then96.i_crit_edge
    i32 3, label %if.end87.i.if.then96.i_crit_edge125
    i32 5, label %if.end87.i.if.then96.i_crit_edge126
  ]

if.end87.i.if.then96.i_crit_edge126:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96.i

if.end87.i.if.then96.i_crit_edge125:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96.i

if.end87.i.if.then96.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96.i

if.end87.i.if.end98.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98.i

if.then96.i:                                      ; preds = %if.end87.i.if.then96.i_crit_edge, %if.end87.i.if.then96.i_crit_edge125, %if.end87.i.if.then96.i_crit_edge126
  %98 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fdp11, align 4
  %irqlock.i182.i = getelementptr inbounds %struct.fdp1_dev, ptr %99, i32 0, i32 3
  %call2.i183.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i182.i) #15
  %100 = ptrtoint ptr %fields_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %fields_queue.i.i, align 4
  %cmp10.not.i185.i = icmp eq ptr %101, %fields_queue.i.i
  %add.ptr.i186.i = getelementptr i8, ptr %101, i32 -24
  %spec.select.i187.i = select i1 %cmp10.not.i185.i, ptr null, ptr %add.ptr.i186.i
  %102 = ptrtoint ptr %fdp11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fdp11, align 4
  %irqlock14.i188.i = getelementptr inbounds %struct.fdp1_dev, ptr %103, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock14.i188.i, i32 noundef %call2.i183.i) #15
  %next.i = getelementptr i8, ptr %36, i32 -8
  %104 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %spec.select.i187.i, ptr %next.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %if.end87.i.if.end98.i_crit_edge
  %105 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %active.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %timestamp.i, align 8
  %111 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dst.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %timestamp104.i = getelementptr inbounds %struct.vb2_buffer, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %timestamp104.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %110, ptr %timestamp104.i, align 8
  %116 = load ptr, ptr %active.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %flags.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %120, 458752
  %121 = load ptr, ptr %dst.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %flags109.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %flags109.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %and.i, ptr %flags109.i, align 8
  %125 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %translen, align 4
  %inc110.i = add i32 %126, 1
  store i32 %inc110.i, ptr %translen, align 4
  %queued_job_list.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 10
  %call2.i.i190.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i.i) #15
  %prev.i.i.i192.i = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 10, i32 1
  %127 = ptrtoint ptr %prev.i.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i.i192.i, align 4
  %call.i.i.i.i193.i = tail call zeroext i1 @__list_add_valid(ptr noundef %36, ptr noundef %128, ptr noundef %queued_job_list.i.i) #15
  br i1 %call.i.i.i.i193.i, label %if.end.i.i.i.i195.i, label %if.end98.i.queue_job.exit.i_crit_edge

if.end98.i.queue_job.exit.i_crit_edge:            ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %queue_job.exit.i

if.end.i.i.i.i195.i:                              ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  %129 = ptrtoint ptr %prev.i.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %36, ptr %prev.i.i.i192.i, align 4
  %130 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %queued_job_list.i.i, ptr %36, align 4
  %131 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev.i.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %36, ptr %128, align 4
  br label %queue_job.exit.i

queue_job.exit.i:                                 ; preds = %if.end.i.i.i.i195.i, %if.end98.i.queue_job.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i.i, i32 noundef %call2.i.i190.i) #15
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp112.not.i = icmp eq i32 %133, 0
  br i1 %cmp112.not.i, label %queue_job.exit.i.while.cond.backedge_crit_edge, label %do.end116.i

queue_job.exit.i.while.cond.backedge_crit_edge:   ; preds = %queue_job.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end116.i, %queue_job.exit.i.while.cond.backedge_crit_edge
  br label %while.cond

do.end116.i:                                      ; preds = %queue_job.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %name119.i = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %134 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %translen, align 4
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name119.i, ptr noundef nonnull @.str.101, i32 noundef %135) #18
  br label %while.cond.backedge

while.end:                                        ; preds = %fdp1_job_free.exit.i, %do.end23.i, %do.body18.i.while.end_crit_edge, %if.end12.i.while.end_crit_edge
  %136 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %translen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp25 = icmp eq i32 %137, 0
  br i1 %cmp25, label %do.body28, label %if.end45

do.body28:                                        ; preds = %while.end
  %138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp29.not = icmp eq i32 %138, 0
  br i1 %cmp29.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  %name37 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name37, ptr noundef nonnull @.str.94) #18
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %m2m_dev = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 14
  %139 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %m2m_dev, align 8
  %141 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %140, ptr noundef %142) #15
  br label %cleanup

if.end45:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fdp1_device_process(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_m2m_job_ready(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %2, i32 0, i32 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_rdy.i, align 4
  %conv.i = zext i8 %6 to i32
  %num_rdy.i65 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %num_rdy.i65 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rdy.i65, align 4
  %conv.i66 = zext i8 %8 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name, ptr noundef nonnull @.str.115, i32 noundef %conv.i, i32 noundef %conv.i66) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %field = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 12, i32 1, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field, align 4
  %switch.tableidx = add i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 6
  br i1 %11, label %switch.lookup, label %do.end7.if.end25_crit_edge

do.end7.if.end25_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

switch.lookup:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.fdp1_m2m_job_ready, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end25

if.end25:                                         ; preds = %switch.lookup, %do.end7.if.end25_crit_edge
  %dstbufs.0 = phi i32 [ 1, %do.end7.if.end25_crit_edge ], [ %switch.load, %switch.lookup ]
  %m2m_ctx27 = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %13 = ptrtoint ptr %m2m_ctx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx27, align 4
  %num_rdy.i67 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %num_rdy.i67 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_rdy.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp29 = icmp eq i8 %16, 0
  br i1 %cmp29, label %if.end25.do.body36_crit_edge, label %lor.lhs.false30

if.end25.do.body36_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

lor.lhs.false30:                                  ; preds = %if.end25
  %num_rdy.i69 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %num_rdy.i69 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_rdy.i69, align 4
  %conv.i70 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dstbufs.0, i32 %conv.i70)
  %cmp34 = icmp ugt i32 %dstbufs.0, %conv.i70
  br i1 %cmp34, label %lor.lhs.false30.do.body36_crit_edge, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false30.do.body36_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

do.body36:                                        ; preds = %lor.lhs.false30.do.body36_crit_edge, %if.end25.do.body36_crit_edge
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp37.not = icmp eq i32 %19, 0
  br i1 %cmp37.not, label %do.body36.cleanup_crit_edge, label %do.end41

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  %fdp143 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %fdp143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fdp143, align 4
  %name45 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name45, ptr noundef nonnull @.str.115) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.body36.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end41 ], [ 0, %do.body36.cleanup_crit_edge ], [ 1, %lor.lhs.false30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp1_m2m_job_abort(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %do.end3.thread, label %do.end3

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %aborting16 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 6
  %1 = ptrtoint ptr %aborting16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %aborting16, align 4
  %fdp1417 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %fdp1417 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdp1417, align 4
  br label %fdp1_write.exit

do.end3:                                          ; preds = %entry
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, ptr noundef nonnull @.str.119) #18
  %.pr = load i32, ptr @debug, align 4
  %aborting = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %aborting, align 4
  %7 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i = icmp ugt i32 %.pr, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.fdp1_write.exit_crit_edge

do.end3.fdp1_write.exit_crit_edge:                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 4) #18
  br label %fdp1_write.exit

fdp1_write.exit:                                  ; preds = %do.end.i, %do.end3.fdp1_write.exit_crit_edge, %do.end3.thread
  %9 = phi ptr [ %3, %do.end3.thread ], [ %8, %do.end3.fdp1_write.exit_crit_edge ], [ %8, %do.end.i ]
  %fdp1419 = phi ptr [ %fdp1417, %do.end3.thread ], [ %fdp1, %do.end3.fdp1_write.exit_crit_edge ], [ %fdp1, %do.end.i ]
  %regs.i = getelementptr inbounds %struct.fdp1_dev, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !319
  %12 = ptrtoint ptr %fdp1419 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdp1419, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i9 = icmp ugt i32 %14, 1
  br i1 %cmp.i9, label %do.end.i12, label %fdp1_write.exit.fdp1_write.exit15_crit_edge

fdp1_write.exit.fdp1_write.exit15_crit_edge:      ; preds = %fdp1_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit15

do.end.i12:                                       ; preds = %fdp1_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i10 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i10, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 28) #18
  br label %fdp1_write.exit15

fdp1_write.exit15:                                ; preds = %do.end.i12, %fdp1_write.exit.fdp1_write.exit15_crit_edge
  %regs.i13 = getelementptr inbounds %struct.fdp1_dev, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %regs.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #15, !srcloc !319
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_open(ptr noundef %file) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_pix_format_mplane, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %format) #15
  %2 = call ptr @memset(ptr %format, i32 255, i32 192)
  %dev_mutex = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 852) #19
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @video_devdata(ptr noundef %file) #15
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call6) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  %fdp18 = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %fdp18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %fdp18, align 8
  %fields_queue = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %fields_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %fields_queue, ptr %fields_queue, align 4
  %prev.i = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fields_queue, ptr %prev.i, align 8
  %translen = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %translen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %translen, align 4
  %sequence = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sequence, align 4
  %hdl = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @fdp1_open._key, ptr noundef nonnull @.str.120) #15
  %call11 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 10422532, i8 noundef zeroext 5, i64 noundef 1, i8 noundef zeroext 3, ptr noundef nonnull @fdp1_ctrl_deint_menu) #15
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 9963815, i64 noundef 1, i64 noundef 2, i64 noundef 1, i64 noundef 1) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end5.if.end16_crit_edge, label %if.then15

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call13, i32 0, i32 20
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 128
  store i32 %or, ptr %flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end5.if.end16_crit_edge
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #15
  %error = getelementptr inbounds %struct.fdp1_ctx, ptr %call7.i.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end24, label %if.end16.error_ctx_crit_edge

if.end16.error_ctx_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_ctx

if.end24:                                         ; preds = %if.end16
  %ctrl_handler = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %call28 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #15
  %15 = call ptr @memset(ptr %format, i32 0, i32 192)
  call fastcc void @fdp1_set_format(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %format, i32 noundef 10)
  %m2m_dev = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 8
  %call29 = call ptr @v4l2_m2m_ctx_init(ptr noundef %17, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call29, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call29 to i32
  br label %error_ctx

if.end38:                                         ; preds = %if.end24
  %dev = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i98 = call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp.i99, label %if.then.i, label %if.end41

if.then.i:                                        ; preds = %if.end38
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !320
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !321
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_pm_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !322
  br label %error_pm

if.end41:                                         ; preds = %if.end38
  call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #15
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43.not = icmp eq i32 %23, 0
  br i1 %cmp43.not, label %if.end41.cleanup.sink.split_crit_edge, label %do.end

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name, ptr noundef nonnull @.str.122, ptr noundef nonnull %call7.i.i, ptr noundef %25) #18
  br label %cleanup.sink.split

error_pm:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.error_pm_crit_edge
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_ctx_release(ptr noundef %27) #15
  br label %error_ctx

error_ctx:                                        ; preds = %error_pm, %if.then34, %if.end16.error_ctx_crit_edge
  %ret.0 = phi i32 [ %19, %if.then34 ], [ %call.i98, %error_pm ], [ %13, %if.end16.error_ctx_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_ctx, %do.end, %if.end41.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.end ], [ 0, %if.end41.cleanup.sink.split_crit_edge ], [ %ret.0, %error_ctx ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %dev_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %format) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name, ptr noundef nonnull @.str.141, ptr noundef %3) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %3) #15
  tail call void @v4l2_fh_exit(ptr noundef %3) #15
  %hdl = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #15
  %dev_mutex = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %6) #15
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #15
  tail call void @kfree(ptr noundef %3) #15
  %dev = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp1_set_format(ptr noundef %ctx, ptr noundef %pix, i32 noundef %type) unnamed_addr #7 align 64 {
entry:
  %fmtinfo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %type, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge87
    i32 3, label %entry.if.then.i_crit_edge88
    i32 8, label %entry.if.then.i_crit_edge89
    i32 5, label %entry.if.then.i_crit_edge90
    i32 7, label %entry.if.then.i_crit_edge91
    i32 12, label %entry.if.then.i_crit_edge92
    i32 14, label %entry.if.then.i_crit_edge93
  ]

entry.if.then.i_crit_edge93:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge87, %entry.if.then.i_crit_edge88, %entry.if.then.i_crit_edge89, %entry.if.then.i_crit_edge90, %entry.if.then.i_crit_edge91, %entry.if.then.i_crit_edge92, %entry.if.then.i_crit_edge93
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12
  br label %get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmtinfo) #15
  %1 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fmtinfo, align 4, !annotation !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp = icmp eq i32 %type, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @fdp1_try_fmt_output(ptr noundef nonnull %fmtinfo, ptr noundef %pix)
  br label %if.end

if.else:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @fdp1_try_fmt_capture(ptr noundef %ctx, ptr noundef nonnull %fmtinfo, ptr noundef %pix)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmtinfo, align 4
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %retval.0.i, align 4
  %format = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %format, ptr %pix, i32 192)
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %vsize = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %vsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vsize, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.not = icmp eq i32 %10, 1
  br i1 %cmp1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %div86 = lshr i32 %7, 1
  %11 = ptrtoint ptr %vsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div86, ptr %vsize, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %bytesperline, align 1
  %stride_y = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %stride_y to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %stride_y, align 4
  %bytesperline7 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %bytesperline7, align 1
  %stride_c = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %stride_c to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %stride_c, align 4
  %18 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %field, align 1
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %19, label %if.end4.if.end19_crit_edge [
    i32 4, label %if.end4.if.then15_crit_edge
    i32 8, label %if.end4.if.then15_crit_edge94
    i32 9, label %if.end4.if.then15_crit_edge95
  ]

if.end4.if.then15_crit_edge95:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

if.end4.if.then15_crit_edge94:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

if.end4.if.then15_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %if.end4.if.then15_crit_edge, %if.end4.if.then15_crit_edge94, %if.end4.if.then15_crit_edge95
  %mul = shl i32 %13, 1
  %21 = ptrtoint ptr %stride_y to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %stride_y, align 4
  %mul18 = shl i32 %16, 1
  %22 = ptrtoint ptr %stride_c to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul18, ptr %stride_c, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end4.if.end19_crit_edge
  br i1 %cmp, label %if.then21, label %if.end19.if.end50_crit_edge

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then21:                                        ; preds = %if.end19
  %cap_q = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13
  %format22 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1
  %23 = call ptr @memcpy(ptr %format22, ptr %format, i32 192)
  %plane_fmt25 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 5
  %24 = call ptr @memset(ptr %plane_fmt25, i32 0, i32 160)
  %field27 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 3
  %25 = ptrtoint ptr %field27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field27, align 4
  %26 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp29 = icmp eq i32 %27, 7
  br i1 %cmp29, label %if.then30, label %if.then21.if.end34_crit_edge

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then30:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %height32 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 1
  %28 = ptrtoint ptr %height32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height32, align 4
  %mul33 = shl i32 %29, 1
  store i32 %mul33, ptr %height32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then21.if.end34_crit_edge
  call fastcc void @fdp1_try_fmt_capture(ptr noundef %ctx, ptr noundef %cap_q, ptr noundef %format22)
  %height38 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 1
  %30 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height38, align 4
  %vsize39 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 2
  %32 = ptrtoint ptr %vsize39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vsize39, align 4
  %bytesperline43 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %bytesperline43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesperline43, align 4
  %stride_y44 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 3
  %35 = ptrtoint ptr %stride_y44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %stride_y44, align 4
  %bytesperline48 = getelementptr %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 1, i32 5, i32 1, i32 1
  %36 = ptrtoint ptr %bytesperline48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesperline48, align 4
  %stride_c49 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 13, i32 4
  %38 = ptrtoint ptr %stride_c49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %stride_c49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end34, %if.end19.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmtinfo) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 816, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fdp1_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdp1, align 4
  %dev_mutex = getelementptr inbounds %struct.fdp1_dev, ptr %8, i32 0, i32 2
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex, ptr %lock, align 4
  %10 = load ptr, ptr %fdp1, align 4
  %dev = getelementptr inbounds %struct.fdp1_dev, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev2, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %dst_vq, align 4
  %io_modes4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 19, ptr %io_modes4, align 4
  %drv_priv5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv5, align 4
  %buf_struct_size6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 816, ptr %buf_struct_size6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %18 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fdp1_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %timestamp_flags9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags9, align 4
  %21 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fdp1, align 4
  %dev_mutex11 = getelementptr inbounds %struct.fdp1_dev, ptr %22, i32 0, i32 2
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev_mutex11, ptr %lock12, align 4
  %24 = load ptr, ptr %fdp1, align 4
  %dev14 = getelementptr inbounds %struct.fdp1_dev, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev15, align 4
  %call16 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdp1_g_ctrl(ptr nocapture noundef %ctrl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963815, i32 %1)
  %cond = icmp eq i32 %1, 9963815
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %field = getelementptr i8, ptr %3, i32 240
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  %switch.tableidx = add i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 6
  br i1 %6, label %switch.lookup, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.fdp1_g_ctrl, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %sw.bb.cleanup.sink.split_crit_edge ]
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdp1_s_ctrl(ptr nocapture noundef readonly %ctrl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963817, label %sw.bb
    i32 10422532, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %alpha = getelementptr i8, ptr %1, i32 220
  %7 = ptrtoint ptr %alpha to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %alpha, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %deint_mode = getelementptr i8, ptr %1, i32 200
  %10 = ptrtoint ptr %deint_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %deint_mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp1_try_fmt_output(ptr noundef writeonly %fmtinfo, ptr nocapture noundef %pix) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pixelformat, align 1
  %call = tail call fastcc ptr @fdp1_find_format(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %types = getelementptr inbounds %struct.fdp1_fmt, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %types to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %types, align 2
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %fmt.0 = phi ptr [ %call, %lor.lhs.false.if.end_crit_edge ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %if.then ]
  %tobool3.not = icmp eq ptr %fmtinfo, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fmt.0, ptr %fmtinfo, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt.0, align 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %pixelformat, align 1
  %num_planes = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 2
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_planes, align 1
  %num_planes7 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 6
  %11 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %num_planes7, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %field, align 1
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %13, label %if.then32 [
    i32 1, label %if.end5.if.end34_crit_edge
    i32 7, label %if.end5.if.end34_crit_edge3
    i32 4, label %if.end5.if.end34_crit_edge4
    i32 8, label %if.end5.if.end34_crit_edge5
    i32 9, label %if.end5.if.end34_crit_edge6
    i32 5, label %if.end5.if.end34_crit_edge7
    i32 6, label %if.end5.if.end34_crit_edge8
  ]

if.end5.if.end34_crit_edge8:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge7:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge6:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge5:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge4:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge3:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end5.if.end34_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then32:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 4, ptr %field, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end5.if.end34_crit_edge, %if.end5.if.end34_crit_edge3, %if.end5.if.end34_crit_edge4, %if.end5.if.end34_crit_edge5, %if.end5.if.end34_crit_edge6, %if.end5.if.end34_crit_edge7, %if.end5.if.end34_crit_edge8
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 4
  %16 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %colorspace, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp35 = icmp eq i32 %17, 0
  br i1 %cmp35, label %if.then37, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1, ptr %colorspace, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %19 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %pix, align 1
  %hsub = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 3
  %21 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hsub, align 4
  %conv41 = zext i8 %22 to i32
  %neg = sub nsw i32 0, %conv41
  %and42 = and i32 %20, %neg
  %23 = tail call i32 @llvm.umax.i32(i32 %and42, i32 80)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 3840)
  %25 = ptrtoint ptr %pix to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %pix, align 1
  %height53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %26 = ptrtoint ptr %height53 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %height53, align 1
  %vsub = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 4
  %28 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vsub, align 1
  %conv54 = zext i8 %29 to i32
  %neg56 = sub nsw i32 0, %conv54
  %and57 = and i32 %27, %neg56
  %30 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp59 = icmp eq i32 %31, 7
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %32 = tail call i32 @llvm.umax.i32(i32 %and57, i32 40)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 1080)
  br label %if.end92

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %34 = tail call i32 @llvm.umax.i32(i32 %and57, i32 80)
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 2160)
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then61
  %storemerge = phi i32 [ %35, %if.else ], [ %33, %if.then61 ]
  %36 = ptrtoint ptr %height53 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %storemerge, ptr %height53, align 1
  %37 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_planes, align 1
  %39 = tail call i8 @llvm.umin.i8(i8 %38, i8 2) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp297.not.i = icmp eq i8 %39, 0
  br i1 %cmp297.not.i, label %if.end92.for.end.i_crit_edge, label %cond.end18.peel.i

if.end92.for.end.i_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

cond.end18.peel.i:                                ; preds = %if.end92
  %arrayidx.peel.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0
  %bytesperline.peel.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %bytesperline.peel.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %bytesperline.peel.i, align 1
  %arrayidx20.peel.i = getelementptr %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 1, i32 0
  %42 = ptrtoint ptr %arrayidx20.peel.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx20.peel.i, align 1
  %conv21.peel.i = zext i8 %43 to i32
  %mul.peel.i = mul nuw nsw i32 %24, %conv21.peel.i
  %div2293.peel.i = lshr i32 %mul.peel.i, 3
  %44 = tail call i32 @llvm.umax.i32(i32 %41, i32 %div2293.peel.i) #15
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 8064) #15
  %sub37.peel.i = add nsw i32 %45, -1
  %or.peel.i = or i32 %sub37.peel.i, 127
  %add.peel.i = add nsw i32 %or.peel.i, 1
  %46 = ptrtoint ptr %bytesperline.peel.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %add.peel.i, ptr %bytesperline.peel.i, align 1
  %mul45.peel.i = mul nsw i32 %add.peel.i, %storemerge
  %47 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %mul45.peel.i, ptr %arrayidx.peel.i, align 1
  %48 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_planes, align 1
  %50 = tail call i8 @llvm.umin.i8(i8 %49, i8 2) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp2.peel.i = icmp ugt i8 %50, 1
  br i1 %cmp2.peel.i, label %for.end.loopexit.loopexit.i, label %cond.end18.peel.i.for.end.i_crit_edge

cond.end18.peel.i.for.end.i_crit_edge:            ; preds = %cond.end18.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.loopexit.loopexit.i:                      ; preds = %cond.end18.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hsub, align 4
  %53 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vsub, align 1
  %conv16.i = zext i8 %54 to i32
  %arrayidx.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %55 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %bytesperline.i, align 1
  %div.i.lhs.trunc = trunc i32 %24 to i16
  %div.i.rhs.trunc = zext i8 %52 to i16
  %div.i2 = udiv i16 %div.i.lhs.trunc, %div.i.rhs.trunc
  %div.i.zext = zext i16 %div.i2 to i32
  %arrayidx20.i = getelementptr %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %58 to i32
  %mul.i = mul nuw nsw i32 %conv21.i, %div.i.zext
  %div2293.i = lshr i32 %mul.i, 3
  %59 = tail call i32 @llvm.umax.i32(i32 %56, i32 %div2293.i) #15
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 8064) #15
  %sub37.i = add nsw i32 %60, -1
  %or.i = or i32 %sub37.i, 127
  %add.i = add nsw i32 %or.i, 1
  %61 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %add.i, ptr %bytesperline.i, align 1
  %mul45.i = mul nsw i32 %add.i, %storemerge
  %div46.i = udiv i32 %mul45.i, %conv16.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %div46.i, ptr %arrayidx.i, align 1
  %63 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_planes, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.loopexit.i, %cond.end18.peel.i.for.end.i_crit_edge, %if.end92.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ %38, %if.end92.for.end.i_crit_edge ], [ %49, %cond.end18.peel.i.for.end.i_crit_edge ], [ %64, %for.end.loopexit.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.lcssa.i)
  %cmp51.i = icmp eq i8 %.lcssa.i, 3
  br i1 %cmp51.i, label %if.then.i, label %for.end.i.fdp1_compute_stride.exit_crit_edge

for.end.i.fdp1_compute_stride.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_compute_stride.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx54.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline55.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %65 = ptrtoint ptr %bytesperline55.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %bytesperline55.i, align 1
  %arrayidx57.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2
  %bytesperline58.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2, i32 1
  %67 = ptrtoint ptr %bytesperline58.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %bytesperline58.i, align 1
  %68 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx54.i, align 1
  %70 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %arrayidx57.i, align 1
  br label %fdp1_compute_stride.exit

fdp1_compute_stride.exit:                         ; preds = %if.then.i, %for.end.i.fdp1_compute_stride.exit_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp1_try_fmt_capture(ptr nocapture noundef readonly %ctx, ptr noundef writeonly %fmtinfo, ptr noundef %pix) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %colorspace1 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 4
  %0 = ptrtoint ptr %colorspace1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %colorspace1, align 4
  %2 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %1, label %if.end.thread122 [
    i32 3, label %if.then.if.end.thread131_crit_edge
    i32 12, label %if.then.if.end.thread131_crit_edge159
    i32 10, label %if.then.if.end.thread_crit_edge
    i32 2, label %if.then.if.end.thread_crit_edge160
  ]

if.then.if.end.thread_crit_edge160:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread

if.then.if.end.thread131_crit_edge159:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread131

if.then.if.end.thread131_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread131

if.end.thread122:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %quantization18124 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 9
  br label %lor.end

if.end.thread:                                    ; preds = %if.then.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge160
  %quantization18114 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 9
  br label %lor.end.thread

if.end.thread131:                                 ; preds = %if.then.if.end.thread131_crit_edge, %if.then.if.end.thread131_crit_edge159
  %quantization18133 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 9
  %6 = ptrtoint ptr %quantization18133 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %quantization18133, align 1
  %conv19134 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp20135 = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp23136 = icmp eq i32 %1, 7
  %cond25137 = select i1 %cmp23136, i32 1, i32 2
  %quantization.0138 = select i1 %cmp20135, i32 %cond25137, i32 %conv19134
  br label %land.rhs

if.end:                                           ; preds = %entry
  %quantization18 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 9
  %8 = ptrtoint ptr %quantization18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %quantization18, align 1
  %conv19 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20 = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp23 = icmp eq i32 %1, 7
  %cond25 = select i1 %cmp23, i32 1, i32 2
  %quantization.0 = select i1 %cmp20, i32 %cond25, i32 %conv19
  %10 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %4, label %if.end.lor.end.thread_crit_edge [
    i8 1, label %if.end.lor.end_crit_edge
    i8 2, label %if.end.land.rhs_crit_edge
  ]

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

if.end.lor.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end.thread

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %if.end.thread131
  %quantization.0140 = phi i32 [ %quantization.0138, %if.end.thread131 ], [ %quantization.0, %if.end.land.rhs_crit_edge ]
  %quantization18139 = phi ptr [ %quantization18133, %if.end.thread131 ], [ %quantization18, %if.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %quantization.0140)
  %cmp31 = icmp eq i32 %quantization.0140, 2
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %if.end.lor.end_crit_edge, %if.end.thread122
  %quantization18120 = phi ptr [ %quantization18, %if.end.lor.end_crit_edge ], [ %quantization18139, %land.rhs ], [ %quantization18124, %if.end.thread122 ]
  %11 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %cmp31, %land.rhs ], [ true, %if.end.thread122 ]
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %pixelformat, align 1
  %call = tail call fastcc ptr @fdp1_find_format(i32 noundef %13)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lor.end.if.then37_crit_edge, label %lor.lhs.false33

lor.end.if.then37_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

lor.end.thread:                                   ; preds = %if.end.lor.end.thread_crit_edge, %if.end.thread
  %quantization18121 = phi ptr [ %quantization18114, %if.end.thread ], [ %quantization18, %if.end.lor.end.thread_crit_edge ]
  %pixelformat142 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat142 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pixelformat142, align 1
  %call143 = tail call fastcc ptr @fdp1_find_format(i32 noundef %15)
  %tobool.not144 = icmp eq ptr %call143, null
  br i1 %tobool.not144, label %lor.end.thread.if.then37_crit_edge, label %lor.end.thread.land.lhs.true_crit_edge

lor.end.thread.land.lhs.true_crit_edge:           ; preds = %lor.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.end.thread.if.then37_crit_edge:               ; preds = %lor.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

lor.lhs.false33:                                  ; preds = %lor.end
  br i1 %11, label %lor.lhs.false33.if.end39_crit_edge, label %lor.lhs.false33.land.lhs.true_crit_edge

lor.lhs.false33.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false33.if.end39_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true:                                    ; preds = %lor.lhs.false33.land.lhs.true_crit_edge, %lor.end.thread.land.lhs.true_crit_edge
  %quantization18120146157 = phi ptr [ %quantization18120, %lor.lhs.false33.land.lhs.true_crit_edge ], [ %quantization18121, %lor.end.thread.land.lhs.true_crit_edge ]
  %pixelformat149156 = phi ptr [ %pixelformat, %lor.lhs.false33.land.lhs.true_crit_edge ], [ %pixelformat142, %lor.end.thread.land.lhs.true_crit_edge ]
  %call151155 = phi ptr [ %call, %lor.lhs.false33.land.lhs.true_crit_edge ], [ %call143, %lor.end.thread.land.lhs.true_crit_edge ]
  %fmt1.i = getelementptr inbounds %struct.fdp1_fmt, ptr %call151155, i32 0, i32 5
  %16 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fmt1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %17)
  %cmp.i = icmp ugt i8 %17, 27
  br i1 %cmp.i, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.if.then37_crit_edge

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true.if.then37_crit_edge, %lor.end.thread.if.then37_crit_edge, %lor.end.if.then37_crit_edge
  %pixelformat150 = phi ptr [ %pixelformat142, %lor.end.thread.if.then37_crit_edge ], [ %pixelformat149156, %land.lhs.true.if.then37_crit_edge ], [ %pixelformat, %lor.end.if.then37_crit_edge ]
  %quantization18120147 = phi ptr [ %quantization18121, %lor.end.thread.if.then37_crit_edge ], [ %quantization18120146157, %land.lhs.true.if.then37_crit_edge ], [ %quantization18120, %lor.end.if.then37_crit_edge ]
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true.if.end39_crit_edge, %lor.lhs.false33.if.end39_crit_edge
  %pixelformat148 = phi ptr [ %pixelformat, %lor.lhs.false33.if.end39_crit_edge ], [ %pixelformat150, %if.then37 ], [ %pixelformat149156, %land.lhs.true.if.end39_crit_edge ]
  %quantization18120145 = phi ptr [ %quantization18120, %lor.lhs.false33.if.end39_crit_edge ], [ %quantization18120147, %if.then37 ], [ %quantization18120146157, %land.lhs.true.if.end39_crit_edge ]
  %fmt.0 = phi ptr [ %call, %lor.lhs.false33.if.end39_crit_edge ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %if.then37 ], [ %call151155, %land.lhs.true.if.end39_crit_edge ]
  %tobool40.not = icmp eq ptr %fmtinfo, null
  br i1 %tobool40.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fmt.0, ptr %fmtinfo, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %19 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt.0, align 4
  %21 = ptrtoint ptr %pixelformat148 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %pixelformat148, align 1
  %num_planes = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 2
  %22 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_planes, align 1
  %num_planes44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 6
  %24 = ptrtoint ptr %num_planes44 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %num_planes44, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %25 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 1, ptr %field, align 1
  %26 = ptrtoint ptr %colorspace1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace1, align 4
  %colorspace47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 4
  %28 = ptrtoint ptr %colorspace47 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %colorspace47, align 1
  %xfer_func = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 10
  %29 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %xfer_func, align 4
  %xfer_func49 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 10
  %31 = ptrtoint ptr %xfer_func49 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %xfer_func49, align 1
  %fmt1.i110 = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 5
  %32 = ptrtoint ptr %fmt1.i110 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fmt1.i110, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %33)
  %cmp.i111 = icmp ugt i8 %33, 27
  br i1 %cmp.i111, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %34, align 1
  br label %if.end58

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %2, align 2
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %38, align 1
  %40 = ptrtoint ptr %quantization18120145 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %quantization18120145, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then52
  %.sink = phi i8 [ %41, %if.else ], [ 0, %if.then52 ]
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 9
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %42, align 1
  %44 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %format, align 4
  %46 = ptrtoint ptr %pix to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %pix, align 1
  %field62 = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 3
  %47 = ptrtoint ptr %field62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %field62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp63 = icmp eq i32 %48, 7
  %height = getelementptr inbounds %struct.fdp1_ctx, ptr %ctx, i32 0, i32 12, i32 1, i32 1
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %mul = zext i1 %cmp63 to i32
  %.sink158 = shl i32 %50, %mul
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %.sink158, ptr %51, align 1
  %53 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_planes, align 1
  %55 = tail call i8 @llvm.umin.i8(i8 %54, i8 2) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp297.not.i = icmp eq i8 %55, 0
  br i1 %cmp297.not.i, label %if.end58.for.end.i_crit_edge, label %cond.end18.peel.i

if.end58.for.end.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

cond.end18.peel.i:                                ; preds = %if.end58
  %arrayidx.peel.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0
  %bytesperline.peel.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %bytesperline.peel.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %bytesperline.peel.i, align 1
  %arrayidx20.peel.i = getelementptr %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 1, i32 0
  %58 = ptrtoint ptr %arrayidx20.peel.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx20.peel.i, align 1
  %conv21.peel.i = zext i8 %59 to i32
  %mul.peel.i = mul i32 %45, %conv21.peel.i
  %div2293.peel.i = lshr i32 %mul.peel.i, 3
  %60 = tail call i32 @llvm.umax.i32(i32 %57, i32 %div2293.peel.i) #15
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 8064) #15
  %sub37.peel.i = add nsw i32 %61, -1
  %or.peel.i = or i32 %sub37.peel.i, 127
  %add.peel.i = add nsw i32 %or.peel.i, 1
  %62 = ptrtoint ptr %bytesperline.peel.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %add.peel.i, ptr %bytesperline.peel.i, align 1
  %63 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %51, align 1
  %mul45.peel.i = mul i32 %add.peel.i, %64
  %65 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %mul45.peel.i, ptr %arrayidx.peel.i, align 1
  %66 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_planes, align 1
  %68 = tail call i8 @llvm.umin.i8(i8 %67, i8 2) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp2.peel.i = icmp ugt i8 %68, 1
  br i1 %cmp2.peel.i, label %for.end.loopexit.loopexit.i, label %cond.end18.peel.i.for.end.i_crit_edge

cond.end18.peel.i.for.end.i_crit_edge:            ; preds = %cond.end18.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.loopexit.loopexit.i:                      ; preds = %cond.end18.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  %vsub15.i = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 4
  %hsub7.i = getelementptr inbounds %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 3
  %69 = ptrtoint ptr %hsub7.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hsub7.i, align 4
  %conv8.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %vsub15.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %vsub15.i, align 1
  %conv16.i = zext i8 %72 to i32
  %arrayidx.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %73 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %bytesperline.i, align 1
  %div.i = udiv i32 %45, %conv8.i
  %arrayidx20.i = getelementptr %struct.fdp1_fmt, ptr %fmt.0, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %76 to i32
  %mul.i = mul i32 %div.i, %conv21.i
  %div2293.i = lshr i32 %mul.i, 3
  %77 = tail call i32 @llvm.umax.i32(i32 %74, i32 %div2293.i) #15
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 8064) #15
  %sub37.i = add nsw i32 %78, -1
  %or.i = or i32 %sub37.i, 127
  %add.i = add nsw i32 %or.i, 1
  %79 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %add.i, ptr %bytesperline.i, align 1
  %mul45.i = mul i32 %add.i, %64
  %div46.i = udiv i32 %mul45.i, %conv16.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %div46.i, ptr %arrayidx.i, align 1
  %81 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_planes, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.loopexit.i, %cond.end18.peel.i.for.end.i_crit_edge, %if.end58.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ %54, %if.end58.for.end.i_crit_edge ], [ %67, %cond.end18.peel.i.for.end.i_crit_edge ], [ %82, %for.end.loopexit.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.lcssa.i)
  %cmp51.i = icmp eq i8 %.lcssa.i, 3
  br i1 %cmp51.i, label %if.then.i, label %for.end.i.fdp1_compute_stride.exit_crit_edge

for.end.i.fdp1_compute_stride.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_compute_stride.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx54.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline55.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %83 = ptrtoint ptr %bytesperline55.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %bytesperline55.i, align 1
  %arrayidx57.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2
  %bytesperline58.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2, i32 1
  %85 = ptrtoint ptr %bytesperline58.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %bytesperline58.i, align 1
  %86 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arrayidx54.i, align 1
  %88 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %arrayidx57.i, align 1
  br label %fdp1_compute_stride.exit

fdp1_compute_stride.exit:                         ; preds = %if.then.i, %for.end.i.fdp1_compute_stride.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fdp1_find_format(i32 noundef %pixelformat) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %pixelformat, label %for.cond.25 [
    i32 826427218, label %entry.cleanup_crit_edge
    i32 842093144, label %cleanup.fold.split
    i32 892424792, label %cleanup.fold.split7
    i32 1346520914, label %cleanup.fold.split8
    i32 875713089, label %cleanup.fold.split9
    i32 875713112, label %cleanup.fold.split10
    i32 875708738, label %cleanup.fold.split11
    i32 875714626, label %cleanup.fold.split12
    i32 859981650, label %cleanup.fold.split13
    i32 861030210, label %cleanup.fold.split14
    i32 842093121, label %cleanup.fold.split15
    i32 892424769, label %cleanup.fold.split16
    i32 909200718, label %cleanup.fold.split17
    i32 825642318, label %cleanup.fold.split18
    i32 842091854, label %cleanup.fold.split19
    i32 825380174, label %cleanup.fold.split20
    i32 1498831189, label %cleanup.fold.split21
    i32 1498765654, label %cleanup.fold.split22
    i32 1448695129, label %cleanup.fold.split23
    i32 1431918169, label %cleanup.fold.split24
    i32 875711833, label %cleanup.fold.split25
    i32 842288473, label %cleanup.fold.split26
    i32 909200729, label %cleanup.fold.split27
    i32 825642329, label %cleanup.fold.split28
    i32 842091865, label %cleanup.fold.split29
    i32 825380185, label %cleanup.fold.split30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.25:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split30, %cleanup.fold.split29, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split7, %cleanup.fold.split, %for.cond.25, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @fdp1_formats, %entry.cleanup_crit_edge ], [ null, %for.cond.25 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 2), %cleanup.fold.split7 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 3), %cleanup.fold.split8 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 4), %cleanup.fold.split9 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 5), %cleanup.fold.split10 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 6), %cleanup.fold.split11 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 7), %cleanup.fold.split12 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 8), %cleanup.fold.split13 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 9), %cleanup.fold.split14 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 10), %cleanup.fold.split15 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 11), %cleanup.fold.split16 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 12), %cleanup.fold.split17 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 13), %cleanup.fold.split18 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 14), %cleanup.fold.split19 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 15), %cleanup.fold.split20 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 16), %cleanup.fold.split21 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 17), %cleanup.fold.split22 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %cleanup.fold.split23 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 19), %cleanup.fold.split24 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 20), %cleanup.fold.split25 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 21), %cleanup.fold.split26 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 22), %cleanup.fold.split27 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 23), %cleanup.fold.split28 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 24), %cleanup.fold.split29 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 25), %cleanup.fold.split30 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_ctxs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.165)
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge20, %entry.if.then.i_crit_edge21, %entry.if.then.i_crit_edge22, %entry.if.then.i_crit_edge23, %entry.if.then.i_crit_edge24, %entry.if.then.i_crit_edge25, %entry.if.then.i_crit_edge26
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 12
  br label %get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 13
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ugt i32 %6, 3
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end3:                                          ; preds = %get_q_data.exit
  %num_planes = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp418.not = icmp eq i8 %8, 0
  br i1 %cmp418.not, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.019
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr i32, ptr %sizes, i32 %i.019
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7, align 4
  %inc = add nuw i32 %i.019, 1
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nplanes, align 4
  %cmp4 = icmp ult i32 %inc, %14
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_buf_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %5, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge270
    i32 3, label %entry.if.then.i_crit_edge271
    i32 8, label %entry.if.then.i_crit_edge272
    i32 5, label %entry.if.then.i_crit_edge273
    i32 7, label %entry.if.then.i_crit_edge274
    i32 12, label %entry.if.then.i_crit_edge275
    i32 14, label %entry.if.then.i_crit_edge276
  ]

entry.if.then.i_crit_edge276:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge275:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge274:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge273:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge272:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge271:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge270:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge270, %entry.if.then.i_crit_edge271, %entry.if.then.i_crit_edge272, %entry.if.then.i_crit_edge273, %entry.if.then.i_crit_edge274, %entry.if.then.i_crit_edge275, %entry.if.then.i_crit_edge276
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 12
  br label %get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 13
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %5, label %if.else [
    i32 2, label %get_q_data.exit.if.then_crit_edge
    i32 10, label %get_q_data.exit.if.then_crit_edge277
    i32 3, label %get_q_data.exit.if.then_crit_edge278
    i32 8, label %get_q_data.exit.if.then_crit_edge279
    i32 5, label %get_q_data.exit.if.then_crit_edge280
    i32 7, label %get_q_data.exit.if.then_crit_edge281
    i32 12, label %get_q_data.exit.if.then_crit_edge282
    i32 14, label %get_q_data.exit.if.then_crit_edge283
  ]

get_q_data.exit.if.then_crit_edge283:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge282:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge281:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge280:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge279:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge278:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge277:             ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %get_q_data.exit.if.then_crit_edge, %get_q_data.exit.if.then_crit_edge277, %get_q_data.exit.if.then_crit_edge278, %get_q_data.exit.if.then_crit_edge279, %get_q_data.exit.if.then_crit_edge280, %get_q_data.exit.if.then_crit_edge281, %get_q_data.exit.if.then_crit_edge282, %get_q_data.exit.if.then_crit_edge283
  %field = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %9, label %if.then.if.end64_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.epilog
    i32 4, label %if.then.sw.bb43_crit_edge
    i32 5, label %if.then.sw.bb43_crit_edge284
    i32 6, label %if.then.sw.bb43_crit_edge285
    i32 8, label %if.then.sw.bb43_crit_edge286
    i32 9, label %if.then.sw.bb43_crit_edge287
  ]

if.then.sw.bb43_crit_edge287:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.then.sw.bb43_crit_edge286:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.then.sw.bb43_crit_edge285:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.then.sw.bb43_crit_edge284:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.then.sw.bb43_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.then.if.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

sw.bb:                                            ; preds = %if.then
  %field33 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %11 = ptrtoint ptr %field33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp34.not = icmp eq i32 %12, 1
  br i1 %cmp34.not, label %sw.bb.if.end64_crit_edge, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

sw.bb.if.end64_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

sw.bb43:                                          ; preds = %if.then.sw.bb43_crit_edge, %if.then.sw.bb43_crit_edge284, %if.then.sw.bb43_crit_edge285, %if.then.sw.bb43_crit_edge286, %if.then.sw.bb43_crit_edge287
  %field44 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %13 = ptrtoint ptr %field44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp47.not = icmp eq i32 %14, %9
  br i1 %cmp47.not, label %sw.bb43.if.end64_crit_edge, label %sw.bb43.do.body_crit_edge

sw.bb43.do.body_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

sw.bb43.if.end64_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

sw.epilog:                                        ; preds = %if.then
  %field37 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %15 = ptrtoint ptr %field37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field37, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp eq i32 %17, 2
  br i1 %switch, label %sw.epilog.if.end64_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %sw.bb43.do.body_crit_edge, %sw.bb.do.body_crit_edge
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp51.not = icmp eq i32 %18, 0
  br i1 %cmp51.not, label %do.body.cleanup123_crit_edge, label %do.end

do.body.cleanup123_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %20, i32 0, i32 4
  %field55 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %21 = ptrtoint ptr %field55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %field55, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name, ptr noundef nonnull @.str.130, i32 noundef %22, i32 noundef %9) #18
  br label %cleanup123

if.else:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %field63 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %23 = ptrtoint ptr %field63 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %sw.epilog.if.end64_crit_edge, %sw.bb43.if.end64_crit_edge, %sw.bb.if.end64_crit_edge, %if.then.if.end64_crit_edge
  %num_planes = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp66215.not = icmp eq i8 %25, 0
  br i1 %cmp66215.not, label %if.end64.for.end_crit_edge, label %for.body.lr.ph

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %26 = phi i8 [ %25, %for.body.lr.ph ], [ %44, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 5, i32 %i.0216
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %i.0216)
  %cmp.i = icmp ugt i32 %30, %i.0216
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0216, i32 4
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp70 = icmp ult i32 %32, %28
  br i1 %cmp70, label %do.body73, label %if.then.i195

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp70198.not = icmp eq i32 %28, 0
  br i1 %cmp70198.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %do.body73.thread

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

do.body73:                                        ; preds = %vb2_plane_size.exit
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp74.not = icmp eq i32 %33, 0
  br i1 %cmp74.not, label %do.body73.cleanup123_crit_edge, label %if.then.i189

do.body73.cleanup123_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

do.body73.thread:                                 ; preds = %vb2_plane_size.exit.thread
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp74.not199 = icmp eq i32 %34, 0
  br i1 %cmp74.not199, label %do.body73.thread.cleanup123_crit_edge, label %do.body73.thread.vb2_plane_size.exit191_crit_edge

do.body73.thread.vb2_plane_size.exit191_crit_edge: ; preds = %do.body73.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit191

do.body73.thread.cleanup123_crit_edge:            ; preds = %do.body73.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.then.i189:                                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit191

vb2_plane_size.exit191:                           ; preds = %if.then.i189, %do.body73.thread.vb2_plane_size.exit191_crit_edge
  %retval.0.i190 = phi i32 [ %36, %if.then.i189 ], [ 0, %do.body73.thread.vb2_plane_size.exit191_crit_edge ]
  %conv206 = zext i8 %26 to i32
  %.pn.in = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name83202 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name83202, ptr noundef nonnull @.str.130, i32 noundef %i.0216, i32 noundef %conv206, i32 noundef %retval.0.i190, i32 noundef %28) #18
  br label %cleanup123

if.then.i195:                                     ; preds = %vb2_plane_size.exit
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %28)
  %cmp1.i = icmp ult i32 %39, %28
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i195.if.end42.i_crit_edge

if.then.i195.if.end42.i_crit_edge:                ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i195
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !325

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.134, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i195.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %41, %if.then38.i ], [ %28, %if.then.i195.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0216, i32 3
  %42 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.0216, 1
  %43 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %44 to i32
  %cmp66 = icmp ult i32 %inc, %conv
  br i1 %cmp66, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.for.end_crit_edge

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %if.end64.for.end_crit_edge
  %field97 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %45 = ptrtoint ptr %field97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %field97, align 4
  %switch.tableidx = add i32 %46, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %47 = icmp ult i32 %switch.tableidx, 6
  br i1 %47, label %switch.hole_check, label %for.end.lor.rhs_crit_edge

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %for.end.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp113 = icmp eq i32 %46, 6
  %phi.sel = select i1 %cmp113, i32 2, i32 1
  br label %for.body119.lr.ph

switch.hole_check:                                ; preds = %for.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %48 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %switch.lobit.not = icmp eq i8 %48, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.for.body119.lr.ph_crit_edge

switch.hole_check.for.body119.lr.ph_crit_edge:    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body119.lr.ph

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

for.body119.lr.ph:                                ; preds = %switch.hole_check.for.body119.lr.ph_crit_edge, %lor.rhs
  %49 = phi i32 [ %phi.sel, %lor.rhs ], [ 2, %switch.hole_check.for.body119.lr.ph_crit_edge ]
  %num_fields = getelementptr inbounds %struct.fdp1_buffer, ptr %vb, i32 0, i32 2
  %50 = ptrtoint ptr %num_fields to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %num_fields, align 8
  %num_planes.i196 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %height.i = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 1
  %vsize.i = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 2
  %stride_y59.i = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 3
  %stride_c61.i = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 4
  br label %for.body119

for.body119:                                      ; preds = %fdp1_buf_prepare_field.exit.for.body119_crit_edge, %for.body119.lr.ph
  %i.1219 = phi i32 [ 0, %for.body119.lr.ph ], [ %add.i, %fdp1_buf_prepare_field.exit.for.body119_crit_edge ]
  %arrayidx.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219
  %51 = ptrtoint ptr %field97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %field97, align 4
  %switch.tableidx248 = add i32 %52, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx248)
  %53 = icmp ult i32 %switch.tableidx248, 6
  br i1 %53, label %switch.hole_check249, label %for.body119.lor.rhs.i_crit_edge

for.body119.lor.rhs.i_crit_edge:                  ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %switch.hole_check249.lor.rhs.i_crit_edge, %for.body119.lor.rhs.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cmp10.i = icmp eq i32 %52, 6
  %phi.sel.i = select i1 %cmp10.i, i32 2, i32 1
  br label %lor.end.i

switch.hole_check249:                             ; preds = %for.body119
  %switch.maskindex250 = trunc i32 %switch.tableidx248 to i8
  %switch.shifted251 = lshr i8 51, %switch.maskindex250
  %54 = and i8 %switch.shifted251, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %switch.lobit252.not = icmp eq i8 %54, 0
  br i1 %switch.lobit252.not, label %switch.hole_check249.lor.rhs.i_crit_edge, label %switch.hole_check249.lor.end.i_crit_edge

switch.hole_check249.lor.end.i_crit_edge:         ; preds = %switch.hole_check249
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end.i

switch.hole_check249.lor.rhs.i_crit_edge:         ; preds = %switch.hole_check249
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs.i

lor.end.i:                                        ; preds = %switch.hole_check249.lor.end.i_crit_edge, %lor.rhs.i
  %55 = phi i32 [ %phi.sel.i, %lor.rhs.i ], [ 2, %switch.hole_check249.lor.end.i_crit_edge ]
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %vb, ptr %arrayidx.i, align 4
  %add.i = add nuw i32 %i.1219, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %55)
  %cmp11.i = icmp eq i32 %add.i, %55
  %last_field.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219, i32 3
  %frombool.i = zext i1 %cmp11.i to i8
  %57 = ptrtoint ptr %last_field.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool.i, ptr %last_field.i, align 4
  %58 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_planes.i196, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp12117.not.i = icmp eq i32 %59, 0
  br i1 %cmp12117.not.i, label %lor.end.i.for.end.i_crit_edge, label %lor.end.i.for.body.i_crit_edge

lor.end.i.for.body.i_crit_edge:                   ; preds = %lor.end.i
  br label %for.body.i

lor.end.i.for.end.i_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.end.i.for.body.i_crit_edge
  %i.0118.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.end.i.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.0118.i) #15
  %60 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i.i, align 4
  %arrayidx15.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219, i32 1, i32 %i.0118.i
  %62 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx15.i, align 4
  %inc.i = add nuw i32 %i.0118.i, 1
  %63 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_planes.i196, align 8
  %cmp12.i = icmp ult i32 %inc.i, %64
  br i1 %cmp12.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %lor.end.i.for.end.i_crit_edge
  %65 = ptrtoint ptr %field97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %field97, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %66, label %for.end.i.sw.epilog.i_crit_edge [
    i32 4, label %sw.bb.i
    i32 8, label %for.end.i.sw.bb22.i_crit_edge
    i32 5, label %for.end.i.sw.bb22.i_crit_edge288
    i32 9, label %for.end.i.sw.bb25.i_crit_edge
    i32 6, label %for.end.i.sw.bb25.i_crit_edge289
  ]

for.end.i.sw.bb25.i_crit_edge289:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb25.i

for.end.i.sw.bb25.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb25.i

for.end.i.sw.bb22.i_crit_edge288:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb22.i

for.end.i.sw.bb22.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb22.i

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %69)
  %cmp17.i = icmp ult i32 %69, 576
  %conv.i = zext i1 %cmp17.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1219, i32 %conv.i)
  %cmp18.i = icmp eq i32 %i.1219, %conv.i
  %cond20.i = select i1 %cmp18.i, i32 2, i32 3
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %for.end.i.sw.bb22.i_crit_edge, %for.end.i.sw.bb22.i_crit_edge288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1219)
  %tobool.not.i = icmp eq i32 %i.1219, 0
  %cond23.i = select i1 %tobool.not.i, i32 2, i32 3
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %for.end.i.sw.bb25.i_crit_edge, %for.end.i.sw.bb25.i_crit_edge289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1219)
  %tobool26.not.i = icmp eq i32 %i.1219, 0
  %cond27.i = select i1 %tobool26.not.i, i32 3, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %sw.bb22.i, %sw.bb.i, %for.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %cond27.i, %sw.bb25.i ], [ %cond23.i, %sw.bb22.i ], [ %cond20.i, %sw.bb.i ], [ %66, %for.end.i.sw.epilog.i_crit_edge ]
  %field30.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219, i32 2
  %70 = ptrtoint ptr %field30.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink.i, ptr %field30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1219)
  %tobool31.not.i = icmp eq i32 %i.1219, 0
  br i1 %tobool31.not.i, label %sw.epilog.i.fdp1_buf_prepare_field.exit_crit_edge, label %if.end.i

sw.epilog.i.fdp1_buf_prepare_field.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %71 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %66, label %if.end.i.fdp1_buf_prepare_field.exit_crit_edge [
    i32 4, label %if.end.i.sw.bb33.i_crit_edge
    i32 8, label %if.end.i.sw.bb33.i_crit_edge290
    i32 9, label %if.end.i.sw.bb33.i_crit_edge291
    i32 5, label %if.end.i.sw.bb49.i_crit_edge
    i32 6, label %if.end.i.sw.bb49.i_crit_edge292
  ]

if.end.i.sw.bb49.i_crit_edge292:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49.i

if.end.i.sw.bb49.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb49.i

if.end.i.sw.bb33.i_crit_edge291:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33.i

if.end.i.sw.bb33.i_crit_edge290:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33.i

if.end.i.sw.bb33.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33.i

if.end.i.fdp1_buf_prepare_field.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

sw.bb33.i:                                        ; preds = %if.end.i.sw.bb33.i_crit_edge, %if.end.i.sw.bb33.i_crit_edge290, %if.end.i.sw.bb33.i_crit_edge291
  %72 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_planes.i196, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp37121.not.i = icmp eq i32 %73, 0
  br i1 %cmp37121.not.i, label %sw.bb33.i.fdp1_buf_prepare_field.exit_crit_edge, label %sw.bb33.i.for.body39.i_crit_edge

sw.bb33.i.for.body39.i_crit_edge:                 ; preds = %sw.bb33.i
  br label %for.body39.i

sw.bb33.i.fdp1_buf_prepare_field.exit_crit_edge:  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %sw.bb33.i.for.body39.i_crit_edge
  %i.1122.i = phi i32 [ %inc47.i, %for.body39.i.for.body39.i_crit_edge ], [ 0, %sw.bb33.i.for.body39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1122.i)
  %cmp40.i = icmp eq i32 %i.1122.i, 0
  %cond42.in.i = select i1 %cmp40.i, ptr %stride_y59.i, ptr %stride_c61.i
  %74 = ptrtoint ptr %cond42.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %cond42.i = load i32, ptr %cond42.in.i, align 4
  %arrayidx44.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219, i32 1, i32 %i.1122.i
  %75 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx44.i, align 4
  %add45.i = add i32 %76, %cond42.i
  store i32 %add45.i, ptr %arrayidx44.i, align 4
  %inc47.i = add nuw i32 %i.1122.i, 1
  %77 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_planes.i196, align 8
  %cmp37.i = icmp ult i32 %inc47.i, %78
  br i1 %cmp37.i, label %for.body39.i.for.body39.i_crit_edge, label %for.body39.i.fdp1_buf_prepare_field.exit_crit_edge

for.body39.i.fdp1_buf_prepare_field.exit_crit_edge: ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body39.i

sw.bb49.i:                                        ; preds = %if.end.i.sw.bb49.i_crit_edge, %if.end.i.sw.bb49.i_crit_edge292
  %79 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_planes.i196, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp53119.not.i = icmp eq i32 %80, 0
  br i1 %cmp53119.not.i, label %sw.bb49.i.fdp1_buf_prepare_field.exit_crit_edge, label %sw.bb49.i.for.body55.i_crit_edge

sw.bb49.i.for.body55.i_crit_edge:                 ; preds = %sw.bb49.i
  br label %for.body55.i

sw.bb49.i.fdp1_buf_prepare_field.exit_crit_edge:  ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

for.body55.i:                                     ; preds = %for.body55.i.for.body55.i_crit_edge, %sw.bb49.i.for.body55.i_crit_edge
  %i.2120.i = phi i32 [ %inc68.i, %for.body55.i.for.body55.i_crit_edge ], [ 0, %sw.bb49.i.for.body55.i_crit_edge ]
  %81 = ptrtoint ptr %vsize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2120.i)
  %cmp56.i = icmp eq i32 %i.2120.i, 0
  %cond63.in.i = select i1 %cmp56.i, ptr %stride_y59.i, ptr %stride_c61.i
  %83 = ptrtoint ptr %cond63.in.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %cond63.i = load i32, ptr %cond63.in.i, align 4
  %mul.i = mul i32 %cond63.i, %82
  %arrayidx65.i = getelementptr %struct.fdp1_buffer, ptr %vb, i32 0, i32 1, i32 %i.1219, i32 1, i32 %i.2120.i
  %84 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %85, %mul.i
  store i32 %add66.i, ptr %arrayidx65.i, align 4
  %inc68.i = add nuw i32 %i.2120.i, 1
  %86 = ptrtoint ptr %num_planes.i196 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_planes.i196, align 8
  %cmp53.i = icmp ult i32 %inc68.i, %87
  br i1 %cmp53.i, label %for.body55.i.for.body55.i_crit_edge, label %for.body55.i.fdp1_buf_prepare_field.exit_crit_edge

for.body55.i.fdp1_buf_prepare_field.exit_crit_edge: ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_buf_prepare_field.exit

for.body55.i.for.body55.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body55.i

fdp1_buf_prepare_field.exit:                      ; preds = %for.body55.i.fdp1_buf_prepare_field.exit_crit_edge, %sw.bb49.i.fdp1_buf_prepare_field.exit_crit_edge, %for.body39.i.fdp1_buf_prepare_field.exit_crit_edge, %sw.bb33.i.fdp1_buf_prepare_field.exit_crit_edge, %if.end.i.fdp1_buf_prepare_field.exit_crit_edge, %sw.epilog.i.fdp1_buf_prepare_field.exit_crit_edge
  %88 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_fields, align 8
  %cmp117 = icmp ult i32 %add.i, %89
  br i1 %cmp117, label %fdp1_buf_prepare_field.exit.for.body119_crit_edge, label %fdp1_buf_prepare_field.exit.cleanup123_crit_edge

fdp1_buf_prepare_field.exit.cleanup123_crit_edge: ; preds = %fdp1_buf_prepare_field.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

fdp1_buf_prepare_field.exit.for.body119_crit_edge: ; preds = %fdp1_buf_prepare_field.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body119

cleanup123:                                       ; preds = %fdp1_buf_prepare_field.exit.cleanup123_crit_edge, %vb2_plane_size.exit191, %do.body73.thread.cleanup123_crit_edge, %do.body73.cleanup123_crit_edge, %do.end, %do.body.cleanup123_crit_edge
  %retval.4 = phi i32 [ -22, %do.end ], [ -22, %vb2_plane_size.exit191 ], [ -22, %do.body.cleanup123_crit_edge ], [ -22, %do.body73.cleanup123_crit_edge ], [ -22, %do.body73.thread.cleanup123_crit_edge ], [ 0, %fdp1_buf_prepare_field.exit.cleanup123_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  %smsk_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %3, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge78
    i32 3, label %entry.if.then.i_crit_edge79
    i32 8, label %entry.if.then.i_crit_edge80
    i32 5, label %entry.if.then.i_crit_edge81
    i32 7, label %entry.if.then.i_crit_edge82
    i32 12, label %entry.if.then.i_crit_edge83
    i32 14, label %entry.if.then.i_crit_edge84
  ]

entry.if.then.i_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge83:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge79:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge78, %entry.if.then.i_crit_edge79, %entry.if.then.i_crit_edge80, %entry.if.then.i_crit_edge81, %entry.if.then.i_crit_edge82, %entry.if.then.i_crit_edge83, %entry.if.then.i_crit_edge84
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 12
  br label %get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 13
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %3, label %get_q_data.exit.cleanup52_crit_edge [
    i32 2, label %get_q_data.exit.if.then_crit_edge
    i32 10, label %get_q_data.exit.if.then_crit_edge85
    i32 3, label %get_q_data.exit.if.then_crit_edge86
    i32 8, label %get_q_data.exit.if.then_crit_edge87
    i32 5, label %get_q_data.exit.if.then_crit_edge88
    i32 7, label %get_q_data.exit.if.then_crit_edge89
    i32 12, label %get_q_data.exit.if.then_crit_edge90
    i32 14, label %get_q_data.exit.if.then_crit_edge91
  ]

get_q_data.exit.if.then_crit_edge91:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge90:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge89:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge88:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge87:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge86:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge85:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.if.then_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

get_q_data.exit.cleanup52_crit_edge:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup52

if.then:                                          ; preds = %get_q_data.exit.if.then_crit_edge, %get_q_data.exit.if.then_crit_edge85, %get_q_data.exit.if.then_crit_edge86, %get_q_data.exit.if.then_crit_edge87, %get_q_data.exit.if.then_crit_edge88, %get_q_data.exit.if.then_crit_edge89, %get_q_data.exit.if.then_crit_edge90, %get_q_data.exit.if.then_crit_edge91
  %format = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1
  %field = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp23 = icmp eq i32 %7, 1
  br i1 %cmp23, label %if.then24, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %deint_mode = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %deint_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %deint_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then.if.end_crit_edge
  %deint_mode25 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %deint_mode25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %deint_mode25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp26 = icmp eq i32 %10, 1
  br i1 %cmp26, label %if.then27, label %if.end.cleanup52_crit_edge

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup52

if.then27:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smsk_base) #15
  %11 = ptrtoint ptr %smsk_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %smsk_base, align 4, !annotation !324
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %sub = shl i32 %13, 1
  %or = add i32 %sub, -2
  %add = or i32 %or, 14
  %mul = add i32 %add, 2
  %vsize = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %vsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsize, align 4
  %mul29 = mul i32 %mul, %15
  %smsk_size = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %smsk_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul29, ptr %smsk_size, align 4
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdp1, align 4
  %dev = getelementptr inbounds %struct.fdp1_dev, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef %mul29, ptr noundef nonnull %smsk_base, i32 noundef 3264, i32 noundef 0) #15
  %smsk_cpu = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %smsk_cpu to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %smsk_cpu, align 4
  %cmp33 = icmp eq ptr %call.i, null
  br i1 %cmp33, label %do.body, label %if.end43

do.body:                                          ; preds = %if.then27
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp35.not = icmp eq i32 %22, 0
  br i1 %cmp35.not, label %cleanup52.critedge, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name, ptr noundef nonnull @.str.136) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smsk_base) #15
  br label %cleanup52

if.end43:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %smsk_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smsk_base, align 4
  %smsk_addr = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %smsk_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %smsk_addr, align 4
  %28 = ptrtoint ptr %smsk_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smsk_size, align 4
  %div76 = lshr i32 %29, 1
  %add45 = add i32 %div76, %26
  %arrayidx47 = getelementptr %struct.fdp1_ctx, ptr %1, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add45, ptr %arrayidx47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smsk_base) #15
  br label %cleanup52

cleanup52.critedge:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smsk_base) #15
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.critedge, %if.end43, %do.end, %if.end.cleanup52_crit_edge, %get_q_data.exit.cleanup52_crit_edge
  %retval.1 = phi i32 [ -12, %cleanup52.critedge ], [ -12, %do.end ], [ 0, %if.end43 ], [ 0, %get_q_data.exit.cleanup52_crit_edge ], [ 0, %if.end.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp1_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %do.body28, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %3, label %if.else [
    i32 2, label %while.cond.if.then_crit_edge
    i32 10, label %while.cond.if.then_crit_edge334
    i32 3, label %while.cond.if.then_crit_edge335
    i32 8, label %while.cond.if.then_crit_edge336
    i32 5, label %while.cond.if.then_crit_edge337
    i32 7, label %while.cond.if.then_crit_edge338
    i32 12, label %while.cond.if.then_crit_edge339
    i32 14, label %while.cond.if.then_crit_edge340
  ]

while.cond.if.then_crit_edge340:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge339:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge338:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge337:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge336:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge335:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge334:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge334, %while.cond.if.then_crit_edge335, %while.cond.if.then_crit_edge336, %while.cond.if.then_crit_edge337, %while.cond.if.then_crit_edge338, %while.cond.if.then_crit_edge339, %while.cond.if.then_crit_edge340
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i261 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #15
  %cmp25 = icmp eq ptr %call.i261, null
  br i1 %cmp25, label %while.end, label %do.body28

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fdp1, align 4
  %irqlock = getelementptr inbounds %struct.fdp1_dev, ptr %10, i32 0, i32 3
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i261, i32 noundef 6) #15
  %11 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fdp1, align 4
  %irqlock35 = getelementptr inbounds %struct.fdp1_dev, ptr %12, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock35, i32 noundef %call31) #15
  br label %while.cond

while.end:                                        ; preds = %if.end
  %13 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %14, label %if.else112 [
    i32 2, label %while.end.if.then67_crit_edge
    i32 10, label %while.end.if.then67_crit_edge341
    i32 3, label %while.end.if.then67_crit_edge342
    i32 8, label %while.end.if.then67_crit_edge343
    i32 5, label %while.end.if.then67_crit_edge344
    i32 7, label %while.end.if.then67_crit_edge345
    i32 12, label %while.end.if.then67_crit_edge346
    i32 14, label %while.end.if.then67_crit_edge347
  ]

while.end.if.then67_crit_edge347:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge346:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge345:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge344:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge343:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge342:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge341:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

while.end.if.then67_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

if.then67:                                        ; preds = %while.end.if.then67_crit_edge, %while.end.if.then67_crit_edge341, %while.end.if.then67_crit_edge342, %while.end.if.then67_crit_edge343, %while.end.if.then67_crit_edge344, %while.end.if.then67_crit_edge345, %while.end.if.then67_crit_edge346, %while.end.if.then67_crit_edge347
  %buffers_queued.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %buffers_queued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffers_queued.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %buffers_queued.i, align 4
  %18 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fdp1, align 4
  %irqlock.i = getelementptr inbounds %struct.fdp1_dev, ptr %19, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #15
  %fields_queue.i = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %fields_queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %fields_queue.i, align 4
  %cmp10.not.i = icmp eq ptr %21, %fields_queue.i
  %add.ptr.i = getelementptr i8, ptr %21, i32 -24
  %tobool.not.i331 = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i331
  br i1 %tobool.not.i, label %if.then67.while.end74_crit_edge, label %if.then.i

if.then67.while.end74_crit_edge:                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end74

if.then.i:                                        ; preds = %if.then67
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i.preheader_crit_edge

if.then.i.if.end.i.preheader_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.preheader

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %if.end.i.preheader

if.end.i.preheader:                               ; preds = %if.end.i.i.i, %if.then.i.if.end.i.preheader_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.backedge, %if.end.i.preheader
  %list.i273.sink = phi ptr [ %21, %if.end.i.preheader ], [ %list.i273, %if.end.i.backedge ]
  %spec.select.i271.sink = phi ptr [ %add.ptr.i, %if.end.i.preheader ], [ %spec.select.i271, %if.end.i.backedge ]
  %call2.i267.sink = phi i32 [ %call2.i, %if.end.i.preheader ], [ %call2.i267, %if.end.i.backedge ]
  %fbuf.0324 = phi ptr [ %add.ptr.i, %if.end.i.preheader ], [ %add.ptr.i270, %if.end.i.backedge ]
  %28 = ptrtoint ptr %list.i273.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i273.sink, align 4
  %prev.i.i279 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i271.sink, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i279 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i279, align 4
  %30 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fdp1, align 4
  %irqlock14.i281 = getelementptr inbounds %struct.fdp1_dev, ptr %31, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock14.i281, i32 noundef %call2.i267.sink) #15
  %last_field.i = getelementptr inbounds %struct.fdp1_field_buffer, ptr %fbuf.0324, i32 0, i32 3
  %32 = ptrtoint ptr %last_field.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %last_field.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.i = icmp eq i8 %33, 0
  br i1 %tobool1.not.i, label %if.end.i.fdp1_field_complete.exit_crit_edge, label %if.then2.i

if.end.i.fdp1_field_complete.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_field_complete.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %fbuf.0324 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbuf.0324, align 4
  tail call void @vb2_buffer_done(ptr noundef %35, i32 noundef 5) #15
  br label %fdp1_field_complete.exit

fdp1_field_complete.exit:                         ; preds = %if.then2.i, %if.end.i.fdp1_field_complete.exit_crit_edge
  %36 = ptrtoint ptr %buffers_queued.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffers_queued.i, align 4
  %dec.i264 = add i32 %37, -1
  store i32 %dec.i264, ptr %buffers_queued.i, align 4
  %38 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fdp1, align 4
  %irqlock.i266 = getelementptr inbounds %struct.fdp1_dev, ptr %39, i32 0, i32 3
  %call2.i267 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i266) #15
  %40 = ptrtoint ptr %fields_queue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %fields_queue.i, align 4
  %cmp10.not.i269 = icmp eq ptr %41, %fields_queue.i
  %add.ptr.i270 = getelementptr i8, ptr %41, i32 -24
  %spec.select.i271 = select i1 %cmp10.not.i269, ptr null, ptr %add.ptr.i270
  %tobool.not.i272 = icmp eq ptr %spec.select.i271, null
  br i1 %tobool.not.i272, label %fdp1_field_complete.exit.while.end74_crit_edge, label %if.then.i275

fdp1_field_complete.exit.while.end74_crit_edge:   ; preds = %fdp1_field_complete.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end74

if.then.i275:                                     ; preds = %fdp1_field_complete.exit
  %list.i273 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i271, i32 0, i32 4
  %call.i.i.i274 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i273) #15
  br i1 %call.i.i.i274, label %if.end.i.i.i278, label %if.then.i275.if.end.i.backedge_crit_edge

if.then.i275.if.end.i.backedge_crit_edge:         ; preds = %if.then.i275
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.backedge

if.end.i.backedge:                                ; preds = %if.end.i.i.i278, %if.then.i275.if.end.i.backedge_crit_edge
  br label %if.end.i

if.end.i.i.i278:                                  ; preds = %if.then.i275
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i276 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %spec.select.i271, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i276, align 4
  %44 = ptrtoint ptr %list.i273 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list.i273, align 4
  %prev1.i.i.i.i277 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i277 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i277, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %if.end.i.backedge

while.end74:                                      ; preds = %fdp1_field_complete.exit.while.end74_crit_edge, %if.then67.while.end74_crit_edge
  %call2.i.sink = phi i32 [ %call2.i, %if.then67.while.end74_crit_edge ], [ %call2.i267, %fdp1_field_complete.exit.while.end74_crit_edge ]
  %48 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fdp1, align 4
  %irqlock14.i328 = getelementptr inbounds %struct.fdp1_dev, ptr %49, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock14.i328, i32 noundef %call2.i.sink) #15
  %smsk_cpu = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %smsk_cpu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smsk_cpu, align 4
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %while.end74.if.end83_crit_edge, label %if.then75

while.end74.if.end83_crit_edge:                   ; preds = %while.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

if.then75:                                        ; preds = %while.end74
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fdp1, align 4
  %dev = getelementptr inbounds %struct.fdp1_dev, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %smsk_size = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %smsk_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smsk_size, align 4
  %smsk_addr = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %smsk_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %smsk_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %55, i32 noundef %57, ptr noundef nonnull %51, i32 noundef %59, i32 noundef 0) #15
  %arrayidx79 = getelementptr %struct.fdp1_ctx, ptr %1, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx79, align 4
  %61 = ptrtoint ptr %smsk_addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %smsk_addr, align 4
  %62 = ptrtoint ptr %smsk_cpu to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %smsk_cpu, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %while.end74.if.end83_crit_edge
  %63 = ptrtoint ptr %fields_queue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %fields_queue.i, align 4
  %cmp.i.not = icmp eq ptr %64, %fields_queue.i
  br i1 %cmp.i.not, label %if.end83.if.end206_crit_edge, label %do.end98, !prof !325

if.end83.if.end206_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

do.end98:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2000, i32 noundef 9, ptr noundef nonnull @.str.137) #15
  br label %if.end206

if.else112:                                       ; preds = %while.end
  %65 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fdp1, align 4
  %queued_job_list.i = getelementptr inbounds %struct.fdp1_dev, ptr %66, i32 0, i32 10
  %irqlock.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %66, i32 0, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i) #15
  %67 = ptrtoint ptr %queued_job_list.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %queued_job_list.i, align 4
  %cmp10.not.i.i = icmp eq ptr %68, %queued_job_list.i
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 -16
  %tobool.not.i.i332 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp10.not.i.i, %tobool.not.i.i332
  br i1 %tobool.not.i.i, label %get_queued_job.exit.thread, label %if.then.i.i

get_queued_job.exit.thread:                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i) #15
  br label %while.end134

if.then.i.i:                                      ; preds = %if.else112
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %68) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.while.body117.lr.ph_crit_edge

if.then.i.i.while.body117.lr.ph_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body117.lr.ph

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %while.body117.lr.ph

while.body117.lr.ph:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.while.body117.lr.ph_crit_edge
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %68, align 4
  %prev.i.i.i284 = getelementptr i8, ptr %68, i32 4
  %76 = ptrtoint ptr %prev.i.i.i284 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i284, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i, i32 noundef %call2.i.i) #15
  %deint_mode = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 7
  br label %while.body117

while.body117:                                    ; preds = %get_queued_job.exit312, %while.body117.lr.ph
  %job.0326 = phi ptr [ %add.ptr.i.i, %while.body117.lr.ph ], [ %add.ptr.i.i301, %get_queued_job.exit312 ]
  %77 = ptrtoint ptr %deint_mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %deint_mode, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %78, label %if.else129 [
    i32 1, label %while.body117.if.then128_crit_edge
    i32 3, label %while.body117.if.then128_crit_edge348
    i32 4, label %while.body117.if.then128_crit_edge349
  ]

while.body117.if.then128_crit_edge349:            ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then128

while.body117.if.then128_crit_edge348:            ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then128

while.body117.if.then128_crit_edge:               ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then128

if.then128:                                       ; preds = %while.body117.if.then128_crit_edge, %while.body117.if.then128_crit_edge348, %while.body117.if.then128_crit_edge349
  %80 = ptrtoint ptr %job.0326 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %job.0326, align 4
  %tobool.not.i285 = icmp eq ptr %81, null
  br i1 %tobool.not.i285, label %if.then128.if.end130_crit_edge, label %if.end.i288

if.then128.if.end130_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.end.i288:                                      ; preds = %if.then128
  %last_field.i286 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %last_field.i286 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %last_field.i286, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool1.not.i287 = icmp eq i8 %83, 0
  br i1 %tobool1.not.i287, label %if.end.i288.if.end130_crit_edge, label %if.end.i288.if.end130.sink.split_crit_edge

if.end.i288.if.end130.sink.split_crit_edge:       ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130.sink.split

if.end.i288.if.end130_crit_edge:                  ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.else129:                                       ; preds = %while.body117
  %active = getelementptr inbounds %struct.fdp1_job, ptr %job.0326, i32 0, i32 1
  %84 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %active, align 4
  %tobool.not.i291 = icmp eq ptr %85, null
  br i1 %tobool.not.i291, label %if.else129.if.end130_crit_edge, label %if.end.i294

if.else129.if.end130_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.end.i294:                                      ; preds = %if.else129
  %last_field.i292 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %last_field.i292 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %last_field.i292, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.not.i293 = icmp eq i8 %87, 0
  br i1 %tobool1.not.i293, label %if.end.i294.if.end130_crit_edge, label %if.end.i294.if.end130.sink.split_crit_edge

if.end.i294.if.end130.sink.split_crit_edge:       ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130.sink.split

if.end.i294.if.end130_crit_edge:                  ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.end130.sink.split:                             ; preds = %if.end.i294.if.end130.sink.split_crit_edge, %if.end.i288.if.end130.sink.split_crit_edge
  %.sink330 = phi ptr [ %81, %if.end.i288.if.end130.sink.split_crit_edge ], [ %85, %if.end.i294.if.end130.sink.split_crit_edge ]
  %88 = ptrtoint ptr %.sink330 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %.sink330, align 4
  tail call void @vb2_buffer_done(ptr noundef %89, i32 noundef 5) #15
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %if.end.i294.if.end130_crit_edge, %if.else129.if.end130_crit_edge, %if.end.i288.if.end130_crit_edge, %if.then128.if.end130_crit_edge
  %dst = getelementptr inbounds %struct.fdp1_job, ptr %job.0326, i32 0, i32 3
  %90 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dst, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  tail call void @vb2_buffer_done(ptr noundef %93, i32 noundef 6) #15
  %94 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %dst, align 4
  %95 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fdp1, align 4
  %queued_job_list.i297 = getelementptr inbounds %struct.fdp1_dev, ptr %96, i32 0, i32 10
  %irqlock.i.i298 = getelementptr inbounds %struct.fdp1_dev, ptr %96, i32 0, i32 3
  %call2.i.i299 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i.i298) #15
  %97 = ptrtoint ptr %queued_job_list.i297 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %queued_job_list.i297, align 4
  %cmp10.not.i.i300 = icmp eq ptr %98, %queued_job_list.i297
  %add.ptr.i.i301 = getelementptr i8, ptr %98, i32 -16
  %tobool.not.i.i303333 = icmp eq ptr %add.ptr.i.i301, null
  %tobool.not.i.i303 = or i1 %cmp10.not.i.i300, %tobool.not.i.i303333
  br i1 %tobool.not.i.i303, label %while.end134.loopexit, label %if.then.i.i306

if.then.i.i306:                                   ; preds = %if.end130
  %call.i.i.i.i305 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %98) #15
  br i1 %call.i.i.i.i305, label %if.end.i.i.i.i309, label %if.then.i.i306.get_queued_job.exit312_crit_edge

if.then.i.i306.get_queued_job.exit312_crit_edge:  ; preds = %if.then.i.i306
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_queued_job.exit312

if.end.i.i.i.i309:                                ; preds = %if.then.i.i306
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i307 = getelementptr i8, ptr %98, i32 4
  %99 = ptrtoint ptr %prev.i.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i.i307, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 4
  %prev1.i.i.i.i.i308 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i.i.i308 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i.i.i308, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %get_queued_job.exit312

get_queued_job.exit312:                           ; preds = %if.end.i.i.i.i309, %if.then.i.i306.get_queued_job.exit312_crit_edge
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %98, align 4
  %prev.i.i.i310 = getelementptr i8, ptr %98, i32 4
  %106 = ptrtoint ptr %prev.i.i.i310 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i310, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i298, i32 noundef %call2.i.i299) #15
  br label %while.body117

while.end134.loopexit:                            ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i.i298, i32 noundef %call2.i.i299) #15
  br label %while.end134

while.end134:                                     ; preds = %while.end134.loopexit, %get_queued_job.exit.thread
  %previous135 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 16
  %107 = ptrtoint ptr %previous135 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %previous135, align 4
  %tobool.not.i313 = icmp eq ptr %108, null
  br i1 %tobool.not.i313, label %while.end134.fdp1_field_complete.exit318_crit_edge, label %if.end.i316

while.end134.fdp1_field_complete.exit318_crit_edge: ; preds = %while.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_field_complete.exit318

if.end.i316:                                      ; preds = %while.end134
  %last_field.i314 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %last_field.i314 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %last_field.i314, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool1.not.i315 = icmp eq i8 %110, 0
  br i1 %tobool1.not.i315, label %if.end.i316.fdp1_field_complete.exit318_crit_edge, label %if.then2.i317

if.end.i316.fdp1_field_complete.exit318_crit_edge: ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_field_complete.exit318

if.then2.i317:                                    ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  tail call void @vb2_buffer_done(ptr noundef %112, i32 noundef 5) #15
  br label %fdp1_field_complete.exit318

fdp1_field_complete.exit318:                      ; preds = %if.then2.i317, %if.end.i316.fdp1_field_complete.exit318_crit_edge, %while.end134.fdp1_field_complete.exit318_crit_edge
  %113 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fdp1, align 4
  %queued_job_list = getelementptr inbounds %struct.fdp1_dev, ptr %114, i32 0, i32 10
  %115 = ptrtoint ptr %queued_job_list to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %queued_job_list, align 4
  %cmp.i319.not = icmp eq ptr %116, %queued_job_list
  br i1 %cmp.i319.not, label %fdp1_field_complete.exit318.if.end163_crit_edge, label %do.end157, !prof !325

fdp1_field_complete.exit318.if.end163_crit_edge:  ; preds = %fdp1_field_complete.exit318
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end163

do.end157:                                        ; preds = %fdp1_field_complete.exit318
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2022, i32 noundef 9, ptr noundef nonnull @.str.138) #15
  br label %if.end163

if.end163:                                        ; preds = %do.end157, %fdp1_field_complete.exit318.if.end163_crit_edge
  %117 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fdp1, align 4
  %hw_job_list = getelementptr inbounds %struct.fdp1_dev, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %hw_job_list to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %hw_job_list, align 4
  %cmp.i321.not = icmp eq ptr %120, %hw_job_list
  br i1 %cmp.i321.not, label %if.end163.if.end206_crit_edge, label %do.end192, !prof !325

if.end163.if.end206_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

do.end192:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2025, i32 noundef 9, ptr noundef nonnull @.str.139) #15
  br label %if.end206

if.end206:                                        ; preds = %do.end192, %if.end163.if.end206_crit_edge, %do.end98, %if.end83.if.end206_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp1_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #15
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #15
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #12 align 64 {
for.body.i:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %2 = icmp ult i32 %1, 26
  br i1 %2, label %if.end9.i, label %for.body.i.fdp1_enum_fmt.exit_crit_edge

for.body.i.fdp1_enum_fmt.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_enum_fmt.exit

if.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx10.i = getelementptr [26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx10.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat.i, align 4
  br label %fdp1_enum_fmt.exit

fdp1_enum_fmt.exit:                               ; preds = %if.end9.i, %for.body.i.fdp1_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -22, %for.body.i.fdp1_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %num.022.i = phi i32 [ 0, %entry ], [ %num.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ 0, %entry ], [ %inc5.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = and i32 %i.020.i, 268435452
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %0)
  %tobool.not.i = icmp ult i32 %0, 12
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.022.i, i32 %2)
  %cmp1.i = icmp eq i32 %num.022.i, %2
  br i1 %cmp1.i, label %if.end9.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i32 %num.022.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.022.i, %for.body.i.for.inc.i_crit_edge ]
  %inc5.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.fdp1_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.fdp1_enum_fmt.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_enum_fmt.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx10.i = getelementptr [26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 %i.020.i
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx10.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat.i, align 4
  br label %fdp1_enum_fmt.exit

fdp1_enum_fmt.exit:                               ; preds = %if.end9.i, %for.inc.i.fdp1_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -22, %for.inc.i.fdp1_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %5, label %if.else.i [
    i32 2, label %if.end.if.then.i_crit_edge
    i32 10, label %if.end.if.then.i_crit_edge8
    i32 3, label %if.end.if.then.i_crit_edge9
    i32 8, label %if.end.if.then.i_crit_edge10
    i32 5, label %if.end.if.then.i_crit_edge11
    i32 7, label %if.end.if.then.i_crit_edge12
    i32 12, label %if.end.if.then.i_crit_edge13
    i32 14, label %if.end.if.then.i_crit_edge14
  ]

if.end.if.then.i_crit_edge14:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge13:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge12:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge11:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge10:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge9:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge8:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge8, %if.end.if.then.i_crit_edge9, %if.end.if.then.i_crit_edge10, %if.end.if.then.i_crit_edge11, %if.end.if.then.i_crit_edge12, %if.end.if.then.i_crit_edge13, %if.end.if.then.i_crit_edge14
  %out_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 12
  br label %get_q_data.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cap_q.i = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 13
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.else.i ]
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.fdp1_q_data, ptr %retval.0.i, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %fmt, ptr %format, i32 192)
  br label %cleanup

cleanup:                                          ; preds = %get_q_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_q_data.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_s_fmt(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx1 = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx1, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #15
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name, ptr noundef nonnull @.str.144) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  tail call fastcc void @fdp1_set_format(ptr noundef %priv, ptr noundef %fmt, i32 noundef %9)
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end10:                                         ; preds = %if.end
  %fdp112 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %fdp112 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fdp112, align 4
  %name14 = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 11
  br i1 %15, label %switch.hole_check, label %do.end10.lor.rhs_crit_edge

do.end10.lor.rhs_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %do.end10.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %cmp36 = icmp eq i32 %14, 14
  %phi.sel = select i1 %cmp36, ptr @.str.148, ptr @.str.149
  br label %lor.end

switch.hole_check:                                ; preds = %do.end10
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %17 = phi ptr [ %phi.sel, %lor.rhs ], [ @.str.148, %switch.hole_check.lor.end_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name14, ptr noundef nonnull @.str.144, ptr noundef nonnull %17, ptr noundef %pixelformat, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #18
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %lor.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fdp1_try_fmt_output(ptr noundef null, ptr noundef %fmt)
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fdp1_try_fmt_capture(ptr noundef %priv, ptr noundef null, ptr noundef %fmt)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2.not = icmp eq i32 %2, 0
  br i1 %cmp2.not, label %do.body.do.end35_crit_edge, label %do.end

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end35

do.end:                                           ; preds = %do.body
  %fdp1 = getelementptr inbounds %struct.fdp1_ctx, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %fdp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fdp1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 11
  br i1 %7, label %switch.hole_check, label %do.end.lor.rhs_crit_edge

do.end.lor.rhs_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %do.end.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp25 = icmp eq i32 %6, 14
  %phi.sel = select i1 %cmp25, ptr @.str.148, ptr @.str.149
  br label %lor.end

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %9 = phi ptr [ %phi.sel, %lor.rhs ], [ @.str.148, %switch.hole_check.lor.end_crit_edge ]
  %fmt26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %12 = ptrtoint ptr %fmt26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt26, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name, ptr noundef nonnull @.str.151, ptr noundef nonnull %9, ptr noundef %pixelformat, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #18
  br label %do.end35

do.end35:                                         ; preds = %lor.end, %do.body.do.end35_crit_edge
  ret i32 0
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fcp = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp, align 4
  tail call void @rcar_fcp_disable(ptr noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp1_pm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @fdp1_write_lut(ptr noundef %1, ptr noundef nonnull @fdp1_diff_adj, i32 noundef 24, i32 noundef 4096) #15
  tail call fastcc void @fdp1_write_lut(ptr noundef %1, ptr noundef nonnull @fdp1_sad_adj, i32 noundef 24, i32 noundef 5120) #15
  tail call fastcc void @fdp1_write_lut(ptr noundef %1, ptr noundef nonnull @fdp1_bld_gain, i32 noundef 1, i32 noundef 6144) #15
  tail call fastcc void @fdp1_write_lut(ptr noundef %1, ptr noundef nonnull @fdp1_dif_gain, i32 noundef 1, i32 noundef 7168) #15
  %name.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %regs.i.i.i = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %fdp1_write.exit.i.i.for.body.i.i_crit_edge, %entry
  %i.034.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %fdp1_write.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr @fdp1_mdet, i32 %i.034.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %mul.i.i = shl i32 %i.034.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 8192
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.i.i = icmp ugt i32 %4, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %for.body.i.i.fdp1_write.exit.i.i_crit_edge

for.body.i.i.fdp1_write.exit.i.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i.i, ptr noundef nonnull @.str.65, i32 noundef %conv.i.i, i32 noundef %add.i.i) #18
  br label %fdp1_write.exit.i.i

fdp1_write.exit.i.i:                              ; preds = %do.end.i.i.i, %for.body.i.i.fdp1_write.exit.i.i_crit_edge
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %7 = shl nuw i32 %conv.i.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #15, !srcloc !319
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %fdp1_set_lut.exit, label %fdp1_write.exit.i.i.for.body.i.i_crit_edge

fdp1_write.exit.i.i.for.body.i.i_crit_edge:       ; preds = %fdp1_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

fdp1_set_lut.exit:                                ; preds = %fdp1_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %fcp = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %fcp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcp, align 4
  %call1 = tail call i32 @rcar_fcp_enable(ptr noundef %9) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_fcp_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_fcp_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp1_write_lut(ptr noundef %fdp1, ptr nocapture noundef readonly %lut, i32 noundef %len, i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp133.not = icmp eq i32 %0, 0
  br i1 %cmp133.not, label %entry.for.body6.lr.ph_crit_edge, label %for.body.lr.ph

entry.for.body6.lr.ph_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %regs.i = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %fdp1_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %fdp1_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %lut, i32 %i.034
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %mul = shl i32 %i.034, 2
  %add = add i32 %mul, %base
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %do.end.i, label %for.body.fdp1_write.exit_crit_edge

for.body.fdp1_write.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i, ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %add) #18
  br label %fdp1_write.exit

fdp1_write.exit:                                  ; preds = %do.end.i, %for.body.fdp1_write.exit_crit_edge
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %6 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #15, !srcloc !319
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %fdp1_write.exit.for.body_crit_edge

fdp1_write.exit.for.body_crit_edge:               ; preds = %fdp1_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %fdp1_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp435 = icmp ult i32 %len, 256
  br i1 %cmp435, label %for.end.for.body6.lr.ph_crit_edge, label %for.end.for.end12_crit_edge

for.end.for.end12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end12

for.end.for.body6.lr.ph_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.end.for.body6.lr.ph_crit_edge, %entry.for.body6.lr.ph_crit_edge
  %i.0.lcssa40 = phi i32 [ %0, %for.end.for.body6.lr.ph_crit_edge ], [ 0, %entry.for.body6.lr.ph_crit_edge ]
  %sub = add nsw i32 %i.0.lcssa40, -1
  %arrayidx2 = getelementptr i8, ptr %lut, i32 %sub
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv7 = zext i8 %8 to i32
  %name.i27 = getelementptr inbounds %struct.v4l2_device, ptr %fdp1, i32 0, i32 4
  %regs.i30 = getelementptr inbounds %struct.fdp1_dev, ptr %fdp1, i32 0, i32 5
  %9 = shl nuw i32 %conv7, 24
  br label %for.body6

for.body6:                                        ; preds = %fdp1_write.exit32.for.body6_crit_edge, %for.body6.lr.ph
  %i.136 = phi i32 [ %i.0.lcssa40, %for.body6.lr.ph ], [ %inc11, %fdp1_write.exit32.for.body6_crit_edge ]
  %mul8 = shl nuw nsw i32 %i.136, 2
  %add9 = add i32 %mul8, %base
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i26 = icmp ugt i32 %10, 1
  br i1 %cmp.i26, label %do.end.i29, label %for.body6.fdp1_write.exit32_crit_edge

for.body6.fdp1_write.exit32_crit_edge:            ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %fdp1_write.exit32

do.end.i29:                                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #17
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i27, ptr noundef nonnull @.str.65, i32 noundef %conv7, i32 noundef %add9) #18
  br label %fdp1_write.exit32

fdp1_write.exit32:                                ; preds = %do.end.i29, %for.body6.fdp1_write.exit32_crit_edge
  %11 = ptrtoint ptr %regs.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %12, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %9) #15, !srcloc !319
  %inc11 = add nuw nsw i32 %i.136, 1
  %exitcond37.not = icmp eq i32 %inc11, 256
  br i1 %exitcond37.not, label %fdp1_write.exit32.for.end12_crit_edge, label %fdp1_write.exit32.for.body6_crit_edge

fdp1_write.exit32.for.body6_crit_edge:            ; preds = %fdp1_write.exit32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6

fdp1_write.exit32.for.end12_crit_edge:            ; preds = %fdp1_write.exit32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end12

for.end12:                                        ; preds = %fdp1_write.exit32.for.end12_crit_edge, %for.end.for.end12_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !211, !213, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !255, !256, !258, !260, !262, !264, !265, !266, !267, !269, !271, !273, !274, !275, !276, !278, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !296, !298, !300, !302, !304}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug300, !4, !"__UNIQUE_ID_debug300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 37, i32 1}
!5 = !{ptr @__initcall__kmod_rcar_fdp1__325_2452_fdp1_pdrv_init6, !6, !"__initcall__kmod_rcar_fdp1__325_2452_fdp1_pdrv_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2452, i32 1}
!7 = !{ptr @__exitcall_fdp1_pdrv_exit, !6, !"__exitcall_fdp1_pdrv_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description326, !9, !"__UNIQUE_ID_description326", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2454, i32 1}
!10 = !{ptr @__UNIQUE_ID_author327, !11, !"__UNIQUE_ID_author327", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2455, i32 1}
!12 = !{ptr @__UNIQUE_ID_file328, !13, !"__UNIQUE_ID_file328", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2456, i32 1}
!14 = !{ptr @__UNIQUE_ID_license329, !13, !"__UNIQUE_ID_license329", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias330, !16, !"__UNIQUE_ID_alias330", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2457, i32 1}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 35, i32 21}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2446, i32 11}
!22 = !{ptr @fdp1_pdrv, !23, !"fdp1_pdrv", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2442, i32 31}
!24 = !{ptr @fdp1_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2277, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fdp1_probe.__key.2, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2279, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fdp1_probe.__key.4, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2280, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2298, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fdp1_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @fdp1_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2303, i32 49}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2308, i32 4}
!45 = !{ptr @fdp1_probe.__UNIQUE_ID_ddebug324, !44, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2325, i32 3}
!48 = !{ptr @fdp1_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fdp1_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2332, i32 3}
!52 = !{ptr @fdp1_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fdp1_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @fdp1_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2347, i32 3}
!56 = !{ptr @fdp1_probe._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2351, i32 2}
!59 = !{ptr @fdp1_probe._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @fdp1_probe._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2363, i32 3}
!63 = !{ptr @fdp1_probe._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @fdp1_probe._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2366, i32 3}
!67 = !{ptr @fdp1_probe._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @fdp1_probe._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2369, i32 3}
!71 = !{ptr @fdp1_probe._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @fdp1_probe._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2372, i32 3}
!75 = !{ptr @fdp1_probe._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @fdp1_probe._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2375, i32 3}
!79 = !{ptr @fdp1_probe._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @fdp1_probe._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2378, i32 3}
!83 = !{ptr @fdp1_probe._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fdp1_probe._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2223, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fdp1_irq_handler._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @fdp1_irq_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2228, i32 3}
!98 = !{ptr @fdp1_irq_handler._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @fdp1_irq_handler._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2231, i32 3}
!102 = !{ptr @fdp1_irq_handler._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fdp1_irq_handler._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2238, i32 3}
!111 = !{ptr @fdp1_irq_handler._entry.61, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @fdp1_irq_handler._entry_ptr.63, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 789, i32 3}
!115 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fdp1_write._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @fdp1_write._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1312, i32 2}
!120 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @device_frame_end._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @device_frame_end._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1317, i32 3}
!125 = !{ptr @device_frame_end._entry.68, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @device_frame_end._entry_ptr.70, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1341, i32 2}
!129 = !{ptr @device_frame_end._entry.71, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @device_frame_end._entry_ptr.73, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1346, i32 3}
!133 = !{ptr @device_frame_end._entry.74, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @device_frame_end._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1011, i32 3}
!137 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @fdp1_configure_deint_mode._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @fdp1_configure_deint_mode._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1016, i32 3}
!142 = !{ptr @fdp1_configure_deint_mode._entry.79, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @fdp1_configure_deint_mode._entry_ptr.81, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.83, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1032, i32 3}
!146 = !{ptr @fdp1_configure_deint_mode._entry.82, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @fdp1_configure_deint_mode._entry_ptr.84, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1039, i32 3}
!150 = !{ptr @fdp1_configure_deint_mode._entry.85, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @fdp1_configure_deint_mode._entry_ptr.87, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.89, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1044, i32 3}
!154 = !{ptr @fdp1_configure_deint_mode._entry.88, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @fdp1_configure_deint_mode._entry_ptr.90, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.92, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1049, i32 3}
!158 = !{ptr @fdp1_configure_deint_mode._entry.91, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @fdp1_configure_deint_mode._entry_ptr.93, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @m2m_ops, !161, !"m2m_ops", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2199, i32 34}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1270, i32 2}
!164 = !{ptr @fdp1_m2m_device_run._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @fdp1_m2m_device_run._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1282, i32 3}
!168 = !{ptr @fdp1_m2m_device_run._entry.95, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @fdp1_m2m_device_run._entry_ptr.97, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.99, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1291, i32 3}
!172 = !{ptr @fdp1_m2m_device_run._entry.98, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @fdp1_m2m_device_run._entry_ptr.100, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1188, i32 2}
!176 = !{ptr @fdp1_prepare_job._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @fdp1_prepare_job._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.103, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1198, i32 3}
!180 = !{ptr @fdp1_prepare_job._entry.102, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @fdp1_prepare_job._entry_ptr.104, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1205, i32 3}
!184 = !{ptr @fdp1_prepare_job._entry.105, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @fdp1_prepare_job._entry_ptr.107, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.109, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1211, i32 2}
!188 = !{ptr @fdp1_prepare_job._entry.108, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @fdp1_prepare_job._entry_ptr.110, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.112, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1251, i32 2}
!192 = !{ptr @fdp1_prepare_job._entry.111, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @fdp1_prepare_job._entry_ptr.113, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.114, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1143, i32 2}
!196 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @fdp1_m2m_job_ready._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @fdp1_m2m_job_ready._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.117, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1153, i32 3}
!201 = !{ptr @fdp1_m2m_job_ready._entry.116, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @fdp1_m2m_job_ready._entry_ptr.118, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.119, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1164, i32 2}
!205 = !{ptr @fdp1_m2m_job_abort._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fdp1_m2m_job_abort._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @fdp1_videodev, !208, !"fdp1_videodev", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2189, i32 34}
!209 = !{ptr @fdp1_fops, !210, !"fdp1_fops", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2180, i32 42}
!211 = !{ptr @fdp1_open._key, !212, !"_key", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2104, i32 2}
!213 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2144, i32 2}
!216 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fdp1_open._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fdp1_open._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @fdp1_ctrl_ops, !220, !"fdp1_ctrl_ops", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1713, i32 35}
!221 = !{ptr @.str.123, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1719, i32 2}
!223 = !{ptr @.str.124, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1720, i32 2}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1721, i32 2}
!227 = !{ptr @.str.126, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1722, i32 2}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1723, i32 2}
!231 = !{ptr @.str.128, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1724, i32 2}
!233 = !{ptr @fdp1_ctrl_deint_menu, !234, !"fdp1_ctrl_deint_menu", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1718, i32 27}
!235 = !{ptr @fdp1_formats, !236, !"fdp1_formats", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 296, i32 30}
!237 = !{ptr @fdp1_qops, !238, !"fdp1_qops", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2029, i32 29}
!239 = !{ptr @.str.129, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1882, i32 4}
!241 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @fdp1_buf_prepare._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @fdp1_buf_prepare._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.132, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1896, i32 4}
!246 = !{ptr @fdp1_buf_prepare._entry.131, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @fdp1_buf_prepare._entry_ptr.133, !245, !"_entry_ptr", i1 false, i1 false}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!250 = !{ptr @.str.134, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1949, i32 5}
!253 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @fdp1_start_streaming._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @fdp1_start_streaming._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.137, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1999, i32 3}
!258 = !{ptr @.str.138, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2021, i32 3}
!260 = !{ptr @.str.139, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2024, i32 3}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2165, i32 2}
!264 = !{ptr @.str.141, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @fdp1_release._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @fdp1_release._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @fdp1_ioctl_ops, !268, !"fdp1_ioctl_ops", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1728, i32 36}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1367, i32 4}
!271 = !{ptr @.str.143, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1663, i32 3}
!273 = !{ptr @.str.144, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @fdp1_s_fmt._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @fdp1_s_fmt._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.146, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1669, i32 2}
!278 = !{ptr @fdp1_s_fmt._entry.145, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @fdp1_s_fmt._entry_ptr.147, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.148, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.149, !277, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.150, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 1594, i32 2}
!284 = !{ptr @.str.151, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @fdp1_try_fmt._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @fdp1_try_fmt._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.152, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 781, i32 3}
!289 = !{ptr @.str.153, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @fdp1_read._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @fdp1_read._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @fdp1_dt_ids, !293, !"fdp1_dt_ids", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2436, i32 34}
!294 = !{ptr @fdp1_pm_ops, !295, !"fdp1_pm_ops", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 2430, i32 32}
!296 = !{ptr @fdp1_diff_adj, !297, !"fdp1_diff_adj", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 417, i32 17}
!298 = !{ptr @fdp1_sad_adj, !299, !"fdp1_sad_adj", i1 false, i1 false}
!299 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 423, i32 17}
!300 = !{ptr @fdp1_bld_gain, !301, !"fdp1_bld_gain", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 429, i32 17}
!302 = !{ptr @fdp1_dif_gain, !303, !"fdp1_dif_gain", i1 false, i1 false}
!303 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 433, i32 17}
!304 = !{ptr @fdp1_mdet, !305, !"fdp1_mdet", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/rcar_fdp1.c", i32 437, i32 17}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{i64 2148786940, i64 2148786945, i64 2148786958, i64 2148787002, i64 2148787036, i64 2148787057}
!316 = !{i64 6321506}
!317 = !{i64 2153861855}
!318 = !{i64 2153863210}
!319 = !{i64 6321088}
!320 = !{i64 2148304544}
!321 = !{i64 789367, i64 789392, i64 789414, i64 789430, i64 789442, i64 789462, i64 789486, i64 789502, i64 789514}
!322 = !{i64 2148304732}
!323 = !{i8 0, i8 2}
!324 = !{!"auto-init"}
!325 = !{!"branch_weights", i32 2000, i32 1}
