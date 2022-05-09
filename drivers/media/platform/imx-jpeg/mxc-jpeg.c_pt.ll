; ModuleID = '/llk/IR_all_yes/drivers/media/platform/imx-jpeg/mxc-jpeg.c_pt.bc'
source_filename = "../drivers/media/platform/imx-jpeg/mxc-jpeg.c"
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mxc_jpeg_fmt = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
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
%struct.mxc_jpeg_dev = type { %struct.spinlock, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, ptr, [1 x %struct.mxc_jpeg_slot_data], i32, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.mxc_jpeg_slot_data = type { i8, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mxc_jpeg_ctx = type { ptr, %struct.mxc_jpeg_q_data, %struct.mxc_jpeg_q_data, %struct.v4l2_fh, i32, i32, i32 }
%struct.mxc_jpeg_q_data = type { ptr, [2 x i32], [2 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mxc_jpeg_src_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, i8, i8 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.mxc_jpeg_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mxc_jpeg_sof = type <{ i16, i8, i16, i16, i8, [4 x %struct.mxc_jpeg_sof_comp] }>
%struct.mxc_jpeg_sof_comp = type { i8, i8, i8 }
%struct.mxc_jpeg_sos = type { i16, i8, [4 x %struct.mxc_jpeg_sos_comp], [3 x i8] }
%struct.mxc_jpeg_sos_comp = type { i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_event = type { i32, %union.anon.121, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.121 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.122, i32, i32, i32, i32, i32 }
%union.anon.122 = type { i64 }
%struct.v4l2_jpeg_header = type { %struct.v4l2_jpeg_reference, %struct.v4l2_jpeg_reference, i32, [4 x %struct.v4l2_jpeg_reference], i32, [4 x %struct.v4l2_jpeg_reference], %struct.v4l2_jpeg_frame_header, ptr, ptr, ptr, i16, i32, i32 }
%struct.v4l2_jpeg_reference = type { ptr, i32 }
%struct.v4l2_jpeg_frame_header = type { i16, i16, i8, i8, [4 x %struct.v4l2_jpeg_frame_component_spec], i32 }
%struct.v4l2_jpeg_frame_component_spec = type { i8, i8, i8, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.99, i32, i32, %union.anon.101 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.99 = type { i32 }
%union.anon.101 = type { i32 }

@__param_str_debug = internal constant [22 x i8] c"mxc_jpeg_encdec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [35 x i8] c"mxc_jpeg_encdec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug300 = internal constant [45 x i8] c"mxc_jpeg_encdec.parm=debug:Debug level (0-3)\00", section ".modinfo", align 1
@__initcall__kmod_mxc_jpeg_encdec__324_2208_mxc_jpeg_driver_init6 = internal global ptr @mxc_jpeg_driver_init, section ".initcall6.init", align 4
@mxc_jpeg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxc_jpeg_probe, ptr @mxc_jpeg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxc_jpeg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxc_jpeg_driver_exit = internal global ptr @mxc_jpeg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author325 = internal constant [61 x i8] c"mxc_jpeg_encdec.author=Zhengyu Shen <zhengyu.shen_1@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [63 x i8] c"mxc_jpeg_encdec.author=Mirela Rabulea <mirela.rabulea@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [78 x i8] c"mxc_jpeg_encdec.description=V4L2 driver for i.MX8 QXP/QM JPEG encoder/decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [69 x i8] c"mxc_jpeg_encdec.file=drivers/media/platform/imx-jpeg/mxc-jpeg-encdec\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [31 x i8] c"mxc_jpeg_encdec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxc-jpeg\00", [23 x i8] zeroinitializer }, align 32
@mxc_jpeg_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8qxp-jpgdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxc_decode_mode }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8qxp-jpgenc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxc_encode_mode }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mxc_jpeg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_runtime_suspend, ptr @mxc_jpeg_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&jpeg->lock\00", [20 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&jpeg->hw_lock\00", [17 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2008, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No suitable DMA available.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc_jpeg_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/imx-jpeg/mxc-jpeg.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr = internal global ptr @mxc_jpeg_probe._entry, section ".printk_index", align 4
@mxc_jpeg_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2019, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.11 = internal global ptr @mxc_jpeg_probe._entry.9, section ".printk_index", align 4
@mxc_jpeg_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 2027, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request irq %d (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.14 = internal global ptr @mxc_jpeg_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 2039, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: ipg\0A\00", [38 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.18 = internal global ptr @mxc_jpeg_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 2045, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: per\0A\00", [38 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.22 = internal global ptr @mxc_jpeg_probe._entry.20, section ".printk_index", align 4
@mxc_jpeg_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 2051, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to attach power domains %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.25 = internal global ptr @mxc_jpeg_probe._entry.23, section ".printk_index", align 4
@mxc_jpeg_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 2058, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.28 = internal global ptr @mxc_jpeg_probe._entry.26, section ".printk_index", align 4
@mxc_jpeg_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @mxc_jpeg_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 2063, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.30 = internal global ptr @mxc_jpeg_probe._entry.29, section ".printk_index", align 4
@mxc_jpeg_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 2070, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.32 = internal global ptr @mxc_jpeg_probe._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-enc\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-dec\00", [25 x i8] zeroinitializer }, align 32
@mxc_jpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @mxc_jpeg_open, ptr @mxc_jpeg_release }, [60 x i8] zeroinitializer }, align 32
@mxc_jpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mxc_jpeg_querycap, ptr @mxc_jpeg_enum_fmt_vid_cap, ptr null, ptr @mxc_jpeg_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_g_fmt_vid, ptr @mxc_jpeg_g_fmt_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_s_fmt_vid_cap, ptr @mxc_jpeg_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_try_fmt_vid_cap, ptr @mxc_jpeg_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @mxc_jpeg_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_encoder_cmd, ptr @v4l2_m2m_ioctl_try_encoder_cmd, ptr @mxc_jpeg_decoder_cmd, ptr @v4l2_m2m_ioctl_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxc_jpeg_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str.6, i32 2101, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.37 = internal global ptr @mxc_jpeg_probe._entry.35, section ".printk_index", align 4
@mxc_jpeg_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.6, i32 2109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: encoder device registered as /dev/video%d (%d,%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.40 = internal global ptr @mxc_jpeg_probe._entry.38, section ".printk_index", align 4
@mxc_jpeg_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.6, i32 2114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: decoder device registered as /dev/video%d (%d,%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_probe._entry_ptr.43 = internal global ptr @mxc_jpeg_probe._entry.41, section ".printk_index", align 4
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.46, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxc_jpeg_encdec\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxc_jpeg_dec_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Irq %d on slot %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 573, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Instance released before the end of transaction.\0A\00", [46 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq._entry_ptr = internal global ptr @mxc_jpeg_dec_irq._entry, section ".printk_index", align 4
@mxc_jpeg_dec_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.6, i32 584, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IRQ slot %d != context slot %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq._entry_ptr.51 = internal global ptr @mxc_jpeg_dec_irq._entry.48, section ".printk_index", align 4
@mxc_jpeg_dec_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.6, i32 594, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No source or destination buffer.\0A\00", [62 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq._entry_ptr.54 = internal global ptr @mxc_jpeg_dec_irq._entry.52, section ".printk_index", align 4
@mxc_jpeg_dec_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.6, i32 602, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Encoder/decoder error, status=0x%08x\00", [59 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq._entry_ptr.57 = internal global ptr @mxc_jpeg_dec_irq._entry.55, section ".printk_index", align 4
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.58, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Encoder config finished. Start encoding...\0A\00", [52 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.59, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Decoder DHT cfg finished. Start decoding...\0A\00", [51 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.60, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Encoding finished, payload size: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.61, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Decoding finished, payload size: %ld + %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.62, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"src_buf preview: \00", [46 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.6, ptr @.str.63, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dst_buf preview: \00", [46 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@print_mxc_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: plane %d (vaddr=%p dma_addr=%x payload=%ld):\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"print_mxc_buf\00", [18 x i8] zeroinitializer }, align 32
@print_mxc_buf._entry_ptr = internal global ptr @print_mxc_buf._entry, section ".printk_index", align 4
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@mxc_jpeg_attach_pm_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 1950, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No power domains defined for jpeg node\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxc_jpeg_attach_pm_domains\00", [37 x i8] zeroinitializer }, align 32
@mxc_jpeg_attach_pm_domains._entry_ptr = internal global ptr @mxc_jpeg_attach_pm_domains._entry, section ".printk_index", align 4
@mxc_jpeg_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.6, i32 934, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Null src or dst buf\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxc_jpeg_device_run\00", [44 x i8] zeroinitializer }, align 32
@mxc_jpeg_device_run._entry_ptr = internal global ptr @mxc_jpeg_device_run._entry, section ".printk_index", align 4
@mxc_jpeg_device_run._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.6, i32 967, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No more free slots\0A\00", [44 x i8] zeroinitializer }, align 32
@mxc_jpeg_device_run._entry_ptr.77 = internal global ptr @mxc_jpeg_device_run._entry.75, section ".printk_index", align 4
@mxc_jpeg_device_run._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.6, i32 971, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot allocate slot data\0A\00", [37 x i8] zeroinitializer }, align 32
@mxc_jpeg_device_run._entry_ptr.80 = internal global ptr @mxc_jpeg_device_run._entry.78, section ".printk_index", align 4
@mxc_jpeg_device_run.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.74, ptr @.str.6, ptr @.str.81, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Encoding on slot %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mxc_jpeg_device_run.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.74, ptr @.str.6, ptr @.str.82, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Decoding on slot %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mxc_jpeg_alloc_slot_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 518, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not allocate descriptors for slot %d\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxc_jpeg_alloc_slot_data\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_alloc_slot_data._entry_ptr = internal global ptr @mxc_jpeg_alloc_slot_data._entry, section ".printk_index", align 4
@mxc_jpeg_config_enc_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.6, i32 903, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No valid image format detected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxc_jpeg_config_enc_desc\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_config_enc_desc._entry_ptr = internal global ptr @mxc_jpeg_config_enc_desc._entry, section ".printk_index", align 4
@mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.86, ptr @.str.6, ptr @.str.87, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfg_desc:\0A\00", [21 x i8] zeroinitializer }, align 32
@mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.86, ptr @.str.6, ptr @.str.88, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enc desc:\0A\00", [21 x i8] zeroinitializer }, align 32
@jpeg_app14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\EE\00\0EAdobe\00d\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@jpeg_app0 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\FF\E0\00\10JFIF\00\01\01\00\00\01\00\01\00\00", [46 x i8] zeroinitializer }, align 32
@jpeg_dqt = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc", [58 x i8] zeroinitializer }, align 32
@jpeg_sof_maximal = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\FF\C0\00\14\08\00@\00@\04\01\11\00\02\11\01\03\11\01\04\11\01", [42 x i8] zeroinitializer }, align 32
@jpeg_dht = internal constant { [420 x i8], [124 x i8] } { [420 x i8] c"\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [124 x i8] zeroinitializer }, align 32
@jpeg_dri = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\DD\00\04\00 ", [26 x i8] zeroinitializer }, align 32
@jpeg_sos_maximal = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\DA\00\0C\04\01\00\02\11\03\11\04\11\00?\00", [16 x i8] zeroinitializer }, align 32
@jpeg_image_red = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\FC_\A2\BF\CAs\FE\FE\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00(\A0\02\8A\00", [42 x i8] zeroinitializer }, align 32
@mxc_jpeg_open.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.89, ptr @.str.6, ptr @.str.90, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc_jpeg_open\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Opened JPEG decoder instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@mxc_jpeg_open.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.89, ptr @.str.6, ptr @.str.91, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Opened JPEG encoder instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxc_jpeg_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mxc_jpeg_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @mxc_jpeg_buf_out_validate, ptr null, ptr @mxc_jpeg_buf_prepare, ptr null, ptr null, ptr @mxc_jpeg_start_streaming, ptr @mxc_jpeg_stop_streaming, ptr @mxc_jpeg_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mxc_jpeg_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 1397, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"plane %d too small (%lu < %lu)\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxc_jpeg_buf_prepare\00", [43 x i8] zeroinitializer }, align 32
@mxc_jpeg_buf_prepare._entry_ptr = internal global ptr @mxc_jpeg_buf_prepare._entry, section ".printk_index", align 4
@mxc_jpeg_start_streaming.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.94, ptr @.str.6, ptr @.str.95, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxc_jpeg_start_streaming\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Start streaming ctx=%p\00", [41 x i8] zeroinitializer }, align 32
@mxc_jpeg_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.6, i32 1089, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to power up jpeg\0A\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_start_streaming._entry_ptr = internal global ptr @mxc_jpeg_start_streaming._entry, section ".printk_index", align 4
@mxc_jpeg_stop_streaming.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.97, ptr @.str.6, ptr @.str.98, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxc_jpeg_stop_streaming\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stop streaming ctx=%p\00", [42 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.6, i32 1239, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error parsing JPEG stream markers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc_jpeg_parse\00", [17 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr = internal global ptr @mxc_jpeg_parse._entry, section ".printk_index", align 4
@mxc_jpeg_parse._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.6, i32 1249, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid user resolution 0x0\00", [36 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.103 = internal global ptr @mxc_jpeg_parse._entry.101, section ".printk_index", align 4
@mxc_jpeg_parse._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.6, i32 1251, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Keeping resolution from JPEG: %dx%d\00", [60 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.106 = internal global ptr @mxc_jpeg_parse._entry.104, section ".printk_index", align 4
@mxc_jpeg_parse._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.6, i32 1259, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Resolution mismatch: %dx%d (JPEG) versus %dx%d(user)\00", [43 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.109 = internal global ptr @mxc_jpeg_parse._entry.107, section ".printk_index", align 4
@mxc_jpeg_parse._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.6, i32 1264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"JPEG width or height not multiple of 8: %dx%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.112 = internal global ptr @mxc_jpeg_parse._entry.110, section ".printk_index", align 4
@mxc_jpeg_parse._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.100, ptr @.str.6, i32 1270, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"JPEG width or height should be <= 8192: %dx%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.115 = internal global ptr @mxc_jpeg_parse._entry.113, section ".printk_index", align 4
@mxc_jpeg_parse._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.100, ptr @.str.6, i32 1276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"JPEG width or height should be > 64: %dx%d\0A\00", [52 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.118 = internal global ptr @mxc_jpeg_parse._entry.116, section ".printk_index", align 4
@mxc_jpeg_parse._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.100, ptr @.str.6, i32 1281, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JPEG number of components should be <=%d\00", [55 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.121 = internal global ptr @mxc_jpeg_parse._entry.119, section ".printk_index", align 4
@mxc_jpeg_parse._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.100, ptr @.str.6, i32 1288, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"JPEG component ids should be 0-3 or 1-4\00", [56 x i8] zeroinitializer }, align 32
@mxc_jpeg_parse._entry_ptr.124 = internal global ptr @mxc_jpeg_parse._entry.122, section ".printk_index", align 4
@mxc_jpeg_parse.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.100, ptr @.str.6, ptr @.str.125, i8 1, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Detected jpeg res=(%dx%d)->(%dx%d), pixfmt=%c%c%c%c\0A\00", [43 x i8] zeroinitializer }, align 32
@mxc_jpeg_valid_comp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.6, i32 1131, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Component %d has invalid ID: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxc_jpeg_valid_comp_id\00", [41 x i8] zeroinitializer }, align 32
@mxc_jpeg_valid_comp_id._entry_ptr = internal global ptr @mxc_jpeg_valid_comp_id._entry, section ".printk_index", align 4
@mxc_jpeg_valid_comp_id._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.6, i32 1137, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Component %d ID patched to: %d\00", [33 x i8] zeroinitializer }, align 32
@mxc_jpeg_valid_comp_id._entry_ptr.130 = internal global ptr @mxc_jpeg_valid_comp_id._entry.128, section ".printk_index", align 4
@mxc_formats = internal constant { [7 x %struct.mxc_jpeg_fmt], [36 x i8] } { [7 x %struct.mxc_jpeg_fmt] [%struct.mxc_jpeg_fmt { ptr @.str.133, i32 1195724874, i32 -1, i32 -1, i32 0, i32 1, i32 0, i32 0, i32 0 }, %struct.mxc_jpeg_fmt { ptr @.str.134, i32 859981650, i32 0, i32 3, i32 24, i32 1, i32 3, i32 3, i32 1 }, %struct.mxc_jpeg_fmt { ptr @.str.135, i32 875708738, i32 0, i32 4, i32 32, i32 1, i32 3, i32 3, i32 1 }, %struct.mxc_jpeg_fmt { ptr @.str.136, i32 842094158, i32 2, i32 3, i32 12, i32 2, i32 4, i32 4, i32 1 }, %struct.mxc_jpeg_fmt { ptr @.str.137, i32 1448695129, i32 1, i32 3, i32 16, i32 1, i32 4, i32 3, i32 1 }, %struct.mxc_jpeg_fmt { ptr @.str.138, i32 861295961, i32 0, i32 3, i32 24, i32 1, i32 3, i32 3, i32 1 }, %struct.mxc_jpeg_fmt { ptr @.str.139, i32 1497715271, i32 5, i32 1, i32 8, i32 1, i32 3, i32 3, i32 1 }], [36 x i8] zeroinitializer }, align 32
@mxc_jpeg_get_image_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.6, i32 1160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Could not identify image format nc=%d, subsampling=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxc_jpeg_get_image_format\00", [38 x i8] zeroinitializer }, align 32
@mxc_jpeg_get_image_format._entry_ptr = internal global ptr @mxc_jpeg_get_image_format._entry, section ".printk_index", align 4
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ARGB\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV420\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV422\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV444\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Gray\00", [27 x i8] zeroinitializer }, align 32
@__const.notify_src_chg.ev = private unnamed_addr constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32], [4 x i8] } { i32 5, [4 x i8] c"\FF\FF\FF\FF", { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer, [4 x i8] zeroinitializer }, align 8
@notify_src_chg.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.140, ptr @.str.6, ptr @.str.141, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"notify_src_chg\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Notify app event SRC_CH_RESOLUTION\00", [61 x i8] zeroinitializer }, align 32
@mxc_jpeg_release.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.142, ptr @.str.6, ptr @.str.143, i8 1, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxc_jpeg_release\00", [47 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Release JPEG decoder instance on slot %d.\00", [54 x i8] zeroinitializer }, align 32
@mxc_jpeg_release.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.142, ptr @.str.6, ptr @.str.144, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Release JPEG encoder instance on slot %d.\00", [54 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc-jpeg codec\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@mxc_jpeg_g_fmt_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.6, i32 1799, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"G_FMT with Invalid type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxc_jpeg_g_fmt_vid\00", [45 x i8] zeroinitializer }, align 32
@mxc_jpeg_g_fmt_vid._entry_ptr = internal global ptr @mxc_jpeg_g_fmt_vid._entry, section ".printk_index", align 4
@mxc_jpeg_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.6, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: queue busy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc_jpeg_s_fmt\00", [17 x i8] zeroinitializer }, align 32
@mxc_jpeg_s_fmt._entry_ptr = internal global ptr @mxc_jpeg_s_fmt._entry, section ".printk_index", align 4
@mxc_jpeg_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.6, i32 1651, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TRY_FMT with Invalid type: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxc_jpeg_try_fmt_vid_cap\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_try_fmt_vid_cap._entry_ptr = internal global ptr @mxc_jpeg_try_fmt_vid_cap._entry, section ".printk_index", align 4
@mxc_jpeg_try_fmt_vid_cap._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.6, i32 1661, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Format not supported: %c%c%c%c, use the default.\0A\00", [46 x i8] zeroinitializer }, align 32
@mxc_jpeg_try_fmt_vid_cap._entry_ptr.155 = internal global ptr @mxc_jpeg_try_fmt_vid_cap._entry.153, section ".printk_index", align 4
@mxc_jpeg_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.156, ptr @.str.6, i32 1682, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxc_jpeg_try_fmt_vid_out\00", [39 x i8] zeroinitializer }, align 32
@mxc_jpeg_try_fmt_vid_out._entry_ptr = internal global ptr @mxc_jpeg_try_fmt_vid_out._entry, section ".printk_index", align 4
@mxc_jpeg_try_fmt_vid_out._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.156, ptr @.str.6, i32 1692, ptr @.str.50, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_try_fmt_vid_out._entry_ptr.158 = internal global ptr @mxc_jpeg_try_fmt_vid_out._entry.157, section ".printk_index", align 4
@mxc_jpeg_dqbuf.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.159, ptr @.str.6, ptr @.str.160, i8 1, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc_jpeg_dqbuf\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DQBUF type=%d, index=%d\00", [40 x i8] zeroinitializer }, align 32
@notify_eos.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.161, ptr @.str.6, ptr @.str.162, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"notify_eos\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Notify app event EOS reached\00", [35 x i8] zeroinitializer }, align 32
@mxc_jpeg_encoder_cmd.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.163, ptr @.str.6, ptr @.str.164, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxc_jpeg_encoder_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Received V4L2_ENC_CMD_STOP\00", [37 x i8] zeroinitializer }, align 32
@mxc_jpeg_decoder_cmd.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.165, ptr @.str.6, ptr @.str.166, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxc_jpeg_decoder_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Received V4L2_DEC_CMD_STOP\00", [37 x i8] zeroinitializer }, align 32
@mxc_jpeg_free_slot_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.6, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid slot %d, nothing to free.\00", [62 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxc_jpeg_free_slot_data\00", [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_free_slot_data._entry_ptr = internal global ptr @mxc_jpeg_free_slot_data._entry, section ".printk_index", align 4
@mxc_decode_mode = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@mxc_encode_mode = internal constant { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@mxc_jpeg_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.6, i32 2146, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clock: ipg\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxc_jpeg_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_runtime_resume._entry_ptr = internal global ptr @mxc_jpeg_runtime_resume._entry, section ".printk_index", align 4
@mxc_jpeg_runtime_resume._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.6, i32 2152, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clock: per\0A\00", [35 x i8] zeroinitializer }, align 32
@mxc_jpeg_runtime_resume._entry_ptr.173 = internal global ptr @mxc_jpeg_runtime_resume._entry.171, section ".printk_index", align 4
@switch.table.mxc_jpeg_g_fmt_vid = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -80, i32 -80, i32 -40, i32 -80, i32 -40, i32 -80, i32 -80, i32 -40, i32 -80, i32 -40, i32 -80, i32 -40, i32 -80], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.174 = internal global [8 x i64] [i64 6, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.175 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.176 = internal global [8 x i64] [i64 6, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 875708738]
@__sancov_gen_cov_switch_values.178 = internal global [6 x i64] [i64 4, i64 32, i64 842094158, i64 875708738, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1195724874]
@__sancov_gen_cov_switch_values.180 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.181 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.182 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.183 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 859981650, i64 861295961]
@__sancov_gen_cov_switch_values.187 = internal global [9 x i64] [i64 7, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1195724874, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1195724874]
@__sancov_gen_cov_switch_values.189 = internal global [9 x i64] [i64 7, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1195724874, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.190 = internal global [9 x i64] [i64 7, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1195724874, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.192 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.193 = internal global [9 x i64] [i64 7, i64 32, i64 842094158, i64 859981650, i64 861295961, i64 875708738, i64 1195724874, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1195724874]
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 320, i32 21 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"mxc_jpeg_driver\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2199, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2203, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"mxc_jpeg_match\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 148, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"mxc_jpeg_pm_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2175, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2003, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2004, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2008, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2019, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2026, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2037, i32 36 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2039, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2043, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2045, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2051, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2058, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"mxc_jpeg_m2m_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1922, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2063, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2070, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2077, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2081, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"mxc_jpeg_fops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1913, i32 42 }
@___asan_gen_.300 = private unnamed_addr constant [19 x i8] c"mxc_jpeg_ioctl_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1857, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2101, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2106, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2111, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 568, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 572, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 583, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 594, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 602, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 614, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 620, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 626, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 637, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 643, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 645, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1163, i32 7 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 346, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 349, i32 18 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 349, i32 30 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1947, i32 53 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1948, i32 14 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1950, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 934, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 967, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 971, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 979, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 985, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 518, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 903, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 908, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 910, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [11 x i8] c"jpeg_app14\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 175, i32 28 }
@___asan_gen_.462 = private unnamed_addr constant [10 x i8] c"jpeg_app0\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 168, i32 28 }
@___asan_gen_.465 = private unnamed_addr constant [9 x i8] c"jpeg_dqt\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 181, i32 28 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"jpeg_sof_maximal\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 204, i32 28 }
@___asan_gen_.471 = private unnamed_addr constant [9 x i8] c"jpeg_dht\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 211, i32 28 }
@___asan_gen_.474 = private unnamed_addr constant [9 x i8] c"jpeg_dri\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 275, i32 28 }
@___asan_gen_.477 = private unnamed_addr constant [17 x i8] c"jpeg_sos_maximal\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 280, i32 28 }
@___asan_gen_.480 = private unnamed_addr constant [15 x i8] c"jpeg_image_red\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 286, i32 28 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1511, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1513, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [14 x i8] c"mxc_jpeg_qops\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1405, i32 29 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1396, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1084, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1089, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1101, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1239, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1249, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1250, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1256, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1263, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1269, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1275, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1280, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1288, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1320, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1130, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1136, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant [12 x i8] c"mxc_formats\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 66, i32 34 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1158, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 68, i32 12 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 76, i32 12 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 87, i32 12 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 98, i32 12 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 109, i32 12 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 120, i32 12 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 131, i32 12 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 462, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1899, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1902, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1532, i32 23 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1534, i32 49 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1799, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1716, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1651, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1657, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1682, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1688, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1845, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 450, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1034, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1008, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 527, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant [16 x i8] c"mxc_decode_mode\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 145, i32 18 }
@___asan_gen_.729 = private unnamed_addr constant [16 x i8] c"mxc_encode_mode\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 146, i32 18 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2146, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.745 = private constant [46 x i8] c"../drivers/media/platform/imx-jpeg/mxc-jpeg.c\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2152, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant [32 x i8] c"switch.table.mxc_jpeg_g_fmt_vid\00", align 1
@llvm.compiler.used = appending global [242 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_debug300, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_mxc_jpeg_driver_exit, ptr @__initcall__kmod_mxc_jpeg_encdec__324_2208_mxc_jpeg_driver_init6, ptr @__param_debug, ptr @mxc_jpeg_alloc_slot_data._entry, ptr @mxc_jpeg_alloc_slot_data._entry_ptr, ptr @mxc_jpeg_attach_pm_domains._entry, ptr @mxc_jpeg_attach_pm_domains._entry_ptr, ptr @mxc_jpeg_buf_prepare._entry, ptr @mxc_jpeg_buf_prepare._entry_ptr, ptr @mxc_jpeg_config_enc_desc._entry, ptr @mxc_jpeg_config_enc_desc._entry_ptr, ptr @mxc_jpeg_dec_irq._entry, ptr @mxc_jpeg_dec_irq._entry.48, ptr @mxc_jpeg_dec_irq._entry.52, ptr @mxc_jpeg_dec_irq._entry.55, ptr @mxc_jpeg_dec_irq._entry_ptr, ptr @mxc_jpeg_dec_irq._entry_ptr.51, ptr @mxc_jpeg_dec_irq._entry_ptr.54, ptr @mxc_jpeg_dec_irq._entry_ptr.57, ptr @mxc_jpeg_device_run._entry, ptr @mxc_jpeg_device_run._entry.75, ptr @mxc_jpeg_device_run._entry.78, ptr @mxc_jpeg_device_run._entry_ptr, ptr @mxc_jpeg_device_run._entry_ptr.77, ptr @mxc_jpeg_device_run._entry_ptr.80, ptr @mxc_jpeg_driver_exit, ptr @mxc_jpeg_free_slot_data._entry, ptr @mxc_jpeg_free_slot_data._entry_ptr, ptr @mxc_jpeg_g_fmt_vid._entry, ptr @mxc_jpeg_g_fmt_vid._entry_ptr, ptr @mxc_jpeg_get_image_format._entry, ptr @mxc_jpeg_get_image_format._entry_ptr, ptr @mxc_jpeg_parse._entry, ptr @mxc_jpeg_parse._entry.101, ptr @mxc_jpeg_parse._entry.104, ptr @mxc_jpeg_parse._entry.107, ptr @mxc_jpeg_parse._entry.110, ptr @mxc_jpeg_parse._entry.113, ptr @mxc_jpeg_parse._entry.116, ptr @mxc_jpeg_parse._entry.119, ptr @mxc_jpeg_parse._entry.122, ptr @mxc_jpeg_parse._entry_ptr, ptr @mxc_jpeg_parse._entry_ptr.103, ptr @mxc_jpeg_parse._entry_ptr.106, ptr @mxc_jpeg_parse._entry_ptr.109, ptr @mxc_jpeg_parse._entry_ptr.112, ptr @mxc_jpeg_parse._entry_ptr.115, ptr @mxc_jpeg_parse._entry_ptr.118, ptr @mxc_jpeg_parse._entry_ptr.121, ptr @mxc_jpeg_parse._entry_ptr.124, ptr @mxc_jpeg_probe._entry, ptr @mxc_jpeg_probe._entry.12, ptr @mxc_jpeg_probe._entry.16, ptr @mxc_jpeg_probe._entry.20, ptr @mxc_jpeg_probe._entry.23, ptr @mxc_jpeg_probe._entry.26, ptr @mxc_jpeg_probe._entry.29, ptr @mxc_jpeg_probe._entry.31, ptr @mxc_jpeg_probe._entry.35, ptr @mxc_jpeg_probe._entry.38, ptr @mxc_jpeg_probe._entry.41, ptr @mxc_jpeg_probe._entry.9, ptr @mxc_jpeg_probe._entry_ptr, ptr @mxc_jpeg_probe._entry_ptr.11, ptr @mxc_jpeg_probe._entry_ptr.14, ptr @mxc_jpeg_probe._entry_ptr.18, ptr @mxc_jpeg_probe._entry_ptr.22, ptr @mxc_jpeg_probe._entry_ptr.25, ptr @mxc_jpeg_probe._entry_ptr.28, ptr @mxc_jpeg_probe._entry_ptr.30, ptr @mxc_jpeg_probe._entry_ptr.32, ptr @mxc_jpeg_probe._entry_ptr.37, ptr @mxc_jpeg_probe._entry_ptr.40, ptr @mxc_jpeg_probe._entry_ptr.43, ptr @mxc_jpeg_runtime_resume._entry, ptr @mxc_jpeg_runtime_resume._entry.171, ptr @mxc_jpeg_runtime_resume._entry_ptr, ptr @mxc_jpeg_runtime_resume._entry_ptr.173, ptr @mxc_jpeg_s_fmt._entry, ptr @mxc_jpeg_s_fmt._entry_ptr, ptr @mxc_jpeg_start_streaming._entry, ptr @mxc_jpeg_start_streaming._entry_ptr, ptr @mxc_jpeg_try_fmt_vid_cap._entry, ptr @mxc_jpeg_try_fmt_vid_cap._entry.153, ptr @mxc_jpeg_try_fmt_vid_cap._entry_ptr, ptr @mxc_jpeg_try_fmt_vid_cap._entry_ptr.155, ptr @mxc_jpeg_try_fmt_vid_out._entry, ptr @mxc_jpeg_try_fmt_vid_out._entry.157, ptr @mxc_jpeg_try_fmt_vid_out._entry_ptr, ptr @mxc_jpeg_try_fmt_vid_out._entry_ptr.158, ptr @mxc_jpeg_valid_comp_id._entry, ptr @mxc_jpeg_valid_comp_id._entry.128, ptr @mxc_jpeg_valid_comp_id._entry_ptr, ptr @mxc_jpeg_valid_comp_id._entry_ptr.130, ptr @print_mxc_buf._entry, ptr @print_mxc_buf._entry_ptr, ptr @debug, ptr @mxc_jpeg_driver, ptr @.str, ptr @mxc_jpeg_match, ptr @mxc_jpeg_pm_ops, ptr @mxc_jpeg_probe.__key, ptr @.str.1, ptr @mxc_jpeg_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @mxc_jpeg_m2m_ops, ptr @.str.33, ptr @.str.34, ptr @mxc_jpeg_fops, ptr @mxc_jpeg_ioctl_ops, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @jpeg_app14, ptr @jpeg_app0, ptr @jpeg_dqt, ptr @jpeg_sof_maximal, ptr @jpeg_dht, ptr @jpeg_dri, ptr @jpeg_sos_maximal, ptr @jpeg_image_red, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @mxc_jpeg_qops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @mxc_formats, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @mxc_decode_mode, ptr @mxc_encode_mode, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @switch.table.mxc_jpeg_g_fmt_vid], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_dec_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_dec_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_dec_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_dec_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_mxc_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_attach_pm_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_device_run._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_device_run._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_alloc_slot_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_config_enc_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_app14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_app0 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_dqt to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_sof_maximal to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_dht to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_dri to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_sos_maximal to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_image_red to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_parse._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_valid_comp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_valid_comp_id._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_formats to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_get_image_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_g_fmt_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_try_fmt_vid_cap._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_try_fmt_vid_out._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_free_slot_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_decode_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_encode_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_jpeg_runtime_resume._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mxc_jpeg_g_fmt_vid to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_jpeg_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxc_jpeg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxc_jpeg_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @mxc_jpeg_match, ptr noundef %1) #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 340, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mxc_jpeg_probe.__key) #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @mxc_jpeg_probe.__key.2, i16 noundef signext 3) #12
  %call.i255 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp.i = icmp eq i32 %call.i255, 0
  br i1 %cmp.i, label %if.end14, label %do.end12

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #12
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %base_reg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %base_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %base_reg, align 4
  %cmp.i256 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then18, label %for.body

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

for.body:                                         ; preds = %if.end14
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call22) #15
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call.i257 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call22, ptr noundef nonnull @mxc_jpeg_dec_irq, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool32.not = icmp eq i32 %call.i257, 0
  br i1 %tobool32.not, label %for.end, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call22, i32 noundef %call.i257) #15
  br label %cleanup

for.end:                                          ; preds = %if.end29
  %pdev39 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %pdev39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pdev39, align 4
  %dev40 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev40, align 4
  %mode41 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %mode41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %mode41, align 4
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  %clk_ipg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call42, ptr %clk_ipg, align 4
  %cmp.i258 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %do.end48, label %if.end49

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %call50 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  %clk_per = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call50, ptr %clk_per, align 4
  %cmp.i259 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call58 = tail call fastcc i32 @mxc_jpeg_attach_pm_domains(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call58) #15
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %v4l2_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 8
  %call65 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #15
  br label %err_register

if.end71:                                         ; preds = %if.end64
  %call72 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @mxc_jpeg_m2m_ops) #12
  %m2m_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call72, ptr %m2m_dev, align 4
  %cmp.i260 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #15
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %err_m2m

if.end81:                                         ; preds = %if.end71
  %call82 = tail call ptr @video_device_alloc() #12
  %dec_vdev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call82, ptr %dec_vdev, align 4
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %do.end88, label %if.end89

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #15
  br label %err_vdev_alloc

if.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp90 = icmp eq i32 %5, 1
  %name93 = getelementptr inbounds %struct.video_device, ptr %call82, i32 0, i32 12
  %.str.33..str.34 = select i1 %cmp90, ptr @.str.33, ptr @.str.34
  %call98 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name93, i32 noundef 32, ptr noundef nonnull %.str.33..str.34, ptr noundef nonnull @.str)
  %20 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dec_vdev, align 4
  %fops = getelementptr inbounds %struct.video_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mxc_jpeg_fops, ptr %fops, align 4
  %23 = load ptr, ptr %dec_vdev, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mxc_jpeg_ioctl_ops, ptr %ioctl_ops, align 4
  %25 = load ptr, ptr %dec_vdev, align 4
  %minor = getelementptr inbounds %struct.video_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %minor, align 8
  %27 = load ptr, ptr %dec_vdev, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @video_device_release, ptr %release, align 8
  %29 = load ptr, ptr %dec_vdev, align 4
  %lock106 = getelementptr inbounds %struct.video_device, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %lock106 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %lock, ptr %lock106, align 8
  %31 = load ptr, ptr %dec_vdev, align 4
  %v4l2_dev109 = getelementptr inbounds %struct.video_device, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %v4l2_dev109 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %v4l2_dev, ptr %v4l2_dev109, align 4
  %33 = load ptr, ptr %dec_vdev, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %vfl_dir, align 4
  %35 = load ptr, ptr %dec_vdev, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67125248, ptr %device_caps, align 8
  %.sink271 = select i1 %cmp90, i32 96, i32 77
  %.sink = select i1 %cmp90, i32 97, i32 78
  %37 = load ptr, ptr %dec_vdev, align 4
  %valid_ioctls.i264 = getelementptr inbounds %struct.video_device, ptr %37, i32 0, i32 25
  tail call void @_set_bit(i32 noundef %.sink271, ptr noundef %valid_ioctls.i264) #12
  %38 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dec_vdev, align 4
  %valid_ioctls.i266 = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 25
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %valid_ioctls.i266) #12
  %40 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dec_vdev, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fops.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call.i268 = tail call i32 @__video_register_device(ptr noundef %41, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool122.not = icmp eq i32 %call.i268, 0
  br i1 %tobool122.not, label %if.end127, label %do.end126

do.end126:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #15
  %46 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dec_vdev, align 4
  tail call void @video_device_release(ptr noundef %47) #12
  br label %err_vdev_alloc

if.end127:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dec_vdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %49, i32 0, i32 5, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name135 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %call.i, i32 0, i32 8, i32 4
  %51 = load ptr, ptr %dec_vdev, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num, align 4
  %conv = zext i16 %53 to i32
  %minor139 = getelementptr inbounds %struct.video_device, ptr %51, i32 0, i32 15
  %54 = ptrtoint ptr %minor139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %minor139, align 8
  %.str.39..str.42 = select i1 %cmp90, ptr @.str.39, ptr @.str.42
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39..str.42, ptr noundef %name135, i32 noundef %conv, i32 noundef 81, i32 noundef %55) #15
  %driver_data.i.i269 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i269 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i269, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #12
  br label %cleanup

err_vdev_alloc:                                   ; preds = %do.end126, %do.end88
  %ret.1 = phi i32 [ %call.i268, %do.end126 ], [ -12, %do.end88 ]
  %57 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %58) #12
  br label %err_m2m

err_m2m:                                          ; preds = %err_vdev_alloc, %do.end78
  %ret.2 = phi i32 [ %18, %do.end78 ], [ %ret.1, %err_vdev_alloc ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  br label %err_register

err_register:                                     ; preds = %err_m2m, %do.end70
  %ret.3 = phi i32 [ %call65, %do.end70 ], [ %ret.2, %err_m2m ]
  tail call fastcc void @mxc_jpeg_detach_pm_domains(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_register, %if.end127, %do.end63, %do.end56, %do.end48, %do.end36, %do.end27, %if.then18, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then18 ], [ %call58, %do.end63 ], [ 0, %if.end127 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i255, %do.end12 ], [ %call22, %do.end27 ], [ %call.i257, %do.end36 ], [ 0, %do.end48 ], [ 0, %do.end56 ], [ %ret.3, %err_register ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %slot_data.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11
  %desc.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 1
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %desc_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 5
  %6 = ptrtoint ptr %desc_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 32, ptr noundef %5, i32 noundef %7, i32 noundef 0) #12
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %cfg_desc.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 2
  %10 = ptrtoint ptr %cfg_desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg_desc.i, align 4
  %cfg_desc_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 6
  %12 = ptrtoint ptr %cfg_desc_handle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_desc_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 32, ptr noundef %11, i32 noundef %13, i32 noundef 0) #12
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %cfg_stream_vaddr.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 3
  %16 = ptrtoint ptr %cfg_stream_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg_stream_vaddr.i, align 4
  %cfg_stream_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 7
  %18 = ptrtoint ptr %cfg_stream_handle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_stream_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef 4096, ptr noundef %17, i32 noundef %19, i32 noundef 0) #12
  %20 = ptrtoint ptr %slot_data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %slot_data.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %dec_vdev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %dec_vdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dec_vdev, align 4
  tail call void @video_unregister_device(ptr noundef %22) #12
  %m2m_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %24) #12
  %v4l2_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  %num_domains.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp39.i = icmp sgt i32 %26, 0
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %entry.mxc_jpeg_detach_pm_domains.exit_crit_edge

entry.mxc_jpeg_detach_pm_domains.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_detach_pm_domains.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %pd_link.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 14
  %pd_dev.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end14.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %pd_link.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pd_link.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %i.040.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %cmp.i.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_link_del(ptr noundef nonnull %30) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %32, i32 %i.040.i
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %34, null
  %cmp.i37.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %or.cond38.i = or i1 %tobool6.not.i, %cmp.i37.i
  br i1 %or.cond38.i, label %if.end.i.if.end14.i_crit_edge, label %if.then11.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %34, i1 noundef zeroext true) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %35 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx16.i = getelementptr ptr, ptr %36, i32 %i.040.i
  %37 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx16.i, align 4
  %38 = ptrtoint ptr %pd_link.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pd_link.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %39, i32 %i.040.i
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx18.i, align 4
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %41 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_domains.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %if.end14.i.for.body.i_crit_edge, label %if.end14.i.mxc_jpeg_detach_pm_domains.exit_crit_edge

if.end14.i.mxc_jpeg_detach_pm_domains.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_detach_pm_domains.exit

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mxc_jpeg_detach_pm_domains.exit:                  ; preds = %if.end14.i.mxc_jpeg_detach_pm_domains.exit_crit_edge, %entry.mxc_jpeg_detach_pm_domains.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_dec_irq(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_reg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_reg, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @_raw_spin_lock(ptr noundef %priv) #12
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %5 = lshr i32 %4, 5
  %shr = and i32 %5, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !396

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %irq, i32 noundef %shr) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %m2m_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call7 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %7) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end18

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47) #15
  tail call void @mxc_jpeg_sw_reset(ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  tail call void @arm_heavy_mb() #12
  %add = shl nuw nsw i32 %shr, 16
  %mul = add nuw nsw i32 %add, 65536
  %add.ptr17 = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1) #12, !srcloc !398
  br label %job_unlock

if.end18:                                         ; preds = %do.end
  %slot19 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 6
  %8 = ptrtoint ptr %slot19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp.not = icmp eq i32 %shr, %9
  br i1 %cmp.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %shr, i32 noundef %9) #15
  br label %job_unlock

if.end25:                                         ; preds = %if.end18
  %add28 = shl nuw nsw i32 %shr, 16
  %mul29 = add nuw nsw i32 %add28, 65536
  %add.ptr31 = getelementptr i8, ptr %1, i32 %mul29
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #12, !srcloc !394
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %10) #12, !srcloc !398
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 3, i32 10
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #12
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 8
  %call.i319 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #12
  %tobool46.not = icmp eq ptr %call.i, null
  %tobool47.not = icmp eq ptr %call.i319, null
  %or.cond = select i1 %tobool46.not, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %do.end51, label %if.end52

do.end51:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53) #15
  br label %job_unlock

if.end52:                                         ; preds = %if.end25
  %and54 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end66, label %if.then56

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr59 = getelementptr i8, ptr %1, i32 304
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #12, !srcloc !394
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %17) #15
  tail call void @mxc_jpeg_sw_reset(ptr noundef %1) #12
  br label %buffers_done

if.end66:                                         ; preds = %if.end52
  %and67 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.job_unlock_crit_edge, label %if.end70

if.end66.job_unlock_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %job_unlock

if.end70:                                         ; preds = %if.end66
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end70.if.else_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %land.lhs.true94
  ]

if.end70.if.else_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end70
  %enc_state = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 4
  %21 = ptrtoint ptr %enc_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp72 = icmp eq i32 %22, 1
  br i1 %cmp72, label %if.then73, label %if.then117

if.then73:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %enc_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %enc_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then87)) #12
          to label %do.end90 [label %if.then87], !srcloc !396

if.then87:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.58) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %if.then73
  tail call void @mxc_jpeg_enc_mode_go(ptr noundef %3, ptr noundef %1) #12
  br label %job_unlock

land.lhs.true94:                                  ; preds = %if.end70
  %dht_needed = getelementptr inbounds %struct.mxc_jpeg_src_buf, ptr %call.i319, i32 0, i32 2
  %24 = ptrtoint ptr %dht_needed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dht_needed, align 8, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool95.not = icmp eq i8 %25, 0
  br i1 %tobool95.not, label %land.lhs.true94.if.else_crit_edge, label %if.then96

land.lhs.true94.if.else_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then96:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dht_needed to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %dht_needed, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then110)) #12
          to label %job_unlock [label %if.then110], !srcloc !396

if.then110:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.59) #12
  br label %job_unlock

if.then117:                                       ; preds = %land.lhs.true
  %add122 = add nuw nsw i32 %add28, 65544
  %add.ptr123 = getelementptr i8, ptr %1, i32 %add122
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #12, !srcloc !394
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %if.then117.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then117.vb2_set_plane_payload.exit_crit_edge:  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then117
  %length.i = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp1.i = icmp ult i32 %32, %28
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !404

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %34, %if.then38.i ], [ %28, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %35 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then117.vb2_set_plane_payload.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then140)) #12
          to label %do.body174 [label %if.then140], !srcloc !396

if.then140:                                       ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %28) #12
  br label %do.body174

if.else:                                          ; preds = %land.lhs.true94.if.else_crit_edge, %if.end70.if.else_crit_edge
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 2
  %num_planes.i321 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %num_planes.i321 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_planes.i321, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i322.not = icmp eq i32 %37, 0
  br i1 %cmp.i322.not, label %if.else.vb2_set_plane_payload.exit341_crit_edge, label %if.then.i325

if.else.vb2_set_plane_payload.exit341_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit341

if.then.i325:                                     ; preds = %if.else
  %sizeimage = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sizeimage, align 4
  %length.i323 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %40 = ptrtoint ptr %length.i323 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i323, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp1.i324 = icmp ult i32 %41, %39
  br i1 %cmp1.i324, label %land.rhs.i327, label %if.then.i325.vb2_set_plane_payload.exit333_crit_edge

if.then.i325.vb2_set_plane_payload.exit333_crit_edge: ; preds = %if.then.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit333

land.rhs.i327:                                    ; preds = %if.then.i325
  %.b55.i326 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i326, label %land.rhs.i327.if.then38.i329_crit_edge, label %if.then8.i328, !prof !404

land.rhs.i327.if.then38.i329_crit_edge:           ; preds = %land.rhs.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i329

if.then8.i328:                                    ; preds = %land.rhs.i327
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i329

if.then38.i329:                                   ; preds = %if.then8.i328, %land.rhs.i327.if.then38.i329_crit_edge
  %42 = ptrtoint ptr %length.i323 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i323, align 8
  br label %vb2_set_plane_payload.exit333

vb2_set_plane_payload.exit333:                    ; preds = %if.then38.i329, %if.then.i325.vb2_set_plane_payload.exit333_crit_edge
  %size.addr.0.i330 = phi i32 [ %43, %if.then38.i329 ], [ %39, %if.then.i325.vb2_set_plane_payload.exit333_crit_edge ]
  %bytesused.i331 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %44 = ptrtoint ptr %bytesused.i331 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %size.addr.0.i330, ptr %bytesused.i331, align 4
  %45 = ptrtoint ptr %num_planes.i321 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %num_planes.i321, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i335 = icmp ugt i32 %.pr, 1
  br i1 %cmp.i335, label %if.then.i337, label %vb2_set_plane_payload.exit333.vb2_set_plane_payload.exit341_crit_edge

vb2_set_plane_payload.exit333.vb2_set_plane_payload.exit341_crit_edge: ; preds = %vb2_set_plane_payload.exit333
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit341

if.then.i337:                                     ; preds = %vb2_set_plane_payload.exit333
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i339 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 1, i32 3
  %46 = ptrtoint ptr %bytesused.i339 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %bytesused.i339, align 4
  br label %vb2_set_plane_payload.exit341

vb2_set_plane_payload.exit341:                    ; preds = %if.then.i337, %vb2_set_plane_payload.exit333.vb2_set_plane_payload.exit341_crit_edge, %if.else.vb2_set_plane_payload.exit341_crit_edge
  %47 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cap_q.i, align 4
  %colplanes = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %colplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp147 = icmp eq i32 %50, 2
  br i1 %cmp147, label %if.then148, label %vb2_set_plane_payload.exit341.do.body153_crit_edge

vb2_set_plane_payload.exit341.do.body153_crit_edge: ; preds = %vb2_set_plane_payload.exit341
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body153

if.then148:                                       ; preds = %vb2_set_plane_payload.exit341
  %51 = ptrtoint ptr %num_planes.i321 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_planes.i321, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i343 = icmp ugt i32 %52, 1
  br i1 %cmp.i343, label %if.then.i346, label %if.then148.do.body153_crit_edge

if.then148.do.body153_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body153

if.then.i346:                                     ; preds = %if.then148
  %arrayidx150 = getelementptr %struct.mxc_jpeg_ctx, ptr %call7, i32 0, i32 2, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx150, align 4
  %length.i344 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 1, i32 4
  %55 = ptrtoint ptr %length.i344 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length.i344, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp1.i345 = icmp ult i32 %56, %54
  br i1 %cmp1.i345, label %land.rhs.i348, label %if.then.i346.if.end42.i353_crit_edge

if.then.i346.if.end42.i353_crit_edge:             ; preds = %if.then.i346
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i353

land.rhs.i348:                                    ; preds = %if.then.i346
  %.b55.i347 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i347, label %land.rhs.i348.if.then38.i350_crit_edge, label %if.then8.i349, !prof !404

land.rhs.i348.if.then38.i350_crit_edge:           ; preds = %land.rhs.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i350

if.then8.i349:                                    ; preds = %land.rhs.i348
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i350

if.then38.i350:                                   ; preds = %if.then8.i349, %land.rhs.i348.if.then38.i350_crit_edge
  %57 = ptrtoint ptr %length.i344 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i344, align 8
  br label %if.end42.i353

if.end42.i353:                                    ; preds = %if.then38.i350, %if.then.i346.if.end42.i353_crit_edge
  %size.addr.0.i351 = phi i32 [ %58, %if.then38.i350 ], [ %54, %if.then.i346.if.end42.i353_crit_edge ]
  %bytesused.i352 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 1, i32 3
  %59 = ptrtoint ptr %bytesused.i352 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %size.addr.0.i351, ptr %bytesused.i352, align 4
  br label %do.body153

do.body153:                                       ; preds = %if.end42.i353, %if.then148.do.body153_crit_edge, %vb2_set_plane_payload.exit341.do.body153_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then165)) #12
          to label %do.body174 [label %if.then165], !srcloc !396

if.then165:                                       ; preds = %do.body153
  %60 = ptrtoint ptr %num_planes.i321 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_planes.i321, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i356.not = icmp eq i32 %61, 0
  br i1 %cmp.i356.not, label %if.then165.vb2_get_plane_payload.exit365_crit_edge, label %vb2_get_plane_payload.exit

if.then165.vb2_get_plane_payload.exit365_crit_edge: ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit365

vb2_get_plane_payload.exit:                       ; preds = %if.then165
  %bytesused.i357 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %62 = ptrtoint ptr %bytesused.i357 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytesused.i357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i361.not = icmp eq i32 %61, 1
  br i1 %cmp.i361.not, label %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit365_crit_edge, label %if.then.i363

vb2_get_plane_payload.exit.vb2_get_plane_payload.exit365_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit365

if.then.i363:                                     ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i362 = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 1, i32 3
  %64 = ptrtoint ptr %bytesused.i362 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytesused.i362, align 4
  br label %vb2_get_plane_payload.exit365

vb2_get_plane_payload.exit365:                    ; preds = %if.then.i363, %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit365_crit_edge, %if.then165.vb2_get_plane_payload.exit365_crit_edge
  %retval.0.i359379 = phi i32 [ %63, %if.then.i363 ], [ %63, %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit365_crit_edge ], [ 0, %if.then165.vb2_get_plane_payload.exit365_crit_edge ]
  %retval.0.i364 = phi i32 [ %65, %if.then.i363 ], [ 0, %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit365_crit_edge ], [ 0, %if.then165.vb2_get_plane_payload.exit365_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i359379, i32 noundef %retval.0.i364) #12
  br label %do.body174

do.body174:                                       ; preds = %vb2_get_plane_payload.exit365, %do.body153, %if.then140, %vb2_set_plane_payload.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then186)) #12
          to label %do.end189 [label %if.then186], !srcloc !396

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.62) #12
  br label %do.end189

do.end189:                                        ; preds = %if.then186, %do.body174
  tail call fastcc void @print_mxc_buf(ptr noundef %priv, ptr noundef nonnull %call.i319, i32 noundef 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_irq, %if.then203)) #12
          to label %do.end206 [label %if.then203], !srcloc !396

if.then203:                                       ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.63) #12
  br label %do.end206

do.end206:                                        ; preds = %if.then203, %do.end189
  tail call fastcc void @print_mxc_buf(ptr noundef %priv, ptr noundef nonnull %call.i, i32 noundef 32)
  br label %buffers_done

buffers_done:                                     ; preds = %do.end206, %if.then56
  %buf_state.0 = phi i32 [ 6, %if.then56 ], [ 5, %do.end206 ]
  %arrayidx208 = getelementptr %struct.mxc_jpeg_dev, ptr %priv, i32 0, i32 11, i32 %shr
  %66 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx208, align 4
  %67 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i366 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %68, i32 0, i32 8
  %call.i367 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i366) #12
  %69 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i368 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %70, i32 0, i32 7
  %call.i369 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i368) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i319, i32 noundef %buf_state.0) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef %buf_state.0) #12
  tail call void @_raw_spin_unlock(ptr noundef %priv) #12
  %71 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %m2m_dev, align 4
  %73 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %72, ptr noundef %74) #12
  br label %cleanup

job_unlock:                                       ; preds = %if.then110, %if.then96, %do.end90, %if.end66.job_unlock_crit_edge, %do.end51, %do.end23, %do.end12
  tail call void @_raw_spin_unlock(ptr noundef %priv) #12
  br label %cleanup

cleanup:                                          ; preds = %job_unlock, %buffers_done
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_jpeg_attach_pm_domains(ptr nocapture noundef %jpeg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pdev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #12
  %num_domains = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 12
  %6 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71) #15
  %7 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_domains, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !405

devm_kmalloc_array.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pd_dev78 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 13
  %11 = ptrtoint ptr %pd_dev78 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pd_dev78, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end
  %12 = extractvalue { i32, i1 } %9, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %12, i32 noundef 3264) #12
  %pd_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 13
  %13 = ptrtoint ptr %pd_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i, ptr %pd_dev, align 4
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end9

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %devm_kmalloc_array.exit
  %14 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_domains, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #12
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kmalloc_array.exit74.thread, label %devm_kmalloc_array.exit74, !prof !405

devm_kmalloc_array.exit74.thread:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %pd_link82 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 14
  %18 = ptrtoint ptr %pd_link82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pd_link82, align 4
  br label %cleanup

devm_kmalloc_array.exit74:                        ; preds = %if.end9
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i71 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %19, i32 noundef 3264) #12
  %pd_link = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 14
  %20 = ptrtoint ptr %pd_link to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i71, ptr %pd_link, align 4
  %tobool13.not = icmp eq ptr %call5.i71, null
  br i1 %tobool13.not, label %devm_kmalloc_array.exit74.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit74.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit74
  %21 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1787 = icmp sgt i32 %22, 0
  br i1 %cmp1787, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %if.end27
  %inc = add nuw nsw i32 %i.088, 1
  %23 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_domains, align 4
  %cmp17 = icmp slt i32 %inc, %24
  br i1 %cmp17, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call18 = tail call ptr @dev_pm_domain_attach_by_id(ptr noundef %1, i32 noundef %i.088) #12
  %25 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd_dev, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %i.088
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call18, ptr %arrayidx, align 4
  %28 = load ptr, ptr %pd_dev, align 4
  %arrayidx21 = getelementptr ptr, ptr %28, i32 %i.088
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx21, align 4
  %cmp.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %30 to i32
  br label %fail

if.end27:                                         ; preds = %for.body
  %call30 = tail call ptr @device_link_add(ptr noundef %1, ptr noundef %30, i32 noundef 5) #12
  %32 = ptrtoint ptr %pd_link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_link, align 4
  %arrayidx32 = getelementptr ptr, ptr %33, i32 %i.088
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call30, ptr %arrayidx32, align 4
  %35 = load ptr, ptr %pd_link, align 4
  %arrayidx34 = getelementptr ptr, ptr %35, i32 %i.088
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %37, null
  br i1 %tobool35.not, label %if.end27.fail_crit_edge, label %for.cond

if.end27.fail_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

fail:                                             ; preds = %if.end27.fail_crit_edge, %if.then23
  %ret.0 = phi i32 [ %31, %if.then23 ], [ -22, %if.end27.fail_crit_edge ]
  %38 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp39.i = icmp sgt i32 %39, 0
  br i1 %cmp39.i, label %fail.for.body.i_crit_edge, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %fail.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %pd_link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd_link, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %i.040.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  %cmp.i.i = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %for.body.i.if.end.i75_crit_edge, label %if.then.i

for.body.i.if.end.i75_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i75

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_link_del(ptr noundef nonnull %43) #12
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i, %for.body.i.if.end.i75_crit_edge
  %44 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pd_dev, align 4
  %arrayidx5.i = getelementptr ptr, ptr %45, i32 %i.040.i
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %47, null
  %cmp.i37.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %or.cond38.i = or i1 %tobool6.not.i, %cmp.i37.i
  br i1 %or.cond38.i, label %if.end.i75.if.end14.i_crit_edge, label %if.then11.i

if.end.i75.if.end14.i_crit_edge:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %47, i1 noundef zeroext true) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i75.if.end14.i_crit_edge
  %48 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pd_dev, align 4
  %arrayidx16.i = getelementptr ptr, ptr %49, i32 %i.040.i
  %50 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx16.i, align 4
  %51 = ptrtoint ptr %pd_link to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pd_link, align 4
  %arrayidx18.i = getelementptr ptr, ptr %52, i32 %i.040.i
  %53 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx18.i, align 4
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %54 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_domains, align 4
  %cmp.i76 = icmp slt i32 %inc.i, %55
  br i1 %cmp.i76, label %if.end14.i.for.body.i_crit_edge, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup:                                          ; preds = %if.end14.i.cleanup_crit_edge, %fail.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kmalloc_array.exit74.cleanup_crit_edge, %devm_kmalloc_array.exit74.thread, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit74.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -12, %devm_kmalloc_array.exit74.thread ], [ %ret.0, %fail.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.0, %if.end14.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_jpeg_detach_pm_domains(ptr nocapture noundef readonly %jpeg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_domains = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 12
  %0 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39 = icmp sgt i32 %1, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pd_link = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 14
  %pd_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %2 = ptrtoint ptr %pd_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd_link, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_link_del(ptr noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd_dev, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 %i.040
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %9, null
  %cmp.i37 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %or.cond38 = or i1 %tobool6.not, %cmp.i37
  br i1 %or.cond38, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %9, i1 noundef zeroext true) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %10 = ptrtoint ptr %pd_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd_dev, align 4
  %arrayidx16 = getelementptr ptr, ptr %11, i32 %i.040
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx16, align 4
  %13 = ptrtoint ptr %pd_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd_link, align 4
  %arrayidx18 = getelementptr ptr, ptr %14, i32 %i.040
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %16 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_sw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_enc_mode_go(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_mxc_buf(ptr noundef %jpeg, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ult i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp128.not = icmp eq i32 %2, 0
  br i1 %cmp128.not, label %for.cond.preheader.cleanup_crit_edge, label %vb2_get_plane_payload.exit.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_get_plane_payload.exit.lr.ph:                 ; preds = %for.cond.preheader
  %name = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %jpeg, i32 0, i32 8, i32 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %do.end13.vb2_get_plane_payload.exit_crit_edge, %vb2_get_plane_payload.exit.lr.ph
  %len.addr.031 = phi i32 [ %len, %vb2_get_plane_payload.exit.lr.ph ], [ %spec.select, %do.end13.vb2_get_plane_payload.exit_crit_edge ]
  %plane_no.029 = phi i32 [ 0, %vb2_get_plane_payload.exit.lr.ph ], [ %inc, %do.end13.vb2_get_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 %plane_no.029, i32 3
  %3 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.031)
  %cmp2 = icmp eq i32 %len.addr.031, 0
  %spec.select = select i1 %cmp2, i32 %4, i32 %len.addr.031
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef %plane_no.029) #12
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %call6 = tail call ptr @vb2_plane_vaddr(ptr noundef %buf, i32 noundef %plane_no.029) #12
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7 = icmp ugt i32 %7, 2
  br i1 %cmp7, label %do.end, label %vb2_get_plane_payload.exit.do.end13_crit_edge

vb2_get_plane_payload.exit.do.end13_crit_edge:    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

do.end:                                           ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name, i32 noundef %plane_no.029, ptr noundef %call6, i32 noundef %6, i32 noundef %4) #15
  br label %do.end13

do.end13:                                         ; preds = %do.end, %vb2_get_plane_payload.exit.do.end13_crit_edge
  tail call void @print_hex_dump(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %call6, i32 noundef %spec.select, i1 noundef zeroext false) #12
  %inc = add nuw i32 %plane_no.029, 1
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes, align 8
  %cmp1 = icmp ult i32 %inc, %9
  br i1 %cmp1, label %do.end13.vb2_get_plane_payload.exit_crit_edge, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end13.vb2_get_plane_payload.exit_crit_edge:    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit

cleanup:                                          ; preds = %do.end13.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_jpeg_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %base_reg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_reg, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #12
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i171 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #12
  %tobool.not = icmp eq ptr %call.i, null
  %tobool11.not = icmp eq ptr %call.i171, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end14, label %if.end

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.73) #15
  br label %end

if.end:                                           ; preds = %entry
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 2
  %tobool16.not = icmp eq ptr %cap_q.i, null
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 1
  %tobool20.not = icmp eq ptr %out_q.i, null
  %or.cond186 = select i1 %tobool16.not, i1 true, i1 %tobool20.not
  br i1 %or.cond186, label %if.end.end_crit_edge, label %if.end22

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end22:                                         ; preds = %if.end
  %sequence = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence23 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %sequence23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sequence23, align 8
  %sequence24 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 2, i32 7
  %13 = ptrtoint ptr %sequence24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sequence24, align 4
  %inc25 = add i32 %14, 1
  store i32 %inc25, ptr %sequence24, align 4
  %sequence26 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i171, i32 0, i32 4
  %15 = ptrtoint ptr %sequence26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sequence26, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i171, i1 noundef zeroext true) #12
  %jpeg_parse_error = getelementptr inbounds %struct.mxc_jpeg_src_buf, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %jpeg_parse_error to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %jpeg_parse_error, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.end40, label %if.then29

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %slot = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 6
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot, align 4
  %arrayidx = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i174 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %22, i32 0, i32 8
  %call.i175 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i174) #12
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i176 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 7
  %call.i177 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i176) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 6) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i171, i32 noundef 6) #12
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call4) #12
  %m2m_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_dev, align 4
  %29 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %28, ptr noundef %30) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end22
  %call41 = tail call i32 @mxc_jpeg_enable(ptr noundef %3) #12
  tail call void @mxc_jpeg_set_l_endian(ptr noundef %3, i32 noundef 1) #12
  %slot_data42 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %slot_data42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %slot_data42, align 4, !range !402
  %33 = zext i8 %32 to i32
  %slot44 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 6
  %34 = ptrtoint ptr %slot44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %slot44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp46.not = icmp eq i8 %32, 0
  br i1 %cmp46.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.76) #15
  br label %end

if.end52:                                         ; preds = %if.end40
  %desc1.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 1
  %35 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc1.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end.i:                                         ; preds = %if.end52
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %desc_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 5
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef 32, ptr noundef %desc_handle.i, i32 noundef 2592, i32 noundef 0) #12
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.do.end58_crit_edge, label %if.end6.i

if.end.i.do.end58_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.end6.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %desc1.i, align 4
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %cfg_desc_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 6
  %call.i1.i = tail call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef 32, ptr noundef %cfg_desc_handle.i, i32 noundef 2592, i32 noundef 0) #12
  %tobool14.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool14.not.i, label %if.end6.i.do.end58_crit_edge, label %if.end16.i

if.end6.i.do.end58_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.end16.i:                                       ; preds = %if.end6.i
  %cfg_desc19.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 2
  %42 = ptrtoint ptr %cfg_desc19.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i1.i, ptr %cfg_desc19.i, align 4
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %cfg_stream_handle.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 7
  %call.i2.i = tail call ptr @dma_alloc_attrs(ptr noundef %44, i32 noundef 4096, ptr noundef %cfg_stream_handle.i, i32 noundef 2592, i32 noundef 0) #12
  %tobool24.not.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool24.not.i, label %if.end16.i.do.end58_crit_edge, label %if.end26.i

if.end16.i.do.end58_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.end26.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %cfg_stream_vaddr.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 0, i32 3
  %45 = ptrtoint ptr %cfg_stream_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i2.i, ptr %cfg_stream_vaddr.i, align 4
  br label %if.end59

do.end58:                                         ; preds = %if.end16.i.do.end58_crit_edge, %if.end6.i.do.end58_crit_edge, %if.end.i.do.end58_crit_edge
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.83, i32 noundef 0) #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.79) #15
  br label %end

if.end59:                                         ; preds = %if.end26.i, %if.end52.if.end59_crit_edge
  %48 = ptrtoint ptr %slot_data42 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %slot_data42, align 4
  %49 = ptrtoint ptr %slot44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slot44, align 4
  tail call void @mxc_jpeg_enable_slot(ptr noundef %3, i32 noundef %50) #12
  %51 = ptrtoint ptr %slot44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slot44, align 4
  tail call void @mxc_jpeg_enable_irq(ptr noundef %3, i32 noundef %52) #12
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp62 = icmp eq i32 %54, 1
  br i1 %cmp62, label %do.body65, label %do.body79

do.body65:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_device_run.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_device_run, %if.then71)) #12
          to label %do.end75 [label %if.then71], !srcloc !396

if.then71:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %slot44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slot44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_device_run.__UNIQUE_ID_ddebug312, ptr noundef %5, ptr noundef nonnull @.str.81, i32 noundef %56) #12
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body65
  %enc_state = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 4
  %57 = ptrtoint ptr %enc_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %enc_state, align 4
  tail call fastcc void @mxc_jpeg_config_enc_desc(ptr noundef %priv, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i171)
  tail call void @mxc_jpeg_enc_mode_conf(ptr noundef %5, ptr noundef %3) #12
  br label %end

do.body79:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_device_run.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_device_run, %if.then91)) #12
          to label %do.end95 [label %if.then91], !srcloc !396

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %slot44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slot44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_device_run.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.82, i32 noundef %59) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body79
  tail call fastcc void @print_mxc_buf(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef 0)
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %base_reg.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_reg.i, align 4
  %64 = ptrtoint ptr %slot44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %slot44, align 4
  %desc2.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 1
  %66 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc2.i, align 4
  %cfg_desc5.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 2
  %68 = ptrtoint ptr %cfg_desc5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg_desc5.i, align 4
  %desc_handle8.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 5
  %70 = ptrtoint ptr %desc_handle8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_handle8.i, align 4
  %cfg_desc_handle11.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 6
  %72 = ptrtoint ptr %cfg_desc_handle11.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cfg_desc_handle11.i, align 4
  %cfg_stream_handle14.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 7
  %74 = ptrtoint ptr %cfg_stream_handle14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg_stream_handle14.i, align 4
  %cfg_stream_vaddr19.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 3
  %76 = ptrtoint ptr %cfg_stream_vaddr19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg_stream_vaddr19.i, align 4
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 0, ptr %67, align 1
  %w_adjusted.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 2, i32 4
  %79 = ptrtoint ptr %w_adjusted.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %w_adjusted.i, align 4
  %shl.i = shl i32 %80, 16
  %h_adjusted.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 2, i32 6
  %81 = ptrtoint ptr %h_adjusted.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %h_adjusted.i, align 4
  %or.i = or i32 %shl.i, %82
  %imgsize.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 6
  %83 = ptrtoint ptr %imgsize.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %or.i, ptr %imgsize.i, align 1
  %84 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cap_q.i, align 4
  %fourcc.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fourcc.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %87, label %sw.default.i.i [
    i32 1497715271, label %do.end95.mxc_jpeg_fourcc_to_imgfmt.exit.i_crit_edge
    i32 1448695129, label %sw.bb1.i.i
    i32 842094158, label %sw.bb2.i.i
    i32 861295961, label %sw.bb3.i.i
    i32 859981650, label %sw.bb4.i.i
    i32 875708738, label %sw.bb5.i.i
  ]

do.end95.mxc_jpeg_fourcc_to_imgfmt.exit.i_crit_edge: ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.bb1.i.i:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.bb2.i.i:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.bb3.i.i:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.bb4.i.i:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.bb5.i.i:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

sw.default.i.i:                                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_fourcc_to_imgfmt.exit.i

mxc_jpeg_fourcc_to_imgfmt.exit.i:                 ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %do.end95.mxc_jpeg_fourcc_to_imgfmt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -8, %sw.default.i.i ], [ 48, %sw.bb5.i.i ], [ 16, %sw.bb4.i.i ], [ 24, %sw.bb3.i.i ], [ 0, %sw.bb2.i.i ], [ 8, %sw.bb1.i.i ], [ 32, %do.end95.mxc_jpeg_fourcc_to_imgfmt.exit.i_crit_edge ]
  %stm_ctrl.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 7
  %89 = ptrtoint ptr %stm_ctrl.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %stm_ctrl.i, align 1
  %and.i = and i32 %90, -249
  %or24.i = or i32 %retval.0.i.i, %and.i
  %or26.i = or i32 %or24.i, 128
  store i32 %or26.i, ptr %stm_ctrl.i, align 1
  %bytesperline.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %priv, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bytesperline.i, align 4
  %line_pitch.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 3
  %93 = ptrtoint ptr %line_pitch.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %line_pitch.i, align 1
  %and.i.i = and i32 %retval.0.i.i, 120
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i171, i32 noundef 0) #12
  %94 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call.i.i.i, align 4
  %buf_base0.i.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 1
  %96 = ptrtoint ptr %buf_base0.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %buf_base0.i.i, align 1
  %buf_base1.i.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 2
  %97 = ptrtoint ptr %buf_base1.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 0, ptr %buf_base1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %mxc_jpeg_fourcc_to_imgfmt.exit.i.mxc_jpeg_addrs.exit.i_crit_edge

mxc_jpeg_fourcc_to_imgfmt.exit.i.mxc_jpeg_addrs.exit.i_crit_edge: ; preds = %mxc_jpeg_fourcc_to_imgfmt.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_addrs.exit.i

if.then.i.i:                                      ; preds = %mxc_jpeg_fourcc_to_imgfmt.exit.i
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i171, i32 0, i32 4
  %98 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp1.i.i = icmp ult i32 %99, 2
  br i1 %cmp1.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !405

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 437, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i1.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i171, i32 noundef 1) #12
  %100 = ptrtoint ptr %call.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call.i1.i.i, align 4
  %102 = ptrtoint ptr %buf_base1.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %buf_base1.i.i, align 1
  br label %mxc_jpeg_addrs.exit.i

mxc_jpeg_addrs.exit.i:                            ; preds = %if.end.i.i, %mxc_jpeg_fourcc_to_imgfmt.exit.i.mxc_jpeg_addrs.exit.i_crit_edge
  %call.i2.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #12
  %103 = ptrtoint ptr %call.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call.i2.i.i, align 4
  %stm_bufbase.i.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %67, i32 0, i32 4
  %105 = ptrtoint ptr %stm_bufbase.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %stm_bufbase.i.i, align 1
  %num_planes.i1.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %106 = ptrtoint ptr %num_planes.i1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_planes.i1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i2.not.i = icmp eq i32 %107, 0
  br i1 %cmp.i2.not.i, label %mxc_jpeg_addrs.exit.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i3.i

mxc_jpeg_addrs.exit.i.vb2_plane_size.exit.i_crit_edge: ; preds = %mxc_jpeg_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit.i

if.then.i3.i:                                     ; preds = %mxc_jpeg_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %108 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %length.i.i, align 8
  %phi.bo.i = add i32 %109, 1023
  %phi.bo6.i = and i32 %phi.bo.i, -1024
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i3.i, %mxc_jpeg_addrs.exit.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i4.i = phi i32 [ %phi.bo6.i, %if.then.i3.i ], [ 0, %mxc_jpeg_addrs.exit.i.vb2_plane_size.exit.i_crit_edge ]
  tail call void @mxc_jpeg_set_bufsize(ptr noundef %67, i32 noundef %retval.0.i4.i) #12
  %dev.i179 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 6
  %110 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i179, align 4
  tail call void @print_descriptor_info(ptr noundef %111, ptr noundef %67) #12
  %dht_needed.i = getelementptr inbounds %struct.mxc_jpeg_src_buf, ptr %call.i, i32 0, i32 2
  %112 = ptrtoint ptr %dht_needed.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dht_needed.i, align 8, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i180 = icmp eq i8 %113, 0
  br i1 %tobool.not.i180, label %vb2_plane_size.exit.i.mxc_jpeg_config_dec_desc.exit_crit_edge, label %if.end.i182

vb2_plane_size.exit.i.mxc_jpeg_config_dec_desc.exit_crit_edge: ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_config_dec_desc.exit

if.end.i182:                                      ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %cfg_stream_size.i = getelementptr %struct.mxc_jpeg_dev, ptr %61, i32 0, i32 11, i32 %65, i32 4
  %114 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 -40, ptr %77, align 1
  %add.ptr4.i.i = getelementptr i8, ptr %77, i32 2
  %115 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr @jpeg_app0, i32 18)
  %add.ptr6.i.i = getelementptr i8, ptr %77, i32 20
  %116 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr @jpeg_dqt, i32 134)
  %add.ptr8.i.i = getelementptr i8, ptr %77, i32 154
  %117 = call ptr @memcpy(ptr %add.ptr8.i.i, ptr @jpeg_sof_maximal, i32 22)
  %add.ptr10.i.i = getelementptr i8, ptr %77, i32 156
  %precision.i.i.i = getelementptr i8, ptr %77, i32 158
  %118 = ptrtoint ptr %precision.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 8, ptr %precision.i.i.i, align 1
  %height.i.i.i = getelementptr i8, ptr %77, i32 159
  %119 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 16384, ptr %height.i.i.i, align 2
  %width.i.i.i = getelementptr i8, ptr %77, i32 161
  %120 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 16384, ptr %width.i.i.i, align 2
  %components_no10.i.i.i = getelementptr i8, ptr %77, i32 163
  %121 = ptrtoint ptr %components_no10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %components_no10.i.i.i, align 1
  %v13.i.i.i = getelementptr i8, ptr %77, i32 165
  %122 = ptrtoint ptr %v13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 18, ptr %v13.i.i.i, align 1
  %123 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 4352, ptr %add.ptr10.i.i, align 2
  %add.ptr12.i.i = getelementptr i8, ptr %77, i32 173
  %124 = call ptr @memcpy(ptr %add.ptr12.i.i, ptr @jpeg_dht, i32 420)
  %add.ptr14.i.i = getelementptr i8, ptr %77, i32 593
  %125 = call ptr @memcpy(ptr %add.ptr14.i.i, ptr @jpeg_dri, i32 6)
  %add.ptr16.i.i = getelementptr i8, ptr %77, i32 599
  %126 = call ptr @memcpy(ptr %add.ptr16.i.i, ptr @jpeg_sos_maximal, i32 16)
  %add.ptr18.i.i = getelementptr i8, ptr %77, i32 601
  %components_no8.i.i.i = getelementptr i8, ptr %77, i32 603
  %127 = ptrtoint ptr %components_no8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %components_no8.i.i.i, align 1
  %128 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 3072, ptr %add.ptr18.i.i, align 2
  %arrayidx.i.i.i = getelementptr i8, ptr %77, i32 612
  %129 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %arrayidx13.i.i.i = getelementptr i8, ptr %77, i32 611
  %130 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 63, ptr %arrayidx13.i.i.i, align 1
  %arrayidx15.i.i.i = getelementptr i8, ptr %77, i32 610
  %131 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx15.i.i.i, align 1
  %add.ptr21.i.i = getelementptr i8, ptr %77, i32 613
  %132 = call ptr @memcpy(ptr %add.ptr21.i.i, ptr @jpeg_image_red, i32 86)
  %add.ptr23.i.i = getelementptr i8, ptr %77, i32 699
  %133 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 -39, ptr %add.ptr23.i.i, align 1
  %134 = ptrtoint ptr %cfg_stream_size.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 701, ptr %cfg_stream_size.i, align 4
  %or31.i = or i32 %71, 1
  %135 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %or31.i, ptr %69, align 1
  %call.i.i181 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i171, i32 noundef 0) #12
  %136 = ptrtoint ptr %call.i.i181 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %call.i.i181, align 4
  %buf_base0.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 1
  %138 = ptrtoint ptr %buf_base0.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %buf_base0.i, align 1
  %buf_base1.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 2
  %139 = ptrtoint ptr %buf_base1.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 0, ptr %buf_base1.i, align 1
  %imgsize34.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 6
  %140 = ptrtoint ptr %imgsize34.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 4194368, ptr %imgsize34.i, align 1
  %line_pitch37.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 3
  %141 = ptrtoint ptr %line_pitch37.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 128, ptr %line_pitch37.i, align 1
  %stm_ctrl38.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 7
  %142 = ptrtoint ptr %stm_ctrl38.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 136, ptr %stm_ctrl38.i, align 1
  %stm_bufbase.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 4
  %143 = ptrtoint ptr %stm_bufbase.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %75, ptr %stm_bufbase.i, align 1
  %144 = ptrtoint ptr %cfg_stream_size.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cfg_stream_size.i, align 4
  %add41.i = add i32 %145, 1023
  %and42.i = and i32 %add41.i, -1024
  %stm_bufsize.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %69, i32 0, i32 5
  %146 = ptrtoint ptr %stm_bufsize.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %and42.i, ptr %stm_bufsize.i, align 1
  %147 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i179, align 4
  tail call void @print_descriptor_info(ptr noundef %148, ptr noundef %69) #12
  br label %mxc_jpeg_config_dec_desc.exit

mxc_jpeg_config_dec_desc.exit:                    ; preds = %if.end.i182, %vb2_plane_size.exit.i.mxc_jpeg_config_dec_desc.exit_crit_edge
  %.sink.i = phi i32 [ %73, %if.end.i182 ], [ %71, %vb2_plane_size.exit.i.mxc_jpeg_config_dec_desc.exit_crit_edge ]
  tail call void @mxc_jpeg_set_desc(i32 noundef %.sink.i, ptr noundef %63, i32 noundef %65) #12
  tail call void @mxc_jpeg_dec_mode_go(ptr noundef %5, ptr noundef %3) #12
  br label %end

end:                                              ; preds = %mxc_jpeg_config_dec_desc.exit, %do.end75, %do.end58, %do.end51, %if.end.end_crit_edge, %do.end14
  %149 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %150, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxc_jpeg_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_set_l_endian(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_enable_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_jpeg_config_enc_desc(ptr nocapture noundef readonly %ctx, ptr noundef %src_buf, ptr noundef %dst_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %base_reg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_reg, align 4
  %slot1 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot1, align 4
  %desc2 = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 1
  %6 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc2, align 4
  %cfg_desc5 = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 2
  %8 = ptrtoint ptr %cfg_desc5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg_desc5, align 4
  %desc_handle8 = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 5
  %10 = ptrtoint ptr %desc_handle8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_handle8, align 4
  %cfg_desc_handle11 = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 6
  %12 = ptrtoint ptr %cfg_desc_handle11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_desc_handle11, align 4
  %cfg_stream_vaddr14 = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 3
  %14 = ptrtoint ptr %cfg_stream_vaddr14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg_stream_vaddr14, align 4
  %16 = ptrtoint ptr %src_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_buf, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %19, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge13
    i32 3, label %entry.if.then.i_crit_edge14
    i32 8, label %entry.if.then.i_crit_edge15
    i32 5, label %entry.if.then.i_crit_edge16
    i32 7, label %entry.if.then.i_crit_edge17
    i32 12, label %entry.if.then.i_crit_edge18
    i32 14, label %entry.if.then.i_crit_edge19
  ]

entry.if.then.i_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge13, %entry.if.then.i_crit_edge14, %entry.if.then.i_crit_edge15, %entry.if.then.i_crit_edge16, %entry.if.then.i_crit_edge17, %entry.if.then.i_crit_edge18, %entry.if.then.i_crit_edge19
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1
  br label %mxc_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i4 = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %21 = ptrtoint ptr %retval.0.i4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %retval.0.i4, align 4
  %fourcc = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fourcc, align 4
  %w_adjusted = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i4, i32 0, i32 4
  %25 = ptrtoint ptr %w_adjusted to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %w_adjusted, align 4
  %conv = trunc i32 %26 to i16
  %h_adjusted = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i4, i32 0, i32 6
  %27 = ptrtoint ptr %h_adjusted to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h_adjusted, align 4
  %conv15 = trunc i32 %28 to i16
  %call16 = tail call fastcc i32 @mxc_jpeg_setup_cfg_stream(ptr noundef %15, i32 noundef %24, i16 noundef zeroext %conv, i16 noundef zeroext %conv15)
  %cfg_stream_size = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 4
  %29 = ptrtoint ptr %cfg_stream_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call16, ptr %cfg_stream_size, align 4
  %or = or i32 %11, 1
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %or, ptr %9, align 1
  %cfg_stream_handle = getelementptr %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 11, i32 %5, i32 7
  %31 = ptrtoint ptr %cfg_stream_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg_stream_handle, align 4
  %buf_base0 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %9, i32 0, i32 1
  %33 = ptrtoint ptr %buf_base0 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %buf_base0, align 1
  %buf_base1 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %9, i32 0, i32 2
  %stm_ctrl = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %9, i32 0, i32 7
  %34 = call ptr @memset(ptr %buf_base1, i32 0, i32 20)
  %35 = ptrtoint ptr %stm_ctrl to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 640, ptr %stm_ctrl, align 1
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %7, align 1
  %37 = ptrtoint ptr %w_adjusted to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %w_adjusted, align 4
  %39 = ptrtoint ptr %h_adjusted to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %h_adjusted, align 4
  %conv26 = trunc i32 %38 to i16
  %conv27 = trunc i32 %40 to i16
  tail call void @mxc_jpeg_set_res(ptr noundef %7, i16 noundef zeroext %conv26, i16 noundef zeroext %conv27) #12
  %41 = ptrtoint ptr %retval.0.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i4, align 4
  %depth = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %depth, align 4
  %div = sdiv i32 %44, 8
  %mul = mul i32 %div, %38
  tail call void @mxc_jpeg_set_line_pitch(ptr noundef %7, i32 noundef %mul) #12
  %line_pitch29 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %7, i32 0, i32 3
  %45 = ptrtoint ptr %line_pitch29 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %line_pitch29, align 1
  %mul30 = mul i32 %46, %40
  tail call void @mxc_jpeg_set_bufsize(ptr noundef %7, i32 noundef %mul30) #12
  %47 = ptrtoint ptr %retval.0.i4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %retval.0.i4, align 4
  %fourcc32 = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %fourcc32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fourcc32, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %50, label %do.end [
    i32 1497715271, label %mxc_jpeg_get_q_data.exit.if.end_crit_edge
    i32 1448695129, label %sw.bb1.i
    i32 842094158, label %sw.bb2.i
    i32 861295961, label %sw.bb3.i
    i32 859981650, label %sw.bb4.i
    i32 875708738, label %sw.bb5.i
  ]

mxc_jpeg_get_q_data.exit.if.end_crit_edge:        ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb1.i:                                         ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb2.i:                                         ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb3.i:                                         ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb4.i:                                         ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb5.i:                                         ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.85) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %mxc_jpeg_get_q_data.exit.if.end_crit_edge
  %retval.0.i510 = phi i32 [ -8, %do.end ], [ 160, %mxc_jpeg_get_q_data.exit.if.end_crit_edge ], [ 136, %sw.bb1.i ], [ 128, %sw.bb2.i ], [ 152, %sw.bb3.i ], [ 144, %sw.bb4.i ], [ 176, %sw.bb5.i ]
  %stm_ctrl36 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %7, i32 0, i32 7
  %54 = ptrtoint ptr %stm_ctrl36 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %retval.0.i510, ptr %stm_ctrl36, align 1
  %and.i = and i32 %retval.0.i510, 120
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %src_buf, i32 noundef 0) #12
  %55 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i.i, align 4
  %buf_base0.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %7, i32 0, i32 1
  %57 = ptrtoint ptr %buf_base0.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %buf_base0.i, align 1
  %buf_base1.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %7, i32 0, i32 2
  %58 = ptrtoint ptr %buf_base1.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %buf_base1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i6, label %if.end.mxc_jpeg_addrs.exit_crit_edge

if.end.mxc_jpeg_addrs.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_addrs.exit

if.then.i6:                                       ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %src_buf, i32 0, i32 4
  %59 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp1.i = icmp ult i32 %60, 2
  br i1 %cmp1.i, label %do.end.i, label %if.then.i6.if.end.i7_crit_edge, !prof !405

if.then.i6.if.end.i7_crit_edge:                   ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i7

do.end.i:                                         ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 437, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i7

if.end.i7:                                        ; preds = %do.end.i, %if.then.i6.if.end.i7_crit_edge
  %call.i1.i = tail call ptr @vb2_plane_cookie(ptr noundef %src_buf, i32 noundef 1) #12
  %61 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i1.i, align 4
  %63 = ptrtoint ptr %buf_base1.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %buf_base1.i, align 1
  br label %mxc_jpeg_addrs.exit

mxc_jpeg_addrs.exit:                              ; preds = %if.end.i7, %if.end.mxc_jpeg_addrs.exit_crit_edge
  %call.i2.i = tail call ptr @vb2_plane_cookie(ptr noundef %dst_buf, i32 noundef 0) #12
  %64 = ptrtoint ptr %call.i2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call.i2.i, align 4
  %stm_bufbase.i = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %7, i32 0, i32 4
  %66 = ptrtoint ptr %stm_bufbase.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %stm_bufbase.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_config_enc_desc, %if.then43)) #12
          to label %do.end47 [label %if.then43], !srcloc !396

if.then43:                                        ; preds = %mxc_jpeg_addrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev44 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug310, ptr noundef %68, ptr noundef nonnull @.str.87) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %mxc_jpeg_addrs.exit
  %dev48 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev48, align 4
  tail call void @print_descriptor_info(ptr noundef %70, ptr noundef %9) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_config_enc_desc, %if.then61)) #12
          to label %do.end65 [label %if.then61], !srcloc !396

if.then61:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug311, ptr noundef %72, ptr noundef nonnull @.str.88) #12
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.end47
  %73 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev48, align 4
  tail call void @print_descriptor_info(ptr noundef %74, ptr noundef %7) #12
  %75 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev48, align 4
  tail call void @print_wrapper_info(ptr noundef %76, ptr noundef %3) #12
  %77 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev48, align 4
  tail call void @print_cast_status(ptr noundef %78, ptr noundef %3, i32 noundef 1) #12
  tail call void @mxc_jpeg_set_desc(i32 noundef %13, ptr noundef %3, i32 noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_enc_mode_conf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_dec_mode_go(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mxc_jpeg_setup_cfg_stream(ptr nocapture noundef %cfg_stream_vaddr, i32 noundef %fourcc, i16 noundef zeroext %w, i16 noundef zeroext %h) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg_stream_vaddr to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -40, ptr %cfg_stream_vaddr, align 1
  %1 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %fourcc, label %if.else [
    i32 859981650, label %entry.if.then_crit_edge
    i32 875708738, label %entry.if.then_crit_edge66
  ]

entry.if.then_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge66
  %add.ptr2 = getelementptr i8, ptr %cfg_stream_vaddr, i32 2
  %2 = call ptr @memcpy(ptr %add.ptr2, ptr @jpeg_app14, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr4 = getelementptr i8, ptr %cfg_stream_vaddr, i32 2
  %3 = call ptr @memcpy(ptr %add.ptr4, ptr @jpeg_app0, i32 18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0 = phi i32 [ 18, %if.then ], [ 20, %if.else ]
  %add.ptr6 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %offset.0
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr @jpeg_dqt, i32 134)
  %add7 = add nuw nsw i32 %offset.0, 134
  %add.ptr8 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add7
  %5 = call ptr @memcpy(ptr %add.ptr8, ptr @jpeg_sof_maximal, i32 22)
  %add9 = or i32 %offset.0, 136
  %add.ptr10 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add9
  %precision.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 1
  %6 = ptrtoint ptr %precision.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %precision.i, align 1
  %height.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 2
  %rev.i.i = tail call i16 @llvm.bswap.i16(i16 %h) #12
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %rev.i.i, ptr %height.i, align 2
  %width.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 3
  %rev.i49.i = tail call i16 @llvm.bswap.i16(i16 %w) #12
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %rev.i49.i, ptr %width.i, align 2
  %9 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %fourcc, label %sw.default.i [
    i32 842094158, label %sw.bb.i
    i32 1448695129, label %sw.bb9.i
    i32 1497715271, label %sw.bb27.i
    i32 875708738, label %sw.bb25.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %components_no.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %10 = ptrtoint ptr %components_no.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %components_no.i, align 1
  %v.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %v.i, align 1
  br label %mxc_jpeg_fixup_sof.exit

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %components_no10.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %12 = ptrtoint ptr %components_no10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %components_no10.i, align 1
  %v13.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %v13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 18, ptr %v13.i, align 1
  br label %mxc_jpeg_fixup_sof.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %components_no24.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %14 = ptrtoint ptr %components_no24.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %components_no24.i, align 1
  br label %mxc_jpeg_fixup_sof.exit

sw.bb25.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %components_no26.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %15 = ptrtoint ptr %components_no26.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %components_no26.i, align 1
  br label %mxc_jpeg_fixup_sof.exit

sw.bb27.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %components_no28.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %16 = ptrtoint ptr %components_no28.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %components_no28.i, align 1
  br label %mxc_jpeg_fixup_sof.exit

mxc_jpeg_fixup_sof.exit:                          ; preds = %sw.bb27.i, %sw.bb25.i, %sw.default.i, %sw.bb9.i, %sw.bb.i
  %components_no29.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %add.ptr10, i32 0, i32 4
  %17 = ptrtoint ptr %components_no29.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %components_no29.i, align 1
  %conv.i = zext i8 %18 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 3
  %add.i = add nuw nsw i32 %mul.i, 8
  %conv30.i = trunc i32 %add.i to i16
  %rev.i50.i = tail call i16 @llvm.bswap.i16(i16 %conv30.i) #12
  %19 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %rev.i50.i, ptr %add.ptr10, align 2
  %add11 = add nuw nsw i32 %add.i, %add9
  %add.ptr12 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add11
  %20 = call ptr @memcpy(ptr %add.ptr12, ptr @jpeg_dht, i32 420)
  %add13 = add nuw nsw i32 %add11, 420
  %add.ptr14 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add13
  %21 = call ptr @memcpy(ptr %add.ptr14, ptr @jpeg_dri, i32 6)
  %add15 = add nuw nsw i32 %add11, 426
  %add.ptr16 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add15
  %22 = call ptr @memcpy(ptr %add.ptr16, ptr @jpeg_sos_maximal, i32 16)
  %add17 = add nuw nsw i32 %add11, 428
  %add.ptr18 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %fourcc)
  %switch.selectcmp.i = icmp eq i32 %fourcc, 1497715271
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 875708738, i32 %fourcc)
  %switch.selectcmp30.i = icmp eq i32 %fourcc, 875708738
  %switch.select31.i = select i1 %switch.selectcmp30.i, i8 4, i8 %switch.select.i
  %components_no8.i = getelementptr inbounds %struct.mxc_jpeg_sos, ptr %add.ptr18, i32 0, i32 1
  %23 = ptrtoint ptr %components_no8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %switch.select31.i, ptr %components_no8.i, align 1
  %24 = shl nuw nsw i8 %switch.select31.i, 1
  %mul.i63 = zext i8 %24 to i32
  %add.i64 = add nuw nsw i32 %mul.i63, 6
  %conv10.i = trunc i32 %add.i64 to i16
  %rev.i.i65 = shl nuw nsw i16 %conv10.i, 8
  %25 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %rev.i.i65, ptr %add.ptr18, align 2
  %sub.i = add nuw nsw i32 %mul.i63, 5
  %arrayidx.i = getelementptr i8, ptr %add.ptr18, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.i, align 1
  %sub12.i = add nuw nsw i32 %mul.i63, 4
  %arrayidx13.i = getelementptr i8, ptr %add.ptr18, i32 %sub12.i
  %27 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 63, ptr %arrayidx13.i, align 1
  %sub14.i = add nuw nsw i32 %mul.i63, 3
  %arrayidx15.i = getelementptr i8, ptr %add.ptr18, i32 %sub14.i
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx15.i, align 1
  %add20 = add nuw nsw i32 %add17, %add.i64
  %add.ptr21 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add20
  %29 = call ptr @memcpy(ptr %add.ptr21, ptr @jpeg_image_red, i32 86)
  %add22 = add nuw nsw i32 %add20, 86
  %add.ptr23 = getelementptr i8, ptr %cfg_stream_vaddr, i32 %add22
  %30 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 -39, ptr %add.ptr23, align 1
  %add24 = add nuw nsw i32 %add20, 88
  ret i32 %add24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_set_res(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_set_line_pitch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_set_bufsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_descriptor_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_wrapper_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cast_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_jpeg_set_desc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #12
  %dev2 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 288) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end7:                                          ; preds = %if.end
  %fh = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 3
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #12
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call7.i.i, align 8
  %m2m_dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_dev, align 4
  %call11 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mxc_jpeg_queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call11 to i32
  tail call void @v4l2_fh_del(ptr noundef %fh) #12
  tail call void @v4l2_fh_exit(ptr noundef %fh) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %free

if.end20:                                         ; preds = %if.end7
  %out_q1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1
  %cap_q2.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %mode.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i80 = icmp eq i32 %14, 1
  %.mxc_formats.i = select i1 %cmp.i80, ptr getelementptr inbounds ([7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 1), ptr @mxc_formats
  %mxc_formats..i = select i1 %cmp.i80, ptr @mxc_formats, ptr getelementptr inbounds ([7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 1)
  %15 = ptrtoint ptr %out_q1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.mxc_formats.i, ptr %out_q1.i, align 4
  %16 = ptrtoint ptr %cap_q2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mxc_formats..i, ptr %cap_q2.i, align 4
  %w.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1280, ptr %w.i, align 8
  %h.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 720, ptr %h.i, align 8
  %w_adjusted.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %w_adjusted.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1280, ptr %w_adjusted.i, align 4
  %h_adjusted.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %h_adjusted.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 720, ptr %h_adjusted.i, align 4
  %bytesperline10.i.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  br i1 %cmp.i80, label %mxc_jpeg_bytesperline.exit.i, label %mxc_jpeg_bytesperline.exit.i.thread

mxc_jpeg_bytesperline.exit.i.thread:              ; preds = %if.end20
  %21 = ptrtoint ptr %bytesperline10.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bytesperline10.i.i, align 8
  %arrayidx15.i.i84 = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx15.i.i84 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx15.i.i84, align 4
  %sizeimage.i.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end.i.thread.i, label %if.end.i.i

mxc_jpeg_bytesperline.exit.i:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %bytesperline10.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3840, ptr %bytesperline10.i.i, align 8
  %arrayidx15.i.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx15.i.i, align 4
  %sizeimage21.i.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %sizeimage21.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2764800, ptr %sizeimage21.i.i, align 8
  %arrayidx24.i.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx24.i.i, align 4
  br label %mxc_jpeg_sizeimage.exit.i

if.end.i.thread.i:                                ; preds = %mxc_jpeg_bytesperline.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5529600, ptr %sizeimage.i.i, align 8
  %arrayidx6.i34.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx6.i34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx6.i34.i, align 4
  br label %if.end13.i.i

if.end.i.i:                                       ; preds = %mxc_jpeg_bytesperline.exit.i.thread
  %arrayidx6.i.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %24)
  %cmp9.i.i = icmp ugt i32 %24, -1024
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1024, ptr %sizeimage.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end13.i.i_crit_edge, %if.end.i.thread.i
  %33 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeimage.i.i, align 8
  %add.i.i = add i32 %34, 1023
  %and.i.i = and i32 %add.i.i, -1024
  store i32 %and.i.i, ptr %sizeimage.i.i, align 8
  br label %mxc_jpeg_sizeimage.exit.i

mxc_jpeg_sizeimage.exit.i:                        ; preds = %if.end13.i.i, %mxc_jpeg_bytesperline.exit.i
  %w.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %w.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1280, ptr %w.1.i, align 8
  %h.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %h.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 720, ptr %h.1.i, align 8
  %w_adjusted.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %w_adjusted.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1280, ptr %w_adjusted.1.i, align 4
  %h_adjusted.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %h_adjusted.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 720, ptr %h_adjusted.1.i, align 4
  %39 = ptrtoint ptr %cap_q2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cap_q2.i, align 4
  %fourcc.i.1.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %fourcc.i.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fourcc.i.1.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %42, label %if.else16.i.1.i [
    i32 1195724874, label %mxc_jpeg_sizeimage.exit.i.mxc_jpeg_bytesperline.exit.1.i_crit_edge
    i32 842094158, label %if.then6.i.1.i
  ]

mxc_jpeg_sizeimage.exit.i.mxc_jpeg_bytesperline.exit.1.i_crit_edge: ; preds = %mxc_jpeg_sizeimage.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_bytesperline.exit.1.i

if.then6.i.1.i:                                   ; preds = %mxc_jpeg_sizeimage.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %depth.i.1.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %40, i32 0, i32 4
  %44 = ptrtoint ptr %depth.i.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %depth.i.1.i, align 4
  %div8.i.1.i = sdiv i32 %45, 8
  %mul9.i.1.i = mul i32 %div8.i.1.i, 1280
  br label %mxc_jpeg_bytesperline.exit.1.i

if.else16.i.1.i:                                  ; preds = %mxc_jpeg_sizeimage.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %depth21.i.1.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %40, i32 0, i32 4
  %46 = ptrtoint ptr %depth21.i.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %depth21.i.1.i, align 4
  %div22.i.1.i = sdiv i32 %47, 8
  %mul23.i.1.i = mul i32 %div22.i.1.i, 1280
  br label %mxc_jpeg_bytesperline.exit.1.i

mxc_jpeg_bytesperline.exit.1.i:                   ; preds = %if.else16.i.1.i, %if.then6.i.1.i, %mxc_jpeg_sizeimage.exit.i.mxc_jpeg_bytesperline.exit.1.i_crit_edge
  %mul9.sink44.i.1.i = phi i32 [ %mul9.i.1.i, %if.then6.i.1.i ], [ %mul23.i.1.i, %if.else16.i.1.i ], [ 0, %mxc_jpeg_sizeimage.exit.i.mxc_jpeg_bytesperline.exit.1.i_crit_edge ]
  %mul9.sink.i.1.i = phi i32 [ %mul9.i.1.i, %if.then6.i.1.i ], [ 0, %if.else16.i.1.i ], [ 0, %mxc_jpeg_sizeimage.exit.i.mxc_jpeg_bytesperline.exit.1.i_crit_edge ]
  %bytesperline10.i.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %bytesperline10.i.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul9.sink44.i.1.i, ptr %bytesperline10.i.1.i, align 8
  %arrayidx15.i.1.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx15.i.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul9.sink.i.1.i, ptr %arrayidx15.i.1.i, align 4
  %50 = ptrtoint ptr %fourcc.i.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fourcc.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %51)
  %cmp.i.1.i = icmp eq i32 %51, 1195724874
  br i1 %cmp.i.1.i, label %if.then.i.1.i, label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %mxc_jpeg_bytesperline.exit.1.i
  %mul20.i.1.i = mul i32 %mul9.sink44.i.1.i, 720
  %sizeimage21.i.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %sizeimage21.i.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul20.i.1.i, ptr %sizeimage21.i.1.i, align 8
  %arrayidx24.i.1.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx24.i.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx24.i.1.i, align 4
  %54 = ptrtoint ptr %fourcc.i.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fourcc.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %55)
  %cmp27.i.1.i = icmp eq i32 %55, 842094158
  br i1 %cmp27.i.1.i, label %if.then28.i.1.i, label %if.else.i.1.i.mxc_jpeg_set_default_params.exit_crit_edge

if.else.i.1.i.mxc_jpeg_set_default_params.exit_crit_edge: ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_set_default_params.exit

if.then28.i.1.i:                                  ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %div51.i.1.i = lshr exact i32 %mul20.i.1.i, 1
  %56 = ptrtoint ptr %arrayidx24.i.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div51.i.1.i, ptr %arrayidx24.i.1.i, align 4
  br label %mxc_jpeg_set_default_params.exit

if.then.i.1.i:                                    ; preds = %mxc_jpeg_bytesperline.exit.1.i
  %sizeimage.i.1.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %sizeimage.i.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sizeimage.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.1.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.thread.1.i, label %if.end.i.1.i

if.end.i.1.i:                                     ; preds = %if.then.i.1.i
  %arrayidx6.i.1.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx6.i.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx6.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %58)
  %cmp9.i.1.i = icmp ugt i32 %58, -1024
  br i1 %cmp9.i.1.i, label %if.then10.i.1.i, label %if.end.i.1.i.if.end13.i.1.i_crit_edge

if.end.i.1.i.if.end13.i.1.i_crit_edge:            ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.1.i

if.then10.i.1.i:                                  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %sizeimage.i.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1024, ptr %sizeimage.i.1.i, align 8
  br label %if.end13.i.1.i

if.end.i.thread.1.i:                              ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %sizeimage.i.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5529600, ptr %sizeimage.i.1.i, align 8
  %arrayidx6.i34.1.i = getelementptr %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx6.i34.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx6.i34.1.i, align 4
  br label %if.end13.i.1.i

if.end13.i.1.i:                                   ; preds = %if.end.i.thread.1.i, %if.then10.i.1.i, %if.end.i.1.i.if.end13.i.1.i_crit_edge
  %63 = ptrtoint ptr %sizeimage.i.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sizeimage.i.1.i, align 8
  %add.i.1.i = add i32 %64, 1023
  %and.i.1.i = and i32 %add.i.1.i, -1024
  store i32 %and.i.1.i, ptr %sizeimage.i.1.i, align 8
  br label %mxc_jpeg_set_default_params.exit

mxc_jpeg_set_default_params.exit:                 ; preds = %if.end13.i.1.i, %if.then28.i.1.i, %if.else.i.1.i.mxc_jpeg_set_default_params.exit_crit_edge
  %slot = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %slot, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp = icmp eq i32 %67, 0
  br i1 %cmp, label %do.body, label %do.body28

do.body:                                          ; preds = %mxc_jpeg_set_default_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_open.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_open, %if.then26)) #12
          to label %if.end44 [label %if.then26], !srcloc !396

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_open.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.90, ptr noundef nonnull %call7.i.i) #12
  br label %if.end44

do.body28:                                        ; preds = %mxc_jpeg_set_default_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_open.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_open, %if.then40)) #12
          to label %if.end44 [label %if.then40], !srcloc !396

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_open.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.91, ptr noundef nonnull %call7.i.i) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.body28, %if.then26, %do.body
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

free:                                             ; preds = %if.then16, %if.end.free_crit_edge
  %ret.0 = phi i32 [ %10, %if.then16 ], [ -512, %if.end.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %lock = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_release.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_release, %if.then6)) #12
          to label %if.end24 [label %if.then6], !srcloc !396

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %slot = getelementptr i8, ptr %3, i32 200
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_release.__UNIQUE_ID_ddebug322, ptr noundef %5, ptr noundef nonnull @.str.143, i32 noundef %9) #12
  br label %if.end24

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_release.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_release, %if.then19)) #12
          to label %if.end24 [label %if.then19], !srcloc !396

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %slot20 = getelementptr i8, ptr %3, i32 200
  %10 = ptrtoint ptr %slot20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_release.__UNIQUE_ID_ddebug323, ptr noundef %5, ptr noundef nonnull @.str.144, i32 noundef %11) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body7, %if.then6, %do.body
  %add.ptr.i = getelementptr i8, ptr %3, i32 -84
  %m2m_ctx = getelementptr i8, ptr %3, i32 188
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %13) #12
  tail call void @v4l2_fh_del(ptr noundef %3) #12
  tail call void @v4l2_fh_exit(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
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
  store i32 752, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mxc_jpeg_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %8, i32 0, i32 2
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock1, align 4
  %10 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev3, align 4
  %allow_zero_bytesused = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %14 = ptrtoint ptr %allow_zero_bytesused to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %allow_zero_bytesused, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %allow_zero_bytesused, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %16 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %17 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %18 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %19 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mxc_jpeg_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %20 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %21 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16384, ptr %timestamp_flags10, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %lock12 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %23, i32 0, i32 2
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %24 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lock12, ptr %lock13, align 4
  %25 = load ptr, ptr %priv, align 4
  %dev15 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_ctxs) #9 align 64 {
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %3, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge45
    i32 3, label %entry.if.then.i_crit_edge46
    i32 8, label %entry.if.then.i_crit_edge47
    i32 5, label %entry.if.then.i_crit_edge48
    i32 7, label %entry.if.then.i_crit_edge49
    i32 12, label %entry.if.then.i_crit_edge50
    i32 14, label %entry.if.then.i_crit_edge51
  ]

entry.if.then.i_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge45, %entry.if.then.i_crit_edge46, %entry.if.then.i_crit_edge47, %entry.if.then.i_crit_edge48, %entry.if.then.i_crit_edge49, %entry.if.then.i_crit_edge50, %entry.if.then.i_crit_edge51
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %1, i32 0, i32 1
  br label %mxc_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %1, i32 0, i32 2
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mxc_jpeg_get_q_data.exit.cleanup_crit_edge, label %if.end

mxc_jpeg_get_q_data.exit.cleanup_crit_edge:       ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mxc_jpeg_get_q_data.exit
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end8, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.037
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 %i.037
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5 = icmp ult i32 %8, %10
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %colplanes = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colplanes, align 4
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1039.not = icmp eq i32 %14, 0
  br i1 %cmp1039.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.body11_crit_edge

if.end8.for.body11_crit_edge:                     ; preds = %if.end8
  br label %for.body11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %if.end8.for.body11_crit_edge
  %i.140 = phi i32 [ %inc16, %for.body11.for.body11_crit_edge ], [ 0, %if.end8.for.body11_crit_edge ]
  %arrayidx13 = getelementptr %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 %i.140
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %sizes, i32 %i.140
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx14, align 4
  %inc16 = add nuw i32 %i.140, 1
  %19 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nplanes, align 4
  %cmp10 = icmp ult i32 %inc16, %20
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.cleanup_crit_edge

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %mxc_jpeg_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mxc_jpeg_get_q_data.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.body11.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mxc_jpeg_buf_out_validate(ptr nocapture noundef writeonly %vb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %10, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge72
    i32 3, label %entry.if.then.i_crit_edge73
    i32 8, label %entry.if.then.i_crit_edge74
    i32 5, label %entry.if.then.i_crit_edge75
    i32 7, label %entry.if.then.i_crit_edge76
    i32 12, label %entry.if.then.i_crit_edge77
    i32 14, label %entry.if.then.i_crit_edge78
  ]

entry.if.then.i_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge75:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge72:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge72, %entry.if.then.i_crit_edge73, %entry.if.then.i_crit_edge74, %entry.if.then.i_crit_edge75, %entry.if.then.i_crit_edge76, %entry.if.then.i_crit_edge77, %entry.if.then.i_crit_edge78
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %3, i32 0, i32 1
  br label %mxc_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %3, i32 0, i32 2
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mxc_jpeg_get_q_data.exit.cleanup_crit_edge, label %for.cond.preheader

mxc_jpeg_get_q_data.exit.cleanup_crit_edge:       ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %mxc_jpeg_get_q_data.exit
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retval.0.i, align 4
  %colplanes49 = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %colplanes49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colplanes49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp50 = icmp sgt i32 %15, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 %i.051
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %i.051)
  %cmp.i = icmp ugt i32 %17, %i.051
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.051, i32 4
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp6 = icmp ult i32 %21, %19
  br i1 %cmp6, label %vb2_plane_size.exit.vb2_plane_size.exit38_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit38_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit38

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp644.not = icmp eq i32 %19, 0
  br i1 %cmp644.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit38_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit38_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit38

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit38:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit38_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit38_crit_edge
  %retval.0.i37 = phi i32 [ %21, %vb2_plane_size.exit.vb2_plane_size.exit38_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.92, i32 noundef %i.051, i32 noundef %retval.0.i37, i32 noundef %19) #15
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.051, i32 3
  %22 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %retval.0.i, align 4
  %colplanes = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colplanes, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit38, %for.cond.preheader.cleanup_crit_edge, %mxc_jpeg_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit38 ], [ -22, %mxc_jpeg_get_q_data.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %3, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge30
    i32 3, label %entry.if.then.i_crit_edge31
    i32 8, label %entry.if.then.i_crit_edge32
    i32 5, label %entry.if.then.i_crit_edge33
    i32 7, label %entry.if.then.i_crit_edge34
    i32 12, label %entry.if.then.i_crit_edge35
    i32 14, label %entry.if.then.i_crit_edge36
  ]

entry.if.then.i_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge30, %entry.if.then.i_crit_edge31, %entry.if.then.i_crit_edge32, %entry.if.then.i_crit_edge33, %entry.if.then.i_crit_edge34, %entry.if.then.i_crit_edge35, %entry.if.then.i_crit_edge36
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %1, i32 0, i32 1
  br label %mxc_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %1, i32 0, i32 2
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i23 = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_start_streaming.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_start_streaming, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !396

if.then:                                          ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_start_streaming.__UNIQUE_ID_ddebug316, ptr noundef %8, ptr noundef nonnull @.str.95, ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %mxc_jpeg_get_q_data.exit
  %sequence = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i23, i32 0, i32 7
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sequence, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev6 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i24, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i24:                                      ; preds = %do.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !407
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i24.do.end11_crit_edge, label %do.end11.i.i.i.i.i

if.then.i24.do.end11_crit_edge:                   ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end11.i.i.i.i.i:                               ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !408
  br label %do.end11

do.end11:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i24.do.end11_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev13 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.96) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end11 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_jpeg_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_stop_streaming.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_stop_streaming, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !396

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_stop_streaming.__UNIQUE_ID_ddebug317, ptr noundef %5, ptr noundef nonnull @.str.98, ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %1, i32 0, i32 3, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end32, %do.end
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %7, label %if.else [
    i32 2, label %for.cond.if.then24_crit_edge
    i32 10, label %for.cond.if.then24_crit_edge52
    i32 3, label %for.cond.if.then24_crit_edge53
    i32 8, label %for.cond.if.then24_crit_edge54
    i32 5, label %for.cond.if.then24_crit_edge55
    i32 7, label %for.cond.if.then24_crit_edge56
    i32 12, label %for.cond.if.then24_crit_edge57
    i32 14, label %for.cond.if.then24_crit_edge58
  ]

for.cond.if.then24_crit_edge58:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge57:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge56:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge55:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge54:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge53:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge52:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

for.cond.if.then24_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %for.cond.if.then24_crit_edge, %for.cond.if.then24_crit_edge52, %for.cond.if.then24_crit_edge53, %for.cond.if.then24_crit_edge54, %for.cond.if.then24_crit_edge55, %for.cond.if.then24_crit_edge56, %for.cond.if.then24_crit_edge57, %for.cond.if.then24_crit_edge58
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  br label %if.end29

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then24 ]
  %call.i49 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #12
  %tobool30.not = icmp eq ptr %call.i49, null
  br i1 %tobool30.not, label %for.end, label %if.end32

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i49, i32 noundef 6) #12
  br label %for.cond

for.end:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %pdev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %dev34, i32 noundef 4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_jpeg_buf_queue(ptr noundef %vb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp = icmp eq i32 %5, 9
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not = icmp eq i32 %9, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  %jpeg_parse_error = getelementptr inbounds %struct.mxc_jpeg_src_buf, ptr %vb, i32 0, i32 3
  %10 = ptrtoint ptr %jpeg_parse_error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %jpeg_parse_error, align 1
  %call6 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #12
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  br i1 %cmp.i.not, label %if.end4.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end4.vb2_get_plane_payload.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end4.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end4.vb2_get_plane_payload.exit_crit_edge ]
  %dht_needed = getelementptr inbounds %struct.mxc_jpeg_src_buf, ptr %vb, i32 0, i32 2
  %call8 = tail call fastcc i32 @mxc_jpeg_parse(ptr noundef %3, ptr noundef %call6, i32 noundef %retval.0.i, ptr noundef %dht_needed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %vb2_get_plane_payload.exit.end_crit_edge, label %if.then9

vb2_get_plane_payload.exit.end_crit_edge:         ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then9:                                         ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %jpeg_parse_error to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %jpeg_parse_error, align 1
  br label %end

end:                                              ; preds = %if.then9, %vb2_get_plane_payload.exit.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %3, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %17, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_jpeg_parse(ptr noundef %ctx, ptr noundef %src_addr, i32 noundef %size, ptr nocapture noundef writeonly %dht_needed) unnamed_addr #2 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  %header = alloca %struct.v4l2_jpeg_header, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %header) #12
  %4 = call ptr @memset(ptr %header, i32 0, i32 140)
  %call = call i32 @v4l2_jpeg_parse_header(ptr noundef %src_addr, i32 noundef %size, ptr noundef nonnull %header) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.99) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_dht = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 2
  %5 = ptrtoint ptr %num_dht to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_dht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %frombool = zext i1 %cmp2 to i8
  %7 = ptrtoint ptr %dht_needed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %dht_needed, align 1
  %w = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %h = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %do.end9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.end9:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.102) #15
  %frame = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6
  %width = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %width, align 2
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frame, align 4
  %conv14 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %conv14) #15
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %width, align 2
  %conv17 = zext i16 %17 to i32
  %18 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv17, ptr %w, align 4
  %19 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %frame, align 4
  %conv21 = zext i16 %20 to i32
  %21 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv21, ptr %h, align 4
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %frame23 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6
  %width24 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %width24 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %width24, align 2
  %conv25 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv25)
  %cmp27.not = icmp eq i32 %9, %conv25
  br i1 %cmp27.not, label %lor.lhs.false, label %if.else.do.end38_crit_edge

if.else.do.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

lor.lhs.false:                                    ; preds = %if.else
  %24 = ptrtoint ptr %frame23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %frame23, align 4
  %conv31 = zext i16 %25 to i32
  %h32 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %h32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv31)
  %cmp33.not = icmp eq i32 %27, %conv31
  br i1 %cmp33.not, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false.do.end38_crit_edge

lor.lhs.false.do.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end38:                                         ; preds = %lor.lhs.false.do.end38_crit_edge, %if.else.do.end38_crit_edge
  %28 = ptrtoint ptr %frame23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frame23, align 4
  %conv44 = zext i16 %29 to i32
  %h46 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %h46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.108, i32 noundef %conv25, i32 noundef %conv44, i32 noundef %9, i32 noundef %31) #15
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false.if.end48_crit_edge, %do.end9
  %frame49 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6
  %width50 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %width50 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %width50, align 2
  %34 = and i16 %33, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp52.not = icmp eq i16 %34, 0
  br i1 %cmp52.not, label %lor.lhs.false54, label %if.end48.do.end64_crit_edge

if.end48.do.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64

lor.lhs.false54:                                  ; preds = %if.end48
  %35 = ptrtoint ptr %frame49 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %frame49, align 4
  %37 = and i16 %36, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp59.not = icmp eq i16 %37, 0
  br i1 %cmp59.not, label %if.end71, label %lor.lhs.false54.do.end64_crit_edge

lor.lhs.false54.do.end64_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64

do.end64:                                         ; preds = %lor.lhs.false54.do.end64_crit_edge, %if.end48.do.end64_crit_edge
  %conv67 = zext i16 %33 to i32
  %38 = ptrtoint ptr %frame49 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %frame49, align 4
  %conv70 = zext i16 %39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef %conv67, i32 noundef %conv70) #15
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %33)
  %cmp75 = icmp ugt i16 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %36)
  %cmp81 = icmp ugt i16 %36, 8192
  %or.cond = select i1 %cmp75, i1 true, i1 %cmp81
  br i1 %or.cond, label %do.end86, label %if.end93

do.end86:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %conv89 = zext i16 %33 to i32
  %conv92 = zext i16 %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.114, i32 noundef %conv89, i32 noundef %conv92) #15
  br label %cleanup

if.end93:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %33)
  %cmp97 = icmp ult i16 %33, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %36)
  %cmp103 = icmp ult i16 %36, 64
  %or.cond251 = select i1 %cmp97, i1 true, i1 %cmp103
  br i1 %or.cond251, label %do.end108, label %if.end115

do.end108:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %conv111 = zext i16 %33 to i32
  %conv114 = zext i16 %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.117, i32 noundef %conv111, i32 noundef %conv114) #15
  br label %cleanup

if.end115:                                        ; preds = %if.end93
  %num_components = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_components, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %cmp118 = icmp ugt i8 %41, 4
  br i1 %cmp118, label %do.end123, label %if.end124

do.end123:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.120, i32 noundef 4) #15
  br label %cleanup

if.end124:                                        ; preds = %if.end115
  %42 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %header, align 4
  %sos = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 1
  %44 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sos, align 4
  %components_no.i = getelementptr inbounds %struct.mxc_jpeg_sof, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %components_no.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %components_no.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp52.not.i = icmp eq i8 %47, 0
  br i1 %cmp52.not.i, label %if.end124.if.end131_crit_edge, label %if.end124.for.body.i.outer_crit_edge

if.end124.for.body.i.outer_crit_edge:             ; preds = %if.end124
  br label %for.body.i.outer

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %if.end124.for.body.i.outer_crit_edge
  %i.054.i.ph = phi i32 [ %inc.i266, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %if.end124.for.body.i.outer_crit_edge ]
  %tobool.not.i = phi i1 [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ false, %if.end124.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %i.054.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %i.054.i.ph, %for.body.i.outer ]
  %arrayidx.i = getelementptr %struct.mxc_jpeg_sof, ptr %43, i32 0, i32 5, i32 %i.054.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp3.i = icmp ugt i8 %49, 4
  br i1 %cmp3.i, label %for.inc.i.thread, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %50 = ptrtoint ptr %components_no.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %components_no.i, align 1
  %conv.i = zext i8 %51 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %conv2.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.126, i32 noundef %i.054.i, i32 noundef %conv2.i) #15
  %inc.i266 = add nuw nsw i32 %i.054.i, 1
  %52 = ptrtoint ptr %components_no.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %components_no.i, align 1
  %conv.i267 = zext i8 %53 to i32
  %cmp.i268 = icmp ult i32 %inc.i266, %conv.i267
  br i1 %cmp.i268, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.for.cond10.preheader.i_crit_edge

for.inc.i.thread.for.cond10.preheader.i_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond10.preheader.i

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.outer

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.for.cond10.preheader.i_crit_edge, label %for.end.i.if.end131_crit_edge

for.end.i.if.end131_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

for.end.i.for.cond10.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.end.i.for.cond10.preheader.i_crit_edge, %for.inc.i.thread.for.cond10.preheader.i_crit_edge
  %54 = phi i8 [ %51, %for.end.i.for.cond10.preheader.i_crit_edge ], [ %53, %for.inc.i.thread.for.cond10.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp1357.not.i = icmp eq i8 %54, 0
  br i1 %cmp1357.not.i, label %for.cond10.preheader.i.do.end130_crit_edge, label %for.cond10.preheader.i.do.end18.i_crit_edge

for.cond10.preheader.i.do.end18.i_crit_edge:      ; preds = %for.cond10.preheader.i
  br label %do.end18.i

for.cond10.preheader.i.do.end130_crit_edge:       ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end130

do.end18.i:                                       ; preds = %do.end18.i.do.end18.i_crit_edge, %for.cond10.preheader.i.do.end18.i_crit_edge
  %i.158.i = phi i32 [ %add.i, %do.end18.i.do.end18.i_crit_edge ], [ 0, %for.cond10.preheader.i.do.end18.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.158.i, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.129, i32 noundef %i.158.i, i32 noundef %add.i) #15
  %conv20.i = trunc i32 %add.i to i8
  %arrayidx22.i = getelementptr %struct.mxc_jpeg_sof, ptr %43, i32 0, i32 5, i32 %i.158.i
  %55 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv20.i, ptr %arrayidx22.i, align 1
  %arrayidx27.i = getelementptr %struct.mxc_jpeg_sos, ptr %45, i32 0, i32 2, i32 %i.158.i
  %56 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv20.i, ptr %arrayidx27.i, align 1
  %57 = ptrtoint ptr %components_no.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %components_no.i, align 1
  %conv12.i = zext i8 %58 to i32
  %cmp13.i = icmp ult i32 %add.i, %conv12.i
  br i1 %cmp13.i, label %do.end18.i.do.end18.i_crit_edge, label %do.end18.i.do.end130_crit_edge

do.end18.i.do.end130_crit_edge:                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end130

do.end18.i.do.end18.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

do.end130:                                        ; preds = %do.end18.i.do.end130_crit_edge, %for.cond10.preheader.i.do.end130_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.123) #15
  br label %if.end131

if.end131:                                        ; preds = %do.end130, %for.end.i.if.end131_crit_edge, %if.end124.if.end131_crit_edge
  %subsampling1.i = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 5
  %59 = ptrtoint ptr %subsampling1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %subsampling1.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %60, label %if.end131.mxc_jpeg_get_image_format.exit.thread_crit_edge [
    i32 0, label %land.lhs.true.1.i
    i32 2, label %land.lhs.true.3.i
    i32 1, label %land.lhs.true.4.i
    i32 5, label %land.lhs.true.6.i
  ]

if.end131.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

land.lhs.true.1.i:                                ; preds = %if.end131
  %62 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_components, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %63, label %land.lhs.true.1.i.mxc_jpeg_get_image_format.exit.thread_crit_edge [
    i8 3, label %land.lhs.true.1.i.for.end.i253_crit_edge
    i8 4, label %for.end.i253.fold.split
  ]

land.lhs.true.1.i.for.end.i253_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i253

land.lhs.true.1.i.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

land.lhs.true.3.i:                                ; preds = %if.end131
  %65 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_components, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp5.3.i = icmp eq i8 %66, 3
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.for.end.i253_crit_edge, label %land.lhs.true.3.i.mxc_jpeg_get_image_format.exit.thread_crit_edge

land.lhs.true.3.i.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

land.lhs.true.3.i.for.end.i253_crit_edge:         ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i253

land.lhs.true.4.i:                                ; preds = %if.end131
  %67 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_components, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %68)
  %cmp5.4.i = icmp eq i8 %68, 3
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.for.end.i253_crit_edge, label %land.lhs.true.4.i.mxc_jpeg_get_image_format.exit.thread_crit_edge

land.lhs.true.4.i.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

land.lhs.true.4.i.for.end.i253_crit_edge:         ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i253

land.lhs.true.6.i:                                ; preds = %if.end131
  %69 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_components, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp5.6.i = icmp eq i8 %70, 1
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.for.end.i253_crit_edge, label %land.lhs.true.6.i.mxc_jpeg_get_image_format.exit.thread_crit_edge

land.lhs.true.6.i.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

land.lhs.true.6.i.for.end.i253_crit_edge:         ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i253

for.end.i253.fold.split:                          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i253

for.end.i253:                                     ; preds = %for.end.i253.fold.split, %land.lhs.true.6.i.for.end.i253_crit_edge, %land.lhs.true.4.i.for.end.i253_crit_edge, %land.lhs.true.3.i.for.end.i253_crit_edge, %land.lhs.true.1.i.for.end.i253_crit_edge
  %i.043.lcssa.i = phi i32 [ 1, %land.lhs.true.1.i.for.end.i253_crit_edge ], [ 3, %land.lhs.true.3.i.for.end.i253_crit_edge ], [ 4, %land.lhs.true.4.i.for.end.i253_crit_edge ], [ 6, %land.lhs.true.6.i.for.end.i253_crit_edge ], [ 2, %for.end.i253.fold.split ]
  %fourcc8.i = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %i.043.lcssa.i, i32 1
  %71 = ptrtoint ptr %fourcc8.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fourcc8.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %72, label %for.end.i253.if.end136_crit_edge [
    i32 0, label %for.end.i253.mxc_jpeg_get_image_format.exit.thread_crit_edge
    i32 861295961, label %for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge
    i32 859981650, label %for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge315
  ]

for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge315: ; preds = %for.end.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread280

for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge: ; preds = %for.end.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread280

for.end.i253.mxc_jpeg_get_image_format.exit.thread_crit_edge: ; preds = %for.end.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_image_format.exit.thread

for.end.i253.if.end136_crit_edge:                 ; preds = %for.end.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

mxc_jpeg_get_image_format.exit.thread:            ; preds = %for.end.i253.mxc_jpeg_get_image_format.exit.thread_crit_edge, %land.lhs.true.6.i.mxc_jpeg_get_image_format.exit.thread_crit_edge, %land.lhs.true.4.i.mxc_jpeg_get_image_format.exit.thread_crit_edge, %land.lhs.true.3.i.mxc_jpeg_get_image_format.exit.thread_crit_edge, %land.lhs.true.1.i.mxc_jpeg_get_image_format.exit.thread_crit_edge, %if.end131.mxc_jpeg_get_image_format.exit.thread_crit_edge
  %74 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_components, align 1
  %conv14.i = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef %conv14.i, i32 noundef %60) #15
  br label %cleanup

mxc_jpeg_get_image_format.exit.thread280:         ; preds = %for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge, %for.end.i253.mxc_jpeg_get_image_format.exit.thread280_crit_edge315
  %app14_tf.i = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 12
  %76 = ptrtoint ptr %app14_tf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %app14_tf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp23.i = icmp eq i32 %77, 0
  %..i = select i1 %cmp23.i, i32 859981650, i32 861295961
  br label %if.end136

if.end136:                                        ; preds = %mxc_jpeg_get_image_format.exit.thread280, %for.end.i253.if.end136_crit_edge
  %retval.0.i254283 = phi i32 [ %..i, %mxc_jpeg_get_image_format.exit.thread280 ], [ %72, %for.end.i253.if.end136_crit_edge ]
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2
  %w138 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %w138 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %w138, align 4
  %80 = ptrtoint ptr %width50 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %width50, align 2
  %conv141 = zext i16 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv141)
  %cmp142.not = icmp eq i32 %79, %conv141
  br i1 %cmp142.not, label %lor.lhs.false144, label %if.end136.if.then151_crit_edge

if.end136.if.then151_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then151

lor.lhs.false144:                                 ; preds = %if.end136
  %h145 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %h145 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %h145, align 4
  %84 = ptrtoint ptr %frame49 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %frame49, align 4
  %conv148 = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv148)
  %cmp149.not = icmp eq i32 %83, %conv148
  br i1 %cmp149.not, label %lor.lhs.false144.if.end152_crit_edge, label %lor.lhs.false144.if.then151_crit_edge

lor.lhs.false144.if.then151_crit_edge:            ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then151

lor.lhs.false144.if.end152_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then151:                                       ; preds = %lor.lhs.false144.if.then151_crit_edge, %if.end136.if.then151_crit_edge
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %lor.lhs.false144.if.end152_crit_edge
  %src_chg.0.off0 = phi i1 [ true, %if.then151 ], [ false, %lor.lhs.false144.if.end152_crit_edge ]
  %86 = ptrtoint ptr %w138 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv141, ptr %w138, align 4
  %87 = ptrtoint ptr %frame49 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %frame49, align 4
  %conv159 = zext i16 %88 to i32
  %h160 = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 5
  %89 = ptrtoint ptr %h160 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv159, ptr %h160, align 4
  %90 = zext i32 %retval.0.i254283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %retval.0.i254283, label %if.end152.mxc_jpeg_find_format.exit_crit_edge [
    i32 1195724874, label %if.end152.cleanup2.split.loop.exit1.i_crit_edge
    i32 859981650, label %cleanup2.split.loop.exit1.fold.split.i
    i32 875708738, label %cleanup2.split.loop.exit1.fold.split5.i
    i32 842094158, label %cleanup2.split.loop.exit1.fold.split6.i
    i32 1448695129, label %cleanup2.split.loop.exit1.fold.split7.i
    i32 861295961, label %cleanup2.split.loop.exit1.fold.split8.i
    i32 1497715271, label %cleanup2.split.loop.exit1.fold.split9.i
  ]

if.end152.cleanup2.split.loop.exit1.i_crit_edge:  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

if.end152.mxc_jpeg_find_format.exit_crit_edge:    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split.i:           ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split5.i:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split6.i:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split7.i:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split8.i:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split9.i:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.i:                      ; preds = %cleanup2.split.loop.exit1.fold.split9.i, %cleanup2.split.loop.exit1.fold.split8.i, %cleanup2.split.loop.exit1.fold.split7.i, %cleanup2.split.loop.exit1.fold.split6.i, %cleanup2.split.loop.exit1.fold.split5.i, %cleanup2.split.loop.exit1.fold.split.i, %if.end152.cleanup2.split.loop.exit1.i_crit_edge
  %k.03.lcssa.i = phi i32 [ 0, %if.end152.cleanup2.split.loop.exit1.i_crit_edge ], [ 1, %cleanup2.split.loop.exit1.fold.split.i ], [ 2, %cleanup2.split.loop.exit1.fold.split5.i ], [ 3, %cleanup2.split.loop.exit1.fold.split6.i ], [ 4, %cleanup2.split.loop.exit1.fold.split7.i ], [ 5, %cleanup2.split.loop.exit1.fold.split8.i ], [ 6, %cleanup2.split.loop.exit1.fold.split9.i ]
  %arrayidx.le.i = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i
  br label %mxc_jpeg_find_format.exit

mxc_jpeg_find_format.exit:                        ; preds = %cleanup2.split.loop.exit1.i, %if.end152.mxc_jpeg_find_format.exit_crit_edge
  %retval.2.i = phi ptr [ %arrayidx.le.i, %cleanup2.split.loop.exit1.i ], [ null, %if.end152.mxc_jpeg_find_format.exit_crit_edge ]
  %91 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %retval.2.i, ptr %cap_q.i, align 4
  %w_adjusted = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %w_adjusted to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv141, ptr %w_adjusted, align 4
  %h_adjusted = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 6
  %93 = ptrtoint ptr %h_adjusted to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv159, ptr %h_adjusted, align 4
  %h_align = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %retval.2.i, i32 0, i32 6
  %94 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %h_align, align 4
  %v_align = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %retval.2.i, i32 0, i32 7
  %96 = ptrtoint ptr %v_align to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %v_align, align 4
  call void @v4l_bound_align_image(ptr noundef %w_adjusted, i32 noundef %conv141, i32 noundef 8192, i32 noundef %95, ptr noundef %h_adjusted, i32 noundef %conv159, i32 noundef 8192, i32 noundef %97, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_parse.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_parse, %if.then176)) #12
          to label %do.end188 [label %if.then176], !srcloc !396

if.then176:                                       ; preds = %mxc_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %w138 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %w138, align 4
  %100 = ptrtoint ptr %h160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %h160, align 4
  %102 = ptrtoint ptr %w_adjusted to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %w_adjusted, align 4
  %104 = ptrtoint ptr %h_adjusted to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %h_adjusted, align 4
  %and = and i32 %retval.0.i254283, 255
  %shr = lshr i32 %retval.0.i254283, 8
  %and181 = and i32 %shr, 255
  %shr182 = lshr i32 %retval.0.i254283, 16
  %and183 = and i32 %shr182, 255
  %shr184 = lshr i32 %retval.0.i254283, 24
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_parse.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.125, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %and, i32 noundef %and181, i32 noundef %and183, i32 noundef %shr184) #12
  br label %do.end188

do.end188:                                        ; preds = %if.then176, %mxc_jpeg_find_format.exit
  %precision = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 2
  %106 = ptrtoint ptr %precision to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %precision, align 4
  %conv190 = zext i8 %107 to i32
  %108 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cap_q.i, align 4
  %fourcc.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fourcc.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %111, label %if.else16.i [
    i32 1195724874, label %do.end188.mxc_jpeg_bytesperline.exit_crit_edge
    i32 842094158, label %if.then6.i
  ]

do.end188.mxc_jpeg_bytesperline.exit_crit_edge:   ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_bytesperline.exit

if.then6.i:                                       ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %w138 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %w138, align 4
  %div43.i = lshr i32 %conv190, 3
  %mul.i = mul i32 %114, %div43.i
  %depth.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %109, i32 0, i32 4
  %115 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %depth.i, align 4
  %div8.i = sdiv i32 %116, 8
  %mul9.i = mul i32 %mul.i, %div8.i
  br label %mxc_jpeg_bytesperline.exit

if.else16.i:                                      ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %w138 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %w138, align 4
  %div1842.i = lshr i32 %conv190, 3
  %mul19.i = mul i32 %118, %div1842.i
  %depth21.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %109, i32 0, i32 4
  %119 = ptrtoint ptr %depth21.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %depth21.i, align 4
  %div22.i = sdiv i32 %120, 8
  %mul23.i = mul i32 %mul19.i, %div22.i
  br label %mxc_jpeg_bytesperline.exit

mxc_jpeg_bytesperline.exit:                       ; preds = %if.else16.i, %if.then6.i, %do.end188.mxc_jpeg_bytesperline.exit_crit_edge
  %mul9.sink44.i = phi i32 [ %mul9.i, %if.then6.i ], [ %mul23.i, %if.else16.i ], [ 0, %do.end188.mxc_jpeg_bytesperline.exit_crit_edge ]
  %mul9.sink.i = phi i32 [ %mul9.i, %if.then6.i ], [ 0, %if.else16.i ], [ 0, %do.end188.mxc_jpeg_bytesperline.exit_crit_edge ]
  %bytesperline10.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %bytesperline10.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %mul9.sink44.i, ptr %bytesperline10.i, align 4
  %arrayidx15.i = getelementptr %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 2, i32 1
  %122 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %mul9.sink.i, ptr %arrayidx15.i, align 4
  %123 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %124)
  %cmp.i257 = icmp eq i32 %124, 1195724874
  br i1 %cmp.i257, label %if.then.i259, label %if.else.i

if.then.i259:                                     ; preds = %mxc_jpeg_bytesperline.exit
  %sizeimage.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sizeimage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i258 = icmp eq i32 %126, 0
  br i1 %tobool.not.i258, label %if.then1.i, label %if.then.i259.if.end.i_crit_edge

if.then.i259.if.end.i_crit_edge:                  ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %w138 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %w138, align 4
  %mul.i261 = mul i32 %128, 6
  %129 = ptrtoint ptr %h160 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %h160, align 4
  %mul2.i = mul i32 %mul.i261, %130
  %131 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul2.i, ptr %sizeimage.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i259.if.end.i_crit_edge
  %132 = phi i32 [ %mul2.i, %if.then1.i ], [ %126, %if.then.i259.if.end.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %133 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %132)
  %cmp9.i = icmp ugt i32 %132, -1024
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1024, ptr %sizeimage.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end.i.if.end13.i_crit_edge
  %135 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sizeimage.i, align 4
  %add.i262 = add i32 %136, 1023
  %and.i = and i32 %add.i262, -1024
  store i32 %and.i, ptr %sizeimage.i, align 4
  br label %mxc_jpeg_sizeimage.exit

if.else.i:                                        ; preds = %mxc_jpeg_bytesperline.exit
  %137 = ptrtoint ptr %h160 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %h160, align 4
  %mul20.i = mul i32 %138, %mul9.sink44.i
  %sizeimage21.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %sizeimage21.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul20.i, ptr %sizeimage21.i, align 4
  %arrayidx24.i = getelementptr %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %140 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx24.i, align 4
  %141 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %142)
  %cmp27.i = icmp eq i32 %142, 842094158
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i.mxc_jpeg_sizeimage.exit_crit_edge

if.else.i.mxc_jpeg_sizeimage.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_sizeimage.exit

if.then28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %div51.i = lshr i32 %mul20.i, 1
  %143 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div51.i, ptr %arrayidx24.i, align 4
  br label %mxc_jpeg_sizeimage.exit

mxc_jpeg_sizeimage.exit:                          ; preds = %if.then28.i, %if.else.i.mxc_jpeg_sizeimage.exit_crit_edge, %if.end13.i
  br i1 %src_chg.0.off0, label %if.then192, label %mxc_jpeg_sizeimage.exit.cleanup_crit_edge

mxc_jpeg_sizeimage.exit.cleanup_crit_edge:        ; preds = %mxc_jpeg_sizeimage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then192:                                       ; preds = %mxc_jpeg_sizeimage.exit
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %144 = call ptr @memcpy(ptr %ev.i, ptr @__const.notify_src_chg.ev, i32 136)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @notify_src_chg.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_parse, %if.then.i263)) #12
          to label %notify_src_chg.exit [label %if.then.i263], !srcloc !396

if.then.i263:                                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx, align 4
  %dev.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %146, i32 0, i32 6
  %147 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @notify_src_chg.__UNIQUE_ID_ddebug302, ptr noundef %148, ptr noundef nonnull @.str.141) #12
  br label %notify_src_chg.exit

notify_src_chg.exit:                              ; preds = %if.then.i263, %if.then192
  %fh.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 3
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull %ev.i) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  br label %cleanup

cleanup:                                          ; preds = %notify_src_chg.exit, %mxc_jpeg_sizeimage.exit.cleanup_crit_edge, %mxc_jpeg_get_image_format.exit.thread, %do.end123, %do.end108, %do.end86, %do.end64, %do.end38, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end64 ], [ -22, %do.end86 ], [ -22, %do.end108 ], [ -22, %do.end123 ], [ -22, %do.end38 ], [ 0, %notify_src_chg.exit ], [ 0, %mxc_jpeg_sizeimage.exit.cleanup_crit_edge ], [ -22, %mxc_jpeg_get_image_format.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %header) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_jpeg_parse_header(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.145, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.145, i32 noundef 32) #12
  %dev = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.146, ptr noundef %retval.0.i)
  %device_caps = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 5
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67125248, ptr %device_caps, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %9 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2080358400, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %if.end8.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %description.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %call.i = tail call i32 @strscpy(ptr noundef %description.i, ptr noundef nonnull @.str.133, i32 noundef 32) #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %switch.lookup, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %switch.offset = add i32 %5, 1
  %description.i4 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %arrayidx9.i = getelementptr %struct.mxc_jpeg_fmt, ptr @mxc_formats, i32 %switch.offset
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9.i, align 4
  %call.i5 = tail call i32 @strscpy(ptr noundef %description.i4, ptr noundef %8, i32 noundef 32) #12
  %fourcc.i = getelementptr %struct.mxc_jpeg_fmt, ptr @mxc_formats, i32 %switch.offset, i32 1
  %9 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end8.i
  %.sink = phi i32 [ %10, %switch.lookup ], [ 1195724874, %if.end8.i ]
  %pixelformat.i6 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %pixelformat.i6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %pixelformat.i6, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %if.end8.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %description.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %call.i = tail call i32 @strscpy(ptr noundef %description.i, ptr noundef nonnull @.str.133, i32 noundef 32) #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %switch.lookup, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %switch.offset = add i32 %5, 1
  %description.i4 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %arrayidx9.i = getelementptr %struct.mxc_jpeg_fmt, ptr @mxc_formats, i32 %switch.offset
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9.i, align 4
  %call.i5 = tail call i32 @strscpy(ptr noundef %description.i4, ptr noundef %8, i32 noundef 32) #12
  %fourcc.i = getelementptr %struct.mxc_jpeg_fmt, ptr @mxc_formats, i32 %switch.offset, i32 1
  %9 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end8.i
  %.sink = phi i32 [ %10, %switch.lookup ], [ 1195724874, %if.end8.i ]
  %pixelformat.i6 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %pixelformat.i6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %pixelformat.i6, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_g_fmt_vid(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %entry.mxc_jpeg_get_q_data.exit_crit_edge

entry.mxc_jpeg_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.mxc_jpeg_g_fmt_vid, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mxc_jpeg_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -40, %entry.mxc_jpeg_get_q_data.exit_crit_edge ]
  %out_q.i = getelementptr i8, ptr %priv, i32 %.sink
  %.off = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.147, i32 noundef %5) #15
  br label %cleanup

if.end:                                           ; preds = %mxc_jpeg_get_q_data.exit
  %8 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_q.i, align 4
  %fourcc = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %pixelformat, align 1
  %w = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %out_q.i, i32 0, i32 3
  %13 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %w, align 4
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %fmt, align 1
  %h = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %out_q.i, i32 0, i32 5
  %16 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 1, ptr %field, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 8, ptr %colorspace, align 1
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %23 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %xfer_func, align 1
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %24 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %quantization, align 1
  %25 = load ptr, ptr %out_q.i, align 4
  %colplanes = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colplanes, align 4
  %conv = trunc i32 %27 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %28 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %num_planes, align 1
  %conv1050 = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1050)
  %cmp1151.not = icmp eq i32 %conv1050, 0
  br i1 %cmp1151.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mxc_jpeg_q_data, ptr %out_q.i, i32 0, i32 2, i32 %i.052
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.052
  %bytesperline14 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.052, i32 1
  %31 = ptrtoint ptr %bytesperline14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %bytesperline14, align 1
  %arrayidx15 = getelementptr %struct.mxc_jpeg_q_data, ptr %out_q.i, i32 0, i32 1, i32 %i.052
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %arrayidx13, align 1
  %inc = add nuw nsw i32 %i.052, 1
  %35 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_planes, align 1
  %conv10 = zext i8 %36 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mxc_jpeg_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %call2 = tail call fastcc i32 @mxc_jpeg_s_fmt(ptr noundef %add.ptr.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mxc_jpeg_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %call2 = tail call fastcc i32 @mxc_jpeg_s_fmt(ptr noundef %add.ptr.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %cond = zext i1 %cmp to i32
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %.off = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.151, i32 noundef %9) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %5, label %if.end.do.end13_crit_edge [
    i32 1195724874, label %if.end.mxc_jpeg_find_format.exit_crit_edge
    i32 859981650, label %cleanup2.split.loop.exit1.fold.split.i
    i32 875708738, label %cleanup2.split.loop.exit1.fold.split5.i
    i32 842094158, label %cleanup2.split.loop.exit1.fold.split6.i
    i32 1448695129, label %cleanup2.split.loop.exit1.fold.split7.i
    i32 861295961, label %cleanup2.split.loop.exit1.fold.split8.i
    i32 1497715271, label %cleanup2.split.loop.exit1.fold.split9.i
  ]

if.end.mxc_jpeg_find_format.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

cleanup2.split.loop.exit1.fold.split.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split5.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split6.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split7.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split8.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split9.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

mxc_jpeg_find_format.exit:                        ; preds = %cleanup2.split.loop.exit1.fold.split9.i, %cleanup2.split.loop.exit1.fold.split8.i, %cleanup2.split.loop.exit1.fold.split7.i, %cleanup2.split.loop.exit1.fold.split6.i, %cleanup2.split.loop.exit1.fold.split5.i, %cleanup2.split.loop.exit1.fold.split.i, %if.end.mxc_jpeg_find_format.exit_crit_edge
  %k.03.lcssa.i = phi i32 [ 0, %if.end.mxc_jpeg_find_format.exit_crit_edge ], [ 1, %cleanup2.split.loop.exit1.fold.split.i ], [ 2, %cleanup2.split.loop.exit1.fold.split5.i ], [ 3, %cleanup2.split.loop.exit1.fold.split6.i ], [ 4, %cleanup2.split.loop.exit1.fold.split7.i ], [ 5, %cleanup2.split.loop.exit1.fold.split8.i ], [ 6, %cleanup2.split.loop.exit1.fold.split9.i ]
  %arrayidx.le.i = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %mxc_jpeg_find_format.exit.do.end13_crit_edge, label %lor.lhs.false8

mxc_jpeg_find_format.exit.do.end13_crit_edge:     ; preds = %mxc_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

lor.lhs.false8:                                   ; preds = %mxc_jpeg_find_format.exit
  %flags = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i, i32 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cond)
  %cmp9.not = icmp eq i32 %12, %cond
  br i1 %cmp9.not, label %lor.lhs.false8.if.end27_crit_edge, label %lor.lhs.false8.do.end13_crit_edge

lor.lhs.false8.do.end13_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

lor.lhs.false8.if.end27_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.end13:                                         ; preds = %lor.lhs.false8.do.end13_crit_edge, %mxc_jpeg_find_format.exit.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %and = and i32 %5, 255
  %shr = lshr i32 %5, 8
  %and14 = and i32 %shr, 255
  %shr15 = lshr i32 %5, 16
  %and16 = and i32 %shr15, 255
  %shr17 = lshr i32 %5, 24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.154, i32 noundef %and, i32 noundef %and14, i32 noundef %and16, i32 noundef %shr17) #15
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp20 = icmp eq i32 %14, 0
  %cond21 = select i1 %cmp20, i32 859981650, i32 1195724874
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond21, ptr %pixelformat, align 4
  %spec.select = zext i1 %cmp20 to i32
  %arrayidx.le.i60 = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %spec.select
  br label %if.end27

if.end27:                                         ; preds = %do.end13, %lor.lhs.false8.if.end27_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.le.i, %lor.lhs.false8.if.end27_crit_edge ], [ %arrayidx.le.i60, %do.end13 ]
  tail call fastcc void @mxc_jpeg_try_fmt(ptr noundef %f, ptr noundef %fmt.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %cond = zext i1 %cmp to i32
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %.off = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.151, i32 noundef %9) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %5, label %if.end.do.end13_crit_edge [
    i32 1195724874, label %if.end.mxc_jpeg_find_format.exit_crit_edge
    i32 859981650, label %cleanup2.split.loop.exit1.fold.split.i
    i32 875708738, label %cleanup2.split.loop.exit1.fold.split5.i
    i32 842094158, label %cleanup2.split.loop.exit1.fold.split6.i
    i32 1448695129, label %cleanup2.split.loop.exit1.fold.split7.i
    i32 861295961, label %cleanup2.split.loop.exit1.fold.split8.i
    i32 1497715271, label %cleanup2.split.loop.exit1.fold.split9.i
  ]

if.end.mxc_jpeg_find_format.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

cleanup2.split.loop.exit1.fold.split.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split5.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split6.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split7.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split8.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split9.i:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

mxc_jpeg_find_format.exit:                        ; preds = %cleanup2.split.loop.exit1.fold.split9.i, %cleanup2.split.loop.exit1.fold.split8.i, %cleanup2.split.loop.exit1.fold.split7.i, %cleanup2.split.loop.exit1.fold.split6.i, %cleanup2.split.loop.exit1.fold.split5.i, %cleanup2.split.loop.exit1.fold.split.i, %if.end.mxc_jpeg_find_format.exit_crit_edge
  %k.03.lcssa.i = phi i32 [ 0, %if.end.mxc_jpeg_find_format.exit_crit_edge ], [ 1, %cleanup2.split.loop.exit1.fold.split.i ], [ 2, %cleanup2.split.loop.exit1.fold.split5.i ], [ 3, %cleanup2.split.loop.exit1.fold.split6.i ], [ 4, %cleanup2.split.loop.exit1.fold.split7.i ], [ 5, %cleanup2.split.loop.exit1.fold.split8.i ], [ 6, %cleanup2.split.loop.exit1.fold.split9.i ]
  %arrayidx.le.i = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %mxc_jpeg_find_format.exit.do.end13_crit_edge, label %lor.lhs.false8

mxc_jpeg_find_format.exit.do.end13_crit_edge:     ; preds = %mxc_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

lor.lhs.false8:                                   ; preds = %mxc_jpeg_find_format.exit
  %flags = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i, i32 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cond)
  %cmp9.not = icmp eq i32 %12, %cond
  br i1 %cmp9.not, label %lor.lhs.false8.if.end27_crit_edge, label %lor.lhs.false8.do.end13_crit_edge

lor.lhs.false8.do.end13_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

lor.lhs.false8.if.end27_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.end13:                                         ; preds = %lor.lhs.false8.do.end13_crit_edge, %mxc_jpeg_find_format.exit.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %and = and i32 %5, 255
  %shr = lshr i32 %5, 8
  %and14 = and i32 %shr, 255
  %shr15 = lshr i32 %5, 16
  %and16 = and i32 %shr15, 255
  %shr17 = lshr i32 %5, 24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.154, i32 noundef %and, i32 noundef %and14, i32 noundef %and16, i32 noundef %shr17) #15
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20 = icmp eq i32 %14, 1
  %cond21 = select i1 %cmp20, i32 859981650, i32 1195724874
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond21, ptr %pixelformat, align 4
  %spec.select = zext i1 %cmp20 to i32
  %arrayidx.le.i60 = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %spec.select
  br label %if.end27

if.end27:                                         ; preds = %do.end13, %lor.lhs.false8.if.end27_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.le.i, %lor.lhs.false8.if.end27_crit_edge ], [ %arrayidx.le.i60, %do.end13 ]
  tail call fastcc void @mxc_jpeg_try_fmt(ptr noundef %f, ptr noundef %fmt.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %do.end ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_dqbuf(ptr noundef %file, ptr noundef %priv, ptr noundef %buf) #2 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -84
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rdy.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dqbuf.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dqbuf, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !396

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dqbuf.__UNIQUE_ID_ddebug321, ptr noundef %5, ptr noundef nonnull @.str.160, i32 noundef %11, i32 noundef %13) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stopping = getelementptr i8, ptr %priv, i32 196
  %14 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then7, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %16 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %17 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ev.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @notify_eos.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dqbuf, %if.then.i)) #12
          to label %notify_eos.exit [label %if.then.i], !srcloc !396

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @notify_eos.__UNIQUE_ID_ddebug301, ptr noundef %21, ptr noundef nonnull @.str.162) #12
  br label %notify_eos.exit

notify_eos.exit:                                  ; preds = %if.then.i, %if.then7
  call void @v4l2_event_queue_fh(ptr noundef %priv, ptr noundef nonnull %ev.i) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  %22 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %stopping, align 4
  br label %if.end9

if.end9:                                          ; preds = %notify_eos.exit, %do.end.if.end9_crit_edge
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 4
  %call11 = call i32 @v4l2_m2m_dqbuf(ptr noundef %file, ptr noundef %24, ptr noundef %buf) #12
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_encoder_cmd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cmd) #2 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -84
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %1, ptr noundef %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_encoder_cmd.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_encoder_cmd, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !396

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_encoder_cmd.__UNIQUE_ID_ddebug315, ptr noundef %5, ptr noundef nonnull @.str.164) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp eq i8 %11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %12 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %13 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %ev.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @notify_eos.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_encoder_cmd, %if.then.i)) #12
          to label %notify_eos.exit [label %if.then.i], !srcloc !396

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @notify_eos.__UNIQUE_ID_ddebug301, ptr noundef %17, ptr noundef nonnull @.str.162) #12
  br label %notify_eos.exit

notify_eos.exit:                                  ; preds = %if.then.i, %if.then13
  call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull %ev.i) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %stopping = getelementptr i8, ptr %1, i32 196
  %18 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %stopping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %notify_eos.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %notify_eos.exit ], [ 0, %if.else ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_decoder_cmd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cmd) #2 align 64 {
entry:
  %ev.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -84
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %1, ptr noundef %cmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_decoder_cmd.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_decoder_cmd, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !396

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_decoder_cmd.__UNIQUE_ID_ddebug314, ptr noundef %5, ptr noundef nonnull @.str.166) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp eq i8 %11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #12
  %12 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %13 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %ev.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @notify_eos.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_decoder_cmd, %if.then.i)) #12
          to label %notify_eos.exit [label %if.then.i], !srcloc !396

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @notify_eos.__UNIQUE_ID_ddebug301, ptr noundef %17, ptr noundef nonnull @.str.162) #12
  br label %notify_eos.exit

notify_eos.exit:                                  ; preds = %if.then.i, %if.then13
  call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull %ev.i) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #12
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %stopping = getelementptr i8, ptr %1, i32 196
  %18 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %stopping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %notify_eos.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %notify_eos.exit ], [ 0, %if.else ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #12
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_jpeg_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %m2m_ctx = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %7, label %if.end.i [
    i32 2, label %if.end.if.then.i_crit_edge
    i32 10, label %if.end.if.then.i_crit_edge79
    i32 3, label %if.end.if.then.i_crit_edge80
    i32 8, label %if.end.if.then.i_crit_edge81
    i32 5, label %if.end.if.then.i_crit_edge82
    i32 7, label %if.end.if.then.i_crit_edge83
    i32 12, label %if.end.if.then.i_crit_edge84
    i32 14, label %if.end.if.then.i_crit_edge85
  ]

if.end.if.then.i_crit_edge85:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge84:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge83:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge82:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge81:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge80:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge79:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge79, %if.end.if.then.i_crit_edge80, %if.end.if.then.i_crit_edge81, %if.end.if.then.i_crit_edge82, %if.end.if.then.i_crit_edge83, %if.end.if.then.i_crit_edge84, %if.end.if.then.i_crit_edge85
  %out_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 1
  br label %mxc_jpeg_get_q_data.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cap_q.i = getelementptr inbounds %struct.mxc_jpeg_ctx, ptr %ctx, i32 0, i32 2
  br label %mxc_jpeg_get_q_data.exit

mxc_jpeg_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.end.i ]
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.end6, label %do.end

do.end:                                           ; preds = %mxc_jpeg_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 8, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name) #15
  br label %cleanup

if.end6:                                          ; preds = %mxc_jpeg_get_q_data.exit
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %pixelformat, align 1
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %12, label %if.end6.mxc_jpeg_find_format.exit_crit_edge [
    i32 1195724874, label %if.end6.cleanup2.split.loop.exit1.i_crit_edge
    i32 859981650, label %cleanup2.split.loop.exit1.fold.split.i
    i32 875708738, label %cleanup2.split.loop.exit1.fold.split5.i
    i32 842094158, label %cleanup2.split.loop.exit1.fold.split6.i
    i32 1448695129, label %cleanup2.split.loop.exit1.fold.split7.i
    i32 861295961, label %cleanup2.split.loop.exit1.fold.split8.i
    i32 1497715271, label %cleanup2.split.loop.exit1.fold.split9.i
  ]

if.end6.cleanup2.split.loop.exit1.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

if.end6.mxc_jpeg_find_format.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_find_format.exit

cleanup2.split.loop.exit1.fold.split.i:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split5.i:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split6.i:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split7.i:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split8.i:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.fold.split9.i:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2.split.loop.exit1.i

cleanup2.split.loop.exit1.i:                      ; preds = %cleanup2.split.loop.exit1.fold.split9.i, %cleanup2.split.loop.exit1.fold.split8.i, %cleanup2.split.loop.exit1.fold.split7.i, %cleanup2.split.loop.exit1.fold.split6.i, %cleanup2.split.loop.exit1.fold.split5.i, %cleanup2.split.loop.exit1.fold.split.i, %if.end6.cleanup2.split.loop.exit1.i_crit_edge
  %k.03.lcssa.i = phi i32 [ 0, %if.end6.cleanup2.split.loop.exit1.i_crit_edge ], [ 1, %cleanup2.split.loop.exit1.fold.split.i ], [ 2, %cleanup2.split.loop.exit1.fold.split5.i ], [ 3, %cleanup2.split.loop.exit1.fold.split6.i ], [ 4, %cleanup2.split.loop.exit1.fold.split7.i ], [ 5, %cleanup2.split.loop.exit1.fold.split8.i ], [ 6, %cleanup2.split.loop.exit1.fold.split9.i ]
  %arrayidx.le.i = getelementptr [7 x %struct.mxc_jpeg_fmt], ptr @mxc_formats, i32 0, i32 %k.03.lcssa.i
  br label %mxc_jpeg_find_format.exit

mxc_jpeg_find_format.exit:                        ; preds = %cleanup2.split.loop.exit1.i, %if.end6.mxc_jpeg_find_format.exit_crit_edge
  %retval.2.i = phi ptr [ %arrayidx.le.i, %cleanup2.split.loop.exit1.i ], [ null, %if.end6.mxc_jpeg_find_format.exit_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.2.i, ptr %retval.0.i, align 4
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %fmt, align 1
  %w = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %w, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height, align 1
  %h = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 5
  %20 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %h, align 4
  %w_adjusted = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %w_adjusted to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %w_adjusted, align 4
  %h_adjusted = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %h_adjusted to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %h_adjusted, align 4
  %mode = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  %h_align = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %retval.2.i, i32 0, i32 6
  %25 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_align, align 4
  %v_align = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %retval.2.i, i32 0, i32 7
  %27 = ptrtoint ptr %v_align to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v_align, align 4
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %mxc_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l_bound_align_image(ptr noundef %w_adjusted, i32 noundef %16, i32 noundef 8192, i32 noundef %26, ptr noundef %h_adjusted, i32 noundef %19, i32 noundef 8192, i32 noundef %28, i32 noundef 0) #12
  br label %if.end26

if.else:                                          ; preds = %mxc_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l_bound_align_image(ptr noundef %w_adjusted, i32 noundef 64, i32 noundef %16, i32 noundef %26, ptr noundef %h_adjusted, i32 noundef 64, i32 noundef %19, i32 noundef %28, i32 noundef 0) #12
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then11
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %29 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp2777.not = icmp eq i8 %30, 0
  br i1 %cmp2777.not, label %if.end26.cleanup_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.078
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.078, i32 1
  %31 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bytesperline, align 1
  %arrayidx30 = getelementptr %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 2, i32 %i.078
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx30, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx, align 1
  %arrayidx34 = getelementptr %struct.mxc_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1, i32 %i.078
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx34, align 4
  %inc = add nuw nsw i32 %i.078, 1
  %37 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %38 to i32
  %cmp27 = icmp ult i32 %inc, %conv
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_jpeg_try_fmt(ptr nocapture noundef %f, ptr noundef %fmt) unnamed_addr #2 align 64 {
entry:
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %tmp_q = alloca %struct.mxc_jpeg_q_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #12
  %0 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %fmt1, align 1
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 8192)
  %3 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %w, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #12
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %height, align 1
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 8192)
  %7 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %h, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_q) #12
  %8 = getelementptr inbounds i8, ptr %tmp_q, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 36)
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 11
  %10 = call ptr @memset(ptr %reserved, i32 0, i32 7)
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1, ptr %field, align 1
  %colplanes = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %fmt, i32 0, i32 5
  %12 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colplanes, align 4
  %conv = trunc i32 %13 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %num_planes, align 1
  %fourcc = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %fmt, i32 0, i32 1
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %pixelformat, align 1
  %h_align = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %fmt, i32 0, i32 6
  %18 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_align, align 4
  call void @v4l_bound_align_image(ptr noundef nonnull %w, i32 noundef 64, i32 noundef %2, i32 noundef %19, ptr noundef nonnull %h, i32 noundef 64, i32 noundef %6, i32 noundef 3, i32 noundef 0) #12
  %20 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %w, align 4
  %22 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %fmt1, align 1
  %23 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h, align 4
  %25 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %height, align 1
  %w11 = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 3
  %26 = ptrtoint ptr %w11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %w11, align 4
  %h12 = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 5
  %27 = ptrtoint ptr %h12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %h12, align 4
  %28 = ptrtoint ptr %tmp_q to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fmt, ptr %tmp_q, align 4
  %29 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_planes, align 1
  %conv15 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp168.not = icmp eq i8 %30, 0
  br i1 %cmp168.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.09
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.09, i32 1
  %31 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bytesperline, align 1
  %arrayidx19 = getelementptr %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2, i32 %i.09
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx19, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx, align 1
  %arrayidx21 = getelementptr %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1, i32 %i.09
  %36 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx21, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %conv15
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %37 = ptrtoint ptr %tmp_q to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp_q, align 4
  %fourcc.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fourcc.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %40, label %if.else16.i [
    i32 1195724874, label %mxc_jpeg_bytesperline.exit.thread
    i32 842094158, label %if.then6.i
  ]

mxc_jpeg_bytesperline.exit.thread:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %bytesperline10.i5 = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2
  %42 = ptrtoint ptr %bytesperline10.i5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %bytesperline10.i5, align 4
  %arrayidx15.i6 = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx15.i6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx15.i6, align 4
  br label %if.then.i

if.then6.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %w11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %w11, align 4
  %depth.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %38, i32 0, i32 4
  %46 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %depth.i, align 4
  %div8.i = sdiv i32 %47, 8
  %mul9.i = mul i32 %div8.i, %45
  br label %mxc_jpeg_bytesperline.exit

if.else16.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %w11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %w11, align 4
  %depth21.i = getelementptr inbounds %struct.mxc_jpeg_fmt, ptr %38, i32 0, i32 4
  %50 = ptrtoint ptr %depth21.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %depth21.i, align 4
  %div22.i = sdiv i32 %51, 8
  %mul23.i = mul i32 %div22.i, %49
  br label %mxc_jpeg_bytesperline.exit

mxc_jpeg_bytesperline.exit:                       ; preds = %if.else16.i, %if.then6.i
  %mul9.sink44.i.ph = phi i32 [ %mul23.i, %if.else16.i ], [ %mul9.i, %if.then6.i ]
  %mul9.sink.i.ph = phi i32 [ 0, %if.else16.i ], [ %mul9.i, %if.then6.i ]
  %52 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %fourcc.i, align 4
  %bytesperline10.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2
  %53 = ptrtoint ptr %bytesperline10.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul9.sink44.i.ph, ptr %bytesperline10.i, align 4
  %arrayidx15.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul9.sink.i.ph, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 1195724874
  br i1 %cmp.i, label %mxc_jpeg_bytesperline.exit.if.then.i_crit_edge, label %if.else.i

mxc_jpeg_bytesperline.exit.if.then.i_crit_edge:   ; preds = %mxc_jpeg_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %mxc_jpeg_bytesperline.exit.if.then.i_crit_edge, %mxc_jpeg_bytesperline.exit.thread
  %sizeimage.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1
  %55 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sizeimage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %w11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %w11, align 4
  %mul.i = mul i32 %58, 6
  %59 = ptrtoint ptr %h12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %h12, align 4
  %mul2.i = mul i32 %mul.i, %60
  %61 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul2.i, ptr %sizeimage.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %62 = phi i32 [ %mul2.i, %if.then1.i ], [ %56, %if.then.i.if.end.i_crit_edge ]
  %arrayidx6.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %62)
  %cmp9.i = icmp ugt i32 %62, -1024
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1024, ptr %sizeimage.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end.i.if.end13.i_crit_edge
  %65 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sizeimage.i, align 4
  %add.i = add i32 %66, 1023
  %and.i = and i32 %add.i, -1024
  store i32 %and.i, ptr %sizeimage.i, align 4
  br label %mxc_jpeg_sizeimage.exit

if.else.i:                                        ; preds = %mxc_jpeg_bytesperline.exit
  %67 = ptrtoint ptr %h12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %h12, align 4
  %mul20.i = mul i32 %68, %mul9.sink44.i.ph
  %sizeimage21.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1
  %69 = ptrtoint ptr %sizeimage21.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul20.i, ptr %sizeimage21.i, align 4
  %arrayidx24.i = getelementptr inbounds %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %.pr)
  %cmp27.i = icmp eq i32 %.pr, 842094158
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i.mxc_jpeg_sizeimage.exit_crit_edge

if.else.i.mxc_jpeg_sizeimage.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mxc_jpeg_sizeimage.exit

if.then28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %div51.i = lshr i32 %mul20.i, 1
  %71 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div51.i, ptr %arrayidx24.i, align 4
  br label %mxc_jpeg_sizeimage.exit

mxc_jpeg_sizeimage.exit:                          ; preds = %if.then28.i, %if.else.i.mxc_jpeg_sizeimage.exit_crit_edge, %if.end13.i
  %72 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp2511.not = icmp eq i8 %73, 0
  br i1 %cmp2511.not, label %mxc_jpeg_sizeimage.exit.for.end40_crit_edge, label %mxc_jpeg_sizeimage.exit.for.body27_crit_edge

mxc_jpeg_sizeimage.exit.for.body27_crit_edge:     ; preds = %mxc_jpeg_sizeimage.exit
  br label %for.body27

mxc_jpeg_sizeimage.exit.for.end40_crit_edge:      ; preds = %mxc_jpeg_sizeimage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %mxc_jpeg_sizeimage.exit.for.body27_crit_edge
  %i.112 = phi i32 [ %inc39, %for.body27.for.body27_crit_edge ], [ 0, %mxc_jpeg_sizeimage.exit.for.body27_crit_edge ]
  %arrayidx29 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.112
  %reserved30 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.112, i32 2
  %74 = call ptr @memset(ptr %reserved30, i32 0, i32 12)
  %arrayidx33 = getelementptr %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 2, i32 %i.112
  %75 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx33, align 4
  %bytesperline34 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.112, i32 1
  %77 = ptrtoint ptr %bytesperline34 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %bytesperline34, align 1
  %arrayidx36 = getelementptr %struct.mxc_jpeg_q_data, ptr %tmp_q, i32 0, i32 1, i32 %i.112
  %78 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx36, align 4
  %80 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %arrayidx29, align 1
  %inc39 = add nuw nsw i32 %i.112, 1
  %81 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_planes, align 1
  %conv24 = zext i8 %82 to i32
  %cmp25 = icmp ult i32 %inc39, %conv24
  br i1 %cmp25, label %for.body27.for.body27_crit_edge, label %for.body27.for.end40_crit_edge

for.body27.for.end40_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

for.end40:                                        ; preds = %for.body27.for.end40_crit_edge, %mxc_jpeg_sizeimage.exit.for.end40_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %83 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 8, ptr %colorspace, align 1
  %84 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %84, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %86 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %xfer_func, align 1
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %87 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %quantization, align 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_q) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ipg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  %clk_per = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_jpeg_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ipg = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ipg, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.169) #15
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %clk_per = getelementptr inbounds %struct.mxc_jpeg_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  %call.i17 = tail call i32 @clk_prepare(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %if.end.clk_prepare_enable.exit24_crit_edge

if.end.clk_prepare_enable.exit24_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit24

if.end.i21:                                       ; preds = %if.end
  %call1.i19 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not.i20, label %if.end.i21.cleanup_crit_edge, label %if.then3.i22

if.end.i21.cleanup_crit_edge:                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %clk_prepare_enable.exit24

clk_prepare_enable.exit24:                        ; preds = %if.then3.i22, %if.end.clk_prepare_enable.exit24_crit_edge
  %retval.0.i23 = phi i32 [ %call.i17, %if.end.clk_prepare_enable.exit24_crit_edge ], [ %call1.i19, %if.then3.i22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i23)
  %cmp3 = icmp slt i32 %retval.0.i23, 0
  br i1 %cmp3, label %do.end7, label %clk_prepare_enable.exit24.cleanup_crit_edge

clk_prepare_enable.exit24.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %clk_prepare_enable.exit24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.172) #15
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %clk_prepare_enable.exit24.cleanup_crit_edge, %if.end.i21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %clk_prepare_enable.exit24.cleanup_crit_edge ], [ %retval.0.i, %do.end ], [ %retval.0.i23, %do.end7 ], [ 0, %if.end.i21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !185, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !310, !311, !312, !314, !315, !317, !319, !321, !323, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !368, !370, !372, !374, !376, !378, !379, !380, !381, !383, !384}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 321, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug300, !4, !"__UNIQUE_ID_debug300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 322, i32 1}
!5 = !{ptr @__initcall__kmod_mxc_jpeg_encdec__324_2208_mxc_jpeg_driver_init6, !6, !"__initcall__kmod_mxc_jpeg_encdec__324_2208_mxc_jpeg_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2208, i32 1}
!7 = !{ptr @__exitcall_mxc_jpeg_driver_exit, !6, !"__exitcall_mxc_jpeg_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author325, !9, !"__UNIQUE_ID_author325", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2210, i32 1}
!10 = !{ptr @__UNIQUE_ID_author326, !11, !"__UNIQUE_ID_author326", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2211, i32 1}
!12 = !{ptr @__UNIQUE_ID_description327, !13, !"__UNIQUE_ID_description327", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2212, i32 1}
!14 = !{ptr @__UNIQUE_ID_file328, !15, !"__UNIQUE_ID_file328", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2213, i32 1}
!16 = !{ptr @__UNIQUE_ID_license329, !15, !"__UNIQUE_ID_license329", i1 false, i1 false}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 320, i32 21}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2203, i32 11}
!22 = !{ptr @mxc_jpeg_driver, !23, !"mxc_jpeg_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2199, i32 31}
!24 = !{ptr @mxc_jpeg_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2003, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mxc_jpeg_probe.__key.2, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2004, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2008, i32 3}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mxc_jpeg_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @mxc_jpeg_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2019, i32 4}
!40 = !{ptr @mxc_jpeg_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxc_jpeg_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2026, i32 4}
!44 = !{ptr @mxc_jpeg_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxc_jpeg_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2037, i32 36}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2039, i32 3}
!50 = !{ptr @mxc_jpeg_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mxc_jpeg_probe._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2043, i32 36}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2045, i32 3}
!56 = !{ptr @mxc_jpeg_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mxc_jpeg_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2051, i32 3}
!60 = !{ptr @mxc_jpeg_probe._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mxc_jpeg_probe._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2058, i32 3}
!64 = !{ptr @mxc_jpeg_probe._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mxc_jpeg_probe._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mxc_jpeg_probe._entry.29, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2063, i32 3}
!68 = !{ptr @mxc_jpeg_probe._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @mxc_jpeg_probe._entry.31, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2070, i32 3}
!71 = !{ptr @mxc_jpeg_probe._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2077, i32 5}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2081, i32 5}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2101, i32 3}
!78 = !{ptr @mxc_jpeg_probe._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mxc_jpeg_probe._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2106, i32 3}
!82 = !{ptr @mxc_jpeg_probe._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mxc_jpeg_probe._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2111, i32 3}
!86 = !{ptr @mxc_jpeg_probe._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mxc_jpeg_probe._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 568, i32 2}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug303, !89, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 572, i32 3}
!95 = !{ptr @mxc_jpeg_dec_irq._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mxc_jpeg_dec_irq._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 583, i32 3}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mxc_jpeg_dec_irq._entry.48, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @mxc_jpeg_dec_irq._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 594, i32 3}
!104 = !{ptr @mxc_jpeg_dec_irq._entry.52, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mxc_jpeg_dec_irq._entry_ptr.54, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 602, i32 3}
!108 = !{ptr @mxc_jpeg_dec_irq._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mxc_jpeg_dec_irq._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 614, i32 3}
!112 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug304, !111, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 620, i32 3}
!115 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug305, !114, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 626, i32 3}
!118 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug306, !117, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 637, i32 3}
!121 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug307, !120, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 643, i32 2}
!124 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug308, !123, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 645, i32 2}
!127 = !{ptr @mxc_jpeg_dec_irq.__UNIQUE_ID_ddebug309, !126, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 346, i32 3}
!133 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @print_mxc_buf._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @print_mxc_buf._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 349, i32 18}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 349, i32 30}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1947, i32 53}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1948, i32 14}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1950, i32 3}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mxc_jpeg_attach_pm_domains._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mxc_jpeg_attach_pm_domains._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @mxc_jpeg_m2m_ops, !150, !"mxc_jpeg_m2m_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1922, i32 34}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 934, i32 3}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mxc_jpeg_device_run._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mxc_jpeg_device_run._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 967, i32 3}
!158 = !{ptr @mxc_jpeg_device_run._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mxc_jpeg_device_run._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 971, i32 3}
!162 = !{ptr @mxc_jpeg_device_run._entry.78, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mxc_jpeg_device_run._entry_ptr.80, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 979, i32 3}
!166 = !{ptr @mxc_jpeg_device_run.__UNIQUE_ID_ddebug312, !165, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 985, i32 3}
!169 = !{ptr @mxc_jpeg_device_run.__UNIQUE_ID_ddebug313, !168, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 518, i32 2}
!172 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mxc_jpeg_alloc_slot_data._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @mxc_jpeg_alloc_slot_data._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 903, i32 3}
!177 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mxc_jpeg_config_enc_desc._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mxc_jpeg_config_enc_desc._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 908, i32 2}
!182 = !{ptr @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug310, !181, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 910, i32 2}
!185 = !{ptr @mxc_jpeg_config_enc_desc.__UNIQUE_ID_ddebug311, !184, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!186 = distinct !{null, !187, !"jpeg_soi", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 164, i32 28}
!188 = !{ptr @jpeg_app14, !189, !"jpeg_app14", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 175, i32 28}
!190 = !{ptr @jpeg_app0, !191, !"jpeg_app0", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 168, i32 28}
!192 = !{ptr @jpeg_dqt, !193, !"jpeg_dqt", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 181, i32 28}
!194 = !{ptr @jpeg_sof_maximal, !195, !"jpeg_sof_maximal", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 204, i32 28}
!196 = !{ptr @jpeg_dht, !197, !"jpeg_dht", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 211, i32 28}
!198 = !{ptr @jpeg_dri, !199, !"jpeg_dri", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 275, i32 28}
!200 = !{ptr @jpeg_sos_maximal, !201, !"jpeg_sos_maximal", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 280, i32 28}
!202 = !{ptr @jpeg_image_red, !203, !"jpeg_image_red", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 286, i32 28}
!204 = distinct !{null, !205, !"jpeg_eoi", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 300, i32 28}
!206 = !{ptr @mxc_jpeg_fops, !207, !"mxc_jpeg_fops", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1913, i32 42}
!208 = !{ptr @.str.89, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1511, i32 3}
!210 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @mxc_jpeg_open.__UNIQUE_ID_ddebug319, !209, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1513, i32 3}
!214 = !{ptr @mxc_jpeg_open.__UNIQUE_ID_ddebug320, !213, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!215 = !{ptr @mxc_jpeg_qops, !216, !"mxc_jpeg_qops", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1405, i32 29}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1396, i32 4}
!219 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @mxc_jpeg_buf_prepare._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @mxc_jpeg_buf_prepare._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1084, i32 2}
!224 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @mxc_jpeg_start_streaming.__UNIQUE_ID_ddebug316, !223, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1089, i32 3}
!228 = !{ptr @mxc_jpeg_start_streaming._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @mxc_jpeg_start_streaming._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1101, i32 2}
!232 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @mxc_jpeg_stop_streaming.__UNIQUE_ID_ddebug317, !231, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1239, i32 3}
!236 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @mxc_jpeg_parse._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @mxc_jpeg_parse._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1249, i32 3}
!241 = !{ptr @mxc_jpeg_parse._entry.101, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @mxc_jpeg_parse._entry_ptr.103, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1250, i32 3}
!245 = !{ptr @mxc_jpeg_parse._entry.104, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @mxc_jpeg_parse._entry_ptr.106, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1256, i32 3}
!249 = !{ptr @mxc_jpeg_parse._entry.107, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @mxc_jpeg_parse._entry_ptr.109, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1263, i32 3}
!253 = !{ptr @mxc_jpeg_parse._entry.110, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @mxc_jpeg_parse._entry_ptr.112, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1269, i32 3}
!257 = !{ptr @mxc_jpeg_parse._entry.113, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @mxc_jpeg_parse._entry_ptr.115, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.117, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1275, i32 3}
!261 = !{ptr @mxc_jpeg_parse._entry.116, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @mxc_jpeg_parse._entry_ptr.118, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1280, i32 3}
!265 = !{ptr @mxc_jpeg_parse._entry.119, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @mxc_jpeg_parse._entry_ptr.121, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1288, i32 3}
!269 = !{ptr @mxc_jpeg_parse._entry.122, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @mxc_jpeg_parse._entry_ptr.124, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1320, i32 2}
!273 = !{ptr @mxc_jpeg_parse.__UNIQUE_ID_ddebug318, !272, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1130, i32 4}
!276 = !{ptr @.str.127, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @mxc_jpeg_valid_comp_id._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @mxc_jpeg_valid_comp_id._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1136, i32 4}
!281 = !{ptr @mxc_jpeg_valid_comp_id._entry.128, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @mxc_jpeg_valid_comp_id._entry_ptr.130, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1158, i32 3}
!285 = !{ptr @.str.132, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @mxc_jpeg_get_image_format._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @mxc_jpeg_get_image_format._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 68, i32 12}
!290 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 76, i32 12}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 87, i32 12}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 98, i32 12}
!296 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 109, i32 12}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 120, i32 12}
!300 = !{ptr @.str.139, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 131, i32 12}
!302 = !{ptr @mxc_formats, !303, !"mxc_formats", i1 false, i1 false}
!303 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 66, i32 34}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 462, i32 2}
!306 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @notify_src_chg.__UNIQUE_ID_ddebug302, !305, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1899, i32 3}
!310 = !{ptr @.str.143, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @mxc_jpeg_release.__UNIQUE_ID_ddebug322, !309, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1902, i32 3}
!314 = !{ptr @mxc_jpeg_release.__UNIQUE_ID_ddebug323, !313, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!315 = !{ptr @mxc_jpeg_ioctl_ops, !316, !"mxc_jpeg_ioctl_ops", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1857, i32 36}
!317 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1532, i32 23}
!319 = !{ptr @.str.146, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1534, i32 49}
!321 = !{ptr @.str.147, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1799, i32 3}
!323 = !{ptr @.str.148, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @mxc_jpeg_g_fmt_vid._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @mxc_jpeg_g_fmt_vid._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.149, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1716, i32 3}
!328 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @mxc_jpeg_s_fmt._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @mxc_jpeg_s_fmt._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.151, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1651, i32 3}
!333 = !{ptr @.str.152, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @mxc_jpeg_try_fmt_vid_cap._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @mxc_jpeg_try_fmt_vid_cap._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.154, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1657, i32 3}
!338 = !{ptr @mxc_jpeg_try_fmt_vid_cap._entry.153, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @mxc_jpeg_try_fmt_vid_cap._entry_ptr.155, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1682, i32 3}
!342 = !{ptr @mxc_jpeg_try_fmt_vid_out._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @mxc_jpeg_try_fmt_vid_out._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @mxc_jpeg_try_fmt_vid_out._entry.157, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1688, i32 3}
!346 = !{ptr @mxc_jpeg_try_fmt_vid_out._entry_ptr.158, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.159, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1845, i32 2}
!349 = !{ptr @.str.160, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @mxc_jpeg_dqbuf.__UNIQUE_ID_ddebug321, !348, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!351 = !{ptr @.str.161, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 450, i32 2}
!353 = !{ptr @.str.162, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @notify_eos.__UNIQUE_ID_ddebug301, !352, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!355 = !{ptr @.str.163, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1034, i32 3}
!357 = !{ptr @.str.164, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @mxc_jpeg_encoder_cmd.__UNIQUE_ID_ddebug315, !356, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!359 = !{ptr @.str.165, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 1008, i32 3}
!361 = !{ptr @.str.166, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @mxc_jpeg_decoder_cmd.__UNIQUE_ID_ddebug314, !360, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!363 = !{ptr @.str.167, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 527, i32 3}
!365 = !{ptr @.str.168, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @mxc_jpeg_free_slot_data._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @mxc_jpeg_free_slot_data._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @mxc_jpeg_match, !369, !"mxc_jpeg_match", i1 false, i1 false}
!369 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 148, i32 34}
!370 = !{ptr @mxc_decode_mode, !371, !"mxc_decode_mode", i1 false, i1 false}
!371 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 145, i32 18}
!372 = !{ptr @mxc_encode_mode, !373, !"mxc_encode_mode", i1 false, i1 false}
!373 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 146, i32 18}
!374 = !{ptr @mxc_jpeg_pm_ops, !375, !"mxc_jpeg_pm_ops", i1 false, i1 false}
!375 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2175, i32 32}
!376 = !{ptr @.str.169, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2146, i32 3}
!378 = !{ptr @.str.170, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @mxc_jpeg_runtime_resume._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @mxc_jpeg_runtime_resume._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.172, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg.c", i32 2152, i32 3}
!383 = !{ptr @mxc_jpeg_runtime_resume._entry.171, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @mxc_jpeg_runtime_resume._entry_ptr.173, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{i64 4098122}
!395 = !{i64 2156655112}
!396 = !{i64 2148753599, i64 2148753604, i64 2148753617, i64 2148753661, i64 2148753695, i64 2148753716}
!397 = !{i64 2156659548}
!398 = !{i64 4097704}
!399 = !{i64 2156662146}
!400 = !{i64 2156662453}
!401 = !{i64 2156664833}
!402 = !{i8 0, i8 2}
!403 = !{i64 2156672082}
!404 = !{!"branch_weights", i32 2000, i32 1}
!405 = !{!"branch_weights", i32 1, i32 2000}
!406 = !{i64 2148271203}
!407 = !{i64 756026, i64 756051, i64 756073, i64 756089, i64 756101, i64 756121, i64 756145, i64 756161, i64 756173}
!408 = !{i64 2148271391}
