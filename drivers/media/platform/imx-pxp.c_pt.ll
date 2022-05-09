; ModuleID = '/llk/IR_all_yes/drivers/media/platform/imx-pxp.c_pt.bc'
source_filename = "../drivers/media/platform/imx-pxp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pxp_fmt = type { i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.pxp_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_ctrl_handler, i32, i32, i8, i8, i32, i32, [2 x %struct.pxp_q_data] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.pxp_q_data = type { i32, i32, i32, i32, i32, ptr, i32, i32 }
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
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }

@__param_str_debug = internal constant [14 x i8] c"imx_pxp.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [28 x i8] c"imx_pxp.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [40 x i8] c"imx_pxp.parm=debug:activates debug info\00", section ".modinfo", align 1
@__initcall__kmod_imx_pxp__300_1784_pxp_driver_init6 = internal global ptr @pxp_driver_init, section ".initcall6.init", align 4
@pxp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxp_probe, ptr @pxp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxp_driver_exit = internal global ptr @pxp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [56 x i8] c"imx_pxp.description=i.MX PXP mem2mem scaler/CSC/rotator\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [53 x i8] c"imx_pxp.author=Philipp Zabel <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [44 x i8] c"imx_pxp.file=drivers/media/platform/imx-pxp\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [20 x i8] c"imx_pxp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxp\00", [28 x i8] zeroinitializer }, align 32
@pxp_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-pxp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@pxp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxp_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/platform/imx-pxp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr = internal global ptr @pxp_probe._entry, section ".printk_index", align 4
@pxp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->irqlock\00", [18 x i8] zeroinitializer }, align 32
@pxp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr.10 = internal global ptr @pxp_probe._entry.8, section ".printk_index", align 4
@pxp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1704, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PXP reset timeout: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr.13 = internal global ptr @pxp_probe._entry.11, section ".printk_index", align 4
@pxp_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@pxp_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @pxp_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"pxp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @pxp_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@pxp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr.19 = internal global ptr @pxp_probe._entry.17, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @pxp_device_run, ptr @pxp_job_ready, ptr @pxp_job_abort }, [20 x i8] zeroinitializer }, align 32
@pxp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr.22 = internal global ptr @pxp_probe._entry.20, section ".printk_index", align 4
@pxp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@pxp_probe._entry_ptr.25 = internal global ptr @pxp_probe._entry.23, section ".printk_index", align 4
@pxp_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: %s: stat = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxp_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@pxp_irq_handler._entry_ptr = internal global ptr @pxp_irq_handler._entry, section ".printk_index", align 4
@pxp_irq_handler._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pxp_irq_handler._entry_ptr.29 = internal global ptr @pxp_irq_handler._entry.28, section ".printk_index", align 4
@pxp_irq_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.4, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: %s: irq = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@pxp_irq_handler._entry_ptr.32 = internal global ptr @pxp_irq_handler._entry.30, section ".printk_index", align 4
@pxp_job_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Instance released before the end of transaction\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxp_job_finish\00", [17 x i8] zeroinitializer }, align 32
@pxp_job_finish._entry_ptr = internal global ptr @pxp_job_finish._entry, section ".printk_index", align 4
@pxp_job_finish._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Finishing transaction\0A\00", [63 x i8] zeroinitializer }, align 32
@pxp_job_finish._entry_ptr.37 = internal global ptr @pxp_job_finish._entry.35, section ".printk_index", align 4
@pxp_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @pxp_open, ptr @pxp_release }, [60 x i8] zeroinitializer }, align 32
@pxp_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @pxp_querycap, ptr @pxp_enum_fmt_vid_cap, ptr null, ptr @pxp_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @pxp_g_fmt_vid_cap, ptr null, ptr @pxp_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxp_s_fmt_vid_cap, ptr null, ptr @pxp_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxp_try_fmt_vid_cap, ptr null, ptr @pxp_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@pxp_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx_pxp:1550:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@pxp_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @pxp_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@formats = internal global { [20 x %struct.pxp_fmt], [48 x i8] } { [20 x %struct.pxp_fmt] [%struct.pxp_fmt { i32 875713112, i32 32, i32 3 }, %struct.pxp_fmt { i32 875713089, i32 32, i32 1 }, %struct.pxp_fmt { i32 861030210, i32 24, i32 1 }, %struct.pxp_fmt { i32 1346520914, i32 16, i32 3 }, %struct.pxp_fmt { i32 1329743698, i32 16, i32 3 }, %struct.pxp_fmt { i32 875836498, i32 16, i32 3 }, %struct.pxp_fmt { i32 1096373590, i32 32, i32 1 }, %struct.pxp_fmt { i32 1482249558, i32 32, i32 3 }, %struct.pxp_fmt { i32 1498831189, i32 16, i32 3 }, %struct.pxp_fmt { i32 1448695129, i32 16, i32 2 }, %struct.pxp_fmt { i32 1498765654, i32 16, i32 3 }, %struct.pxp_fmt { i32 1431918169, i32 16, i32 2 }, %struct.pxp_fmt { i32 1497715271, i32 8, i32 3 }, %struct.pxp_fmt { i32 540291161, i32 4, i32 3 }, %struct.pxp_fmt { i32 909203022, i32 16, i32 3 }, %struct.pxp_fmt { i32 842094158, i32 12, i32 3 }, %struct.pxp_fmt { i32 825382478, i32 12, i32 3 }, %struct.pxp_fmt { i32 825644622, i32 16, i32 3 }, %struct.pxp_fmt { i32 1345466932, i32 16, i32 2 }, %struct.pxp_fmt { i32 842093913, i32 12, i32 2 }], [48 x i8] zeroinitializer }, align 32
@pxp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: Created instance: %p, m2m_ctx: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxp_open\00", [23 x i8] zeroinitializer }, align 32
@pxp_open._entry_ptr = internal global ptr @pxp_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pxp_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid control\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxp_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@pxp_s_ctrl._entry_ptr = internal global ptr @pxp_s_ctrl._entry, section ".printk_index", align 4
@pxp_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @pxp_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @pxp_buf_prepare, ptr null, ptr null, ptr @pxp_start_streaming, ptr @pxp_stop_streaming, ptr @pxp_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@pxp_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: get %d buffer(s) of size %d each.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxp_queue_setup\00", [16 x i8] zeroinitializer }, align 32
@pxp_queue_setup._entry_ptr = internal global ptr @pxp_queue_setup._entry, section ".printk_index", align 4
@pxp_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: type: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxp_buf_prepare\00", [16 x i8] zeroinitializer }, align 32
@pxp_buf_prepare._entry_ptr = internal global ptr @pxp_buf_prepare._entry, section ".printk_index", align 4
@pxp_buf_prepare._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: %s field isn't supported\0A\00", [60 x i8] zeroinitializer }, align 32
@pxp_buf_prepare._entry_ptr.49 = internal global ptr @pxp_buf_prepare._entry.47, section ".printk_index", align 4
@pxp_buf_prepare._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.4, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: %s data will not fit into plane (%lu < %lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@pxp_buf_prepare._entry_ptr.52 = internal global ptr @pxp_buf_prepare._entry.50, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@pxp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxp_release\00", [20 x i8] zeroinitializer }, align 32
@pxp_release._entry_ptr = internal global ptr @pxp_release._entry, section ".printk_index", align 4
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@pxp_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxp_s_fmt\00", [22 x i8] zeroinitializer }, align 32
@pxp_s_fmt._entry_ptr = internal global ptr @pxp_s_fmt._entry, section ".printk_index", align 4
@pxp_s_fmt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: %s: Setting format for type %d, wxh: %dx%d, fmt: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pxp_s_fmt._entry_ptr.61 = internal global ptr @pxp_s_fmt._entry.59, section ".printk_index", align 4
@pxp_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Fourcc format (0x%08x) invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pxp_try_fmt_vid_cap\00", [44 x i8] zeroinitializer }, align 32
@pxp_try_fmt_vid_cap._entry_ptr = internal global ptr @pxp_try_fmt_vid_cap._entry, section ".printk_index", align 4
@pxp_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.4, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pxp_try_fmt_vid_out\00", [44 x i8] zeroinitializer }, align 32
@pxp_try_fmt_vid_out._entry_ptr = internal global ptr @pxp_try_fmt_vid_out._entry, section ".printk_index", align 4
@pxp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Acquiring DMA addresses of buffers failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxp_start\00", [22 x i8] zeroinitializer }, align 32
@pxp_start._entry_ptr = internal global ptr @pxp_start._entry, section ".printk_index", align 4
@pxp_setup_csc.csc1_coef_bt601_lim = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2069167632, i32 26739204, i32 120588188], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_bt601_full = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2080178176, i32 23462341, i32 122292136], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_rec709_lim = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2069167632, i32 30016028, i32 125306826], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_rec709_full = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2080178176, i32 26411483, i32 126420945], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_bt2020_lim = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2069167632, i32 28115492, i32 123340753], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_bt2020_full = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2080178176, i32 24707553, i32 124651478], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_smpte240m_lim = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2069167632, i32 30081556, i32 125175743], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc1_coef_smpte240m_full = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -2080178176, i32 26411475, i32 126224327], [20 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_bt601_lim = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8454209, i32 131792921, i32 7342006, i32 128057456, i32 1050606, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_bt601_full = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9830476, i32 131399709, i32 8390572, i32 127205504, i32 2028, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_rec709_lim = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 10289198, i32 132579343, i32 7341994, i32 127533168, i32 1050614, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_rec709_full = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 11993142, i32 132317202, i32 8390558, i32 126615680, i32 2037, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_bt2020_lim = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9764921, i32 132186125, i32 7341999, i32 127467632, i32 1050615, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_bt2020_full = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 11337795, i32 131923983, i32 8390564, i32 126550144, i32 2038, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_smpte240m_lim = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 10092590, i32 132513811, i32 7341994, i32 127664240, i32 1050612, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_setup_csc.csc2_coef_smpte240m_full = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 11730998, i32 132317206, i32 8390558, i32 126812288, i32 2034, i32 8388736], [40 x i8] zeroinitializer }, align 32
@pxp_job_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: Not enough buffers available\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxp_job_ready\00", [18 x i8] zeroinitializer }, align 32
@pxp_job_ready._entry_ptr = internal global ptr @pxp_job_ready._entry, section ".printk_index", align 4
@pxp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Removing pxp\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxp_remove\00", [21 x i8] zeroinitializer }, align 32
@pxp_remove._entry_ptr = internal global ptr @pxp_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1345466932]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9963810, i64 9963817]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.76 = internal global [8 x i64] [i64 6, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1345466932]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1345466932]
@__sancov_gen_cov_switch_values.78 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.79 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.81 = internal global [17 x i64] [i64 15, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 861030210, i64 875713089, i64 875713112, i64 875836498, i64 909203022, i64 1096373590, i64 1329743698, i64 1346520914, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.84 = internal global [18 x i64] [i64 16, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 875713112, i64 875836498, i64 909203022, i64 1329743698, i64 1345466932, i64 1346520914, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.85 = internal global [12 x i64] [i64 10, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1345466932, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.86 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.87 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.90 = internal global [16 x i64] [i64 14, i64 32, i64 540291161, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 909203022, i64 1096373590, i64 1345466932, i64 1431918169, i64 1448695129, i64 1482249558, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 34, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"pxp_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1775, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1779, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"pxp_dt_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1769, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1674, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1677, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1689, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1694, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1704, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1713, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"pxp_videodev\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1626, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1721, i32 41 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1722, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1636, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1729, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1736, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1013, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1020, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1021, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 948, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 960, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [9 x i8] c"pxp_fops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1617, i32 42 }
@___asan_gen_.212 = private unnamed_addr constant [14 x i8] c"pxp_ioctl_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1362, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1550, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"pxp_ctrl_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1358, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 65, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1589, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1351, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [9 x i8] c"pxp_qops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1485, i32 29 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1413, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1425, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1432, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1438, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1163, i32 7 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1602, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1038, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1244, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1254, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1190, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1218, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 751, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c"csc1_coef_bt601_lim\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 333, i32 20 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"csc1_coef_bt601_full\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 350, i32 20 }
@___asan_gen_.338 = private unnamed_addr constant [21 x i8] c"csc1_coef_rec709_lim\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 367, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant [22 x i8] c"csc1_coef_rec709_full\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 384, i32 20 }
@___asan_gen_.344 = private unnamed_addr constant [21 x i8] c"csc1_coef_bt2020_lim\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 401, i32 20 }
@___asan_gen_.347 = private unnamed_addr constant [22 x i8] c"csc1_coef_bt2020_full\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 418, i32 20 }
@___asan_gen_.350 = private unnamed_addr constant [24 x i8] c"csc1_coef_smpte240m_lim\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 435, i32 20 }
@___asan_gen_.353 = private unnamed_addr constant [25 x i8] c"csc1_coef_smpte240m_full\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 452, i32 20 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c"csc2_coef_bt601_lim\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 513, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant [21 x i8] c"csc2_coef_bt601_full\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 534, i32 20 }
@___asan_gen_.362 = private unnamed_addr constant [21 x i8] c"csc2_coef_rec709_lim\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 555, i32 20 }
@___asan_gen_.365 = private unnamed_addr constant [22 x i8] c"csc2_coef_rec709_full\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 576, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant [21 x i8] c"csc2_coef_bt2020_lim\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 597, i32 20 }
@___asan_gen_.371 = private unnamed_addr constant [22 x i8] c"csc2_coef_bt2020_full\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 618, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant [24 x i8] c"csc2_coef_smpte240m_lim\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 639, i32 20 }
@___asan_gen_.377 = private unnamed_addr constant [25 x i8] c"csc2_coef_smpte240m_full\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 660, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 984, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [36 x i8] c"../drivers/media/platform/imx-pxp.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1761, i32 2 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_pxp_driver_exit, ptr @__initcall__kmod_imx_pxp__300_1784_pxp_driver_init6, ptr @__param_debug, ptr @pxp_buf_prepare._entry, ptr @pxp_buf_prepare._entry.47, ptr @pxp_buf_prepare._entry.50, ptr @pxp_buf_prepare._entry_ptr, ptr @pxp_buf_prepare._entry_ptr.49, ptr @pxp_buf_prepare._entry_ptr.52, ptr @pxp_driver_exit, ptr @pxp_irq_handler._entry, ptr @pxp_irq_handler._entry.28, ptr @pxp_irq_handler._entry.30, ptr @pxp_irq_handler._entry_ptr, ptr @pxp_irq_handler._entry_ptr.29, ptr @pxp_irq_handler._entry_ptr.32, ptr @pxp_job_finish._entry, ptr @pxp_job_finish._entry.35, ptr @pxp_job_finish._entry_ptr, ptr @pxp_job_finish._entry_ptr.37, ptr @pxp_job_ready._entry, ptr @pxp_job_ready._entry_ptr, ptr @pxp_open._entry, ptr @pxp_open._entry_ptr, ptr @pxp_probe._entry, ptr @pxp_probe._entry.11, ptr @pxp_probe._entry.17, ptr @pxp_probe._entry.20, ptr @pxp_probe._entry.23, ptr @pxp_probe._entry.8, ptr @pxp_probe._entry_ptr, ptr @pxp_probe._entry_ptr.10, ptr @pxp_probe._entry_ptr.13, ptr @pxp_probe._entry_ptr.19, ptr @pxp_probe._entry_ptr.22, ptr @pxp_probe._entry_ptr.25, ptr @pxp_queue_setup._entry, ptr @pxp_queue_setup._entry_ptr, ptr @pxp_release._entry, ptr @pxp_release._entry_ptr, ptr @pxp_remove._entry, ptr @pxp_remove._entry_ptr, ptr @pxp_s_ctrl._entry, ptr @pxp_s_ctrl._entry_ptr, ptr @pxp_s_fmt._entry, ptr @pxp_s_fmt._entry.59, ptr @pxp_s_fmt._entry_ptr, ptr @pxp_s_fmt._entry_ptr.61, ptr @pxp_start._entry, ptr @pxp_start._entry_ptr, ptr @pxp_try_fmt_vid_cap._entry, ptr @pxp_try_fmt_vid_cap._entry_ptr, ptr @pxp_try_fmt_vid_out._entry, ptr @pxp_try_fmt_vid_out._entry_ptr, ptr @debug, ptr @pxp_driver, ptr @.str, ptr @pxp_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pxp_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @pxp_probe.__key.14, ptr @.str.15, ptr @pxp_videodev, ptr @.str.16, ptr @.str.18, ptr @m2m_ops, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @pxp_fops, ptr @pxp_ioctl_ops, ptr @pxp_open._key, ptr @.str.38, ptr @pxp_ctrl_ops, ptr @formats, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pxp_qops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @pxp_setup_csc.csc1_coef_bt601_lim, ptr @pxp_setup_csc.csc1_coef_bt601_full, ptr @pxp_setup_csc.csc1_coef_rec709_lim, ptr @pxp_setup_csc.csc1_coef_rec709_full, ptr @pxp_setup_csc.csc1_coef_bt2020_lim, ptr @pxp_setup_csc.csc1_coef_bt2020_full, ptr @pxp_setup_csc.csc1_coef_smpte240m_lim, ptr @pxp_setup_csc.csc1_coef_smpte240m_full, ptr @pxp_setup_csc.csc2_coef_bt601_lim, ptr @pxp_setup_csc.csc2_coef_bt601_full, ptr @pxp_setup_csc.csc2_coef_rec709_lim, ptr @pxp_setup_csc.csc2_coef_rec709_full, ptr @pxp_setup_csc.csc2_coef_bt2020_lim, ptr @pxp_setup_csc.csc2_coef_bt2020_full, ptr @pxp_setup_csc.csc2_coef_smpte240m_lim, ptr @pxp_setup_csc.csc2_coef_smpte240m_full, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_irq_handler._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_irq_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_job_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_job_finish._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_buf_prepare._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_buf_prepare._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_s_fmt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_bt601_lim to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_bt601_full to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_rec709_lim to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_rec709_full to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_bt2020_lim to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_bt2020_full to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_smpte240m_lim to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc1_coef_smpte240m_full to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_bt601_lim to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_bt601_full to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_rec709_lim to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_rec709_full to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_bt2020_lim to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_bt2020_full to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_smpte240m_lim to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_setup_csc.csc2_coef_smpte240m_full to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_job_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxp_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1632, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  %clk = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %1) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %mmio = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %mmio, align 4
  %cmp.i159 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %do.body21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body21:                                        ; preds = %if.end17
  %irqlock = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @pxp_probe.__key, i16 noundef signext 3) #12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body21.dev_name.exit_crit_edge

do.body21.dev_name.exit_crit_edge:                ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.body21.dev_name.exit_crit_edge ]
  %call28 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call18, ptr noundef null, ptr noundef nonnull @pxp_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call28) #15
  br label %cleanup

if.end35:                                         ; preds = %dev_name.exit
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end.i162, label %if.end35.clk_prepare_enable.exit_crit_edge

if.end35.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i162:                                      ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i162.if.end40_crit_edge, label %if.then3.i

if.end.i162.if.end40_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then3.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %9) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end35.clk_prepare_enable.exit_crit_edge
  %retval.0.i163 = phi i32 [ %call.i160, %if.end35.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i163)
  %cmp38 = icmp slt i32 %retval.0.i163, 0
  br i1 %cmp38, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end40_crit_edge

clk_prepare_enable.exit.if.end40_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %clk_prepare_enable.exit.if.end40_crit_edge, %if.end.i162.if.end40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 64) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 128) #12, !srcloc !213
  %call.i164 = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i164, 100000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end40
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i165 = icmp eq i32 %19, 0
  br i1 %tobool.not.i165, label %land.lhs.true.i, label %for.cond.i.if.end48_crit_edge

for.cond.i.if.end48_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call28.i = tail call i64 @ktime_get() #12
  %cmp3.i.i = icmp sgt i64 %call28.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %phi.cmp.i = icmp eq i32 %23, 0
  br i1 %phi.cmp.i, label %do.end46, label %for.end.i.if.end48_crit_edge

for.end.i.if.end48_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end46:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef -110) #15
  br label %err_clk

if.end48:                                         ; preds = %for.end.i.if.end48_crit_edge, %for.cond.i.if.end48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %add.ptr53.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 128) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !220
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %add.ptr58.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 64) #12, !srcloc !213
  %call50 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.err_clk_crit_edge

if.end48.err_clk_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clk

if.end53:                                         ; preds = %if.end48
  %num_inst = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  %28 = ptrtoint ptr %num_inst to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %num_inst, align 4
  %dev_mutex = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @pxp_probe.__key.14) #12
  %vfd57 = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %vfd57, ptr @pxp_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 26
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev61 = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %v4l2_dev61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %v4l2_dev61, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 12
  %call62 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef getelementptr inbounds (%struct.video_device, ptr @pxp_videodev, i32 0, i32 12))
  %name67 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %num = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num, align 4
  %conv = zext i16 %34 to i32
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name67, i32 noundef %conv) #15
  %driver_data.i.i167 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i167 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i167, align 4
  %call70 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #12
  %m2m_dev = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call70, ptr %m2m_dev, align 4
  %cmp.i168 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end76, label %if.end84

do.end76:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name67) #15
  %37 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_dev, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %err_v4l2

if.end84:                                         ; preds = %if.end53
  %fops.i = getelementptr inbounds %struct.pxp_dev, ptr %call.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fops.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.i169 = tail call i32 @__video_register_device(ptr noundef %vfd57, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool86.not = icmp eq i32 %call.i169, 0
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %do.end90

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name67) #15
  %44 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %45) #12
  br label %err_v4l2

err_v4l2:                                         ; preds = %do.end90, %do.end76
  %ret.0 = phi i32 [ %39, %do.end76 ], [ %call.i169, %do.end90 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #12
  br label %err_clk

err_clk:                                          ; preds = %err_v4l2, %if.end48.err_clk_crit_edge, %do.end46
  %ret.1 = phi i32 [ -110, %do.end46 ], [ %call50, %if.end48.err_clk_crit_edge ], [ %ret.0, %err_v4l2 ]
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %47) #12
  tail call void @clk_unprepare(ptr noundef %47) #12
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end84.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end33, %if.end17.cleanup_crit_edge, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then14 ], [ %call28, %do.end33 ], [ %ret.1, %err_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %retval.0.i163, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 64) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 128) #12, !srcloc !213
  %clk = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name) #15
  %vfd = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #12
  %m2m_dev = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %9) #12
  tail call void @v4l2_device_unregister(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.pxp_dev, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %3, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.do.body12_crit_edge, label %do.body

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body:                                          ; preds = %if.then
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.body.do.body12_crit_edge, label %do.end

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27, i32 noundef %3) #15
  br label %do.body12

do.body12:                                        ; preds = %do.end, %do.body.do.body12_crit_edge, %if.then.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #12, !srcloc !213
  %m2m_dev.i = getelementptr inbounds %struct.pxp_dev, ptr %dev_id, i32 0, i32 7
  %7 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_dev.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %8) #12
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  br label %if.end58

if.end.i:                                         ; preds = %do.body12
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i) #12
  %11 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  %call.i43.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #12
  %irqlock.i = getelementptr inbounds %struct.pxp_dev, ptr %dev_id, i32 0, i32 6
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #12
  tail call void @vb2_buffer_done(ptr noundef %call.i.i, i32 noundef 5) #12
  tail call void @vb2_buffer_done(ptr noundef %call.i43.i, i32 noundef 5) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call11.i) #12
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.not.i = icmp eq i32 %13, 0
  br i1 %cmp18.not.i, label %if.end.i.do.end29.i_crit_edge, label %do.end23.i

if.end.i.do.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29.i

do.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev25.i = getelementptr inbounds %struct.pxp_ctx, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i, ptr noundef nonnull @.str.34) #15
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end23.i, %if.end.i.do.end29.i_crit_edge
  %16 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev.i, align 4
  %18 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx.i, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %17, ptr noundef %19) #12
  br label %if.end58

if.else:                                          ; preds = %entry
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 928
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #12, !srcloc !216
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26.not = icmp eq i32 %24, 0
  br i1 %cmp26.not, label %if.else.do.body53_crit_edge, label %do.body39

if.else.do.body53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

do.body39:                                        ; preds = %if.else
  %name33 = getelementptr inbounds %struct.v4l2_device, ptr %dev_id, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name33, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27, i32 noundef %3) #15
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp40.not = icmp eq i32 %.pr, 0
  br i1 %cmp40.not, label %do.body39.do.body53_crit_edge, label %do.end44

do.body39.do.body53_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name33, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27, i32 noundef %23) #15
  br label %do.body53

do.body53:                                        ; preds = %do.end44, %do.body39.do.body53_crit_edge, %if.else.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr57 = getelementptr i8, ptr %26, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %22) #12, !srcloc !213
  br label %if.end58

if.end58:                                         ; preds = %do.body53, %do.end29.i, %do.end.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 464) #16
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.open_unlock_crit_edge, label %if.end5

if.end.open_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %open_unlock

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @video_devdata(ptr noundef %file) #12
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call6) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev8 = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev8, align 8
  %hdl9 = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl9, i32 noundef 4, ptr noundef nonnull @pxp_open._key, ptr noundef nonnull @.str.38) #12
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @pxp_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @pxp_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @pxp_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #12
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @pxp_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #12
  %error = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl9) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %open_unlock

if.end18:                                         ; preds = %if.end5
  %ctrl_handler = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hdl9, ptr %ctrl_handler, align 4
  %call20 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl9) #12
  %q_data = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9
  %fmt = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 5
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @formats, ptr %fmt, align 4
  %9 = ptrtoint ptr %q_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 640, ptr %q_data, align 8
  %height = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 480, ptr %height, align 4
  %11 = load i32, ptr @formats, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %sw.default.i [
    i32 842093913, label %if.end18.pxp_bytesperline.exit_crit_edge
    i32 842094158, label %if.end18.pxp_bytesperline.exit_crit_edge101
    i32 825382478, label %if.end18.pxp_bytesperline.exit_crit_edge102
    i32 1345466932, label %if.end18.pxp_bytesperline.exit_crit_edge103
    i32 909203022, label %if.end18.pxp_bytesperline.exit_crit_edge104
    i32 825644622, label %if.end18.pxp_bytesperline.exit_crit_edge105
  ]

if.end18.pxp_bytesperline.exit_crit_edge105:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

if.end18.pxp_bytesperline.exit_crit_edge104:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

if.end18.pxp_bytesperline.exit_crit_edge103:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

if.end18.pxp_bytesperline.exit_crit_edge102:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

if.end18.pxp_bytesperline.exit_crit_edge101:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

if.end18.pxp_bytesperline.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_bytesperline.exit

sw.default.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %13 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %mul.i = mul i32 %13, 640
  %shr.i = lshr exact i32 %mul.i, 3
  br label %pxp_bytesperline.exit

pxp_bytesperline.exit:                            ; preds = %sw.default.i, %if.end18.pxp_bytesperline.exit_crit_edge, %if.end18.pxp_bytesperline.exit_crit_edge101, %if.end18.pxp_bytesperline.exit_crit_edge102, %if.end18.pxp_bytesperline.exit_crit_edge103, %if.end18.pxp_bytesperline.exit_crit_edge104, %if.end18.pxp_bytesperline.exit_crit_edge105
  %retval.0.i = phi i32 [ %shr.i, %sw.default.i ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge101 ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge102 ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge103 ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge104 ], [ 640, %if.end18.pxp_bytesperline.exit_crit_edge105 ]
  %bytesperline = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 2
  %14 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %bytesperline, align 8
  %15 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %mul1.i = mul i32 %15, 307200
  %shr.i100 = lshr exact i32 %mul1.i, 3
  %sizeimage = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i100, ptr %sizeimage, align 4
  %arrayidx32 = getelementptr %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %17 = call ptr @memcpy(ptr %arrayidx32, ptr %q_data, i32 32)
  %colorspace = getelementptr inbounds %struct.pxp_ctx, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %colorspace, align 8
  %m2m_dev = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_dev, align 4
  %call35 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %20, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end45

if.then40:                                        ; preds = %pxp_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %call35 to i32
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl9) #12
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %open_unlock

if.end45:                                         ; preds = %pxp_bytesperline.exit
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #12
  %num_inst = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %num_inst, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inst, ptr %num_inst, i32 1, ptr elementtype(i32) %num_inst) #12, !srcloc !227
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.end45.open_unlock_crit_edge, label %do.end

if.end45.open_unlock_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %open_unlock

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.40, ptr noundef nonnull %call7.i.i, ptr noundef %26) #15
  br label %open_unlock

open_unlock:                                      ; preds = %do.end, %if.end45.open_unlock_crit_edge, %if.then40, %if.then16, %if.end.open_unlock_crit_edge
  %rc.0 = phi i32 [ %6, %if.then16 ], [ %22, %if.then40 ], [ 0, %do.end ], [ 0, %if.end45.open_unlock_crit_edge ], [ -12, %if.end.open_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %open_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %open_unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef nonnull @.str.55, ptr noundef %3) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %3) #12
  tail call void @v4l2_fh_exit(ptr noundef %3) #12
  %hdl = getelementptr inbounds %struct.pxp_ctx, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #12
  %dev_mutex = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %6) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  tail call void @kfree(ptr noundef %3) #12
  %num_inst = getelementptr inbounds %struct.pxp_dev, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %num_inst, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inst, ptr %num_inst, i32 1, ptr elementtype(i32) %num_inst) #12, !srcloc !228
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
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pxp_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.pxp_dev, ptr %8, i32 0, i32 5
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex, ptr %lock, align 4
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pxp_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev_mutex12 = getelementptr inbounds %struct.pxp_dev, ptr %22, i32 0, i32 5
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev_mutex12, ptr %lock13, align 4
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %3, label %do.end [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb2
    i32 9963810, label %sw.bb12
    i32 9963817, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %mode1 = getelementptr i8, ptr %1, i32 188
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %8, 1
  %9 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %mode1, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %8, -2
  %10 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %mode1, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  %mode9 = getelementptr i8, ptr %1, i32 188
  %13 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode9, align 4
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %or7 = or i32 %14, 2
  %15 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7, ptr %mode9, align 4
  br label %cleanup

if.else8:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %and10 = and i32 %14, -3
  %16 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and10, ptr %mode9, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val13, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %18, label %sw.default.i [
    i32 90, label %sw.bb12.pxp_degrees_to_rot_mode.exit_crit_edge
    i32 180, label %sw.bb1.i
    i32 270, label %sw.bb2.i
  ]

sw.bb12.pxp_degrees_to_rot_mode.exit_crit_edge:   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_degrees_to_rot_mode.exit

sw.bb1.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_degrees_to_rot_mode.exit

sw.bb2.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_degrees_to_rot_mode.exit

sw.default.i:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_degrees_to_rot_mode.exit

pxp_degrees_to_rot_mode.exit:                     ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb12.pxp_degrees_to_rot_mode.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %sw.bb12.pxp_degrees_to_rot_mode.exit_crit_edge ]
  %rotation = getelementptr i8, ptr %1, i32 193
  %20 = ptrtoint ptr %rotation to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %retval.0.i, ptr %rotation, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val15, align 4
  %conv = trunc i32 %22 to i8
  %alpha_component = getelementptr i8, ptr %1, i32 192
  %23 = ptrtoint ptr %alpha_component to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %alpha_component, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %1, i32 -4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %25, i32 0, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb14, %pxp_degrees_to_rot_mode.exit, %if.else8, %if.then5, %if.else, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then5 ], [ 0, %if.else8 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb14 ], [ 0, %pxp_degrees_to_rot_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  %q_data.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9
  %arrayidx2.i = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %q_data.i, ptr %arrayidx2.i
  %sizeimage = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp = icmp ult i32 %11, %7
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %nplanes, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %sizes, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.not = icmp eq i32 %14, 0
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %7) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.pxp_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull @.str.46, i32 noundef %8) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  %q_data.i = getelementptr inbounds %struct.pxp_ctx, ptr %3, i32 0, i32 9
  %arrayidx2.i = getelementptr %struct.pxp_ctx, ptr %3, i32 0, i32 9, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %q_data.i, ptr %arrayidx2.i
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %12, label %do.end8.if.end65_crit_edge [
    i32 2, label %do.end8.if.then42_crit_edge
    i32 10, label %do.end8.if.then42_crit_edge131
    i32 3, label %do.end8.if.then42_crit_edge132
    i32 8, label %do.end8.if.then42_crit_edge133
    i32 5, label %do.end8.if.then42_crit_edge134
    i32 7, label %do.end8.if.then42_crit_edge135
    i32 12, label %do.end8.if.then42_crit_edge136
    i32 14, label %do.end8.if.then42_crit_edge137
  ]

do.end8.if.then42_crit_edge137:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge136:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge135:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge134:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge133:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge132:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge131:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.then42_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

do.end8.if.end65_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then42:                                        ; preds = %do.end8.if.then42_crit_edge, %do.end8.if.then42_crit_edge131, %do.end8.if.then42_crit_edge132, %do.end8.if.then42_crit_edge133, %do.end8.if.then42_crit_edge134, %do.end8.if.then42_crit_edge135, %do.end8.if.then42_crit_edge136, %do.end8.if.then42_crit_edge137
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %15, label %do.body50 [
    i32 0, label %if.end46.thread
    i32 1, label %if.then42.if.end65_crit_edge
  ]

if.then42.if.end65_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end46.thread:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  br label %if.end65

do.body50:                                        ; preds = %if.then42
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp51.not = icmp eq i32 %18, 0
  br i1 %cmp51.not, label %do.body50.cleanup_crit_edge, label %do.end55

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %name58 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name58, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end65:                                         ; preds = %if.end46.thread, %if.then42.if.end65_crit_edge, %do.end8.if.end65_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %19 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end65
  %sizeimage = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp67.not = icmp eq i32 %22, 0
  br i1 %cmp67.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body69

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end65
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 8
  %sizeimage125 = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %sizeimage125 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizeimage125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp67126 = icmp ult i32 %24, %26
  br i1 %cmp67126, label %do.body69.thread, label %if.then.i122

do.body69:                                        ; preds = %vb2_plane_size.exit
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp70.not = icmp eq i32 %27, 0
  br i1 %cmp70.not, label %do.body69.cleanup_crit_edge, label %do.body69.vb2_plane_size.exit118_crit_edge

do.body69.vb2_plane_size.exit118_crit_edge:       ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit118

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body69.thread:                                 ; preds = %vb2_plane_size.exit.thread
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp70.not127 = icmp eq i32 %28, 0
  br i1 %cmp70.not127, label %do.body69.thread.cleanup_crit_edge, label %if.then.i116

do.body69.thread.cleanup_crit_edge:               ; preds = %do.body69.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i116:                                     ; preds = %do.body69.thread
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit118

vb2_plane_size.exit118:                           ; preds = %if.then.i116, %do.body69.vb2_plane_size.exit118_crit_edge
  %31 = phi i32 [ %26, %if.then.i116 ], [ %22, %do.body69.vb2_plane_size.exit118_crit_edge ]
  %retval.0.i117 = phi i32 [ %30, %if.then.i116 ], [ 0, %do.body69.vb2_plane_size.exit118_crit_edge ]
  %name77130 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name77130, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i117, i32 noundef %31) #15
  br label %cleanup

if.then.i122:                                     ; preds = %vb2_plane_size.exit.thread
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %26)
  %cmp1.i = icmp ult i32 %33, %26
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i122.if.end42.i_crit_edge

if.then.i122.if.end42.i_crit_edge:                ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i122
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !229

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i122.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %35, %if.then38.i ], [ %26, %if.then.i122.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %36 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit118, %do.body69.thread.cleanup_crit_edge, %do.body69.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %do.end55, %do.body50.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end55 ], [ -22, %do.body50.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit118 ], [ -22, %do.body69.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.body69.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxp_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %q_data.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9
  %arrayidx2.i = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %q_data.i, ptr %arrayidx2.i
  %sequence = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sequence, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxp_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %do.body28, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge54:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge53:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge52:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge51:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge50:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge49:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge49, %for.cond.if.then_crit_edge50, %for.cond.if.then_crit_edge51, %for.cond.if.then_crit_edge52, %for.cond.if.then_crit_edge53, %for.cond.if.then_crit_edge54, %for.cond.if.then_crit_edge55
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i48 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #12
  %cmp25 = icmp eq ptr %call.i48, null
  br i1 %cmp25, label %if.then26, label %do.body28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %irqlock = getelementptr inbounds %struct.pxp_dev, ptr %10, i32 0, i32 6
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i48, i32 noundef 6) #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %irqlock35 = getelementptr inbounds %struct.pxp_dev, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock35, i32 noundef %call31) #12
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxp_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %num.020.i = phi i32 [ 0, %entry ], [ %num.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ 0, %entry ], [ %inc4.i, %for.inc.i.for.body.i_crit_edge ]
  %types.i = getelementptr [20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 %i.018.i, i32 2
  %0 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %types.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.020.i, i32 %3)
  %cmp1.i = icmp eq i32 %num.020.i, %3
  br i1 %cmp1.i, label %if.then6.critedge.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %num.020.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.020.i, %for.body.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.pxp_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.pxp_enum_fmt.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_enum_fmt.exit

if.then6.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7.i = getelementptr [20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 %i.018.i
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat.i, align 4
  br label %pxp_enum_fmt.exit

pxp_enum_fmt.exit:                                ; preds = %if.then6.critedge.i, %for.inc.i.pxp_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then6.critedge.i ], [ -22, %for.inc.i.pxp_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %num.020.i = phi i32 [ 0, %entry ], [ %num.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ 0, %entry ], [ %inc4.i, %for.inc.i.for.body.i_crit_edge ]
  %types.i = getelementptr [20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 %i.018.i, i32 2
  %0 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %types.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.020.i, i32 %3)
  %cmp1.i = icmp eq i32 %num.020.i, %3
  br i1 %cmp1.i, label %if.then6.critedge.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %num.020.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.020.i, %for.body.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.pxp_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.pxp_enum_fmt.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_enum_fmt.exit

if.then6.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7.i = getelementptr [20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 %i.018.i
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat.i, align 4
  br label %pxp_enum_fmt.exit

pxp_enum_fmt.exit:                                ; preds = %if.then6.critedge.i, %for.inc.i.pxp_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then6.critedge.i ], [ -22, %for.inc.i.pxp_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.pxp_g_fmt.exit_crit_edge, label %if.end.i

entry.pxp_g_fmt.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_g_fmt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  %q_data.i.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9
  %arrayidx2.i.i = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %q_data.i.i, ptr %arrayidx2.i.i
  %8 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %fmt7.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt7.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesperline.i, align 4
  %bytesperline10.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesperline10.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage.i, align 4
  %sizeimage12.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage12.i, align 4
  %colorspace.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace.i, align 4
  %colorspace14.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace14.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_func.i, align 4
  %xfer_func16.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %xfer_func16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_func16.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ycbcr_enc.i, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %quant.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %quant.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quant.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %quantization.i, align 4
  br label %pxp_g_fmt.exit

pxp_g_fmt.exit:                                   ; preds = %if.end.i, %entry.pxp_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.pxp_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.pxp_g_fmt.exit_crit_edge, label %if.end.i

entry.pxp_g_fmt.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_g_fmt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  %q_data.i.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9
  %arrayidx2.i.i = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %q_data.i.i, ptr %arrayidx2.i.i
  %8 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %fmt7.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt7.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesperline.i, align 4
  %bytesperline10.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesperline10.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage.i, align 4
  %sizeimage12.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage12.i, align 4
  %colorspace.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace.i, align 4
  %colorspace14.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace14.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_func.i, align 4
  %xfer_func16.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %xfer_func16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_func16.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ycbcr_enc.i, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %quant.i = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %quant.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quant.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %quantization.i, align 4
  br label %pxp_g_fmt.exit

pxp_g_fmt.exit:                                   ; preds = %if.end.i, %entry.pxp_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.pxp_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @pxp_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call3 = tail call fastcc i32 @pxp_s_fmt(ptr noundef %3, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %ycbcr_enc = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1, i32 6
  %7 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quantization, align 4
  %quant = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1, i32 7
  %10 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %quant, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @pxp_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call3 = tail call fastcc i32 @pxp_s_fmt(ptr noundef %3, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %colorspace7, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xfer_func, align 4
  %xfer_func9 = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %xfer_func9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %xfer_func9, align 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %ycbcr_enc = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 0, i32 6
  %13 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quantization, align 4
  %quant = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 0, i32 7
  %16 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %quant, align 4
  %fmt16 = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1, i32 5
  %17 = ptrtoint ptr %fmt16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %ycbcr_enc19 = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1, i32 6
  %quant22 = getelementptr %struct.pxp_ctx, ptr %1, i32 0, i32 9, i32 1, i32 7
  tail call fastcc void @pxp_fixup_colorimetry_cap(ptr noundef %1, i32 noundef %20, ptr noundef %ycbcr_enc19, ptr noundef %quant22)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc ptr @find_format(ptr noundef %f)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i32, ptr @formats, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  %call3 = tail call fastcc ptr @find_format(ptr noundef %f)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fmt.0 = phi ptr [ %call1, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  %types = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 2
  %4 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %pixelformat7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %9) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %colorspace, align 4
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %colorspace11, align 4
  %xfer_func = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xfer_func, align 4
  %xfer_func13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %15 = ptrtoint ptr %xfer_func13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %xfer_func13, align 4
  %16 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt.0, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  tail call fastcc void @pxp_fixup_colorimetry_cap(ptr noundef %1, i32 noundef %17, ptr noundef %18, ptr noundef %quantization)
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1.i, i32 noundef 8, i32 noundef 4096, i32 noundef 3, ptr noundef %height.i, i32 noundef 8, i32 noundef 4096, i32 noundef 3, i32 noundef 0) #12
  %19 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt1.i, align 4
  %21 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt.0, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %22, label %sw.default.i.i [
    i32 842093913, label %if.end9.pxp_try_fmt.exit_crit_edge
    i32 842094158, label %if.end9.pxp_try_fmt.exit_crit_edge32
    i32 825382478, label %if.end9.pxp_try_fmt.exit_crit_edge33
    i32 1345466932, label %if.end9.pxp_try_fmt.exit_crit_edge34
    i32 909203022, label %if.end9.pxp_try_fmt.exit_crit_edge35
    i32 825644622, label %if.end9.pxp_try_fmt.exit_crit_edge36
  ]

if.end9.pxp_try_fmt.exit_crit_edge36:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end9.pxp_try_fmt.exit_crit_edge35:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end9.pxp_try_fmt.exit_crit_edge34:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end9.pxp_try_fmt.exit_crit_edge33:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end9.pxp_try_fmt.exit_crit_edge32:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end9.pxp_try_fmt.exit_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

sw.default.i.i:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %depth.i.i = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 1
  %24 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %depth.i.i, align 4
  %mul.i.i = mul i32 %25, %20
  %shr.i.i = lshr i32 %mul.i.i, 3
  br label %pxp_try_fmt.exit

pxp_try_fmt.exit:                                 ; preds = %sw.default.i.i, %if.end9.pxp_try_fmt.exit_crit_edge, %if.end9.pxp_try_fmt.exit_crit_edge32, %if.end9.pxp_try_fmt.exit_crit_edge33, %if.end9.pxp_try_fmt.exit_crit_edge34, %if.end9.pxp_try_fmt.exit_crit_edge35, %if.end9.pxp_try_fmt.exit_crit_edge36
  %retval.0.i.i = phi i32 [ %shr.i.i, %sw.default.i.i ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge32 ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge33 ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge34 ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge35 ], [ %20, %if.end9.pxp_try_fmt.exit_crit_edge36 ]
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i.i, ptr %bytesperline.i, align 4
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %depth.i1.i = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 1
  %29 = ptrtoint ptr %depth.i1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth.i1.i, align 4
  %mul.i2.i = mul i32 %28, %20
  %mul1.i.i = mul i32 %mul.i2.i, %30
  %shr.i3.i = lshr i32 %mul1.i.i, 3
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr.i3.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %pxp_try_fmt.exit, %do.end
  %retval.0 = phi i32 [ 0, %pxp_try_fmt.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_try_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc ptr @find_format(ptr noundef %f)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i32, ptr @formats, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  %call3 = tail call fastcc ptr @find_format(ptr noundef %f)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fmt.0 = phi ptr [ %call1, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  %types = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 2
  %4 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %pixelformat7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %9) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %colorspace, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1.i, i32 noundef 8, i32 noundef 4096, i32 noundef 3, ptr noundef %height.i, i32 noundef 8, i32 noundef 4096, i32 noundef 3, i32 noundef 0) #12
  %13 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt1.i, align 4
  %15 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt.0, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %16, label %sw.default.i.i [
    i32 842093913, label %if.end15.pxp_try_fmt.exit_crit_edge
    i32 842094158, label %if.end15.pxp_try_fmt.exit_crit_edge26
    i32 825382478, label %if.end15.pxp_try_fmt.exit_crit_edge27
    i32 1345466932, label %if.end15.pxp_try_fmt.exit_crit_edge28
    i32 909203022, label %if.end15.pxp_try_fmt.exit_crit_edge29
    i32 825644622, label %if.end15.pxp_try_fmt.exit_crit_edge30
  ]

if.end15.pxp_try_fmt.exit_crit_edge30:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end15.pxp_try_fmt.exit_crit_edge29:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end15.pxp_try_fmt.exit_crit_edge28:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end15.pxp_try_fmt.exit_crit_edge27:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end15.pxp_try_fmt.exit_crit_edge26:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

if.end15.pxp_try_fmt.exit_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_try_fmt.exit

sw.default.i.i:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %depth.i.i = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 1
  %18 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %depth.i.i, align 4
  %mul.i.i = mul i32 %19, %14
  %shr.i.i = lshr i32 %mul.i.i, 3
  br label %pxp_try_fmt.exit

pxp_try_fmt.exit:                                 ; preds = %sw.default.i.i, %if.end15.pxp_try_fmt.exit_crit_edge, %if.end15.pxp_try_fmt.exit_crit_edge26, %if.end15.pxp_try_fmt.exit_crit_edge27, %if.end15.pxp_try_fmt.exit_crit_edge28, %if.end15.pxp_try_fmt.exit_crit_edge29, %if.end15.pxp_try_fmt.exit_crit_edge30
  %retval.0.i.i = phi i32 [ %shr.i.i, %sw.default.i.i ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge26 ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge27 ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge28 ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge29 ], [ %14, %if.end15.pxp_try_fmt.exit_crit_edge30 ]
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.i, ptr %bytesperline.i, align 4
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i, align 4
  %depth.i1.i = getelementptr inbounds %struct.pxp_fmt, ptr %fmt.0, i32 0, i32 1
  %23 = ptrtoint ptr %depth.i1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %depth.i1.i, align 4
  %mul.i2.i = mul i32 %22, %14
  %mul1.i.i = mul i32 %mul.i2.i, %24
  %shr.i3.i = lshr i32 %mul1.i.i, 3
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i3.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %pxp_try_fmt.exit, %do.end
  %retval.0 = phi i32 [ 0, %pxp_try_fmt.exit ], [ -22, %do.end ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxp_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  %q_data.i = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 9
  %arrayidx2.i = getelementptr %struct.pxp_ctx, ptr %ctx, i32 0, i32 9, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %q_data.i, ptr %arrayidx2.i
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i57.not = icmp eq i32 %7, 0
  br i1 %cmp.i57.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %9, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, ptr noundef nonnull @.str.58) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc ptr @find_format(ptr noundef %f)
  %fmt = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 5
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %fmt, align 4
  %fmt11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt11, align 4
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height14, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesperline, align 4
  %bytesperline16 = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %bytesperline16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bytesperline16, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage, align 4
  %sizeimage18 = getelementptr inbounds %struct.pxp_q_data, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %sizeimage18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sizeimage18, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %if.end9.cleanup_crit_edge, label %do.end23

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25, align 4
  %name27 = getelementptr inbounds %struct.v4l2_device, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  %28 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call10, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name27, ptr noundef nonnull @.str.58, i32 noundef %27, i32 noundef %12, i32 noundef %15, i32 noundef %29) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end9.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end23 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_format(ptr nocapture noundef readonly %f) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2 = icmp eq i32 %2, %1
  br i1 %cmp2, label %entry.for.end.thread_crit_edge, label %for.inc

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc:                                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1 = icmp eq i32 %3, %1
  br i1 %cmp2.1, label %for.inc.for.end.thread_crit_edge, label %for.inc.1

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.1:                                        ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp2.2 = icmp eq i32 %4, %1
  br i1 %cmp2.2, label %for.inc.1.for.end.thread_crit_edge, label %for.inc.2

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.3 = icmp eq i32 %5, %1
  br i1 %cmp2.3, label %for.inc.2.for.end.thread_crit_edge, label %for.inc.3

for.inc.2.for.end.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.3:                                        ; preds = %for.inc.2
  %6 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp2.4 = icmp eq i32 %6, %1
  br i1 %cmp2.4, label %for.inc.3.for.end.thread_crit_edge, label %for.inc.4

for.inc.3.for.end.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.4:                                        ; preds = %for.inc.3
  %7 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp2.5 = icmp eq i32 %7, %1
  br i1 %cmp2.5, label %for.inc.4.for.end.thread_crit_edge, label %for.inc.5

for.inc.4.for.end.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.5:                                        ; preds = %for.inc.4
  %8 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp2.6 = icmp eq i32 %8, %1
  br i1 %cmp2.6, label %for.inc.5.for.end.thread_crit_edge, label %for.inc.6

for.inc.5.for.end.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.6:                                        ; preds = %for.inc.5
  %9 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp2.7 = icmp eq i32 %9, %1
  br i1 %cmp2.7, label %for.inc.6.for.end.thread_crit_edge, label %for.inc.7

for.inc.6.for.end.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.7:                                        ; preds = %for.inc.6
  %10 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp2.8 = icmp eq i32 %10, %1
  br i1 %cmp2.8, label %for.inc.7.for.end.thread_crit_edge, label %for.inc.8

for.inc.7.for.end.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.8:                                        ; preds = %for.inc.7
  %11 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp2.9 = icmp eq i32 %11, %1
  br i1 %cmp2.9, label %for.inc.8.for.end.thread_crit_edge, label %for.inc.9

for.inc.8.for.end.thread_crit_edge:               ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.9:                                        ; preds = %for.inc.8
  %12 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp2.10 = icmp eq i32 %12, %1
  br i1 %cmp2.10, label %for.inc.9.for.end.thread_crit_edge, label %for.inc.10

for.inc.9.for.end.thread_crit_edge:               ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.10:                                       ; preds = %for.inc.9
  %13 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp2.11 = icmp eq i32 %13, %1
  br i1 %cmp2.11, label %for.inc.10.for.end.thread_crit_edge, label %for.inc.11

for.inc.10.for.end.thread_crit_edge:              ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.11:                                       ; preds = %for.inc.10
  %14 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp2.12 = icmp eq i32 %14, %1
  br i1 %cmp2.12, label %for.inc.11.for.end.thread_crit_edge, label %for.inc.12

for.inc.11.for.end.thread_crit_edge:              ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.12:                                       ; preds = %for.inc.11
  %15 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp2.13 = icmp eq i32 %15, %1
  br i1 %cmp2.13, label %for.inc.12.for.end.thread_crit_edge, label %for.inc.13

for.inc.12.for.end.thread_crit_edge:              ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.13:                                       ; preds = %for.inc.12
  %16 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp2.14 = icmp eq i32 %16, %1
  br i1 %cmp2.14, label %for.inc.13.for.end.thread_crit_edge, label %for.inc.14

for.inc.13.for.end.thread_crit_edge:              ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.14:                                       ; preds = %for.inc.13
  %17 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp2.15 = icmp eq i32 %17, %1
  br i1 %cmp2.15, label %for.inc.14.for.end.thread_crit_edge, label %for.inc.15

for.inc.14.for.end.thread_crit_edge:              ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.15:                                       ; preds = %for.inc.14
  %18 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp2.16 = icmp eq i32 %18, %1
  br i1 %cmp2.16, label %for.inc.15.for.end.thread_crit_edge, label %for.inc.16

for.inc.15.for.end.thread_crit_edge:              ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.16:                                       ; preds = %for.inc.15
  %19 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %1)
  %cmp2.17 = icmp eq i32 %19, %1
  br i1 %cmp2.17, label %for.inc.16.for.end.thread_crit_edge, label %for.inc.17

for.inc.16.for.end.thread_crit_edge:              ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.17:                                       ; preds = %for.inc.16
  %20 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %1)
  %cmp2.18 = icmp eq i32 %20, %1
  br i1 %cmp2.18, label %for.inc.17.for.end.thread_crit_edge, label %for.inc.18

for.inc.17.for.end.thread_crit_edge:              ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.18:                                       ; preds = %for.inc.17
  %21 = load i32, ptr getelementptr inbounds ([20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp2.19 = icmp eq i32 %21, %1
  br i1 %cmp2.19, label %for.inc.18.for.end.thread_crit_edge, label %for.inc.18._crit_edge

for.inc.18._crit_edge:                            ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %22

for.inc.18.for.end.thread_crit_edge:              ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.18.for.end.thread_crit_edge, %for.inc.17.for.end.thread_crit_edge, %for.inc.16.for.end.thread_crit_edge, %for.inc.15.for.end.thread_crit_edge, %for.inc.14.for.end.thread_crit_edge, %for.inc.13.for.end.thread_crit_edge, %for.inc.12.for.end.thread_crit_edge, %for.inc.11.for.end.thread_crit_edge, %for.inc.10.for.end.thread_crit_edge, %for.inc.9.for.end.thread_crit_edge, %for.inc.8.for.end.thread_crit_edge, %for.inc.7.for.end.thread_crit_edge, %for.inc.6.for.end.thread_crit_edge, %for.inc.5.for.end.thread_crit_edge, %for.inc.4.for.end.thread_crit_edge, %for.inc.3.for.end.thread_crit_edge, %for.inc.2.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %k.0.lcssa.ph = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ], [ 2, %for.inc.1.for.end.thread_crit_edge ], [ 3, %for.inc.2.for.end.thread_crit_edge ], [ 4, %for.inc.3.for.end.thread_crit_edge ], [ 5, %for.inc.4.for.end.thread_crit_edge ], [ 6, %for.inc.5.for.end.thread_crit_edge ], [ 7, %for.inc.6.for.end.thread_crit_edge ], [ 8, %for.inc.7.for.end.thread_crit_edge ], [ 9, %for.inc.8.for.end.thread_crit_edge ], [ 10, %for.inc.9.for.end.thread_crit_edge ], [ 11, %for.inc.10.for.end.thread_crit_edge ], [ 12, %for.inc.11.for.end.thread_crit_edge ], [ 13, %for.inc.12.for.end.thread_crit_edge ], [ 14, %for.inc.13.for.end.thread_crit_edge ], [ 15, %for.inc.14.for.end.thread_crit_edge ], [ 16, %for.inc.15.for.end.thread_crit_edge ], [ 17, %for.inc.16.for.end.thread_crit_edge ], [ 18, %for.inc.17.for.end.thread_crit_edge ], [ 19, %for.inc.18.for.end.thread_crit_edge ]
  %arrayidx615 = getelementptr [20 x %struct.pxp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph
  br label %22

22:                                               ; preds = %for.end.thread, %for.inc.18._crit_edge
  %23 = phi ptr [ %arrayidx615, %for.end.thread ], [ null, %for.inc.18._crit_edge ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @pxp_fixup_colorimetry_cap(ptr nocapture noundef readonly %ctx, i32 noundef %dst_fourcc, ptr nocapture noundef writeonly %ycbcr_enc, ptr nocapture noundef writeonly %quantization) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dst_fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %dst_fourcc, label %sw.default.i [
    i32 1096373590, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge
    i32 1482249558, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge43
    i32 1498831189, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge44
    i32 1448695129, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge45
    i32 1498765654, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge46
    i32 1431918169, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge47
    i32 909203022, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge48
    i32 842094158, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge49
    i32 825644622, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge50
    i32 825382478, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge51
    i32 842093913, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge52
    i32 1345466932, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge53
    i32 1497715271, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge54
    i32 540291161, label %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge55
  ]

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge55:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge54:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge53:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge52:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge51:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge50:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge49:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge48:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge47:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge46:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge45:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge44:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge43:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit

pxp_v4l2_pix_fmt_is_yuv.exit:                     ; preds = %sw.default.i, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge43, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge44, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge45, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge46, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge47, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge48, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge49, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge50, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge51, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge52, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge53, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge54, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge55
  %retval.0.i = phi i1 [ false, %sw.default.i ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge43 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge44 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge45 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge46 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge47 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge48 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge49 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge50 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge51 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge52 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge53 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge54 ], [ true, %entry.pxp_v4l2_pix_fmt_is_yuv.exit_crit_edge55 ]
  %fmt = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 9, i32 0, i32 5
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fmt, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %4, label %pxp_v4l2_pix_fmt_is_yuv.exit42 [
    i32 1096373590, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge
    i32 1482249558, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge56
    i32 1498831189, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge57
    i32 1448695129, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge58
    i32 1498765654, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge59
    i32 1431918169, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge60
    i32 909203022, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge61
    i32 842094158, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge62
    i32 825644622, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge63
    i32 825382478, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge64
    i32 842093913, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge65
    i32 1345466932, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge66
    i32 1497715271, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge67
    i32 540291161, label %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge68
  ]

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge68: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge67: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge66: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge65: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge64: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge63: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge62: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge61: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge60: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge59: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge58: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge57: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge56: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm

pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm:          ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge56, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge57, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge58, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge59, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge60, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge61, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge62, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge63, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge64, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge65, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge66, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge67, %pxp_v4l2_pix_fmt_is_yuv.exit.pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm_crit_edge68
  br i1 %retval.0.i, label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.then_crit_edge, label %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.else_crit_edge

pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.else_crit_edge: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.then_crit_edge: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

pxp_v4l2_pix_fmt_is_yuv.exit42:                   ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit
  br i1 %retval.0.i, label %pxp_v4l2_pix_fmt_is_yuv.exit42.if.else_crit_edge, label %pxp_v4l2_pix_fmt_is_yuv.exit42.if.then_crit_edge

pxp_v4l2_pix_fmt_is_yuv.exit42.if.then_crit_edge: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

pxp_v4l2_pix_fmt_is_yuv.exit42.if.else_crit_edge: ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42.if.then_crit_edge, %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.then_crit_edge
  %ycbcr_enc6 = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 9, i32 0, i32 6
  %6 = ptrtoint ptr %ycbcr_enc6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ycbcr_enc6, align 4
  %8 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ycbcr_enc, align 4
  %quant = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 9, i32 0, i32 7
  %9 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quant, align 4
  br label %if.end

if.else:                                          ; preds = %pxp_v4l2_pix_fmt_is_yuv.exit42.if.else_crit_edge, %pxp_v4l2_pix_fmt_is_yuv.exit42.thr_comm.if.else_crit_edge
  %colorspace = getelementptr inbounds %struct.pxp_ctx, ptr %ctx, i32 0, i32 7
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %12, label %cond.false18 [
    i32 3, label %if.else.cond.end23_crit_edge
    i32 12, label %if.else.cond.end23_crit_edge69
    i32 10, label %cond.end23.fold.split
  ]

if.else.cond.end23_crit_edge69:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

if.else.cond.end23_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.false18:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp20 = icmp eq i32 %12, 2
  %cond = select i1 %cmp20, i32 8, i32 1
  br label %cond.end23

cond.end23.fold.split:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end23.fold.split, %cond.false18, %if.else.cond.end23_crit_edge, %if.else.cond.end23_crit_edge69
  %cond24 = phi i32 [ 2, %if.else.cond.end23_crit_edge ], [ %cond, %cond.false18 ], [ 2, %if.else.cond.end23_crit_edge69 ], [ 6, %cond.end23.fold.split ]
  %14 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond24, ptr %ycbcr_enc, align 4
  br i1 %retval.0.i, label %lor.rhs, label %cond.end23.if.end_crit_edge

cond.end23.if.end_crit_edge:                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.rhs:                                          ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp27 = icmp eq i32 %16, 7
  %phi.sel = select i1 %cmp27, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %lor.rhs, %cond.end23.if.end_crit_edge, %if.then
  %storemerge = phi i32 [ %10, %if.then ], [ 1, %cond.end23.if.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %17 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %quantization, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxp_device_run(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #12
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i7 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #12
  %dev1.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %q_data.i.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %q_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_data.i.i, align 4
  %arrayidx4.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %height.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %height10.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 1
  %12 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height10.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 2
  %14 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesperline.i, align 4
  %bytesperline15.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 2
  %16 = ptrtoint ptr %bytesperline15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytesperline15.i, align 4
  %fmt.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 5
  %18 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %fmt20.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 5
  %22 = ptrtoint ptr %fmt20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fmt20.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #12
  %26 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i.i, align 4
  %call.i3.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i7, i32 noundef 0) #12
  %28 = ptrtoint ptr %call.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not.i = icmp eq i32 %29, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i) #15
  br label %pxp_start.exit

if.end.i:                                         ; preds = %entry
  %sequence.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 4
  %30 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence28.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i7, i32 0, i32 4
  %32 = ptrtoint ptr %sequence28.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sequence28.i, align 8
  %sequence29.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 4
  %33 = ptrtoint ptr %sequence29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sequence29.i, align 4
  %inc30.i = add i32 %34, 1
  store i32 %inc30.i, ptr %sequence29.i, align 4
  %sequence31.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %sequence31.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sequence31.i, align 8
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %timestamp.i, align 8
  %timestamp34.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i7, i32 0, i32 5
  %38 = ptrtoint ptr %timestamp34.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %timestamp34.i, align 8
  %flags.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool35.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool35.not.i, label %if.end.i.if.end38.i_crit_edge, label %if.then36.i

if.end.i.if.end38.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %timecode.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i7, i32 0, i32 3
  %timecode37.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %timecode.i, ptr %timecode37.i, i32 16)
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end.i.if.end38.i_crit_edge
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %field.i, align 4
  %field39.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i7, i32 0, i32 2
  %44 = ptrtoint ptr %field39.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %field39.i, align 4
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %and41.i = and i32 %46, 459064
  %flags42.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i7, i32 0, i32 1
  %47 = ptrtoint ptr %flags42.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and41.i, ptr %flags42.i, align 8
  %mode.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 4
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode.i, align 4
  %50 = shl i32 %49, 18
  %or.i = and i32 %50, 786432
  %rotation.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 6
  %51 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rotation.i, align 1
  %conv.i = zext i8 %52 to i32
  %shl56.i = shl nuw nsw i32 %conv.i, 16
  %and57.i = and i32 %shl56.i, 196608
  %or58.i = or i32 %and57.i, %or.i
  %alpha_component.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 5
  %53 = ptrtoint ptr %alpha_component.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %alpha_component.i, align 4
  %conv59.i = zext i8 %54 to i32
  %shl60.i = shl nuw i32 %conv59.i, 24
  %55 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %25, label %sw.bb10.i.i [
    i32 875713112, label %if.end38.i.pxp_v4l2_pix_fmt_to_out_format.exit.i_crit_edge
    i32 875713089, label %sw.bb1.i.i
    i32 861030210, label %sw.bb2.i.i
    i32 1329743698, label %sw.bb3.i.i
    i32 875836498, label %sw.bb4.i.i
    i32 1346520914, label %sw.bb5.i.i
    i32 1096373590, label %if.end38.i.sw.bb6.i.i_crit_edge
    i32 1482249558, label %if.end38.i.sw.bb6.i.i_crit_edge8
    i32 1498831189, label %sw.bb7.i.i
    i32 1498765654, label %sw.bb8.i.i
    i32 1497715271, label %sw.bb9.i.i
    i32 825382478, label %sw.bb14.i.i
    i32 909203022, label %sw.bb11.i.i
    i32 842094158, label %sw.bb12.i.i
    i32 825644622, label %sw.bb13.i.i
  ]

if.end38.i.sw.bb6.i.i_crit_edge8:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.i.i

if.end38.i.sw.bb6.i.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.i.i

if.end38.i.pxp_v4l2_pix_fmt_to_out_format.exit.i_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb1.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb2.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb3.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb4.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb5.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb6.i.i:                                       ; preds = %if.end38.i.sw.bb6.i.i_crit_edge, %if.end38.i.sw.bb6.i.i_crit_edge8
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb7.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb8.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb9.i.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb10.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb11.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb12.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb13.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

sw.bb14.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_out_format.exit.i

pxp_v4l2_pix_fmt_to_out_format.exit.i:            ; preds = %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end38.i.pxp_v4l2_pix_fmt_to_out_format.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 21, %sw.bb10.i.i ], [ 26, %sw.bb13.i.i ], [ 25, %sw.bb12.i.i ], [ 24, %sw.bb11.i.i ], [ 27, %sw.bb14.i.i ], [ 20, %sw.bb9.i.i ], [ 19, %sw.bb8.i.i ], [ 18, %sw.bb7.i.i ], [ 16, %sw.bb6.i.i ], [ 14, %sw.bb5.i.i ], [ 13, %sw.bb4.i.i ], [ 12, %sw.bb3.i.i ], [ 5, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 4, %if.end38.i.pxp_v4l2_pix_fmt_to_out_format.exit.i_crit_edge ]
  %or62.i = or i32 %retval.0.i.i, %shl60.i
  %or64.i = or i32 %or62.i, 8388608
  %56 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %52, label %pxp_v4l2_pix_fmt_to_out_format.exit.i.if.end77.i_crit_edge [
    i8 1, label %pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge
    i8 3, label %pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge9
  ]

pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge9: ; preds = %pxp_v4l2_pix_fmt_to_out_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge: ; preds = %pxp_v4l2_pix_fmt_to_out_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74.i

pxp_v4l2_pix_fmt_to_out_format.exit.i.if.end77.i_crit_edge: ; preds = %pxp_v4l2_pix_fmt_to_out_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

do.body74.i:                                      ; preds = %pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge, %pxp_v4l2_pix_fmt_to_out_format.exit.i.do.body74.i_crit_edge9
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.body74.i, %pxp_v4l2_pix_fmt_to_out_format.exit.i.if.end77.i_crit_edge
  %dst_width.0.i = phi i32 [ %13, %do.body74.i ], [ %9, %pxp_v4l2_pix_fmt_to_out_format.exit.i.if.end77.i_crit_edge ]
  %dst_height.0.i = phi i32 [ %9, %do.body74.i ], [ %13, %pxp_v4l2_pix_fmt_to_out_format.exit.i.if.end77.i_crit_edge ]
  %57 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %25, label %if.end77.i.sw.epilog.i_crit_edge [
    i32 842094158, label %if.end77.i.sw.bb.i_crit_edge
    i32 825382478, label %if.end77.i.sw.bb.i_crit_edge10
    i32 909203022, label %if.end77.i.sw.bb.i_crit_edge11
    i32 825644622, label %if.end77.i.sw.bb.i_crit_edge12
  ]

if.end77.i.sw.bb.i_crit_edge12:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end77.i.sw.bb.i_crit_edge11:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end77.i.sw.bb.i_crit_edge10:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end77.i.sw.bb.i_crit_edge:                     ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end77.i.sw.epilog.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end77.i.sw.bb.i_crit_edge, %if.end77.i.sw.bb.i_crit_edge10, %if.end77.i.sw.bb.i_crit_edge11, %if.end77.i.sw.bb.i_crit_edge12
  %mul.i = mul i32 %dst_height.0.i, %17
  %add.i = add i32 %mul.i, %29
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end77.i.sw.epilog.i_crit_edge
  %out_buf2.0.i = phi i32 [ %add.i, %sw.bb.i ], [ 0, %if.end77.i.sw.epilog.i_crit_edge ]
  %and79.i = and i32 %17, 65535
  %sub.i = add i32 %dst_width.0.i, -1
  %shl80.i = shl i32 %sub.i, 16
  %and81.i = and i32 %shl80.i, 1073676288
  %sub82.i = add i32 %dst_height.0.i, -1
  %and84.i = and i32 %sub82.i, 16383
  %or85.i = or i32 %and81.i, %and84.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %dst_width.0.i)
  %cmp93.not.i = icmp ugt i32 %7, %dst_width.0.i
  br i1 %cmp93.not.i, label %cond.false104.i, label %sw.epilog.i.cond.end109.i_crit_edge

sw.epilog.i.cond.end109.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end109.i

cond.false104.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %7, %dst_width.0.i
  %58 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #12, !range !230
  %sub.i.op.i.i = xor i32 %58, 31
  br label %cond.end109.i

cond.end109.i:                                    ; preds = %cond.false104.i, %sw.epilog.i.cond.end109.i_crit_edge
  %cond110.i = phi i32 [ 0, %sw.epilog.i.cond.end109.i_crit_edge ], [ %sub.i.op.i.i, %cond.false104.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %dst_height.0.i)
  %cmp111.not.i = icmp ugt i32 %11, %dst_height.0.i
  br i1 %cmp111.not.i, label %cond.false128.i, label %cond.end109.i.cond.end133.i_crit_edge

cond.end109.i.cond.end133.i_crit_edge:            ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end133.i

cond.false128.i:                                  ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  %div115.i = udiv i32 %11, %dst_height.0.i
  %59 = tail call i32 @llvm.ctlz.i32(i32 %div115.i, i1 true) #12, !range !230
  %sub.i.op.i7.i = xor i32 %59, 31
  br label %cond.end133.i

cond.end133.i:                                    ; preds = %cond.false128.i, %cond.end109.i.cond.end133.i_crit_edge
  %cond134.i = phi i32 [ 0, %cond.end109.i.cond.end133.i_crit_edge ], [ %sub.i.op.i7.i, %cond.false128.i ]
  %shl135.i = shl nsw i32 %cond110.i, 10
  %and136.i = and i32 %shl135.i, 3072
  %shl137.i = shl nsw i32 %cond134.i, 8
  %and138.i = and i32 %shl137.i, 768
  %or139.i = or i32 %and138.i, %and136.i
  %60 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %21, label %pxp_v4l2_pix_fmt_to_ps_format.exit.i [
    i32 875713112, label %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i_crit_edge
    i32 1329743698, label %sw.bb1.i9.i
    i32 875836498, label %sw.bb2.i10.i
    i32 1346520914, label %sw.bb3.i11.i
    i32 1482249558, label %sw.bb4.i12.i
    i32 1498831189, label %sw.bb5.i13.i
    i32 1448695129, label %sw.bb6.i14.i
    i32 1498765654, label %sw.bb7.i15.i
    i32 1431918169, label %sw.bb8.i16.i
    i32 1497715271, label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i
    i32 842093913, label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i
    i32 909203022, label %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i_crit_edge
    i32 842094158, label %sw.bb12.i20.i
    i32 825382478, label %sw.bb13.i21.i
    i32 825644622, label %sw.bb14.i22.i
    i32 1345466932, label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i
  ]

cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i_crit_edge: ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i

cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i_crit_edge: ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb1.i9.i:                                      ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb2.i10.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb3.i11.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb4.i12.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb5.i13.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb6.i14.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb7.i15.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

sw.bb8.i16.i:                                     ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i

pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i:    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  %or14151.i = or i32 %or139.i, 20
  br label %sw.epilog155.i

sw.bb12.i20.i:                                    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i

sw.bb13.i21.i:                                    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i

sw.bb14.i22.i:                                    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i

pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i:    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  %or14145.i = or i32 %or139.i, 30
  %mul14246.i = mul i32 %15, %11
  %add148.i = add i32 %27, %mul14246.i
  %div1491.i = lshr i32 %mul14246.i, 1
  %add150.i = add i32 %add148.i, %div1491.i
  br label %sw.epilog155.i

pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i:    ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  %or14139.i = or i32 %or139.i, 31
  %mul14240.i = mul i32 %15, %11
  %add144.i = add i32 %27, %mul14240.i
  %div1452.i = lshr i32 %mul14240.i, 2
  %add146.i = add i32 %add144.i, %div1452.i
  br label %sw.epilog155.i

pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i:      ; preds = %sw.bb8.i16.i, %sw.bb7.i15.i, %sw.bb6.i14.i, %sw.bb5.i13.i, %sw.bb4.i12.i, %sw.bb3.i11.i, %sw.bb2.i10.i, %sw.bb1.i9.i, %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i_crit_edge
  %retval.0.i23.ph.i = phi i32 [ 4, %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i_crit_edge ], [ 12, %sw.bb1.i9.i ], [ 13, %sw.bb2.i10.i ], [ 14, %sw.bb3.i11.i ], [ 16, %sw.bb4.i12.i ], [ 18, %sw.bb5.i13.i ], [ 82, %sw.bb6.i14.i ], [ 19, %sw.bb7.i15.i ], [ 83, %sw.bb8.i16.i ]
  %or14125.i = or i32 %retval.0.i23.ph.i, %or139.i
  br label %sw.default154.i

pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i:    ; preds = %sw.bb14.i22.i, %sw.bb13.i21.i, %sw.bb12.i20.i, %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i_crit_edge
  %retval.0.i23.ph30.i = phi i32 [ 25, %sw.bb12.i20.i ], [ 27, %sw.bb13.i21.i ], [ 26, %sw.bb14.i22.i ], [ 24, %cond.end133.i.pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i_crit_edge ]
  %or14133.i = or i32 %retval.0.i23.ph30.i, %or139.i
  %mul14234.i = mul i32 %15, %11
  %add152.i = add i32 %27, %mul14234.i
  br label %sw.epilog155.i

pxp_v4l2_pix_fmt_to_ps_format.exit.i:             ; preds = %cond.end133.i
  %or141.i = or i32 %or139.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 540291161, i32 %21)
  %cond.i = icmp eq i32 %21, 540291161
  br i1 %cond.i, label %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge, label %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.default154.i_crit_edge

pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.default154.i_crit_edge: ; preds = %pxp_v4l2_pix_fmt_to_ps_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default154.i

pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge: ; preds = %pxp_v4l2_pix_fmt_to_ps_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog155.i

sw.default154.i:                                  ; preds = %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.default154.i_crit_edge, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i
  %or14128.i = phi i32 [ %or14125.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread.i ], [ %or141.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.default154.i_crit_edge ]
  br label %sw.epilog155.i

sw.epilog155.i:                                   ; preds = %sw.default154.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i
  %or14127.i = phi i32 [ %or14128.i, %sw.default154.i ], [ %or14133.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i ], [ %or14145.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i ], [ %or14139.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i ], [ %or141.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge ], [ %or14151.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i ]
  %ps_ubuf.0.i = phi i32 [ 0, %sw.default154.i ], [ %add152.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i ], [ %add148.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i ], [ %add144.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i ], [ 0, %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge ], [ 0, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i ]
  %ps_vbuf.0.i = phi i32 [ 0, %sw.default154.i ], [ 0, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread31.i ], [ %add150.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread43.i ], [ %add146.i, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread37.i ], [ 32896, %pxp_v4l2_pix_fmt_to_ps_format.exit.i.sw.epilog155.i_crit_edge ], [ 32896, %pxp_v4l2_pix_fmt_to_ps_format.exit.thread49.i ]
  %and157.i = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond110.i)
  %tobool158.not.i = icmp eq i32 %cond110.i, 0
  br i1 %tobool158.not.i, label %if.else.i, label %if.then159.i

if.then159.i:                                     ; preds = %sw.epilog155.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %7, %cond110.i
  %mul160.i = shl i32 %shr.i, 12
  %div161.i = udiv i32 %mul160.i, %dst_width.0.i
  br label %if.end173.i

if.else.i:                                        ; preds = %sw.epilog155.i
  %61 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %21, label %sw.default167.i [
    i32 1498831189, label %if.else.i.sw.bb162.i_crit_edge
    i32 1448695129, label %if.else.i.sw.bb162.i_crit_edge13
    i32 1498765654, label %if.else.i.sw.bb162.i_crit_edge14
    i32 1431918169, label %if.else.i.sw.bb162.i_crit_edge15
    i32 909203022, label %if.else.i.sw.bb162.i_crit_edge16
    i32 842094158, label %if.else.i.sw.bb162.i_crit_edge17
    i32 825382478, label %if.else.i.sw.bb162.i_crit_edge18
    i32 825644622, label %if.else.i.sw.bb162.i_crit_edge19
    i32 1345466932, label %if.else.i.sw.bb162.i_crit_edge20
    i32 842093913, label %if.else.i.sw.bb162.i_crit_edge21
  ]

if.else.i.sw.bb162.i_crit_edge21:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge20:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge19:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge18:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge17:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge16:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge15:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge14:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge13:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

if.else.i.sw.bb162.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162.i

sw.bb162.i:                                       ; preds = %if.else.i.sw.bb162.i_crit_edge, %if.else.i.sw.bb162.i_crit_edge13, %if.else.i.sw.bb162.i_crit_edge14, %if.else.i.sw.bb162.i_crit_edge15, %if.else.i.sw.bb162.i_crit_edge16, %if.else.i.sw.bb162.i_crit_edge17, %if.else.i.sw.bb162.i_crit_edge18, %if.else.i.sw.bb162.i_crit_edge19, %if.else.i.sw.bb162.i_crit_edge20, %if.else.i.sw.bb162.i_crit_edge21
  %sub163.i = shl i32 %7, 12
  %mul164.i = add i32 %sub163.i, -8192
  %div166.i = udiv i32 %mul164.i, %sub.i
  br label %if.end173.i

sw.default167.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub168.i = shl i32 %7, 12
  %mul169.i = add i32 %sub168.i, -4096
  %div171.i = udiv i32 %mul169.i, %sub.i
  br label %if.end173.i

if.end173.i:                                      ; preds = %sw.default167.i, %sw.bb162.i, %if.then159.i
  %xscale.0.i = phi i32 [ %div161.i, %if.then159.i ], [ %div171.i, %sw.default167.i ], [ %div166.i, %sw.bb162.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond134.i)
  %tobool174.not.i = icmp eq i32 %cond134.i, 0
  br i1 %tobool174.not.i, label %if.else179.i, label %if.then175.i

if.then175.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr176.i = lshr i32 %11, %cond134.i
  %mul177.i = shl i32 %shr176.i, 12
  %div178.i = udiv i32 %mul177.i, %dst_height.0.i
  br label %if.end184.i

if.else179.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub180.i = shl i32 %11, 12
  %mul181.i = add i32 %sub180.i, -4096
  %div183.i = udiv i32 %mul181.i, %sub82.i
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else179.i, %if.then175.i
  %yscale.0.i = phi i32 [ %div178.i, %if.then175.i ], [ %div183.i, %if.else179.i ]
  %shl185.i = shl i32 %yscale.0.i, 16
  %and186.i = and i32 %shl185.i, 2147418112
  %and188.i = and i32 %xscale.0.i, 32767
  %or189.i = or i32 %and186.i, %and188.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr inbounds %struct.pxp_dev, ptr %5, i32 0, i32 3
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %or58.i) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %64 = tail call i32 @llvm.bswap.i32(i32 %or64.i) #12
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 4
  %add.ptr197.i = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197.i, i32 %64) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %67 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr202.i = getelementptr i8, ptr %69, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202.i, i32 %67) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  tail call void @arm_heavy_mb() #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %out_buf2.0.i) #12
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 4
  %add.ptr207.i = getelementptr i8, ptr %72, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i, i32 %70) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %and79.i) #12
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr212.i = getelementptr i8, ptr %75, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212.i, i32 %73) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @arm_heavy_mb() #12
  %76 = tail call i32 @llvm.bswap.i32(i32 %or85.i) #12
  %77 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i, align 4
  %add.ptr217.i = getelementptr i8, ptr %78, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217.i, i32 %76) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i, align 4
  %add.ptr222.i = getelementptr i8, ptr %80, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.i, i32 0) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  %add.ptr227.i = getelementptr i8, ptr %82, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227.i, i32 %76) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %83 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i, align 4
  %add.ptr232.i = getelementptr i8, ptr %84, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232.i, i32 16777472) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i, align 4
  %add.ptr237.i = getelementptr i8, ptr %86, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237.i, i32 0) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %87 = tail call i32 @llvm.bswap.i32(i32 %or14127.i) #12
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  %add.ptr242.i = getelementptr i8, ptr %89, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242.i, i32 %87) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void @arm_heavy_mb() #12
  %90 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %91 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i, align 4
  %add.ptr247.i = getelementptr i8, ptr %92, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247.i, i32 %90) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %93 = tail call i32 @llvm.bswap.i32(i32 %ps_ubuf.0.i) #12
  %94 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i, align 4
  %add.ptr252.i = getelementptr i8, ptr %95, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i, i32 %93) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void @arm_heavy_mb() #12
  %96 = tail call i32 @llvm.bswap.i32(i32 %ps_vbuf.0.i) #12
  %97 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i, align 4
  %add.ptr257.i = getelementptr i8, ptr %98, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257.i, i32 %96) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %99 = tail call i32 @llvm.bswap.i32(i32 %and157.i) #12
  %100 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %101, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262.i, i32 %99) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i, align 4
  %add.ptr267.i = getelementptr i8, ptr %103, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267.i, i32 -256) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %104 = tail call i32 @llvm.bswap.i32(i32 %or189.i) #12
  %105 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i, align 4
  %add.ptr272.i = getelementptr i8, ptr %106, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272.i, i32 %104) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i, align 4
  %add.ptr277.i = getelementptr i8, ptr %108, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277.i, i32 0) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i, align 4
  %add.ptr282.i = getelementptr i8, ptr %110, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282.i, i32 -256) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  %111 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i, align 4
  %add.ptr287.i = getelementptr i8, ptr %112, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.i, i32 0) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  tail call void @arm_heavy_mb() #12
  %113 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio.i, align 4
  %add.ptr292.i = getelementptr i8, ptr %114, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292.i, i32 -256) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  tail call void @arm_heavy_mb() #12
  %115 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio.i, align 4
  %add.ptr297.i = getelementptr i8, ptr %116, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr297.i, i32 0) #12, !srcloc !213
  %117 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev1.i, align 4
  %119 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fmt.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %122, label %if.end184.i.do.body51.i.i_crit_edge [
    i32 1096373590, label %if.end184.i.land.lhs.true.i.i_crit_edge
    i32 1482249558, label %if.end184.i.land.lhs.true.i.i_crit_edge22
    i32 1498831189, label %if.end184.i.land.lhs.true.i.i_crit_edge23
    i32 1448695129, label %if.end184.i.land.lhs.true.i.i_crit_edge24
    i32 1498765654, label %if.end184.i.land.lhs.true.i.i_crit_edge25
    i32 1431918169, label %if.end184.i.land.lhs.true.i.i_crit_edge26
    i32 909203022, label %if.end184.i.land.lhs.true.i.i_crit_edge27
    i32 842094158, label %if.end184.i.land.lhs.true.i.i_crit_edge28
    i32 825644622, label %if.end184.i.land.lhs.true.i.i_crit_edge29
    i32 825382478, label %if.end184.i.land.lhs.true.i.i_crit_edge30
    i32 842093913, label %if.end184.i.land.lhs.true.i.i_crit_edge31
    i32 1345466932, label %if.end184.i.land.lhs.true.i.i_crit_edge32
    i32 1497715271, label %if.end184.i.land.lhs.true.i.i_crit_edge33
    i32 540291161, label %if.end184.i.land.lhs.true.i.i_crit_edge34
  ]

if.end184.i.land.lhs.true.i.i_crit_edge34:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge33:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge32:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge31:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge30:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge29:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge28:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge27:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge26:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge25:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge24:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge23:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge22:        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.end184.i.do.body51.i.i_crit_edge:              ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i:                                ; preds = %if.end184.i.land.lhs.true.i.i_crit_edge, %if.end184.i.land.lhs.true.i.i_crit_edge22, %if.end184.i.land.lhs.true.i.i_crit_edge23, %if.end184.i.land.lhs.true.i.i_crit_edge24, %if.end184.i.land.lhs.true.i.i_crit_edge25, %if.end184.i.land.lhs.true.i.i_crit_edge26, %if.end184.i.land.lhs.true.i.i_crit_edge27, %if.end184.i.land.lhs.true.i.i_crit_edge28, %if.end184.i.land.lhs.true.i.i_crit_edge29, %if.end184.i.land.lhs.true.i.i_crit_edge30, %if.end184.i.land.lhs.true.i.i_crit_edge31, %if.end184.i.land.lhs.true.i.i_crit_edge32, %if.end184.i.land.lhs.true.i.i_crit_edge33, %if.end184.i.land.lhs.true.i.i_crit_edge34
  %124 = ptrtoint ptr %fmt20.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fmt20.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %127, label %if.then.i.i [
    i32 1096373590, label %land.lhs.true.i.i.do.body51.i.i_crit_edge
    i32 1482249558, label %land.lhs.true.i.i.do.body51.i.i_crit_edge35
    i32 1498831189, label %land.lhs.true.i.i.do.body51.i.i_crit_edge36
    i32 1448695129, label %land.lhs.true.i.i.do.body51.i.i_crit_edge37
    i32 1498765654, label %land.lhs.true.i.i.do.body51.i.i_crit_edge38
    i32 1431918169, label %land.lhs.true.i.i.do.body51.i.i_crit_edge39
    i32 909203022, label %land.lhs.true.i.i.do.body51.i.i_crit_edge40
    i32 842094158, label %land.lhs.true.i.i.do.body51.i.i_crit_edge41
    i32 825644622, label %land.lhs.true.i.i.do.body51.i.i_crit_edge42
    i32 825382478, label %land.lhs.true.i.i.do.body51.i.i_crit_edge43
    i32 842093913, label %land.lhs.true.i.i.do.body51.i.i_crit_edge44
    i32 1345466932, label %land.lhs.true.i.i.do.body51.i.i_crit_edge45
    i32 1497715271, label %land.lhs.true.i.i.do.body51.i.i_crit_edge46
    i32 540291161, label %land.lhs.true.i.i.do.body51.i.i_crit_edge47
  ]

land.lhs.true.i.i.do.body51.i.i_crit_edge47:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge46:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge45:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge44:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge43:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge42:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge41:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge40:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge39:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge38:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge37:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge36:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge35:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

land.lhs.true.i.i.do.body51.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %ycbcr_enc9.i.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 6
  %129 = ptrtoint ptr %ycbcr_enc9.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ycbcr_enc9.i.i, align 4
  %quant.i.i = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 0, i32 7
  %131 = ptrtoint ptr %quant.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %quant.i.i, align 4
  %133 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %130, label %if.else29.i.i [
    i32 1, label %if.then12.i.i
    i32 2, label %if.then17.i.i
    i32 6, label %if.then24.i.i
  ]

if.then12.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp13.i.i = icmp eq i32 %132, 1
  %pxp_setup_csc.csc1_coef_bt601_full.pxp_setup_csc.csc1_coef_bt601_lim.i.i = select i1 %cmp13.i.i, ptr @pxp_setup_csc.csc1_coef_bt601_full, ptr @pxp_setup_csc.csc1_coef_bt601_lim
  br label %do.body.i.i

if.then17.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp18.i.i = icmp eq i32 %132, 1
  %pxp_setup_csc.csc1_coef_rec709_full.pxp_setup_csc.csc1_coef_rec709_lim.i.i = select i1 %cmp18.i.i, ptr @pxp_setup_csc.csc1_coef_rec709_full, ptr @pxp_setup_csc.csc1_coef_rec709_lim
  br label %do.body.i.i

if.then24.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp25.i.i = icmp eq i32 %132, 1
  %pxp_setup_csc.csc1_coef_bt2020_full.pxp_setup_csc.csc1_coef_bt2020_lim.i.i = select i1 %cmp25.i.i, ptr @pxp_setup_csc.csc1_coef_bt2020_full, ptr @pxp_setup_csc.csc1_coef_bt2020_lim
  br label %do.body.i.i

if.else29.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp30.i.i = icmp eq i32 %132, 1
  %pxp_setup_csc.csc1_coef_smpte240m_full.pxp_setup_csc.csc1_coef_smpte240m_lim.i.i = select i1 %cmp30.i.i, ptr @pxp_setup_csc.csc1_coef_smpte240m_full, ptr @pxp_setup_csc.csc1_coef_smpte240m_lim
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else29.i.i, %if.then24.i.i, %if.then17.i.i, %if.then12.i.i
  %csc1_coef.0.i.i = phi ptr [ %pxp_setup_csc.csc1_coef_bt601_full.pxp_setup_csc.csc1_coef_bt601_lim.i.i, %if.then12.i.i ], [ %pxp_setup_csc.csc1_coef_rec709_full.pxp_setup_csc.csc1_coef_rec709_lim.i.i, %if.then17.i.i ], [ %pxp_setup_csc.csc1_coef_bt2020_full.pxp_setup_csc.csc1_coef_bt2020_lim.i.i, %if.then24.i.i ], [ %pxp_setup_csc.csc1_coef_smpte240m_full.pxp_setup_csc.csc1_coef_smpte240m_lim.i.i, %if.else29.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  tail call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %csc1_coef.0.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %csc1_coef.0.i.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #12
  %mmio.i.i = getelementptr inbounds %struct.pxp_dev, ptr %118, i32 0, i32 3
  %137 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %138, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %136) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %arrayidx41.i.i = getelementptr i32, ptr %csc1_coef.0.i.i, i32 1
  %139 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx41.i.i, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #12
  %142 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %143, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %141) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  tail call void @arm_heavy_mb() #12
  %arrayidx47.i.i = getelementptr i32, ptr %csc1_coef.0.i.i, i32 2
  %144 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx47.i.i, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #12
  %147 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr49.i.i = getelementptr i8, ptr %148, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i.i, i32 %146) #12, !srcloc !213
  br label %if.end56.i.i

do.body51.i.i:                                    ; preds = %land.lhs.true.i.i.do.body51.i.i_crit_edge, %land.lhs.true.i.i.do.body51.i.i_crit_edge35, %land.lhs.true.i.i.do.body51.i.i_crit_edge36, %land.lhs.true.i.i.do.body51.i.i_crit_edge37, %land.lhs.true.i.i.do.body51.i.i_crit_edge38, %land.lhs.true.i.i.do.body51.i.i_crit_edge39, %land.lhs.true.i.i.do.body51.i.i_crit_edge40, %land.lhs.true.i.i.do.body51.i.i_crit_edge41, %land.lhs.true.i.i.do.body51.i.i_crit_edge42, %land.lhs.true.i.i.do.body51.i.i_crit_edge43, %land.lhs.true.i.i.do.body51.i.i_crit_edge44, %land.lhs.true.i.i.do.body51.i.i_crit_edge45, %land.lhs.true.i.i.do.body51.i.i_crit_edge46, %land.lhs.true.i.i.do.body51.i.i_crit_edge47, %if.end184.i.do.body51.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @arm_heavy_mb() #12
  %mmio54.i.i = getelementptr inbounds %struct.pxp_dev, ptr %118, i32 0, i32 3
  %149 = ptrtoint ptr %mmio54.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio54.i.i, align 4
  %add.ptr55.i.i = getelementptr i8, ptr %150, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i.i, i32 64) #12, !srcloc !213
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %do.body51.i.i, %do.body.i.i
  %151 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fmt.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %154, label %land.lhs.true62.i.i [
    i32 1096373590, label %if.end56.i.i.do.body149.i.i_crit_edge
    i32 1482249558, label %if.end56.i.i.do.body149.i.i_crit_edge48
    i32 1498831189, label %if.end56.i.i.do.body149.i.i_crit_edge49
    i32 1448695129, label %if.end56.i.i.do.body149.i.i_crit_edge50
    i32 1498765654, label %if.end56.i.i.do.body149.i.i_crit_edge51
    i32 1431918169, label %if.end56.i.i.do.body149.i.i_crit_edge52
    i32 909203022, label %if.end56.i.i.do.body149.i.i_crit_edge53
    i32 842094158, label %if.end56.i.i.do.body149.i.i_crit_edge54
    i32 825644622, label %if.end56.i.i.do.body149.i.i_crit_edge55
    i32 825382478, label %if.end56.i.i.do.body149.i.i_crit_edge56
    i32 842093913, label %if.end56.i.i.do.body149.i.i_crit_edge57
    i32 1345466932, label %if.end56.i.i.do.body149.i.i_crit_edge58
    i32 1497715271, label %if.end56.i.i.do.body149.i.i_crit_edge59
    i32 540291161, label %if.end56.i.i.do.body149.i.i_crit_edge60
  ]

if.end56.i.i.do.body149.i.i_crit_edge60:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge59:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge58:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge57:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge56:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge55:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge54:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge53:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge52:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge51:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge50:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge49:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge48:          ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.end56.i.i.do.body149.i.i_crit_edge:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

land.lhs.true62.i.i:                              ; preds = %if.end56.i.i
  %156 = ptrtoint ptr %fmt20.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fmt20.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %159, label %land.lhs.true62.i.i.do.body149.i.i_crit_edge [
    i32 1096373590, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge
    i32 1482249558, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge61
    i32 1498831189, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge62
    i32 1448695129, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge63
    i32 1498765654, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge64
    i32 1431918169, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge65
    i32 909203022, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge66
    i32 842094158, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge67
    i32 825644622, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge68
    i32 825382478, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge69
    i32 842093913, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge70
    i32 1345466932, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge71
    i32 1497715271, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge72
    i32 540291161, label %land.lhs.true62.i.i.if.then68.i.i_crit_edge73
  ]

land.lhs.true62.i.i.if.then68.i.i_crit_edge73:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge72:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge71:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge70:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge69:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge68:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge67:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge66:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge65:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge64:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge63:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge62:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge61:    ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.if.then68.i.i_crit_edge:      ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68.i.i

land.lhs.true62.i.i.do.body149.i.i_crit_edge:     ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149.i.i

if.then68.i.i:                                    ; preds = %land.lhs.true62.i.i.if.then68.i.i_crit_edge, %land.lhs.true62.i.i.if.then68.i.i_crit_edge61, %land.lhs.true62.i.i.if.then68.i.i_crit_edge62, %land.lhs.true62.i.i.if.then68.i.i_crit_edge63, %land.lhs.true62.i.i.if.then68.i.i_crit_edge64, %land.lhs.true62.i.i.if.then68.i.i_crit_edge65, %land.lhs.true62.i.i.if.then68.i.i_crit_edge66, %land.lhs.true62.i.i.if.then68.i.i_crit_edge67, %land.lhs.true62.i.i.if.then68.i.i_crit_edge68, %land.lhs.true62.i.i.if.then68.i.i_crit_edge69, %land.lhs.true62.i.i.if.then68.i.i_crit_edge70, %land.lhs.true62.i.i.if.then68.i.i_crit_edge71, %land.lhs.true62.i.i.if.then68.i.i_crit_edge72, %land.lhs.true62.i.i.if.then68.i.i_crit_edge73
  %ycbcr_enc71.i.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 6
  %161 = ptrtoint ptr %ycbcr_enc71.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ycbcr_enc71.i.i, align 4
  %quant74.i.i = getelementptr %struct.pxp_ctx, ptr %priv, i32 0, i32 9, i32 1, i32 7
  %163 = ptrtoint ptr %quant74.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %quant74.i.i, align 4
  %165 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %162, label %if.else95.i.i [
    i32 1, label %if.then76.i.i
    i32 2, label %if.then83.i.i
    i32 6, label %if.then90.i.i
  ]

if.then76.i.i:                                    ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp77.i.i = icmp eq i32 %164, 1
  %pxp_setup_csc.csc2_coef_bt601_full.pxp_setup_csc.csc2_coef_bt601_lim.i.i = select i1 %cmp77.i.i, ptr @pxp_setup_csc.csc2_coef_bt601_full, ptr @pxp_setup_csc.csc2_coef_bt601_lim
  br label %if.end102.i.i

if.then83.i.i:                                    ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp84.i.i = icmp eq i32 %164, 1
  %pxp_setup_csc.csc2_coef_rec709_full.pxp_setup_csc.csc2_coef_rec709_lim.i.i = select i1 %cmp84.i.i, ptr @pxp_setup_csc.csc2_coef_rec709_full, ptr @pxp_setup_csc.csc2_coef_rec709_lim
  br label %if.end102.i.i

if.then90.i.i:                                    ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp91.i.i = icmp eq i32 %164, 1
  %pxp_setup_csc.csc2_coef_bt2020_full.pxp_setup_csc.csc2_coef_bt2020_lim.i.i = select i1 %cmp91.i.i, ptr @pxp_setup_csc.csc2_coef_bt2020_full, ptr @pxp_setup_csc.csc2_coef_bt2020_lim
  br label %if.end102.i.i

if.else95.i.i:                                    ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp96.i.i = icmp eq i32 %164, 1
  %pxp_setup_csc.csc2_coef_smpte240m_full.pxp_setup_csc.csc2_coef_smpte240m_lim.i.i = select i1 %cmp96.i.i, ptr @pxp_setup_csc.csc2_coef_smpte240m_full, ptr @pxp_setup_csc.csc2_coef_smpte240m_lim
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.else95.i.i, %if.then90.i.i, %if.then83.i.i, %if.then76.i.i
  %csc2_coef.0.i.i = phi ptr [ %pxp_setup_csc.csc2_coef_bt601_full.pxp_setup_csc.csc2_coef_bt601_lim.i.i, %if.then76.i.i ], [ %pxp_setup_csc.csc2_coef_rec709_full.pxp_setup_csc.csc2_coef_rec709_lim.i.i, %if.then83.i.i ], [ %pxp_setup_csc.csc2_coef_bt2020_full.pxp_setup_csc.csc2_coef_bt2020_lim.i.i, %if.then90.i.i ], [ %pxp_setup_csc.csc2_coef_smpte240m_full.pxp_setup_csc.csc2_coef_smpte240m_lim.i.i, %if.else95.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp103.i.i = icmp eq i32 %164, 1
  %..i.i = select i1 %cmp103.i.i, i32 67108864, i32 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  tail call void @arm_heavy_mb() #12
  %mmio110.i.i = getelementptr inbounds %struct.pxp_dev, ptr %118, i32 0, i32 3
  %166 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr111.i.i = getelementptr i8, ptr %167, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i.i, i32 %..i.i) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  %168 = ptrtoint ptr %csc2_coef.0.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %csc2_coef.0.i.i, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #12
  %171 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr117.i.i = getelementptr i8, ptr %172, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i.i, i32 %170) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %arrayidx121.i.i = getelementptr i32, ptr %csc2_coef.0.i.i, i32 1
  %173 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx121.i.i, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #12
  %176 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr123.i.i = getelementptr i8, ptr %177, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123.i.i, i32 %175) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  tail call void @arm_heavy_mb() #12
  %arrayidx127.i.i = getelementptr i32, ptr %csc2_coef.0.i.i, i32 2
  %178 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx127.i.i, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #12
  %181 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr129.i.i = getelementptr i8, ptr %182, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i.i, i32 %180) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %arrayidx133.i.i = getelementptr i32, ptr %csc2_coef.0.i.i, i32 3
  %183 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx133.i.i, align 4
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #12
  %186 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr135.i.i = getelementptr i8, ptr %187, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i.i, i32 %185) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @arm_heavy_mb() #12
  %arrayidx139.i.i = getelementptr i32, ptr %csc2_coef.0.i.i, i32 4
  %188 = ptrtoint ptr %arrayidx139.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx139.i.i, align 4
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #12
  %191 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr141.i.i = getelementptr i8, ptr %192, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141.i.i, i32 %190) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %arrayidx145.i.i = getelementptr i32, ptr %csc2_coef.0.i.i, i32 5
  %193 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx145.i.i, align 4
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #12
  %196 = ptrtoint ptr %mmio110.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio110.i.i, align 4
  %add.ptr147.i.i = getelementptr i8, ptr %197, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.i.i, i32 %195) #12, !srcloc !213
  br label %pxp_setup_csc.exit.i

do.body149.i.i:                                   ; preds = %land.lhs.true62.i.i.do.body149.i.i_crit_edge, %if.end56.i.i.do.body149.i.i_crit_edge, %if.end56.i.i.do.body149.i.i_crit_edge48, %if.end56.i.i.do.body149.i.i_crit_edge49, %if.end56.i.i.do.body149.i.i_crit_edge50, %if.end56.i.i.do.body149.i.i_crit_edge51, %if.end56.i.i.do.body149.i.i_crit_edge52, %if.end56.i.i.do.body149.i.i_crit_edge53, %if.end56.i.i.do.body149.i.i_crit_edge54, %if.end56.i.i.do.body149.i.i_crit_edge55, %if.end56.i.i.do.body149.i.i_crit_edge56, %if.end56.i.i.do.body149.i.i_crit_edge57, %if.end56.i.i.do.body149.i.i_crit_edge58, %if.end56.i.i.do.body149.i.i_crit_edge59, %if.end56.i.i.do.body149.i.i_crit_edge60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %mmio152.i.i = getelementptr inbounds %struct.pxp_dev, ptr %118, i32 0, i32 3
  %198 = ptrtoint ptr %mmio152.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio152.i.i, align 4
  %add.ptr153.i.i = getelementptr i8, ptr %199, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.i.i, i32 16777216) #12, !srcloc !213
  br label %pxp_setup_csc.exit.i

pxp_setup_csc.exit.i:                             ; preds = %do.body149.i.i, %if.end102.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %200 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmio.i, align 4
  %add.ptr302.i = getelementptr i8, ptr %201, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr302.i, i32 128) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %202 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i, align 4
  %add.ptr307.i = getelementptr i8, ptr %203, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr307.i, i32 1040) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %204 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i, align 4
  %add.ptr312.i = getelementptr i8, ptr %205, i32 848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312.i, i32 83886080) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %206 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i, align 4
  %add.ptr317.i = getelementptr i8, ptr %207, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr317.i, i32 -65536) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  tail call void @arm_heavy_mb() #12
  %208 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio.i, align 4
  %add.ptr322.i = getelementptr i8, ptr %209, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr322.i, i32 33554432) #12, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void @arm_heavy_mb() #12
  %210 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmio.i, align 4
  %add.ptr327.i = getelementptr i8, ptr %211, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327.i, i32 16777479) #12, !srcloc !213
  br label %pxp_start.exit

pxp_start.exit:                                   ; preds = %pxp_setup_csc.exit.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxp_job_ready(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %num_rdy.i14 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %num_rdy.i14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4 = icmp eq i8 %5, 0
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef nonnull @.str.68) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pxp_job_abort(ptr nocapture noundef writeonly %priv) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aborting = getelementptr inbounds %struct.pxp_ctx, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aborting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/imx-pxp.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug299, !4, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/imx-pxp.c", i32 36, i32 1}
!5 = !{ptr @__initcall__kmod_imx_pxp__300_1784_pxp_driver_init6, !6, !"__initcall__kmod_imx_pxp__300_1784_pxp_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/imx-pxp.c", i32 1784, i32 1}
!7 = !{ptr @__exitcall_pxp_driver_exit, !6, !"__exitcall_pxp_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description301, !9, !"__UNIQUE_ID_description301", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/imx-pxp.c", i32 1786, i32 1}
!10 = !{ptr @__UNIQUE_ID_author302, !11, !"__UNIQUE_ID_author302", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/imx-pxp.c", i32 1787, i32 1}
!12 = !{ptr @__UNIQUE_ID_file303, !13, !"__UNIQUE_ID_file303", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/imx-pxp.c", i32 1788, i32 1}
!14 = !{ptr @__UNIQUE_ID_license304, !13, !"__UNIQUE_ID_license304", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/imx-pxp.c", i32 34, i32 21}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/imx-pxp.c", i32 1779, i32 11}
!20 = !{ptr @pxp_driver, !21, !"pxp_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/imx-pxp.c", i32 1775, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/imx-pxp.c", i32 1674, i32 38}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/imx-pxp.c", i32 1677, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pxp_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @pxp_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @pxp_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/imx-pxp.c", i32 1689, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/imx-pxp.c", i32 1694, i32 3}
!37 = !{ptr @pxp_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pxp_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/imx-pxp.c", i32 1704, i32 3}
!41 = !{ptr @pxp_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pxp_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @pxp_probe.__key.14, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/imx-pxp.c", i32 1713, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/imx-pxp.c", i32 1721, i32 41}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/imx-pxp.c", i32 1722, i32 2}
!50 = !{ptr @pxp_probe._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pxp_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/imx-pxp.c", i32 1729, i32 3}
!54 = !{ptr @pxp_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pxp_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/imx-pxp.c", i32 1736, i32 3}
!58 = !{ptr @pxp_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pxp_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/imx-pxp.c", i32 1013, i32 4}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pxp_irq_handler._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @pxp_irq_handler._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pxp_irq_handler._entry.28, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/imx-pxp.c", i32 1020, i32 3}
!67 = !{ptr @pxp_irq_handler._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/imx-pxp.c", i32 1021, i32 3}
!70 = !{ptr @pxp_irq_handler._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pxp_irq_handler._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/imx-pxp.c", i32 948, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pxp_job_finish._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pxp_job_finish._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/imx-pxp.c", i32 960, i32 2}
!79 = !{ptr @pxp_job_finish._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @pxp_job_finish._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @pxp_videodev, !82, !"pxp_videodev", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/imx-pxp.c", i32 1626, i32 34}
!83 = !{ptr @pxp_fops, !84, !"pxp_fops", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/imx-pxp.c", i32 1617, i32 42}
!85 = !{ptr @pxp_open._key, !86, !"_key", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/imx-pxp.c", i32 1550, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/imx-pxp.c", i32 1589, i32 2}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pxp_open._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pxp_open._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @pxp_ctrl_ops, !94, !"pxp_ctrl_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/imx-pxp.c", i32 1358, i32 35}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/imx-pxp.c", i32 1351, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pxp_s_ctrl._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pxp_s_ctrl._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @formats, !101, !"formats", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/imx-pxp.c", i32 65, i32 23}
!102 = !{ptr @pxp_qops, !103, !"pxp_qops", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/imx-pxp.c", i32 1485, i32 29}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/imx-pxp.c", i32 1413, i32 2}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pxp_queue_setup._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @pxp_queue_setup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/imx-pxp.c", i32 1425, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pxp_buf_prepare._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @pxp_buf_prepare._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/imx-pxp.c", i32 1432, i32 4}
!116 = !{ptr @pxp_buf_prepare._entry.47, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pxp_buf_prepare._entry_ptr.49, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/imx-pxp.c", i32 1438, i32 3}
!120 = !{ptr @pxp_buf_prepare._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @pxp_buf_prepare._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/imx-pxp.c", i32 1602, i32 2}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pxp_release._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pxp_release._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @pxp_ioctl_ops, !131, !"pxp_ioctl_ops", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/imx-pxp.c", i32 1362, i32 36}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/imx-pxp.c", i32 1038, i32 4}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/imx-pxp.c", i32 1244, i32 3}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @pxp_s_fmt._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @pxp_s_fmt._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/imx-pxp.c", i32 1254, i32 2}
!141 = !{ptr @pxp_s_fmt._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @pxp_s_fmt._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/imx-pxp.c", i32 1190, i32 3}
!145 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @pxp_try_fmt_vid_cap._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @pxp_try_fmt_vid_cap._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/imx-pxp.c", i32 1218, i32 3}
!150 = !{ptr @pxp_try_fmt_vid_out._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @pxp_try_fmt_vid_out._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @m2m_ops, !153, !"m2m_ops", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/imx-pxp.c", i32 1636, i32 34}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/imx-pxp.c", i32 751, i32 3}
!156 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pxp_start._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @pxp_start._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @pxp_setup_csc.csc1_coef_bt601_lim, !160, !"csc1_coef_bt601_lim", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/imx-pxp.c", i32 333, i32 20}
!161 = !{ptr @pxp_setup_csc.csc1_coef_bt601_full, !162, !"csc1_coef_bt601_full", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/imx-pxp.c", i32 350, i32 20}
!163 = !{ptr @pxp_setup_csc.csc1_coef_rec709_lim, !164, !"csc1_coef_rec709_lim", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/imx-pxp.c", i32 367, i32 20}
!165 = !{ptr @pxp_setup_csc.csc1_coef_rec709_full, !166, !"csc1_coef_rec709_full", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/imx-pxp.c", i32 384, i32 20}
!167 = !{ptr @pxp_setup_csc.csc1_coef_bt2020_lim, !168, !"csc1_coef_bt2020_lim", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/imx-pxp.c", i32 401, i32 20}
!169 = !{ptr @pxp_setup_csc.csc1_coef_bt2020_full, !170, !"csc1_coef_bt2020_full", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/imx-pxp.c", i32 418, i32 20}
!171 = !{ptr @pxp_setup_csc.csc1_coef_smpte240m_lim, !172, !"csc1_coef_smpte240m_lim", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/imx-pxp.c", i32 435, i32 20}
!173 = !{ptr @pxp_setup_csc.csc1_coef_smpte240m_full, !174, !"csc1_coef_smpte240m_full", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/imx-pxp.c", i32 452, i32 20}
!175 = !{ptr @pxp_setup_csc.csc2_coef_bt601_lim, !176, !"csc2_coef_bt601_lim", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/imx-pxp.c", i32 513, i32 20}
!177 = !{ptr @pxp_setup_csc.csc2_coef_bt601_full, !178, !"csc2_coef_bt601_full", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/imx-pxp.c", i32 534, i32 20}
!179 = !{ptr @pxp_setup_csc.csc2_coef_rec709_lim, !180, !"csc2_coef_rec709_lim", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/imx-pxp.c", i32 555, i32 20}
!181 = !{ptr @pxp_setup_csc.csc2_coef_rec709_full, !182, !"csc2_coef_rec709_full", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/imx-pxp.c", i32 576, i32 20}
!183 = !{ptr @pxp_setup_csc.csc2_coef_bt2020_lim, !184, !"csc2_coef_bt2020_lim", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/imx-pxp.c", i32 597, i32 20}
!185 = !{ptr @pxp_setup_csc.csc2_coef_bt2020_full, !186, !"csc2_coef_bt2020_full", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/imx-pxp.c", i32 618, i32 20}
!187 = !{ptr @pxp_setup_csc.csc2_coef_smpte240m_lim, !188, !"csc2_coef_smpte240m_lim", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/imx-pxp.c", i32 639, i32 20}
!189 = !{ptr @pxp_setup_csc.csc2_coef_smpte240m_full, !190, !"csc2_coef_smpte240m_full", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/imx-pxp.c", i32 660, i32 20}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/imx-pxp.c", i32 984, i32 3}
!193 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @pxp_job_ready._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @pxp_job_ready._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.69, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/imx-pxp.c", i32 1761, i32 2}
!198 = !{ptr @.str.70, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @pxp_remove._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @pxp_remove._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @pxp_dt_ids, !202, !"pxp_dt_ids", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/imx-pxp.c", i32 1769, i32 34}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2156692190}
!213 = !{i64 6305414}
!214 = !{i64 2156692645}
!215 = !{i64 2156693100}
!216 = !{i64 6305832}
!217 = !{i64 2156694956}
!218 = !{i64 2156695470}
!219 = !{i64 2156695726}
!220 = !{i64 2156696181}
!221 = !{i64 2156707374}
!222 = !{i64 2156707829}
!223 = !{i64 2156653435}
!224 = !{i64 2156655731}
!225 = !{i64 2156656461}
!226 = !{i64 2156660681}
!227 = !{i64 2148289451, i64 2148289477, i64 2148289506, i64 2148289540, i64 2148289571, i64 2148289594}
!228 = !{i64 2148291916, i64 2148291942, i64 2148291971, i64 2148292005, i64 2148292036, i64 2148292059}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i32 0, i32 33}
!231 = !{i64 2156631204}
!232 = !{i64 2156631628}
!233 = !{i64 2156632063}
!234 = !{i64 2156632496}
!235 = !{i64 2156632933}
!236 = !{i64 2156633371}
!237 = !{i64 2156633806}
!238 = !{i64 2156634250}
!239 = !{i64 2156634690}
!240 = !{i64 2156635118}
!241 = !{i64 2156635547}
!242 = !{i64 2156635978}
!243 = !{i64 2156636407}
!244 = !{i64 2156636839}
!245 = !{i64 2156637272}
!246 = !{i64 2156637710}
!247 = !{i64 2156638152}
!248 = !{i64 2156638589}
!249 = !{i64 2156639030}
!250 = !{i64 2156639474}
!251 = !{i64 2156639918}
!252 = !{i64 2156640362}
!253 = !{i64 2156614060}
!254 = !{i64 2156614512}
!255 = !{i64 2156614964}
!256 = !{i64 2156615425}
!257 = !{i64 2156620956}
!258 = !{i64 2156621399}
!259 = !{i64 2156621851}
!260 = !{i64 2156622303}
!261 = !{i64 2156622755}
!262 = !{i64 2156623207}
!263 = !{i64 2156623659}
!264 = !{i64 2156624120}
!265 = !{i64 2156640817}
!266 = !{i64 2156642732}
!267 = !{i64 2156644829}
!268 = !{i64 2156645416}
!269 = !{i64 2156645859}
!270 = !{i64 2156646410}
