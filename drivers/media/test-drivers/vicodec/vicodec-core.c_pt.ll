; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vicodec/vicodec-core.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vicodec/vicodec-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.v4l2_event = type { i32, %union.anon.120, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.120 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.121, i32, i32, i32, i32, i32 }
%union.anon.121 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_event_src_change = type { i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vicodec_dev = type { %struct.v4l2_device, %struct.vicodec_dev_instance, %struct.vicodec_dev_instance, %struct.vicodec_dev_instance, %struct.media_device }
%struct.vicodec_dev_instance = type { %struct.video_device, %struct.mutex, %struct.spinlock, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_request = type { ptr, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vicodec_ctx = type { %struct.v4l2_fh, ptr, i8, i8, ptr, %struct.v4l2_ctrl_handler, [2 x %struct.vicodec_q_data], %struct.v4l2_fwht_state, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vicodec_q_data = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_fwht_state = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.fwht_raw_frame, %struct.fwht_cframe_hdr, ptr, i64 }
%struct.fwht_raw_frame = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fwht_cframe_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.v4l2_ctrl_fwht_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }

@__UNIQUE_ID_description298 = internal constant [41 x i8] c"vicodec.description=Virtual codec device\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [53 x i8] c"vicodec.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [56 x i8] c"vicodec.file=drivers/media/test-drivers/vicodec/vicodec\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [23 x i8] c"vicodec.license=GPL v2\00", section ".modinfo", align 1
@__param_str_multiplanar = internal constant [20 x i8] c"vicodec.multiplanar\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@multiplanar = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_multiplanar = internal constant %struct.kernel_param { ptr @__param_str_multiplanar, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @multiplanar } }, section "__param", align 4
@__UNIQUE_ID_multiplanartype302 = internal constant [34 x i8] c"vicodec.parmtype=multiplanar:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_multiplanar303 = internal constant [76 x i8] c"vicodec.parm=multiplanar: use multi-planar API instead of single-planar API\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"vicodec.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype304 = internal constant [28 x i8] c"vicodec.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug305 = internal constant [41 x i8] c"vicodec.parm=debug: activates debug info\00", section ".modinfo", align 1
@vicodec_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vicodec_probe, ptr @vicodec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vicodec_pdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vicodec_dev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vicodec__332_2236_vicodec_init6 = internal global ptr @vicodec_init, section ".initcall6.init", align 4
@__exitcall_vicodec_exit = internal global ptr @vicodec_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vicodec\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"platform:vicodec\00", [47 x i8] zeroinitializer }, align 32
@vicodec_m2m_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @vicodec_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stateful-encoder\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stateful-decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stateless-decoder\00", [46 x i8] zeroinitializer }, align 32
@vicodec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Failed to init mem2mem media controller for enc\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vicodec_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/test-drivers/vicodec/vicodec-core.c\00", [46 x i8] zeroinitializer }, align 32
@vicodec_probe._entry_ptr = internal global ptr @vicodec_probe._entry, section ".printk_index", align 4
@vicodec_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Failed to init mem2mem media controller for dec\0A\00", [41 x i8] zeroinitializer }, align 32
@vicodec_probe._entry_ptr.10 = internal global ptr @vicodec_probe._entry.8, section ".printk_index", align 4
@vicodec_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: Failed to init mem2mem media controller for stateless dec\0A\00", [63 x i8] zeroinitializer }, align 32
@vicodec_probe._entry_ptr.13 = internal global ptr @vicodec_probe._entry.11, section ".printk_index", align 4
@vicodec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to register mem2mem media device\0A\00", [49 x i8] zeroinitializer }, align 32
@vicodec_probe._entry_ptr.16 = internal global ptr @vicodec_probe._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vicodec_request_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013No buffer was provided with the request\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vicodec_request_validate\00", [39 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry_ptr = internal global ptr @vicodec_request_validate._entry, section ".printk_index", align 4
@vicodec_request_validate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: No buffer was provided with the request\0A\00", [49 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry_ptr.21 = internal global ptr @vicodec_request_validate._entry.19, section ".printk_index", align 4
@vicodec_request_validate._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.7, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: More than one buffer was provided with the request\0A\00", [38 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry_ptr.24 = internal global ptr @vicodec_request_validate._entry.22, section ".printk_index", align 4
@vicodec_request_validate._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.7, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Missing codec control\0A\00", [35 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry_ptr.27 = internal global ptr @vicodec_request_validate._entry.25, section ".printk_index", align 4
@vicodec_ctrl_stateless_state = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vicodec_ctrl_ops, ptr null, i32 10750308, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 40, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.7, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Missing required codec control\0A\00", [58 x i8] zeroinitializer }, align 32
@vicodec_request_validate._entry_ptr.30 = internal global ptr @vicodec_request_validate._entry.28, section ".printk_index", align 4
@vicodec_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @vicodec_try_ctrl, ptr @vicodec_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@register_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev_instance->lock\00", [44 x i8] zeroinitializer }, align 32
@register_instance.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev_instance->mutex\00", [43 x i8] zeroinitializer }, align 32
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr @job_ready, ptr null }, [20 x i8] zeroinitializer }, align 32
@register_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to init vicodec enc device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_instance\00", [46 x i8] zeroinitializer }, align 32
@register_instance._entry_ptr = internal global ptr @register_instance._entry, section ".printk_index", align 4
@vicodec_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @vicodec_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"vicodec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @vicodec_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@register_instance._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.7, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to register video device '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@register_instance._entry_ptr.38 = internal global ptr @register_instance._entry.36, section ".printk_index", align 4
@register_instance._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.7, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Device '%s' registered as /dev/video%d\0A\00", [50 x i8] zeroinitializer }, align 32
@register_instance._entry_ptr.41 = internal global ptr @register_instance._entry.39, section ".printk_index", align 4
@vicodec_eos_event = internal constant { %struct.v4l2_event, [56 x i8] } { %struct.v4l2_event { i32 2, %union.anon.120 zeroinitializer, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@device_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Acquiring kernel pointers to buffers failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_process\00", [17 x i8] zeroinitializer }, align 32
@device_process._entry_ptr = internal global ptr @device_process._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@job_ready.magic = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OOOO\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@job_ready.rs_event = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@get_next_header.magic = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OOOO\FF\FF\FF\FF", [24 x i8] zeroinitializer }, align 32
@vicodec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @vicodec_open, ptr @vicodec_release }, [60 x i8] zeroinitializer }, align 32
@vicodec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr @vidioc_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr @vidioc_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr @vidioc_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr @vidioc_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr @vidioc_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr @vidioc_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr @vicodec_encoder_cmd, ptr @v4l2_m2m_ioctl_try_encoder_cmd, ptr @vicodec_decoder_cmd, ptr @v4l2_m2m_ioctl_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vicodec_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vicodec_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vicodec_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vicodec_core:1848:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@pixfmt_stateless_fwht = internal constant { %struct.v4l2_fwht_pixfmt_info, [52 x i8] } { %struct.v4l2_fwht_pixfmt_info { i32 1213679187, i32 0, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0 }, [52 x i8] zeroinitializer }, align 32
@pixfmt_fwht = internal constant { %struct.v4l2_fwht_pixfmt_info, [52 x i8] } { %struct.v4l2_fwht_pixfmt_info { i32 1414027078, i32 0, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0 }, [52 x i8] zeroinitializer }, align 32
@vicodec_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vicodec_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vicodec_buf_out_validate, ptr null, ptr @vicodec_buf_prepare, ptr null, ptr null, ptr @vicodec_start_streaming, ptr @vicodec_stop_streaming, ptr @vicodec_buf_queue, ptr @vicodec_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vicodec_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: type: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vicodec_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@vicodec_buf_prepare._entry_ptr = internal global ptr @vicodec_buf_prepare._entry, section ".printk_index", align 4
@vicodec_buf_prepare._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: %s field isn't supported\0A\00", [60 x i8] zeroinitializer }, align 32
@vicodec_buf_prepare._entry_ptr.50 = internal global ptr @vicodec_buf_prepare._entry.48, section ".printk_index", align 4
@vicodec_buf_prepare._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.7, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: %s data will not fit into plane (%lu < %lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@vicodec_buf_prepare._entry_ptr.53 = internal global ptr @vicodec_buf_prepare._entry.51, section ".printk_index", align 4
@vicodec_buf_queue.rs_event = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s: %s: Setting format for type %d, coded wxh: %dx%d, fourcc: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vicodec_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.7, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Removing vicodec\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vicodec_remove\00", [17 x i8] zeroinitializer }, align 32
@vicodec_remove._entry_ptr = internal global ptr @vicodec_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 10029515, i64 10029602, i64 10029603, i64 10750308]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 842290766, i64 875714126]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.66 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.67 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.72 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.76 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.77 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.78 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1213679187, i64 1414027078]
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"multiplanar\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 32, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 37, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"vicodec_pdrv\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2207, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"vicodec_pdev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 75, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2211, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2104, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"vicodec_m2m_media_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2020, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2113, i32 51 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2118, i32 51 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2123, i32 52 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2133, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2141, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2149, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2155, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1968, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1974, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1978, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1987, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [29 x i8] c"vicodec_ctrl_stateless_state\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1811, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1994, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"vicodec_ctrl_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1806, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2037, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2038, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2025, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2041, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"vicodec_videodev\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2011, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2063, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2067, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"vicodec_eos_event\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 139, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 304, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1163, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 567, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 668, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 348, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"vicodec_fops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2002, i32 42 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"vicodec_ioctl_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1318, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1848, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"pixfmt_stateless_fwht\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 67, i32 43 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"pixfmt_fwht\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 63, i32 43 }
@___asan_gen_.280 = private unnamed_addr constant [13 x i8] c"vicodec_qops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1682, i32 29 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1399, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1406, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1413, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [9 x i8] c"rs_event\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1435, i32 33 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 705, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1039, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private constant [53 x i8] c"../drivers/media/test-drivers/vicodec/vicodec-core.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 2190, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debug305, ptr @__UNIQUE_ID_debugtype304, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_multiplanar303, ptr @__UNIQUE_ID_multiplanartype302, ptr @__exitcall_vicodec_exit, ptr @__initcall__kmod_vicodec__332_2236_vicodec_init6, ptr @__param_debug, ptr @__param_multiplanar, ptr @device_process._entry, ptr @device_process._entry_ptr, ptr @register_instance._entry, ptr @register_instance._entry.36, ptr @register_instance._entry.39, ptr @register_instance._entry_ptr, ptr @register_instance._entry_ptr.38, ptr @register_instance._entry_ptr.41, ptr @vicodec_buf_prepare._entry, ptr @vicodec_buf_prepare._entry.48, ptr @vicodec_buf_prepare._entry.51, ptr @vicodec_buf_prepare._entry_ptr, ptr @vicodec_buf_prepare._entry_ptr.50, ptr @vicodec_buf_prepare._entry_ptr.53, ptr @vicodec_exit, ptr @vicodec_probe._entry, ptr @vicodec_probe._entry.11, ptr @vicodec_probe._entry.14, ptr @vicodec_probe._entry.8, ptr @vicodec_probe._entry_ptr, ptr @vicodec_probe._entry_ptr.10, ptr @vicodec_probe._entry_ptr.13, ptr @vicodec_probe._entry_ptr.16, ptr @vicodec_remove._entry, ptr @vicodec_remove._entry_ptr, ptr @vicodec_request_validate._entry, ptr @vicodec_request_validate._entry.19, ptr @vicodec_request_validate._entry.22, ptr @vicodec_request_validate._entry.25, ptr @vicodec_request_validate._entry.28, ptr @vicodec_request_validate._entry_ptr, ptr @vicodec_request_validate._entry_ptr.21, ptr @vicodec_request_validate._entry_ptr.24, ptr @vicodec_request_validate._entry_ptr.27, ptr @vicodec_request_validate._entry_ptr.30, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry_ptr, ptr @multiplanar, ptr @debug, ptr @vicodec_pdrv, ptr @vicodec_pdev, ptr @.str, ptr @.str.1, ptr @vicodec_m2m_media_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @vicodec_ctrl_stateless_state, ptr @.str.29, ptr @vicodec_ctrl_ops, ptr @register_instance.__key, ptr @.str.31, ptr @register_instance.__key.32, ptr @.str.33, ptr @m2m_ops, ptr @.str.34, ptr @.str.35, ptr @vicodec_videodev, ptr @.str.37, ptr @.str.40, ptr @vicodec_eos_event, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @job_ready.magic, ptr @job_ready.rs_event, ptr @get_next_header.magic, ptr @vicodec_fops, ptr @vicodec_ioctl_ops, ptr @vicodec_open._key, ptr @.str.45, ptr @pixfmt_stateless_fwht, ptr @pixfmt_fwht, ptr @vicodec_qops, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @vicodec_buf_queue.rs_event, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiplanar to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_pdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_m2m_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_request_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_request_validate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_request_validate._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_request_validate._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_ctrl_stateless_state to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_request_validate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_instance.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_instance._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_instance._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_eos_event to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @job_ready.magic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @job_ready.rs_event to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_header.magic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixfmt_stateless_fwht to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixfmt_fwht to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_buf_prepare._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_buf_prepare._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_buf_queue.rs_event to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vicodec_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vicodec_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @vicodec_pdrv) #15
  tail call void @platform_device_unregister(ptr noundef nonnull @vicodec_pdev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @vicodec_pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vicodec_pdrv, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_device_unregister(ptr noundef nonnull @vicodec_pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5224) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.free_dev_crit_edge

if.end.free_dev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dev

if.end5:                                          ; preds = %if.end
  %release = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vicodec_v4l2_dev_release, ptr %release, align 4
  %mdev = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 4, i32 2
  %call10 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #15
  %bus_info = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 4, i32 5
  %call13 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.1, i32 noundef 32) #15
  tail call void @media_device_init(ptr noundef %mdev) #15
  %ops = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 4, i32 21
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vicodec_m2m_media_ops, ptr %ops, align 8
  %mdev18 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mdev18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mdev, ptr %mdev18, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %stateful_enc = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 1
  %call19 = tail call fastcc i32 @register_instance(ptr noundef nonnull %call7.i.i, ptr noundef %stateful_enc, ptr noundef nonnull @.str.2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end5.unreg_dev_crit_edge

if.end5.unreg_dev_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %unreg_dev

if.end22:                                         ; preds = %if.end5
  %stateful_dec = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 2
  %call23 = tail call fastcc i32 @register_instance(ptr noundef nonnull %call7.i.i, ptr noundef %stateful_dec, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.unreg_sf_enc_crit_edge

if.end22.unreg_sf_enc_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %unreg_sf_enc

if.end26:                                         ; preds = %if.end22
  %stateless_dec = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 3
  %call27 = tail call fastcc i32 @register_instance(ptr noundef nonnull %call7.i.i, ptr noundef %stateless_dec, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.unreg_sf_dec_crit_edge

if.end26.unreg_sf_dec_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %unreg_sf_dec

if.end30:                                         ; preds = %if.end26
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 8
  %call33 = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %7, ptr noundef %stateful_enc, i32 noundef 16391) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #19
  br label %unreg_m2m

if.end39:                                         ; preds = %if.end30
  %m2m_dev41 = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %m2m_dev41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev41, align 8
  %call44 = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %9, ptr noundef %stateful_dec, i32 noundef 16392) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end55, label %do.end49

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %name52 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name52) #19
  br label %unreg_m2m_sf_enc_mc

if.end55:                                         ; preds = %if.end39
  %m2m_dev57 = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %m2m_dev57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_dev57, align 8
  %call60 = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %11, ptr noundef %stateless_dec, i32 noundef 16392) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end71, label %do.end65

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %name68 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name68) #19
  br label %unreg_m2m_sf_dec_mc

if.end71:                                         ; preds = %if.end55
  %call73 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end71.cleanup_crit_edge, label %do.end78

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %name81 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name81) #19
  %12 = ptrtoint ptr %m2m_dev57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_dev57, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %13) #15
  br label %unreg_m2m_sf_dec_mc

unreg_m2m_sf_dec_mc:                              ; preds = %do.end78, %do.end65
  %ret.0 = phi i32 [ %call60, %do.end65 ], [ %call73, %do.end78 ]
  %14 = ptrtoint ptr %m2m_dev41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev41, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %15) #15
  br label %unreg_m2m_sf_enc_mc

unreg_m2m_sf_enc_mc:                              ; preds = %unreg_m2m_sf_dec_mc, %do.end49
  %ret.1 = phi i32 [ %call44, %do.end49 ], [ %ret.0, %unreg_m2m_sf_dec_mc ]
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %17) #15
  br label %unreg_m2m

unreg_m2m:                                        ; preds = %unreg_m2m_sf_enc_mc, %do.end
  %ret.2 = phi i32 [ %call33, %do.end ], [ %ret.1, %unreg_m2m_sf_enc_mc ]
  tail call void @video_unregister_device(ptr noundef %stateless_dec) #15
  %m2m_dev94 = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %m2m_dev94 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_dev94, align 8
  tail call void @v4l2_m2m_release(ptr noundef %19) #15
  br label %unreg_sf_dec

unreg_sf_dec:                                     ; preds = %unreg_m2m, %if.end26.unreg_sf_dec_crit_edge
  %ret.3 = phi i32 [ %call27, %if.end26.unreg_sf_dec_crit_edge ], [ %ret.2, %unreg_m2m ]
  tail call void @video_unregister_device(ptr noundef %stateful_dec) #15
  %m2m_dev98 = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %m2m_dev98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_dev98, align 8
  tail call void @v4l2_m2m_release(ptr noundef %21) #15
  br label %unreg_sf_enc

unreg_sf_enc:                                     ; preds = %unreg_sf_dec, %if.end22.unreg_sf_enc_crit_edge
  %ret.4 = phi i32 [ %call23, %if.end22.unreg_sf_enc_crit_edge ], [ %ret.3, %unreg_sf_dec ]
  tail call void @video_unregister_device(ptr noundef %stateful_enc) #15
  %m2m_dev102 = getelementptr inbounds %struct.vicodec_dev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %m2m_dev102 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev102, align 8
  tail call void @v4l2_m2m_release(ptr noundef %23) #15
  br label %unreg_dev

unreg_dev:                                        ; preds = %unreg_sf_enc, %if.end5.unreg_dev_crit_edge
  %ret.5 = phi i32 [ %call19, %if.end5.unreg_dev_crit_edge ], [ %ret.4, %unreg_sf_enc ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #15
  br label %free_dev

free_dev:                                         ; preds = %unreg_dev, %if.end.free_dev_crit_edge
  %ret.6 = phi i32 [ %call2, %if.end.free_dev_crit_edge ], [ %ret.5, %unreg_dev ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.end71.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %free_dev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name) #19
  %mdev = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 4
  tail call void @media_device_unregister(ptr noundef %mdev) #15
  %stateful_enc = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %3) #15
  %stateful_dec = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 2
  %m2m_dev2 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %m2m_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev2, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %5) #15
  %stateless_dec = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3
  %m2m_dev3 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %m2m_dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev3, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %7) #15
  tail call void @video_unregister_device(ptr noundef %stateful_enc) #15
  tail call void @video_unregister_device(ptr noundef %stateful_dec) #15
  tail call void @video_unregister_device(ptr noundef %stateless_dec) #15
  %call10 = tail call i32 @v4l2_device_put(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vicodec_v4l2_dev_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #15
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev, ptr %v4l2_dev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %1) #15
  %m2m_dev2 = getelementptr inbounds %struct.vicodec_dev, ptr %v4l2_dev, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %m2m_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev2, align 8
  tail call void @v4l2_m2m_release(ptr noundef %3) #15
  %m2m_dev3 = getelementptr inbounds %struct.vicodec_dev, ptr %v4l2_dev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %m2m_dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev3, align 8
  tail call void @v4l2_m2m_release(ptr noundef %5) #15
  %mdev = getelementptr inbounds %struct.vicodec_dev, ptr %v4l2_dev, i32 0, i32 4
  tail call void @media_device_cleanup(ptr noundef %mdev) #15
  tail call void @kfree(ptr noundef %v4l2_dev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_instance(ptr noundef %dev, ptr noundef %dev_instance, ptr noundef %name, i1 noundef zeroext %is_enc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vicodec_dev_instance, ptr %dev_instance, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @register_instance.__key, i16 noundef signext 3) #15
  %mutex = getelementptr inbounds %struct.vicodec_dev_instance, ptr %dev_instance, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.33, ptr noundef nonnull @register_instance.__key.32) #15
  %call4 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #15
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev_instance, ptr %dev_instance, i32 0, i32 3
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name10 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name10) #19
  %1 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m2m_dev, align 8
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memcpy(ptr %dev_instance, ptr @vicodec_videodev, i32 1352)
  %lock17 = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 26
  %5 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mutex, ptr %lock17, align 8
  %v4l2_dev19 = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 7
  %6 = ptrtoint ptr %v4l2_dev19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %v4l2_dev19, align 4
  %name20 = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 12
  %call22 = tail call i32 @strscpy(ptr noundef %name20, ptr noundef %name, i32 noundef 32) #15
  %7 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or = select i1 %tobool.not, i32 67141632, i32 67125248
  %device_caps = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 4
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %device_caps, align 8
  %valid_ioctls.i = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 25
  %. = select i1 %is_enc, i32 96, i32 77
  %.77 = select i1 %is_enc, i32 97, i32 78
  tail call void @_set_bit(i32 noundef %., ptr noundef %valid_ioctls.i) #15
  tail call void @_set_bit(i32 noundef %.77, ptr noundef %valid_ioctls.i) #15
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 3
  %10 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %dev_instance, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  %name44 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  br i1 %tobool27.not, label %do.end41, label %do.end31

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name44, ptr noundef %name) #19
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %15) #15
  br label %cleanup

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %num = getelementptr inbounds %struct.video_device, ptr %dev_instance, i32 0, i32 16
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num, align 4
  %conv = zext i16 %17 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name44, ptr noundef %name, i32 noundef %conv) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end31, %do.end9
  %retval.0 = phi i32 [ %3, %do.end9 ], [ %call.i, %do.end31 ], [ 0, %do.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_register_media_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_unregister_media_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_request_validate(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %objects = getelementptr inbounds %struct.media_request, ptr %req, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %objects, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %objects
  br i1 %cmp.not, label %for.cond.do.end_crit_edge, label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body:                                         ; preds = %for.cond
  %obj.0 = getelementptr i8, ptr %.pn, i32 -12
  %call = tail call zeroext i1 @vb2_request_object_is_buffer(ptr noundef %obj.0) #15
  br i1 %call, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %for.body
  %add.ptr4 = getelementptr i8, ptr %.pn, i32 -48
  %1 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr4, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond.do.end_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #19
  br label %cleanup64

if.end14:                                         ; preds = %for.end
  %call15 = tail call i32 @vb2_request_buffer_cnt(ptr noundef %req) #15
  %5 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %do.end27 [
    i32 0, label %do.end20
    i32 1, label %if.end35
  ]

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vicodec_ctx, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #19
  br label %cleanup64

do.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %dev29 = getelementptr inbounds %struct.vicodec_ctx, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev29, align 8
  %name31 = getelementptr inbounds %struct.v4l2_device, ptr %9, i32 0, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name31) #19
  br label %cleanup64

if.end35:                                         ; preds = %if.end14
  %hdl36 = getelementptr inbounds %struct.vicodec_ctx, ptr %4, i32 0, i32 5
  %call37 = tail call ptr @v4l2_ctrl_request_hdl_find(ptr noundef %req, ptr noundef %hdl36) #15
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %v4l2_ctrl_request_hdl_put.exit

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %dev44 = getelementptr inbounds %struct.vicodec_ctx, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev44, align 8
  %name46 = getelementptr inbounds %struct.v4l2_device, ptr %11, i32 0, i32 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name46) #19
  br label %cleanup64

v4l2_ctrl_request_hdl_put.exit:                   ; preds = %if.end35
  %call50 = tail call ptr @v4l2_ctrl_request_hdl_ctrl_find(ptr noundef nonnull %call37, i32 noundef 10750308) #15
  %req_obj.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call37, i32 0, i32 13
  tail call void @media_request_object_put(ptr noundef %req_obj.i) #15
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.end55, label %if.end62

do.end55:                                         ; preds = %v4l2_ctrl_request_hdl_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev57 = getelementptr inbounds %struct.vicodec_ctx, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev57, align 8
  %name59 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name59) #19
  br label %cleanup64

if.end62:                                         ; preds = %v4l2_ctrl_request_hdl_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = tail call i32 @vb2_request_validate(ptr noundef %req) #15
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %do.end55, %do.end42, %do.end27, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ %call63, %if.end62 ], [ -2, %do.end55 ], [ -2, %do.end42 ], [ -2, %do.end20 ], [ -2, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vb2_request_object_is_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_buffer_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_request_hdl_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_request_hdl_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_try_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %arrayidx3.i = getelementptr i8, ptr %1, i32 216
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10750308, i32 %3)
  %cond = icmp eq i32 %3, 10750308
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %info = getelementptr i8, ptr %1, i32 244
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %6 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_new, align 8
  %width = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ugt i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %9)
  %cmp2 = icmp ult i32 %9, 640
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 8
  %coded_height = getelementptr i8, ptr %1, i32 220
  %14 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coded_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4 = icmp ugt i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %13)
  %cmp7 = icmp ult i32 %13, 360
  %or.cond31 = or i1 %cmp7, %cmp4
  br i1 %or.cond31, label %lor.lhs.false3.cleanup_crit_edge, label %if.end9

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false3
  %flags = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %version = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 8
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %if.then2.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i:                                       ; preds = %if.end9
  %and3.i = and i32 %17, 1572864
  %22 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.not.i = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool8.not.i = icmp eq i32 %and3.i, 0
  %switch.i.not = or i1 %cmp6.not.i, %tobool8.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp ult i32 %19, 3
  %or.cond37 = select i1 %switch.i.not, i1 true, i1 %cmp.i
  br i1 %or.cond37, label %if.then2.i.cleanup_crit_edge, label %validate_stateless_params_flags.exit

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

validate_stateless_params_flags.exit:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %and2.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, i32 2, i32 1
  %and.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %and6.i = lshr i32 %17, 16
  %shr.i = and i32 %and6.i, 7
  %add.i = add nuw nsw i32 %shr.i, 1
  %call.i = tail call zeroext i1 @v4l2_fwht_validate_fmt(ptr noundef nonnull %5, i32 noundef %cond.i, i32 noundef %cond4.i, i32 noundef %add.i, i32 noundef %and3.i) #15
  %spec.select = select i1 %call.i, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %validate_stateless_params_flags.exit, %if.then2.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %spec.select, %validate_stateless_params_flags.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vicodec_s_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10029515, label %sw.bb
    i32 10029602, label %sw.bb1
    i32 10029603, label %sw.bb4
    i32 10750308, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %gop_size = getelementptr i8, ptr %1, i32 280
  %7 = ptrtoint ptr %gop_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gop_size, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %conv = trunc i32 %9 to i16
  %i_frame_qp = getelementptr i8, ptr %1, i32 288
  %10 = ptrtoint ptr %i_frame_qp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %i_frame_qp, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %12 to i16
  %p_frame_qp = getelementptr i8, ptr %1, i32 290
  %13 = ptrtoint ptr %p_frame_qp to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6, ptr %p_frame_qp, align 2
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %14 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_new, align 8
  %header.i = getelementptr i8, ptr %1, i32 348
  %16 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1330597711, ptr %header.i, align 4
  %magic2.i = getelementptr i8, ptr %1, i32 352
  %17 = ptrtoint ptr %magic2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %magic2.i, align 4
  %version.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 8
  %version1.i = getelementptr i8, ptr %1, i32 356
  %20 = ptrtoint ptr %version1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %version1.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width.i, align 4
  %width2.i = getelementptr i8, ptr %1, i32 360
  %23 = ptrtoint ptr %width2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width2.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 3
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height.i, align 8
  %height3.i = getelementptr i8, ptr %1, i32 364
  %26 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height3.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %flags4.i = getelementptr i8, ptr %1, i32 368
  %29 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags4.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 5
  %30 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorspace.i, align 8
  %colorspace5.i = getelementptr i8, ptr %1, i32 372
  %32 = ptrtoint ptr %colorspace5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %colorspace5.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 6
  %33 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_func.i, align 4
  %xfer_func6.i = getelementptr i8, ptr %1, i32 376
  %35 = ptrtoint ptr %xfer_func6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %xfer_func6.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 7
  %36 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ycbcr_enc.i, align 8
  %ycbcr_enc7.i = getelementptr i8, ptr %1, i32 380
  %38 = ptrtoint ptr %ycbcr_enc7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ycbcr_enc7.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %15, i32 0, i32 8
  %39 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quantization.i, align 4
  %quantization8.i = getelementptr i8, ptr %1, i32 384
  %41 = ptrtoint ptr %quantization8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %quantization8.i, align 4
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %15, align 8
  %ref_frame_ts = getelementptr i8, ptr %1, i32 396
  %44 = ptrtoint ptr %ref_frame_ts to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %ref_frame_ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb4, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_fwht_validate_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i115 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %state2.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7
  %is_enc.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %is_enc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_enc.i, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %is_stateless.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %is_stateless.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_stateless.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i116 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i, i32 noundef 0) #15
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %compressed_frame.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 17
  %14 = ptrtoint ptr %compressed_frame.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %compressed_frame.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p_src.0.i = phi ptr [ %call.i116, %if.then.i ], [ %15, %if.else.i ]
  %is_stateless4.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %is_stateless4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_stateless4.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then6.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then6.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req, align 4
  %hdl.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 5
  %call8.i = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %19, ptr noundef %hdl.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end11.i:                                       ; preds = %if.then6.i
  %width.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 3
  %20 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i.i, align 4
  %visible_width.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %visible_width.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %visible_width.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 4
  %23 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i.i, align 4
  %visible_height.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %visible_height.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %visible_height.i.i, align 8
  %colorspace.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 6
  %26 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace.i.i, align 4
  %colorspace4.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %colorspace4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace4.i.i, align 8
  %xfer_func.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 7
  %29 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_func.i.i, align 4
  %xfer_func6.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 13
  %31 = ptrtoint ptr %xfer_func6.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_func6.i.i, align 8
  %ycbcr_enc.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 8
  %32 = ptrtoint ptr %ycbcr_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ycbcr_enc.i.i, align 4
  %ycbcr_enc8.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 12
  %34 = ptrtoint ptr %ycbcr_enc8.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ycbcr_enc8.i.i, align 4
  %quantization.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 9
  %35 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %quantization.i.i, align 4
  %quantization10.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 14
  %37 = ptrtoint ptr %quantization10.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %quantization10.i.i, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i.i, label %if.end11.i.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.end11.i.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %40 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %if.end11.i.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %41, %if.then.i.i ], [ 0, %if.end11.i.vb2_get_plane_payload.exit.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 10
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i, ptr %size.i, align 8
  %flags.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 5
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %vb2_get_plane_payload.exit.i.if.end40.sink.split.i_crit_edge

vb2_get_plane_payload.exit.i.if.end40.sink.split.i_crit_edge: ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.sink.split.i

if.then18.i:                                      ; preds = %vb2_get_plane_payload.exit.i
  %45 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m2m_ctx, align 4
  %call19.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %46, i32 noundef 1) #15
  %ref_frame_ts.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 18
  %47 = ptrtoint ptr %ref_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ref_frame_ts.i, align 8
  %call21.i = tail call i32 @vb2_find_timestamp(ptr noundef %call19.i, i64 noundef %48, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i = icmp slt i32 %call21.i, 0
  br i1 %cmp.i, label %if.then18.i.if.end_crit_edge, label %cleanup.i

if.then18.i.if.end_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

cleanup.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.vb2_queue, ptr %call19.i, i32 0, i32 20, i32 %call21.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %state24.i = getelementptr inbounds %struct.vb2_buffer, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %state24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cmp25.i = icmp eq i32 %52, 6
  %spec.select.i = select i1 %cmp25.i, i32 -22, i32 0
  %call28.i = tail call ptr @vb2_plane_vaddr(ptr noundef %50, i32 noundef 0) #15
  br label %if.end40.sink.split.i

if.end40.sink.split.i:                            ; preds = %cleanup.i, %vb2_get_plane_payload.exit.i.if.end40.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %call28.i, %cleanup.i ], [ null, %vb2_get_plane_payload.exit.i.if.end40.sink.split.i_crit_edge ]
  %ret.4.ph.i = phi i32 [ %spec.select.i, %cleanup.i ], [ 0, %vb2_get_plane_payload.exit.i.if.end40.sink.split.i_crit_edge ]
  %buf35.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 15, i32 5
  %53 = ptrtoint ptr %buf35.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %.sink.i, ptr %buf35.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40.sink.split.i, %if.end.i.if.end40.i_crit_edge
  %ret.4.i = phi i32 [ 0, %if.end.i.if.end40.i_crit_edge ], [ %ret.4.ph.i, %if.end40.sink.split.i ]
  %call42.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i115, i32 noundef 0) #15
  %tobool43.not.i = icmp eq ptr %p_src.0.i, null
  %tobool45.not.i = icmp eq ptr %call42.i, null
  %or.cond.i = select i1 %tobool43.not.i, i1 true, i1 %tobool45.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end48.i

do.end.i:                                         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %9, i32 0, i32 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i) #19
  br label %if.end

if.end48.i:                                       ; preds = %if.end40.i
  %54 = ptrtoint ptr %is_enc.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_enc.i, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool50.not.i = icmp eq i8 %55, 0
  br i1 %tobool50.not.i, label %if.else63.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end48.i
  %info.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 0, i32 7
  %56 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info.i, align 4
  %58 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %state2.i, align 8
  %call54.i = tail call i32 @v4l2_fwht_encode(ptr noundef %state2.i, ptr noundef nonnull %p_src.0.i, ptr noundef nonnull %call42.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.then51.i.if.end_crit_edge, label %if.end57.i

if.then51.i.if.end_crit_edge:                     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end57.i:                                       ; preds = %if.then51.i
  %num_planes.i159.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i115, i32 0, i32 4
  %59 = ptrtoint ptr %num_planes.i159.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_planes.i159.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.not.i = icmp eq i32 %60, 0
  br i1 %cmp.i.not.i, label %if.end57.i.device_process.exit_crit_edge, label %if.then.i160.i

if.end57.i.device_process.exit_crit_edge:         ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %device_process.exit

if.then.i160.i:                                   ; preds = %if.end57.i
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %call.i115, i32 0, i32 10, i32 0, i32 4
  %61 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %call54.i)
  %cmp1.i.i = icmp ult i32 %62, %call54.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i160.i.if.end42.i.i_crit_edge

if.then.i160.i.if.end42.i.i_crit_edge:            ; preds = %if.then.i160.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i160.i
  %.b55.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !175

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %63 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i160.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %64, %if.then38.i.i ], [ %call54.i, %if.then.i160.i.if.end42.i.i_crit_edge ]
  %bytesused.i161.i = getelementptr %struct.vb2_buffer, ptr %call.i115, i32 0, i32 10, i32 0, i32 3
  %65 = ptrtoint ptr %bytesused.i161.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %size.addr.0.i.i, ptr %bytesused.i161.i, align 4
  br label %device_process.exit

if.else63.i:                                      ; preds = %if.end48.i
  %size66.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 10
  %66 = ptrtoint ptr %size66.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size66.i, align 8
  %comp_max_size.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 9
  %68 = ptrtoint ptr %comp_max_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %comp_max_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp68.i = icmp ugt i32 %67, %69
  br i1 %cmp68.i, label %if.else63.i.if.end_crit_edge, label %if.end70.i

if.else63.i.if.end_crit_edge:                     ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end70.i:                                       ; preds = %if.else63.i
  %info71.i = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 7
  %70 = ptrtoint ptr %info71.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info71.i, align 4
  %72 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %state2.i, align 8
  %call73.i = tail call i32 @v4l2_fwht_decode(ptr noundef %state2.i, ptr noundef nonnull %p_src.0.i, ptr noundef nonnull %call42.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.end70.i.if.end_crit_edge, label %if.end76.i

if.end70.i.if.end_crit_edge:                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end76.i:                                       ; preds = %if.end70.i
  %73 = ptrtoint ptr %is_stateless4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_stateless4.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool78.not.i = icmp eq i8 %74, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %if.end76.i.if.end83.i_crit_edge

if.end76.i.if.end83.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83.i

if.then79.i:                                      ; preds = %if.end76.i
  %75 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state2.i, align 8
  %planes_num.i.i = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %planes_num.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %planes_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp68.not.i.i = icmp eq i32 %78, 0
  br i1 %cmp68.not.i.i, label %if.then79.i.if.end83.i_crit_edge, label %for.body.lr.ph.i.i

if.then79.i.if.end83.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83.i

for.body.lr.ph.i.i:                               ; preds = %if.then79.i
  %ref_stride1.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 6
  %79 = ptrtoint ptr %ref_stride1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ref_stride1.i.i, align 8
  %stride.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 5
  %81 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stride.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 15, i32 5
  %83 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf.i.i, align 4
  %height_div.i.i = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %76, i32 0, i32 7
  %visible_height.i163.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 2
  %coded_height.i.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %85 = phi i32 [ %78, %for.body.lr.ph.i.i ], [ %99, %for.end.i.i.for.body.i.i_crit_edge ]
  %ref_stride.075.i.i = phi i32 [ %80, %for.body.lr.ph.i.i ], [ %ref_stride.2.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %cap_stride.074.i.i = phi i32 [ %82, %for.body.lr.ph.i.i ], [ %cap_stride.2.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %p_ref.072.i.i = phi ptr [ %84, %for.body.lr.ph.i.i ], [ %add.ptr28.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %plane_idx.071.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc30.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %cap.addr.069.i.i = phi ptr [ %call42.i, %for.body.lr.ph.i.i ], [ %add.ptr24.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %plane_idx.071.i.i)
  %cmp2.i.i = icmp eq i32 %plane_idx.071.i.i, 1
  %plane_idx.0.off.i.i = add i32 %plane_idx.071.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %plane_idx.0.off.i.i)
  %switch.i.i = icmp ult i32 %plane_idx.0.off.i.i, 2
  br i1 %switch.i.i, label %cond.true.i.i, label %for.body.i.i.cond.end.i.i_crit_edge

for.body.i.i.cond.end.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %height_div.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %height_div.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %87, %cond.true.i.i ], [ 1, %for.body.i.i.cond.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp5.i.i = icmp eq i32 %85, 3
  %not.brmerge.i.i = select i1 %cmp5.i.i, i1 %cmp2.i.i, i1 false
  %div60.i.i = zext i1 %not.brmerge.i.i to i32
  %cap_stride.1.i.i = lshr i32 %cap_stride.074.i.i, %div60.i.i
  %ref_stride.1.i.i = lshr i32 %ref_stride.075.i.i, %div60.i.i
  br i1 %cmp2.i.i, label %land.lhs.true9.i.i, label %cond.end.i.i.if.end16.i.i_crit_edge

cond.end.i.i.if.end16.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i

land.lhs.true9.i.i:                               ; preds = %cond.end.i.i
  %88 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %76, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %89, label %land.lhs.true9.i.i.if.end16.i.i_crit_edge [
    i32 875714126, label %land.lhs.true9.i.i.if.then14.i.i_crit_edge
    i32 842290766, label %land.lhs.true9.i.i.if.then14.i.i_crit_edge128
  ]

land.lhs.true9.i.i.if.then14.i.i_crit_edge128:    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

land.lhs.true9.i.i.if.then14.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

land.lhs.true9.i.i.if.end16.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true9.i.i.if.then14.i.i_crit_edge, %land.lhs.true9.i.i.if.then14.i.i_crit_edge128
  %mul.i.i = shl i32 %cap_stride.1.i.i, 1
  %mul15.i.i = shl i32 %ref_stride.1.i.i, 1
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %land.lhs.true9.i.i.if.end16.i.i_crit_edge, %cond.end.i.i.if.end16.i.i_crit_edge
  %cap_stride.2.i.i = phi i32 [ %mul.i.i, %if.then14.i.i ], [ %cap_stride.1.i.i, %cond.end.i.i.if.end16.i.i_crit_edge ], [ %cap_stride.1.i.i, %land.lhs.true9.i.i.if.end16.i.i_crit_edge ]
  %ref_stride.2.i.i = phi i32 [ %mul15.i.i, %if.then14.i.i ], [ %ref_stride.1.i.i, %cond.end.i.i.if.end16.i.i_crit_edge ], [ %ref_stride.1.i.i, %land.lhs.true9.i.i.if.end16.i.i_crit_edge ]
  %91 = ptrtoint ptr %visible_height.i163.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %visible_height.i163.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %92)
  %cmp1964.not.i.i = icmp ugt i32 %cond.i.i, %92
  br i1 %cmp1964.not.i.i, label %if.end16.i.i.for.end.i.i_crit_edge, label %if.end16.i.i.for.body20.i.i_crit_edge

if.end16.i.i.for.body20.i.i_crit_edge:            ; preds = %if.end16.i.i
  br label %for.body20.i.i

if.end16.i.i.for.end.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %if.end16.i.i.for.body20.i.i_crit_edge
  %row_ref.067.i.i = phi ptr [ %add.ptr.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ %p_ref.072.i.i, %if.end16.i.i.for.body20.i.i_crit_edge ]
  %row_cap.066.i.i = phi ptr [ %add.ptr21.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ %cap.addr.069.i.i, %if.end16.i.i.for.body20.i.i_crit_edge ]
  %i.065.i.i = phi i32 [ %inc.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ 0, %if.end16.i.i.for.body20.i.i_crit_edge ]
  %93 = call ptr @memcpy(ptr %row_ref.067.i.i, ptr %row_cap.066.i.i, i32 %ref_stride.2.i.i)
  %add.ptr.i.i = getelementptr i8, ptr %row_ref.067.i.i, i32 %ref_stride.2.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %row_cap.066.i.i, i32 %cap_stride.2.i.i
  %inc.i.i = add nuw i32 %i.065.i.i, 1
  %94 = ptrtoint ptr %visible_height.i163.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %visible_height.i163.i, align 8
  %div18.i.i = udiv i32 %95, %cond.i.i
  %cmp19.i.i = icmp ult i32 %inc.i.i, %div18.i.i
  br i1 %cmp19.i.i, label %for.body20.i.i.for.body20.i.i_crit_edge, label %for.body20.i.i.for.end.i.i_crit_edge

for.body20.i.i.for.end.i.i_crit_edge:             ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20.i.i

for.end.i.i:                                      ; preds = %for.body20.i.i.for.end.i.i_crit_edge, %if.end16.i.i.for.end.i.i_crit_edge
  %96 = ptrtoint ptr %coded_height.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %coded_height.i.i, align 8
  %div22.i.i = udiv i32 %97, %cond.i.i
  %mul23.i.i = mul i32 %div22.i.i, %cap_stride.2.i.i
  %add.ptr24.i.i = getelementptr i8, ptr %cap.addr.069.i.i, i32 %mul23.i.i
  %mul27.i.i = mul i32 %div22.i.i, %ref_stride.2.i.i
  %add.ptr28.i.i = getelementptr i8, ptr %p_ref.072.i.i, i32 %mul27.i.i
  %inc30.i.i = add nuw i32 %plane_idx.071.i.i, 1
  %98 = ptrtoint ptr %planes_num.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %planes_num.i.i, align 4
  %cmp.i164.i = icmp ult i32 %inc30.i.i, %99
  br i1 %cmp.i164.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.if.end83.i_crit_edge

for.end.i.i.if.end83.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end83.i:                                       ; preds = %for.end.i.i.if.end83.i_crit_edge, %if.then79.i.if.end83.i_crit_edge, %if.end76.i.if.end83.i_crit_edge
  %num_planes.i165.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i115, i32 0, i32 4
  %100 = ptrtoint ptr %num_planes.i165.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_planes.i165.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i166.not.i = icmp eq i32 %101, 0
  br i1 %cmp.i166.not.i, label %if.end83.i.vb2_set_plane_payload.exit177.i_crit_edge, label %if.then.i169.i

if.end83.i.vb2_set_plane_payload.exit177.i_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit177.i

if.then.i169.i:                                   ; preds = %if.end83.i
  %sizeimage.i = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 4
  %102 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sizeimage.i, align 4
  %length.i167.i = getelementptr %struct.vb2_buffer, ptr %call.i115, i32 0, i32 10, i32 0, i32 4
  %104 = ptrtoint ptr %length.i167.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %length.i167.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %103)
  %cmp1.i168.i = icmp ult i32 %105, %103
  br i1 %cmp1.i168.i, label %land.rhs.i171.i, label %if.then.i169.i.if.end42.i176.i_crit_edge

if.then.i169.i.if.end42.i176.i_crit_edge:         ; preds = %if.then.i169.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i176.i

land.rhs.i171.i:                                  ; preds = %if.then.i169.i
  %.b55.i170.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i170.i, label %land.rhs.i171.i.if.then38.i173.i_crit_edge, label %if.then8.i172.i, !prof !175

land.rhs.i171.i.if.then38.i173.i_crit_edge:       ; preds = %land.rhs.i171.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i173.i

if.then8.i172.i:                                  ; preds = %land.rhs.i171.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i173.i

if.then38.i173.i:                                 ; preds = %if.then8.i172.i, %land.rhs.i171.i.if.then38.i173.i_crit_edge
  %106 = ptrtoint ptr %length.i167.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i167.i, align 8
  br label %if.end42.i176.i

if.end42.i176.i:                                  ; preds = %if.then38.i173.i, %if.then.i169.i.if.end42.i176.i_crit_edge
  %size.addr.0.i174.i = phi i32 [ %107, %if.then38.i173.i ], [ %103, %if.then.i169.i.if.end42.i176.i_crit_edge ]
  %bytesused.i175.i = getelementptr %struct.vb2_buffer, ptr %call.i115, i32 0, i32 10, i32 0, i32 3
  %108 = ptrtoint ptr %bytesused.i175.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %size.addr.0.i174.i, ptr %bytesused.i175.i, align 4
  br label %vb2_set_plane_payload.exit177.i

vb2_set_plane_payload.exit177.i:                  ; preds = %if.end42.i176.i, %if.end83.i.vb2_set_plane_payload.exit177.i_crit_edge
  %flags87.i = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 5
  %109 = ptrtoint ptr %flags87.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags87.i, align 4
  %and88.i = and i32 %110, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  %flags93.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i115, i32 0, i32 1
  %111 = ptrtoint ptr %flags93.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags93.i, align 8
  br i1 %tobool89.not.i, label %if.else92.i, label %if.then90.i

if.then90.i:                                      ; preds = %vb2_set_plane_payload.exit177.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i = or i32 %112, 8
  %113 = ptrtoint ptr %flags93.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i, ptr %flags93.i, align 8
  br label %device_process.exit

if.else92.i:                                      ; preds = %vb2_set_plane_payload.exit177.i
  call void @__sanitizer_cov_trace_pc() #17
  %or94.i = or i32 %112, 16
  %114 = ptrtoint ptr %flags93.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or94.i, ptr %flags93.i, align 8
  br label %device_process.exit

device_process.exit:                              ; preds = %if.else92.i, %if.then90.i, %if.end42.i.i, %if.end57.i.device_process.exit_crit_edge
  %retval.6.i = phi i32 [ %ret.4.i, %if.end42.i.i ], [ %ret.4.i, %if.end57.i.device_process.exit_crit_edge ], [ %call73.i, %if.else92.i ], [ %call73.i, %if.then90.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.6.i)
  %tobool.not = icmp eq i32 %retval.6.i, 0
  br i1 %tobool.not, label %if.else, label %device_process.exit.if.end_crit_edge

device_process.exit.if.end_crit_edge:             ; preds = %device_process.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %device_process.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sequence = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 6
  %115 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sequence, align 4
  %inc = add i32 %116, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence8 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i115, i32 0, i32 4
  %117 = ptrtoint ptr %sequence8 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %sequence8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %device_process.exit.if.end_crit_edge, %if.end70.i.if.end_crit_edge, %if.else63.i.if.end_crit_edge, %if.then51.i.if.end_crit_edge, %do.end.i, %if.then18.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge
  %state.0 = phi i32 [ 5, %if.else ], [ 6, %device_process.exit.if.end_crit_edge ], [ 6, %do.end.i ], [ 6, %if.then6.i.if.end_crit_edge ], [ 6, %if.then51.i.if.end_crit_edge ], [ 6, %if.else63.i.if.end_crit_edge ], [ 6, %if.end70.i.if.end_crit_edge ], [ 6, %if.then18.i.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i115, i32 0, i32 1
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 8
  %and = and i32 %119, -1048577
  store i32 %and, ptr %flags, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i115, i1 noundef zeroext false) #15
  %lock = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 4
  %120 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_lock(ptr noundef %121) #15
  %comp_has_next_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 14
  %122 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %comp_has_next_frame, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool9.not = icmp eq i8 %123, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %124 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %m2m_ctx, align 4
  %is_draining.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %is_draining.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %is_draining.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i117 = icmp eq i8 %127, 0
  br i1 %tobool.not.i117, label %land.lhs.true.if.end18_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

v4l2_m2m_is_last_draining_src_buf.exit:           ; preds = %land.lhs.true
  %last_src_buf.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %125, i32 0, i32 3
  %128 = ptrtoint ptr %last_src_buf.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %last_src_buf.i, align 4
  %cmp.i118 = icmp eq ptr %129, %call.i
  br i1 %cmp.i118, label %if.then13, label %v4l2_m2m_is_last_draining_src_buf.exit.if.end18_crit_edge

v4l2_m2m_is_last_draining_src_buf.exit.if.end18_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then13:                                        ; preds = %v4l2_m2m_is_last_draining_src_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags, align 8
  %or = or i32 %131, 1048576
  store i32 %or, ptr %flags, align 8
  tail call void @v4l2_event_queue_fh(ptr noundef %priv, ptr noundef nonnull @vicodec_eos_event) #15
  %132 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %m2m_ctx, align 4
  %next_buf_last.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %next_buf_last.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %next_buf_last.i, align 4
  %is_draining.i119 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %133, i32 0, i32 2
  %135 = ptrtoint ptr %is_draining.i119 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %is_draining.i119, align 1
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %133, i32 0, i32 5
  %136 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %has_stopped.i, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %v4l2_m2m_is_last_draining_src_buf.exit.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %137 = ptrtoint ptr %is_enc.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %is_enc.i, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool19.not = icmp eq i8 %138, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end18.if.then21_crit_edge

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end18
  %139 = ptrtoint ptr %is_stateless4.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %is_stateless4.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool20.not = icmp eq i8 %140, 0
  br i1 %tobool20.not, label %if.else28, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %sequence22 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 0, i32 6
  %141 = ptrtoint ptr %sequence22 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sequence22, align 4
  %inc23 = add i32 %142, 1
  store i32 %inc23, ptr %sequence22, align 4
  %sequence24 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %143 = ptrtoint ptr %sequence24 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %sequence24, align 8
  %144 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i120 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %145, i32 0, i32 8
  %call.i121 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i120) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i121, i32 noundef %state.0) #15
  br label %if.end41

if.else28:                                        ; preds = %lor.lhs.false
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %146 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.not.i = icmp eq i32 %147, 0
  br i1 %cmp.not.i, label %if.else28.vb2_get_plane_payload.exit_crit_edge, label %if.then.i122

if.else28.vb2_get_plane_payload.exit_crit_edge:   ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_get_plane_payload.exit

if.then.i122:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %148 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i122, %if.else28.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %149, %if.then.i122 ], [ 0, %if.else28.vb2_get_plane_payload.exit_crit_edge ]
  %cur_buf_offset = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 8
  %150 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cur_buf_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %151)
  %cmp = icmp eq i32 %retval.0.i, %151
  br i1 %cmp, label %if.then31, label %vb2_get_plane_payload.exit.if.end41_crit_edge

vb2_get_plane_payload.exit.if.end41_crit_edge:    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then31:                                        ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sequence32 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 0, i32 6
  %152 = ptrtoint ptr %sequence32 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sequence32, align 4
  %inc33 = add i32 %153, 1
  store i32 %inc33, ptr %sequence32, align 4
  %sequence34 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %154 = ptrtoint ptr %sequence34 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %sequence34, align 8
  %155 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i123 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %156, i32 0, i32 8
  %call.i124 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i123) #15
  tail call void @vb2_buffer_done(ptr noundef %call.i124, i32 noundef %state.0) #15
  %157 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %cur_buf_offset, align 8
  %158 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %comp_has_next_frame, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then31, %vb2_get_plane_payload.exit.if.end41_crit_edge, %if.then21
  tail call void @vb2_buffer_done(ptr noundef %call.i115, i32 noundef %state.0) #15
  %comp_size = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 10
  %159 = call ptr @memset(ptr %comp_size, i32 0, i32 13)
  %160 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock(ptr noundef %161) #15
  %162 = ptrtoint ptr %is_stateless4.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %is_stateless4.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool44.not = icmp eq i8 %163, 0
  %tobool46.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %if.end41.if.end48_crit_edge, label %if.then47

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %hdl = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 5
  tail call void @v4l2_ctrl_request_complete(ptr noundef nonnull %7, ptr noundef %hdl) #15
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end41.if.end48_crit_edge
  %164 = ptrtoint ptr %is_enc.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %is_enc.i, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool50.not = icmp eq i8 %165, 0
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1, i32 3
  br label %if.end66

if.else54:                                        ; preds = %if.end48
  %166 = ptrtoint ptr %is_stateless4.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %is_stateless4.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool56.not = icmp eq i8 %167, 0
  br i1 %tobool56.not, label %if.else61, label %if.then57

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev58 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3, i32 3
  br label %if.end66

if.else61:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev62 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 2, i32 3
  br label %if.end66

if.end66:                                         ; preds = %if.else61, %if.then57, %if.then51
  %m2m_dev58.sink = phi ptr [ %m2m_dev58, %if.then57 ], [ %m2m_dev62, %if.else61 ], [ %m2m_dev, %if.then51 ]
  %168 = ptrtoint ptr %m2m_dev58.sink to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %m2m_dev58.sink, align 8
  %170 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %169, ptr noundef %171) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @job_ready(ptr noundef %priv) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #15
  %source_changed = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %source_changed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source_changed, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup124_crit_edge

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

if.end:                                           ; preds = %entry
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup124_crit_edge

if.end.cleanup124_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

lor.lhs.false:                                    ; preds = %if.end
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup124_crit_edge

lor.lhs.false.cleanup124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %comp_has_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 13
  %6 = ptrtoint ptr %comp_has_frame to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %comp_has_frame, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %restart.preheader, label %lor.lhs.false3.cleanup124_crit_edge

lor.lhs.false3.cleanup124_crit_edge:              ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

restart.preheader:                                ; preds = %lor.lhs.false3
  %comp_has_next_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 14
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %8 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %comp_has_next_frame, align 1
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i229 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %call.i230 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i229) #15
  %tobool8.not231 = icmp eq ptr %call.i230, null
  br i1 %tobool8.not231, label %restart.preheader.cleanup124_crit_edge, label %if.end10.lr.ph

restart.preheader.cleanup124_crit_edge:           ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

if.end10.lr.ph:                                   ; preds = %restart.preheader
  %cur_buf_offset = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 8
  %header_size = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 11
  %size = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 10
  %comp_max_size = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 9
  %comp_size = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 10
  %compressed_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 17
  %lock.i212 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 4
  %sequence.i216 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 0, i32 6
  br label %if.end10

if.end10:                                         ; preds = %restart.backedge.if.end10_crit_edge, %if.end10.lr.ph
  %call.i232 = phi ptr [ %call.i230, %if.end10.lr.ph ], [ %call.i, %restart.backedge.if.end10_crit_edge ]
  %call11 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i232, i32 noundef 0) #15
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i232, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end10.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end10.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i232, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end10.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end10.vb2_get_plane_payload.exit_crit_edge ]
  %15 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_buf_offset, align 8
  %add.ptr = getelementptr i8, ptr %call11, i32 %16
  %17 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %p, align 4
  %18 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %header_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %19)
  %cmp = icmp ult i32 %19, 44
  br i1 %cmp, label %if.then14, label %vb2_get_plane_payload.exit.if.end26_crit_edge

vb2_get_plane_payload.exit.if.end26_crit_edge:    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then14:                                        ; preds = %vb2_get_plane_payload.exit
  %add.ptr15 = getelementptr i8, ptr %call11, i32 %retval.0.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call16 = call fastcc i32 @get_next_header(ptr noundef %priv, ptr noundef nonnull %p, i32 noundef %sub.ptr.sub)
  %20 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %header_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %21)
  %cmp18 = icmp ult i32 %21, 44
  br i1 %cmp18, label %if.then19, label %if.then14.if.end26_crit_edge

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then19:                                        ; preds = %if.then14
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %is_draining.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %is_draining.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_draining.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then19.if.end24_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

v4l2_m2m_is_last_draining_src_buf.exit:           ; preds = %if.then19
  %last_src_buf.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %last_src_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %last_src_buf.i, align 4
  %cmp.i = icmp eq ptr %27, %call.i232
  br i1 %cmp.i, label %v4l2_m2m_is_last_draining_src_buf.exit.cleanup124_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit.if.end24_crit_edge

v4l2_m2m_is_last_draining_src_buf.exit.if.end24_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

v4l2_m2m_is_last_draining_src_buf.exit.cleanup124_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

if.end24:                                         ; preds = %v4l2_m2m_is_last_draining_src_buf.exit.if.end24_crit_edge, %if.then19.if.end24_crit_edge
  %28 = ptrtoint ptr %lock.i212 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock.i212, align 8
  tail call void @_raw_spin_lock(ptr noundef %29) #15
  %30 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %31, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i) #15
  %32 = ptrtoint ptr %sequence.i216 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sequence.i216, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %sequence.i216, align 4
  %sequence2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sequence2.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i.i, i32 noundef %call16) #15
  br label %restart.backedge

restart.backedge:                                 ; preds = %cleanup, %if.end24
  %35 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cur_buf_offset, align 8
  %36 = ptrtoint ptr %lock.i212 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock.i212, align 8
  tail call void @_raw_spin_unlock(ptr noundef %37) #15
  %38 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %comp_has_next_frame, align 1
  %39 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %40, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #15
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %restart.backedge.cleanup124_crit_edge, label %restart.backedge.if.end10_crit_edge

restart.backedge.if.end10_crit_edge:              ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

restart.backedge.cleanup124_crit_edge:            ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %vb2_get_plane_payload.exit.if.end26_crit_edge
  %state.0 = phi i32 [ %call16, %if.then14.if.end26_crit_edge ], [ 5, %vb2_get_plane_payload.exit.if.end26_crit_edge ]
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 8
  %43 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %comp_max_size, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %42, i32 %44)
  %46 = ptrtoint ptr %comp_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %comp_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp29 = icmp ugt i32 %45, %47
  br i1 %cmp29, label %if.then30, label %if.end26.if.end57_crit_edge

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then30:                                        ; preds = %if.end26
  %sub = sub i32 %45, %47
  %add.ptr32 = getelementptr i8, ptr %call11, i32 %retval.0.i
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast33 = ptrtoint ptr %add.ptr32 to i32
  %sub.ptr.rhs.cast34 = ptrtoint ptr %49 to i32
  %sub.ptr.sub35 = sub i32 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %50 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub.ptr.sub35)
  %51 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %compressed_frame, align 4
  %add.ptr45 = getelementptr i8, ptr %52, i32 %47
  %53 = call ptr @memcpy(ptr %add.ptr45, ptr %49, i32 %50)
  %add.ptr46 = getelementptr i8, ptr %49, i32 %50
  %54 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr46, ptr %p, align 4
  %55 = ptrtoint ptr %comp_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %comp_size, align 8
  %add = add i32 %56, %50
  store i32 %add, ptr %comp_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %45)
  %cmp49 = icmp ult i32 %add, %45
  br i1 %cmp49, label %if.then50, label %if.then30.if.end57_crit_edge

if.then30.if.end57_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then50:                                        ; preds = %if.then30
  %57 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_ctx, align 4
  %is_draining.i206 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %is_draining.i206 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_draining.i206, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i207 = icmp eq i8 %60, 0
  br i1 %tobool.not.i207, label %if.then50.cleanup_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit211

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

v4l2_m2m_is_last_draining_src_buf.exit211:        ; preds = %if.then50
  %last_src_buf.i208 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %last_src_buf.i208 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %last_src_buf.i208, align 4
  %cmp.i209 = icmp eq ptr %62, %call.i232
  br i1 %cmp.i209, label %v4l2_m2m_is_last_draining_src_buf.exit211.cleanup124_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit211.cleanup_crit_edge

v4l2_m2m_is_last_draining_src_buf.exit211.cleanup_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit211
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

v4l2_m2m_is_last_draining_src_buf.exit211.cleanup124_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit211
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

cleanup:                                          ; preds = %v4l2_m2m_is_last_draining_src_buf.exit211.cleanup_crit_edge, %if.then50.cleanup_crit_edge
  %63 = ptrtoint ptr %lock.i212 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lock.i212, align 8
  tail call void @_raw_spin_lock(ptr noundef %64) #15
  %65 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i.i214 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %66, i32 0, i32 8
  %call.i.i215 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i.i214) #15
  %67 = ptrtoint ptr %sequence.i216 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sequence.i216, align 4
  %inc.i217 = add i32 %68, 1
  store i32 %inc.i217, ptr %sequence.i216, align 4
  %sequence2.i218 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i.i215, i32 0, i32 4
  %69 = ptrtoint ptr %sequence2.i218 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sequence2.i218, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i.i215, i32 noundef %state.0) #15
  br label %restart.backedge

if.end57:                                         ; preds = %if.then30.if.end57_crit_edge, %if.end26.if.end57_crit_edge
  %header.le = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16
  %70 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast58 = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast59 = ptrtoint ptr %call11 to i32
  %sub.ptr.sub60 = sub i32 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %72 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.ptr.sub60, ptr %cur_buf_offset, align 8
  %73 = ptrtoint ptr %comp_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %comp_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %42)
  %cmp63 = icmp eq i32 %74, %42
  br i1 %cmp63, label %if.end66.thread, label %if.end66

if.end66.thread:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %comp_has_frame to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %comp_has_frame, align 4
  %76 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %comp_has_next_frame, align 1
  br label %land.lhs.true

if.end66:                                         ; preds = %if.end57
  %77 = ptrtoint ptr %comp_has_frame to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr = load i8, ptr %comp_has_frame, align 4
  %78 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %comp_has_next_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool69.not = icmp eq i8 %.pr, 0
  br i1 %tobool69.not, label %if.end66.if.end84_crit_edge, label %if.end66.land.lhs.true_crit_edge

if.end66.land.lhs.true_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end66.if.end84_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true:                                    ; preds = %if.end66.land.lhs.true_crit_edge, %if.end66.thread
  %sub71 = sub i32 %retval.0.i, %sub.ptr.sub60
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %sub71)
  %cmp72 = icmp ugt i32 %sub71, 43
  br i1 %cmp72, label %if.then73, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then73:                                        ; preds = %land.lhs.true
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %71, ptr noundef nonnull dereferenceable(8) @job_ready.magic, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool79.not = icmp eq i32 %bcmp, 0
  br i1 %tobool79.not, label %if.then80, label %if.then73.if.end84_crit_edge

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then80:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  %sub77 = add i32 %sub71, -44
  %size74 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %71, i32 0, i32 10
  %79 = ptrtoint ptr %size74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub77, i32 %80)
  %cmp81 = icmp uge i32 %sub77, %80
  %frombool = zext i1 %cmp81 to i8
  %81 = ptrtoint ptr %comp_has_next_frame to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool, ptr %comp_has_next_frame, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then73.if.end84_crit_edge, %land.lhs.true.if.end84_crit_edge, %if.end66.if.end84_crit_edge
  %call87 = tail call fastcc zeroext i1 @is_header_valid(ptr noundef %header.le)
  br i1 %call87, label %if.end84.if.end92_crit_edge, label %land.lhs.true88

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

land.lhs.true88:                                  ; preds = %if.end84
  %82 = ptrtoint ptr %comp_has_frame to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %comp_has_frame, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool90.not = icmp eq i8 %83, 0
  br i1 %tobool90.not, label %land.lhs.true88.if.end92_crit_edge, label %land.lhs.true88.cleanup124_crit_edge

land.lhs.true88.cleanup124_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

land.lhs.true88.if.end92_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true88.if.end92_crit_edge, %if.end84.if.end92_crit_edge
  %flags95 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 5
  %84 = ptrtoint ptr %flags95 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags95, align 4
  %and = and i32 %85, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  %cond97 = select i1 %tobool96.not, i32 2, i32 1
  %and98 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, i32 2, i32 1
  %width = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 3
  %86 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %width, align 4
  %visible_width = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %88 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %visible_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp103.not = icmp eq i32 %87, %89
  br i1 %cmp103.not, label %lor.lhs.false104, label %if.end92.if.then116_crit_edge

if.end92.if.then116_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false104:                                 ; preds = %if.end92
  %height = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 7, i32 16, i32 4
  %90 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %height, align 8
  %visible_height = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 3
  %92 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %visible_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp107.not = icmp eq i32 %91, %93
  br i1 %cmp107.not, label %lor.lhs.false108, label %lor.lhs.false104.if.then116_crit_edge

lor.lhs.false104.if.then116_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %info = getelementptr %struct.vicodec_ctx, ptr %priv, i32 0, i32 6, i32 1, i32 7
  %94 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info, align 4
  %tobool109.not = icmp eq ptr %95, null
  br i1 %tobool109.not, label %lor.lhs.false108.if.then116_crit_edge, label %lor.lhs.false110

lor.lhs.false108.if.then116_crit_edge:            ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false110:                                 ; preds = %lor.lhs.false108
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond97, i32 %97)
  %cmp112.not = icmp eq i32 %cond97, %97
  br i1 %cmp112.not, label %lor.lhs.false113, label %lor.lhs.false110.if.then116_crit_edge

lor.lhs.false110.if.then116_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %95, i32 0, i32 7
  %98 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond100, i32 %99)
  %cmp115.not = icmp eq i32 %cond100, %99
  br i1 %cmp115.not, label %lor.lhs.false113.cleanup124_crit_edge, label %lor.lhs.false113.if.then116_crit_edge

lor.lhs.false113.if.then116_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false113.cleanup124_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup124

if.then116:                                       ; preds = %lor.lhs.false113.if.then116_crit_edge, %lor.lhs.false110.if.then116_crit_edge, %lor.lhs.false108.if.then116_crit_edge, %lor.lhs.false104.if.then116_crit_edge, %if.end92.if.then116_crit_edge
  %100 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %101, i32 0, i32 7
  %call.i220 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  tail call fastcc void @update_capture_data_from_header(ptr noundef %priv)
  tail call void @v4l2_event_queue_fh(ptr noundef %priv, ptr noundef nonnull @job_ready.rs_event) #15
  tail call fastcc void @set_last_buffer(ptr noundef %call.i220, ptr noundef nonnull %call.i232, ptr noundef %priv)
  %102 = ptrtoint ptr %source_changed to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %source_changed, align 1
  br label %cleanup124

cleanup124:                                       ; preds = %if.then116, %lor.lhs.false113.cleanup124_crit_edge, %land.lhs.true88.cleanup124_crit_edge, %v4l2_m2m_is_last_draining_src_buf.exit211.cleanup124_crit_edge, %restart.backedge.cleanup124_crit_edge, %v4l2_m2m_is_last_draining_src_buf.exit.cleanup124_crit_edge, %restart.preheader.cleanup124_crit_edge, %lor.lhs.false3.cleanup124_crit_edge, %lor.lhs.false.cleanup124_crit_edge, %if.end.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.2 = phi i32 [ 0, %if.then116 ], [ 0, %entry.cleanup124_crit_edge ], [ 1, %lor.lhs.false3.cleanup124_crit_edge ], [ 1, %lor.lhs.false.cleanup124_crit_edge ], [ 1, %if.end.cleanup124_crit_edge ], [ 1, %land.lhs.true88.cleanup124_crit_edge ], [ 1, %lor.lhs.false113.cleanup124_crit_edge ], [ 0, %restart.preheader.cleanup124_crit_edge ], [ 0, %restart.backedge.cleanup124_crit_edge ], [ 1, %v4l2_m2m_is_last_draining_src_buf.exit.cleanup124_crit_edge ], [ 1, %v4l2_m2m_is_last_draining_src_buf.exit211.cleanup124_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #15
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwht_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwht_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_next_header(ptr nocapture noundef %ctx, ptr nocapture noundef %pp, i32 noundef %sz) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp, align 4
  %header2 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16
  %header_size = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %header_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end37

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp, align 4
  %add.ptr132 = getelementptr i8, ptr %5, i32 %sz
  %cmp133 = icmp ult ptr %1, %add.ptr132
  br i1 %cmp133, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %comp_magic_cnt = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %add.ptr135 = phi ptr [ %add.ptr132, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %p.0134 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %comp_magic_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_magic_cnt, align 8
  %arrayidx = getelementptr [8 x i8], ptr @get_next_header.magic, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr135 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0134 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call ptr @memchr(ptr noundef %p.0134, i32 noundef %conv, i32 noundef %sub.ptr.sub) #20
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %comp_magic_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %comp_magic_cnt, align 8
  %11 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pp, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 %sz
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub = sub i32 8, %7
  %sub.ptr.rhs.cast11 = ptrtoint ptr %call to i32
  %sub.ptr.sub12 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast11
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub12, i32 %sub)
  %add.ptr22 = getelementptr i8, ptr %header2, i32 %7
  %14 = call ptr @memcpy(ptr %add.ptr22, ptr %call, i32 %13)
  %15 = ptrtoint ptr %comp_magic_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comp_magic_cnt, align 8
  %add = add i32 %16, %13
  store i32 %add, ptr %comp_magic_cnt, align 8
  %bcmp = tail call i32 @bcmp(ptr %header2, ptr nonnull @get_next_header.magic, i32 %add) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.then27, label %for.inc

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr28 = getelementptr i8, ptr %call, i32 %13
  br label %for.end

for.inc:                                          ; preds = %if.end
  %17 = ptrtoint ptr %comp_magic_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %comp_magic_cnt, align 8
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %18 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pp, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %sz
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then27, %if.then5, %for.cond.preheader.for.end_crit_edge
  %p.2 = phi ptr [ %add.ptr7, %if.then5 ], [ %add.ptr28, %if.then27 ], [ %1, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %state.2 = phi i32 [ 6, %if.then5 ], [ 5, %if.then27 ], [ 6, %for.cond.preheader.for.end_crit_edge ], [ 6, %for.inc.for.end_crit_edge ]
  %comp_magic_cnt31 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 12
  %20 = ptrtoint ptr %comp_magic_cnt31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %comp_magic_cnt31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp32 = icmp ult i32 %21, 8
  br i1 %cmp32, label %for.end.cleanup63_crit_edge, label %if.end37.thread

for.end.cleanup63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup63

if.end37.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %header_size, align 4
  br label %if.then41

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %3)
  %cmp39 = icmp ult i32 %3, 44
  br i1 %cmp39, label %if.end37.if.then41_crit_edge, label %if.end37.cleanup63_crit_edge

if.end37.cleanup63_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup63

if.end37.if.then41_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

if.then41:                                        ; preds = %if.end37.if.then41_crit_edge, %if.end37.thread
  %state.3127 = phi i32 [ %state.2, %if.end37.thread ], [ 5, %if.end37.if.then41_crit_edge ]
  %p.3126 = phi ptr [ %p.2, %if.end37.thread ], [ %1, %if.end37.if.then41_crit_edge ]
  %23 = phi i32 [ 8, %if.end37.thread ], [ %3, %if.end37.if.then41_crit_edge ]
  %sub44 = sub nuw nsw i32 44, %23
  %24 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pp, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 %sz
  %sub.ptr.lhs.cast46 = ptrtoint ptr %add.ptr45 to i32
  %sub.ptr.rhs.cast47 = ptrtoint ptr %p.3126 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub48, i32 %sub44)
  %add.ptr58 = getelementptr i8, ptr %header2, i32 %23
  %27 = call ptr @memcpy(ptr %add.ptr58, ptr %p.3126, i32 %26)
  %add.ptr59 = getelementptr i8, ptr %p.3126, i32 %26
  %28 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %header_size, align 4
  %add61 = add i32 %26, %29
  store i32 %add61, ptr %header_size, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.then41, %if.end37.cleanup63_crit_edge, %for.end.cleanup63_crit_edge
  %storemerge = phi ptr [ %p.2, %for.end.cleanup63_crit_edge ], [ %add.ptr59, %if.then41 ], [ %1, %if.end37.cleanup63_crit_edge ]
  %retval.0 = phi i32 [ %state.2, %for.end.cleanup63_crit_edge ], [ %state.3127, %if.then41 ], [ 5, %if.end37.cleanup63_crit_edge ]
  %30 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %storemerge, ptr %pp, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_header_valid(ptr nocapture noundef readonly %p_hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_hdr, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_hdr, i32 0, i32 4
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %version1 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_hdr, i32 0, i32 2
  %4 = ptrtoint ptr %version1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version1, align 4
  %flags2 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_hdr, i32 0, i32 5
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %8 = add i32 %1, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3457, i32 %8)
  %9 = icmp ult i32 %8, -3457
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %3)
  %cmp5 = icmp ult i32 %3, 360
  %or.cond24 = select i1 %9, i1 true, i1 %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %3)
  %cmp7 = icmp ugt i32 %3, 2160
  %or.cond25 = select i1 %or.cond24, i1 true, i1 %cmp7
  %10 = add i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %10)
  %11 = icmp ult i32 %10, -3
  %or.cond28 = select i1 %or.cond25, i1 true, i1 %11
  br i1 %or.cond28, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then2.i:                                       ; preds = %if.end.i
  %and3.i = and i32 %7, 1572864
  %12 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.not.i = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool8.not.i = icmp ne i32 %and3.i, 0
  %switch.i = and i1 %cmp6.not.i, %tobool8.not.i
  br i1 %switch.i, label %if.then2.i.if.end9_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i.if.end9_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %if.then2.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %pixenc.0.i = phi i32 [ %and3.i, %if.then2.i.if.end9_crit_edge ], [ 0, %if.end.i.if.end9_crit_edge ]
  %and6.i = lshr i32 %7, 16
  %shr.i = and i32 %and6.i, 7
  %add.i = add nuw nsw i32 %shr.i, 1
  %components_num.0.i = select i1 %cmp1.i, i32 %add.i, i32 3
  %and2.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, i32 2, i32 1
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call.i = tail call ptr @v4l2_fwht_find_nth_fmt(i32 noundef %cond.i, i32 noundef %cond4.i, i32 noundef %components_num.0.i, i32 noundef %pixenc.0.i, i32 noundef 0) #15
  %tobool.not = icmp ne ptr %call.i, null
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %if.end9 ], [ false, %if.then2.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_capture_data_from_header(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 5
  %0 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1.i, align 4
  %version5.i = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 2
  %2 = ptrtoint ptr %version5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  %and6.i = lshr i32 %1, 16
  %shr.i = and i32 %and6.i, 7
  %add.i = add nuw nsw i32 %shr.i, 1
  %and7.i = and i32 %1, 1572864
  %components_num.0.i = select i1 %cmp.i, i32 %add.i, i32 3
  %pixenc.0.i = select i1 %cmp.i, i32 %and7.i, i32 0
  %and2.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, i32 2, i32 1
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call.i = tail call ptr @v4l2_fwht_find_nth_fmt(i32 noundef %cond.i, i32 noundef %cond4.i, i32 noundef %components_num.0.i, i32 noundef %pixenc.0.i, i32 noundef 0) #15
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %entry.if.end_crit_edge, label %do.end, !prof !175

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 532, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %and3 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, i32 2, i32 1
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %info26 = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 7
  %8 = ptrtoint ptr %info26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %info26, align 4
  %width = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 3
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %visible_width = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 2
  %11 = ptrtoint ptr %visible_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %visible_width, align 4
  %height = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %visible_height = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 3
  %14 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %visible_height, align 4
  %and.lobit = lshr exact i32 %and, 8
  %15 = xor i32 %and.lobit, 1
  %div77 = lshr i32 %10, %15
  %sub = add i32 %div77, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %mul = mul i32 %add, %cond
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %arrayidx3.i, align 4
  %and3.lobit = lshr exact i32 %and3, 7
  %17 = xor i32 %and3.lobit, 1
  %div2978 = lshr i32 %13, %17
  %sub30 = add i32 %div2978, -1
  %or31 = or i32 %sub30, 7
  %add32 = add i32 %or31, 1
  %mul33 = mul i32 %add32, %cond5
  %coded_height = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 1
  %18 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul33, ptr %coded_height, align 4
  %sizeimage_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %sizeimage_mult to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizeimage_mult, align 4
  %mul36 = mul i32 %20, %mul
  %mul38 = mul i32 %mul36, %mul33
  %sizeimage_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %sizeimage_div to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizeimage_div, align 4
  %div40 = udiv i32 %mul38, %22
  %sizeimage = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 4
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div40, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 6
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace42 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 11
  %26 = ptrtoint ptr %colorspace42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %colorspace42, align 8
  %xfer_func = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 7
  %27 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xfer_func, align 4
  %xfer_func44 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 13
  %29 = ptrtoint ptr %xfer_func44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %xfer_func44, align 8
  %ycbcr_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 8
  %30 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ycbcr_enc, align 4
  %ycbcr_enc46 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 12
  %32 = ptrtoint ptr %ycbcr_enc46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ycbcr_enc46, align 4
  %quantization = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 16, i32 9
  %33 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quantization, align 4
  %quantization48 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 14
  %35 = ptrtoint ptr %quantization48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %quantization48, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_last_buffer(ptr noundef %dst_buf, ptr noundef %src_buf, ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %dst_buf, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %dst_buf, i32 0, i32 10, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_set_plane_payload.exit_crit_edge
  %sequence = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 6
  %3 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sequence, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence1 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %dst_buf, i32 0, i32 4
  %5 = ptrtoint ptr %sequence1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sequence1, align 8
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %src_buf, ptr noundef %dst_buf, i1 noundef zeroext %tobool.not) #15
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %dst_buf, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %or = or i32 %9, 1048576
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef %dst_buf, i32 noundef 5) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_fwht_find_nth_fmt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #15
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 26
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 8
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 632) #18
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.open_unlock_crit_edge, label %if.end7

if.end.open_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %open_unlock

if.end7:                                          ; preds = %if.end
  %stateful_enc = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %call1, %stateful_enc
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %is_enc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_enc, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %stateless_dec = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3
  %cmp11 = icmp eq ptr %call1, %stateless_dec
  br i1 %cmp11, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %is_stateless to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_stateless, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge, %if.then9
  %call15 = tail call ptr @video_devdata(ptr noundef %file) #15
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call15) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev17 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %dev17, align 8
  %hdl18 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 5
  %call19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl18, i32 noundef 5, ptr noundef nonnull @vicodec_open._key, ptr noundef nonnull @.str.45) #15
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl18, ptr noundef nonnull @vicodec_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 16, i64 noundef 1, i64 noundef 10) #15
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl18, ptr noundef nonnull @vicodec_ctrl_ops, i32 noundef 10029602, i64 noundef 1, i64 noundef 31, i64 noundef 1, i64 noundef 20) #15
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl18, ptr noundef nonnull @vicodec_ctrl_ops, i32 noundef 10029603, i64 noundef 1, i64 noundef 31, i64 noundef 1, i64 noundef 20) #15
  %is_enc23 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %is_enc23 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_enc23, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %if.end14.if.end27_crit_edge, label %if.then25

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %call26 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl18, ptr noundef nonnull @vicodec_ctrl_ops, i32 noundef 9963816, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end14.if.end27_crit_edge
  %is_stateless28 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %is_stateless28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_stateless28, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl18, ptr noundef nonnull @vicodec_ctrl_stateless_state, ptr noundef null) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %error = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 5, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl18) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %open_unlock

if.end36:                                         ; preds = %if.end32
  %ctrl_handler = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hdl18, ptr %ctrl_handler, align 4
  %call38 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl18) #15
  %16 = ptrtoint ptr %is_enc23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_enc23, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %info42 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 7
  %18 = ptrtoint ptr %info42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %info42, align 8
  br label %if.end55

if.else43:                                        ; preds = %if.end36
  %19 = ptrtoint ptr %is_stateless28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_stateless28, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  %info53 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 7
  br i1 %tobool45.not, label %if.else50, label %if.then46

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %info53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pixfmt_stateless_fwht, ptr %info53, align 8
  br label %if.end55

if.else50:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %info53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pixfmt_fwht, ptr %info53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else50, %if.then46, %if.then41
  %q_data56 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %q_data56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1280, ptr %q_data56, align 4
  %coded_height = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 720, ptr %coded_height, align 8
  %visible_width = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %25 = ptrtoint ptr %visible_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1280, ptr %visible_width, align 4
  %visible_height = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  %26 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 720, ptr %visible_height, align 8
  %sizeimage_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %sizeimage_mult to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sizeimage_mult, align 4
  %mul = mul i32 %28, 921600
  %sizeimage_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %sizeimage_div to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sizeimage_div, align 4
  %div = udiv i32 %mul, %30
  %31 = ptrtoint ptr %is_enc23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_enc23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool67.not = icmp eq i8 %32, 0
  br i1 %tobool67.not, label %if.else71, label %if.end83.thread

if.end83.thread:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %sizeimage = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %33 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %sizeimage, align 4
  %arrayidx85234 = getelementptr %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1
  %34 = call ptr @memcpy(ptr %arrayidx85234, ptr %q_data56, i32 32)
  br label %if.end105

if.else71:                                        ; preds = %if.end55
  %35 = ptrtoint ptr %is_stateless28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_stateless28, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool73.not = icmp eq i8 %36, 0
  br i1 %tobool73.not, label %if.end83, label %if.end83.thread236

if.end83.thread236:                               ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #17
  %37 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2764800, ptr %37, align 4
  %arrayidx85239 = getelementptr %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1
  %39 = call ptr @memcpy(ptr %arrayidx85239, ptr %q_data56, i32 32)
  br label %if.else98

if.end83:                                         ; preds = %if.else71
  %40 = ptrtoint ptr %is_enc23 to i32
  call void @__asan_load1_noabort(i32 %40)
  %.pr.pr = load i8, ptr %is_enc23, align 4
  %41 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2764844, ptr %41, align 4
  %arrayidx85 = getelementptr %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1
  %43 = call ptr @memcpy(ptr %arrayidx85, ptr %q_data56, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.pr)
  %tobool89.not = icmp eq i8 %.pr.pr, 0
  br i1 %tobool89.not, label %if.end83.if.else98_crit_edge, label %if.end83.if.end105_crit_edge

if.end83.if.end105_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.end83.if.else98_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else98

if.else98:                                        ; preds = %if.end83.if.else98_crit_edge, %if.end83.thread236
  br label %if.end105

if.end105:                                        ; preds = %if.else98, %if.end83.if.end105_crit_edge, %if.end83.thread
  %call.sink = phi ptr [ %call, %if.else98 ], [ @pixfmt_fwht, %if.end83.thread ], [ @pixfmt_fwht, %if.end83.if.end105_crit_edge ]
  %div.sink = phi i32 [ %div, %if.else98 ], [ 2764844, %if.end83.thread ], [ 2764844, %if.end83.if.end105_crit_edge ]
  %info101 = getelementptr %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 7
  %44 = ptrtoint ptr %info101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.sink, ptr %info101, align 8
  %sizeimage104 = getelementptr %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 4
  %45 = ptrtoint ptr %sizeimage104 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div.sink, ptr %sizeimage104, align 4
  %colorspace = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 7, i32 11
  %46 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %colorspace, align 8
  %47 = ptrtoint ptr %is_enc23 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_enc23, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool107.not = icmp eq i8 %48, 0
  br i1 %tobool107.not, label %if.else115, label %if.then108

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_dev, align 8
  %call110 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %50, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call110, ptr %m2m_ctx, align 4
  %lock113 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 1, i32 2
  br label %if.end136

if.else115:                                       ; preds = %if.end105
  %52 = ptrtoint ptr %is_stateless28 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_stateless28, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool117.not = icmp eq i8 %53, 0
  br i1 %tobool117.not, label %if.else127, label %if.then118

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev120 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %m2m_dev120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %m2m_dev120, align 8
  %call121 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %55, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #15
  %m2m_ctx123 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %m2m_ctx123 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call121, ptr %m2m_ctx123, align 4
  %lock125 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 3, i32 2
  br label %if.end136

if.else127:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #17
  %m2m_dev128 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %m2m_dev128 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_dev128, align 8
  %call129 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %58, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #15
  %m2m_ctx131 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %m2m_ctx131 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call129, ptr %m2m_ctx131, align 4
  %lock133 = getelementptr inbounds %struct.vicodec_dev, ptr %1, i32 0, i32 2, i32 2
  br label %if.end136

if.end136:                                        ; preds = %if.else127, %if.then118, %if.then108
  %lock125.sink = phi ptr [ %lock125, %if.then118 ], [ %lock133, %if.else127 ], [ %lock113, %if.then108 ]
  %lock126 = getelementptr inbounds %struct.vicodec_ctx, ptr %call7.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %lock126 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %lock125.sink, ptr %lock126, align 8
  %m2m_ctx138 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %m2m_ctx138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %m2m_ctx138, align 4
  %cmp.i = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then140, label %if.end145

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %62 to i32
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl18) #15
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %open_unlock

if.end145:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #15
  br label %open_unlock

open_unlock:                                      ; preds = %if.end145, %if.then140, %if.then34, %if.end.open_unlock_crit_edge
  %rc.0 = phi i32 [ %14, %if.then34 ], [ %63, %if.then140 ], [ 0, %if.end145 ], [ -12, %if.end.open_unlock_crit_edge ]
  %64 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %65) #15
  br label %cleanup

cleanup:                                          ; preds = %open_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %open_unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #15
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #15
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #15
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %7) #15
  tail call void @v4l2_fh_del(ptr noundef %1) #15
  tail call void @v4l2_fh_exit(ptr noundef %1) #15
  %hdl = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #15
  %compressed_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 17
  %8 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compressed_frame, align 4
  tail call void @kvfree(ptr noundef %9) #15
  tail call void @kfree(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_fwht_get_pixfmt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 2, i32 10
  %1 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %2 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %4 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vicodec_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %timestamp_flags, align 4
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %mutex = getelementptr inbounds %struct.vicodec_dev, ptr %11, i32 0, i32 1, i32 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  %dev8 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 8
  br i1 %tobool2.not, label %if.else7, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %mutex5 = getelementptr inbounds %struct.vicodec_dev, ptr %15, i32 0, i32 3, i32 1
  br label %if.end11

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %mutex9 = getelementptr inbounds %struct.vicodec_dev, ptr %15, i32 0, i32 2, i32 1
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then3, %if.then
  %mutex5.sink = phi ptr [ %mutex5, %if.then3 ], [ %mutex9, %if.else7 ], [ %mutex, %if.then ]
  %lock6 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %16 = ptrtoint ptr %lock6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mutex5.sink, ptr %lock6, align 4
  %is_stateless12 = getelementptr inbounds %struct.vicodec_ctx, ptr %priv, i32 0, i32 3
  %17 = ptrtoint ptr %is_stateless12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_stateless12, align 1, !range !174
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %19 = zext i8 %18 to i16
  %20 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.shl = shl nuw nsw i16 %19, 10
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %supports_requests, align 4
  %21 = load i8, ptr %is_stateless12, align 1, !range !174
  %22 = zext i8 %21 to i16
  %bf.shl19 = shl nuw nsw i16 %22, 9
  %bf.clear20 = and i16 %bf.set, -513
  %bf.set21 = or i16 %bf.shl19, %bf.clear20
  store i16 %bf.set21, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %23 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool26.not = icmp eq i8 %23, 0
  %cond28 = select i1 %tobool26.not, i32 1, i32 9
  %24 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond28, ptr %dst_vq, align 4
  %io_modes30 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %25 = ptrtoint ptr %io_modes30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 19, ptr %io_modes30, align 4
  %drv_priv31 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %26 = ptrtoint ptr %drv_priv31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv, ptr %drv_priv31, align 4
  %buf_struct_size32 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %27 = ptrtoint ptr %buf_struct_size32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 744, ptr %buf_struct_size32, align 4
  %ops33 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %28 = ptrtoint ptr %ops33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vicodec_qops, ptr %ops33, align 4
  %mem_ops34 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %29 = ptrtoint ptr %mem_ops34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops34, align 4
  %timestamp_flags35 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %30 = ptrtoint ptr %timestamp_flags35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16384, ptr %timestamp_flags35, align 4
  %lock36 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %31 = ptrtoint ptr %lock36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock36, align 4
  %lock37 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %33 = ptrtoint ptr %lock37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %lock37, align 4
  %call38 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end25 ], [ %call, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vicodec_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #6 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %3, label %entry.get_q_data.exit_crit_edge [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 10, label %entry.sw.bb.i_crit_edge11
    i32 1, label %entry.sw.bb1.i_crit_edge
    i32 9, label %entry.sw.bb1.i_crit_edge12
  ]

entry.sw.bb1.i_crit_edge12:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge11
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge12
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %entry.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %entry.get_q_data.exit_crit_edge ]
  %sizeimage = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeimage, align 4
  %7 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp = icmp ult i32 %10, %6
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %sizes, align 4
  %vb2_sizeimage = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %vb2_sizeimage to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %vb2_sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vicodec_buf_out_validate(ptr nocapture noundef writeonly %vb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef nonnull @.str.47, i32 noundef %8) #19
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %12, label %do.end6.get_q_data.exit_crit_edge [
    i32 2, label %do.end6.sw.bb.i_crit_edge
    i32 10, label %do.end6.sw.bb.i_crit_edge115
    i32 1, label %do.end6.sw.bb1.i_crit_edge
    i32 9, label %do.end6.sw.bb1.i_crit_edge116
  ]

do.end6.sw.bb1.i_crit_edge116:                    ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

do.end6.sw.bb1.i_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

do.end6.sw.bb.i_crit_edge115:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.end6.sw.bb.i_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

do.end6.get_q_data.exit_crit_edge:                ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %do.end6.sw.bb.i_crit_edge, %do.end6.sw.bb.i_crit_edge115
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %do.end6.sw.bb1.i_crit_edge, %do.end6.sw.bb1.i_crit_edge116
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %3, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %do.end6.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %do.end6.get_q_data.exit_crit_edge ]
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %12, label %get_q_data.exit.if.end64_crit_edge [
    i32 2, label %get_q_data.exit.if.then40_crit_edge
    i32 10, label %get_q_data.exit.if.then40_crit_edge117
    i32 3, label %get_q_data.exit.if.then40_crit_edge118
    i32 8, label %get_q_data.exit.if.then40_crit_edge119
    i32 5, label %get_q_data.exit.if.then40_crit_edge120
    i32 7, label %get_q_data.exit.if.then40_crit_edge121
    i32 12, label %get_q_data.exit.if.then40_crit_edge122
    i32 14, label %get_q_data.exit.if.then40_crit_edge123
  ]

get_q_data.exit.if.then40_crit_edge123:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge122:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge121:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge120:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge119:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge118:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge117:           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.then40_crit_edge:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

get_q_data.exit.if.end64_crit_edge:               ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then40:                                        ; preds = %get_q_data.exit.if.then40_crit_edge, %get_q_data.exit.if.then40_crit_edge117, %get_q_data.exit.if.then40_crit_edge118, %get_q_data.exit.if.then40_crit_edge119, %get_q_data.exit.if.then40_crit_edge120, %get_q_data.exit.if.then40_crit_edge121, %get_q_data.exit.if.then40_crit_edge122, %get_q_data.exit.if.then40_crit_edge123
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %15 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %field, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %16, label %do.body48 [
    i32 0, label %if.end44.thread
    i32 1, label %if.then40.if.end64_crit_edge
  ]

if.then40.if.end64_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.end44.thread:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field, align 4
  br label %if.end64

do.body48:                                        ; preds = %if.then40
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp49.not = icmp eq i32 %19, 0
  br i1 %cmp49.not, label %do.body48.cleanup_crit_edge, label %do.end53

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  %dev55 = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev55, align 8
  %name57 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name57, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47) #19
  br label %cleanup

if.end64:                                         ; preds = %if.end44.thread, %if.then40.if.end64_crit_edge, %get_q_data.exit.if.end64_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %if.end64.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end64.vb2_plane_size.exit_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end64.vb2_plane_size.exit_crit_edge
  %retval.0.i107 = phi i32 [ %25, %if.then.i ], [ 0, %if.end64.vb2_plane_size.exit_crit_edge ]
  %vb2_sizeimage = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 5
  %26 = ptrtoint ptr %vb2_sizeimage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vb2_sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i107, i32 %27)
  %cmp66 = icmp ult i32 %retval.0.i107, %27
  br i1 %cmp66, label %do.body68, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body68:                                        ; preds = %vb2_plane_size.exit
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp69.not = icmp eq i32 %28, 0
  br i1 %cmp69.not, label %do.body68.cleanup_crit_edge, label %do.end73

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end73:                                         ; preds = %do.body68
  %dev75 = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev75, align 8
  %name77 = getelementptr inbounds %struct.v4l2_device, ptr %30, i32 0, i32 4
  br i1 %cmp.not.i, label %do.end73.vb2_plane_size.exit113_crit_edge, label %if.then.i111

do.end73.vb2_plane_size.exit113_crit_edge:        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit113

if.then.i111:                                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #17
  %length.i110 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %31 = ptrtoint ptr %length.i110 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i110, align 8
  br label %vb2_plane_size.exit113

vb2_plane_size.exit113:                           ; preds = %if.then.i111, %do.end73.vb2_plane_size.exit113_crit_edge
  %retval.0.i112 = phi i32 [ %32, %if.then.i111 ], [ 0, %do.end73.vb2_plane_size.exit113_crit_edge ]
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name77, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i112, i32 noundef %27) #19
  br label %cleanup

cleanup:                                          ; preds = %vb2_plane_size.exit113, %do.body68.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %do.end53, %do.body48.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end53 ], [ -22, %do.body48.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit113 ], [ -22, %do.body68.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_start_streaming(ptr noundef %q, i32 noundef %count) #2 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.get_q_data.exit_crit_edge [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 10, label %entry.sw.bb.i_crit_edge246
    i32 1, label %entry.sw.bb1.i_crit_edge
    i32 9, label %entry.sw.bb1.i_crit_edge247
  ]

entry.sw.bb1.i_crit_edge247:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge246:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge246
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge247
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %entry.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %entry.get_q_data.exit_crit_edge ]
  %info3 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info3, align 4
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i, align 4
  %coded_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coded_height, align 4
  %mul = mul i32 %10, %8
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width_div, align 4
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %6, i32 0, i32 7
  %13 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height_div, align 4
  %mul4 = mul i32 %14, %12
  %sequence = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 6
  %15 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sequence, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_update_start_streaming_state(ptr noundef %17, ptr noundef %q) #15
  %gop_cnt = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %gop_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %gop_cnt, align 8
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %q, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %20, label %get_q_data.exit.land.lhs.true50_crit_edge [
    i32 2, label %get_q_data.exit.land.lhs.true_crit_edge
    i32 10, label %get_q_data.exit.land.lhs.true_crit_edge248
    i32 3, label %get_q_data.exit.land.lhs.true_crit_edge249
    i32 8, label %get_q_data.exit.land.lhs.true_crit_edge250
    i32 5, label %get_q_data.exit.land.lhs.true_crit_edge251
    i32 7, label %get_q_data.exit.land.lhs.true_crit_edge252
    i32 12, label %get_q_data.exit.land.lhs.true_crit_edge253
    i32 14, label %get_q_data.exit.land.lhs.true_crit_edge254
  ]

get_q_data.exit.land.lhs.true_crit_edge254:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge253:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge252:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge251:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge250:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge249:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge248:       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true_crit_edge:          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

get_q_data.exit.land.lhs.true50_crit_edge:        ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true50

land.lhs.true:                                    ; preds = %get_q_data.exit.land.lhs.true_crit_edge, %get_q_data.exit.land.lhs.true_crit_edge248, %get_q_data.exit.land.lhs.true_crit_edge249, %get_q_data.exit.land.lhs.true_crit_edge250, %get_q_data.exit.land.lhs.true_crit_edge251, %get_q_data.exit.land.lhs.true_crit_edge252, %get_q_data.exit.land.lhs.true_crit_edge253, %get_q_data.exit.land.lhs.true_crit_edge254
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false26:                                  ; preds = %land.lhs.true
  %24 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %20, label %lor.lhs.false26.land.lhs.true50_crit_edge [
    i32 2, label %lor.lhs.false26.if.end_crit_edge
    i32 10, label %lor.lhs.false26.if.end_crit_edge255
    i32 3, label %lor.lhs.false26.if.end_crit_edge256
    i32 8, label %lor.lhs.false26.if.end_crit_edge257
    i32 5, label %lor.lhs.false26.if.end_crit_edge258
    i32 7, label %lor.lhs.false26.if.end_crit_edge259
    i32 12, label %lor.lhs.false26.if.end_crit_edge260
    i32 14, label %lor.lhs.false26.if.end_crit_edge261
  ]

lor.lhs.false26.if.end_crit_edge261:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge260:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge259:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge258:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge257:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge256:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge255:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.if.end_crit_edge:                 ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false26.land.lhs.true50_crit_edge:        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true50

land.lhs.true50:                                  ; preds = %lor.lhs.false26.land.lhs.true50_crit_edge, %get_q_data.exit.land.lhs.true50_crit_edge
  %is_enc51 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %is_enc51 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_enc51, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool52.not = icmp eq i8 %26, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.end_crit_edge, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true50.if.end_crit_edge:                 ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true50.if.end_crit_edge, %lor.lhs.false26.if.end_crit_edge, %lor.lhs.false26.if.end_crit_edge255, %lor.lhs.false26.if.end_crit_edge256, %lor.lhs.false26.if.end_crit_edge257, %lor.lhs.false26.if.end_crit_edge258, %lor.lhs.false26.if.end_crit_edge259, %lor.lhs.false26.if.end_crit_edge260, %lor.lhs.false26.if.end_crit_edge261
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %6, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %28, label %if.end58 [
    i32 1414027078, label %if.end.if.then57_crit_edge
    i32 1213679187, label %if.end.if.then57_crit_edge262
  ]

if.end.if.then57_crit_edge262:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then57

if.end.if.then57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then57

if.then57:                                        ; preds = %if.end.if.then57_crit_edge, %if.end.if.then57_crit_edge262
  %30 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %31, i32 0, i32 10
  %hdl.i = getelementptr inbounds %struct.vicodec_ctx, ptr %31, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.vicodec_ctx, ptr %31, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end27.i, %if.then57
  %32 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %33, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i_crit_edge
    i32 10, label %for.cond.i.if.then.i_crit_edge263
    i32 3, label %for.cond.i.if.then.i_crit_edge264
    i32 8, label %for.cond.i.if.then.i_crit_edge265
    i32 5, label %for.cond.i.if.then.i_crit_edge266
    i32 7, label %for.cond.i.if.then.i_crit_edge267
    i32 12, label %for.cond.i.if.then.i_crit_edge268
    i32 14, label %for.cond.i.if.then.i_crit_edge269
  ]

for.cond.i.if.then.i_crit_edge269:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge268:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge267:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge266:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge265:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge264:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge263:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge263, %for.cond.i.if.then.i_crit_edge264, %for.cond.i.if.then.i_crit_edge265, %for.cond.i.if.then.i_crit_edge266, %for.cond.i.if.then.i_crit_edge267, %for.cond.i.if.then.i_crit_edge268, %for.cond.i.if.then.i_crit_edge269
  %35 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %36, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %38, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i43.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #15
  %cmp25.i = icmp eq ptr %call.i43.i, null
  br i1 %cmp25.i, label %if.end.i.cleanup_crit_edge, label %if.end27.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i43.i, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %40, ptr noundef %hdl.i) #15
  %41 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %42) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i43.i, i32 noundef 3) #15
  %43 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lock.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %44) #15
  br label %for.cond.i

if.end58:                                         ; preds = %if.end
  %45 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info3, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1539, i32 noundef 9, ptr noundef null) #15
  br label %total_frame_size.exit

if.end17.i:                                       ; preds = %if.end58
  %47 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retval.0.i, align 4
  %49 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %coded_height, align 4
  %mul.i = mul i32 %50, %48
  %width_div.i = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %46, i32 0, i32 6
  %51 = ptrtoint ptr %width_div.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width_div.i, align 4
  %height_div.i = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %46, i32 0, i32 7
  %53 = ptrtoint ptr %height_div.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height_div.i, align 4
  %mul20.i = mul i32 %54, %52
  %components_num.i = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %46, i32 0, i32 8
  %55 = ptrtoint ptr %components_num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %components_num.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %56, label %if.end17.i.total_frame_size.exit_crit_edge [
    i32 4, label %if.then22.i
    i32 3, label %if.then28.i
  ]

if.end17.i.total_frame_size.exit_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %total_frame_size.exit

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %div.i = udiv i32 %mul.i, %mul20.i
  %mul2348.i = add i32 %div.i, %mul.i
  %add.i = shl i32 %mul2348.i, 1
  br label %total_frame_size.exit

if.then28.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %div29.i = udiv i32 %mul.i, %mul20.i
  %mul30.i = shl i32 %div29.i, 1
  %add31.i = add i32 %mul30.i, %mul.i
  br label %total_frame_size.exit

total_frame_size.exit:                            ; preds = %if.then28.i, %if.then22.i, %if.end17.i.total_frame_size.exit_crit_edge, %do.end.i
  %retval.0.i223 = phi i32 [ %add.i, %if.then22.i ], [ %add31.i, %if.then28.i ], [ 0, %do.end.i ], [ %mul.i, %if.end17.i.total_frame_size.exit_crit_edge ]
  %comp_max_size = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i223, ptr %comp_max_size, align 4
  %visible_width = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 2
  %59 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %visible_width, align 4
  %visible_width60 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %visible_width60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %visible_width60, align 4
  %visible_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 3
  %62 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %visible_height, align 4
  %visible_height61 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 2
  %64 = ptrtoint ptr %visible_height61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %visible_height61, align 8
  %65 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %retval.0.i, align 4
  %coded_width63 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %coded_width63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %coded_width63, align 4
  %68 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %coded_height, align 4
  %coded_height65 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 4
  %70 = ptrtoint ptr %coded_height65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %coded_height65, align 8
  %71 = load i32, ptr %retval.0.i, align 4
  %bytesperline_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %6, i32 0, i32 1
  %72 = ptrtoint ptr %bytesperline_mult to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bytesperline_mult, align 4
  %mul67 = mul i32 %73, %71
  %stride = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul67, ptr %stride, align 4
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool68.not = icmp eq i8 %76, 0
  br i1 %tobool68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %total_frame_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ref_stride = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 6
  %77 = ptrtoint ptr %ref_stride to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul67, ptr %ref_stride, align 8
  br label %cleanup

if.end71:                                         ; preds = %total_frame_size.exit
  %78 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %retval.0.i, align 4
  %luma_alpha_step = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %6, i32 0, i32 4
  %80 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %luma_alpha_step, align 4
  %mul73 = mul i32 %81, %79
  %ref_stride74 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 6
  %82 = ptrtoint ptr %ref_stride74 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul73, ptr %ref_stride74, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i223, i32 noundef 3264, i32 noundef -1) #21
  %buf = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 5
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %buf, align 4
  %luma = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 6
  %84 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %luma, align 8
  %85 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %comp_max_size, align 4
  %call.i224 = tail call noalias ptr @kvmalloc_node(i32 noundef %86, i32 noundef 3264, i32 noundef -1) #21
  %87 = ptrtoint ptr %luma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %luma, align 8
  %tobool83.not = icmp eq ptr %88, null
  %tobool85.not = icmp eq ptr %call.i224, null
  %or.cond = select i1 %tobool83.not, i1 true, i1 %tobool85.not
  br i1 %or.cond, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end71
  tail call void @kvfree(ptr noundef %88) #15
  tail call void @kvfree(ptr noundef %call.i224) #15
  %89 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i226 = getelementptr inbounds %struct.v4l2_fh, ptr %90, i32 0, i32 10
  %hdl.i227 = getelementptr inbounds %struct.vicodec_ctx, ptr %90, i32 0, i32 5
  %lock.i228 = getelementptr inbounds %struct.vicodec_ctx, ptr %90, i32 0, i32 4
  br label %for.cond.i229

for.cond.i229:                                    ; preds = %if.end27.i239, %if.then86
  %91 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %q, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %92, label %if.else.i233 [
    i32 2, label %for.cond.i229.if.then.i231_crit_edge
    i32 10, label %for.cond.i229.if.then.i231_crit_edge270
    i32 3, label %for.cond.i229.if.then.i231_crit_edge271
    i32 8, label %for.cond.i229.if.then.i231_crit_edge272
    i32 5, label %for.cond.i229.if.then.i231_crit_edge273
    i32 7, label %for.cond.i229.if.then.i231_crit_edge274
    i32 12, label %for.cond.i229.if.then.i231_crit_edge275
    i32 14, label %for.cond.i229.if.then.i231_crit_edge276
  ]

for.cond.i229.if.then.i231_crit_edge276:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge275:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge274:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge273:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge272:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge271:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge270:          ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

for.cond.i229.if.then.i231_crit_edge:             ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i231

if.then.i231:                                     ; preds = %for.cond.i229.if.then.i231_crit_edge, %for.cond.i229.if.then.i231_crit_edge270, %for.cond.i229.if.then.i231_crit_edge271, %for.cond.i229.if.then.i231_crit_edge272, %for.cond.i229.if.then.i231_crit_edge273, %for.cond.i229.if.then.i231_crit_edge274, %for.cond.i229.if.then.i231_crit_edge275, %for.cond.i229.if.then.i231_crit_edge276
  %94 = ptrtoint ptr %m2m_ctx.i226 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %m2m_ctx.i226, align 4
  %out_q_ctx.i.i230 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %95, i32 0, i32 8
  br label %if.end.i237

if.else.i233:                                     ; preds = %for.cond.i229
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %m2m_ctx.i226 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m2m_ctx.i226, align 4
  %cap_q_ctx.i.i232 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %97, i32 0, i32 7
  br label %if.end.i237

if.end.i237:                                      ; preds = %if.else.i233, %if.then.i231
  %cap_q_ctx.i.sink.i234 = phi ptr [ %cap_q_ctx.i.i232, %if.else.i233 ], [ %out_q_ctx.i.i230, %if.then.i231 ]
  %call.i43.i235 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i234) #15
  %cmp25.i236 = icmp eq ptr %call.i43.i235, null
  br i1 %cmp25.i236, label %if.end.i237.cleanup_crit_edge, label %if.end27.i239

if.end.i237.cleanup_crit_edge:                    ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27.i239:                                    ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #17
  %req.i238 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i43.i235, i32 0, i32 7, i32 2
  %98 = ptrtoint ptr %req.i238 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %req.i238, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %99, ptr noundef %hdl.i227) #15
  %100 = ptrtoint ptr %lock.i228 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lock.i228, align 8
  tail call void @_raw_spin_lock(ptr noundef %101) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i43.i235, i32 noundef 3) #15
  %102 = ptrtoint ptr %lock.i228 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lock.i228, align 8
  tail call void @_raw_spin_unlock(ptr noundef %103) #15
  br label %for.cond.i229

if.end89:                                         ; preds = %if.end71
  %compressed_frame = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 17
  %104 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %compressed_frame, align 4
  %tobool90.not = icmp eq ptr %105, null
  br i1 %tobool90.not, label %if.end89.if.end100_crit_edge, label %if.then91

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then91:                                        ; preds = %if.end89
  %comp_size = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 10
  %106 = ptrtoint ptr %comp_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %comp_size, align 8
  %108 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %comp_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp93 = icmp ugt i32 %107, %109
  br i1 %cmp93, label %if.then94, label %if.then91.if.end97_crit_edge

if.then91.if.end97_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %comp_size to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %comp_size, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then91.if.end97_crit_edge
  %111 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %compressed_frame, align 4
  %113 = ptrtoint ptr %comp_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %comp_size, align 8
  %115 = call ptr @memcpy(ptr %call.i224, ptr %112, i32 %114)
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %if.end89.if.end100_crit_edge
  %116 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %compressed_frame, align 4
  tail call void @kvfree(ptr noundef %117) #15
  %118 = ptrtoint ptr %compressed_frame to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i224, ptr %compressed_frame, align 4
  %components_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %6, i32 0, i32 8
  %119 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %components_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %cmp103 = icmp ult i32 %120, 3
  br i1 %cmp103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %cb = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 7
  %121 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %cb, align 4
  %cr = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 8
  %122 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %cr, align 8
  %alpha = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 9
  %123 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %alpha, align 4
  br label %cleanup

if.end108:                                        ; preds = %if.end100
  %124 = ptrtoint ptr %luma to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %luma, align 8
  %add.ptr = getelementptr i8, ptr %125, i32 %mul
  %cb112 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 7
  %126 = ptrtoint ptr %cb112 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr, ptr %cb112, align 4
  %div = udiv i32 %mul, %mul4
  %add.ptr115 = getelementptr i8, ptr %add.ptr, i32 %div
  %cr117 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 8
  %127 = ptrtoint ptr %cr117 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr115, ptr %cr117, align 8
  %128 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %components_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %129)
  %cmp119 = icmp eq i32 %129, 4
  br i1 %cmp119, label %if.then120, label %if.else

if.then120:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr124 = getelementptr i8, ptr %add.ptr115, i32 %div
  %alpha126 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 9
  %130 = ptrtoint ptr %alpha126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %add.ptr124, ptr %alpha126, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %alpha128 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 9
  %131 = ptrtoint ptr %alpha128 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %alpha128, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then120, %if.then104, %if.end.i237.cleanup_crit_edge, %if.then69, %if.end.i.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then69 ], [ 0, %if.then104 ], [ 0, %land.lhs.true50.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then120 ], [ -12, %if.end.i237.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vicodec_stop_streaming(ptr noundef %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %hdl.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end27.i, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i_crit_edge
    i32 10, label %for.cond.i.if.then.i_crit_edge209
    i32 3, label %for.cond.i.if.then.i_crit_edge210
    i32 8, label %for.cond.i.if.then.i_crit_edge211
    i32 5, label %for.cond.i.if.then.i_crit_edge212
    i32 7, label %for.cond.i.if.then.i_crit_edge213
    i32 12, label %for.cond.i.if.then.i_crit_edge214
    i32 14, label %for.cond.i.if.then.i_crit_edge215
  ]

for.cond.i.if.then.i_crit_edge215:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge214:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge213:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge212:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge211:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge210:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge209:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge209, %for.cond.i.if.then.i_crit_edge210, %for.cond.i.if.then.i_crit_edge211, %for.cond.i.if.then.i_crit_edge212, %for.cond.i.if.then.i_crit_edge213, %for.cond.i.if.then.i_crit_edge214, %for.cond.i.if.then.i_crit_edge215
  %5 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i43.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #15
  %cmp25.i = icmp eq ptr %call.i43.i, null
  br i1 %cmp25.i, label %vicodec_return_bufs.exit, label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i43.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %10, ptr noundef %hdl.i) #15
  %11 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %12) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i43.i, i32 noundef 6) #15
  %13 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %14) #15
  br label %for.cond.i

vicodec_return_bufs.exit:                         ; preds = %if.end.i
  %15 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx.i, align 4
  tail call void @v4l2_m2m_update_stop_streaming_state(ptr noundef %16, ptr noundef %q) #15
  %17 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %18, label %vicodec_return_bufs.exit.if.end_crit_edge [
    i32 2, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge
    i32 10, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge216
    i32 3, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge217
    i32 8, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge218
    i32 5, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge219
    i32 7, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge220
    i32 12, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge221
    i32 14, label %vicodec_return_bufs.exit.land.lhs.true_crit_edge222
  ]

vicodec_return_bufs.exit.land.lhs.true_crit_edge222: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge221: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge220: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge219: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge218: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge217: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge216: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.land.lhs.true_crit_edge: ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

vicodec_return_bufs.exit.if.end_crit_edge:        ; preds = %vicodec_return_bufs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %vicodec_return_bufs.exit.land.lhs.true_crit_edge, %vicodec_return_bufs.exit.land.lhs.true_crit_edge216, %vicodec_return_bufs.exit.land.lhs.true_crit_edge217, %vicodec_return_bufs.exit.land.lhs.true_crit_edge218, %vicodec_return_bufs.exit.land.lhs.true_crit_edge219, %vicodec_return_bufs.exit.land.lhs.true_crit_edge220, %vicodec_return_bufs.exit.land.lhs.true_crit_edge221, %vicodec_return_bufs.exit.land.lhs.true_crit_edge222
  %20 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx.i, align 4
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_stopped.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull @vicodec_eos_event) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vicodec_return_bufs.exit.if.end_crit_edge
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %land.lhs.true25, label %if.end.if.end50thread-pre-split_crit_edge

if.end.if.end50thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50thread-pre-split

land.lhs.true25:                                  ; preds = %if.end
  %26 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %q, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %27, label %land.lhs.true25.if.end50_crit_edge [
    i32 2, label %land.lhs.true25.if.then49_crit_edge
    i32 10, label %land.lhs.true25.if.then49_crit_edge223
    i32 3, label %land.lhs.true25.if.then49_crit_edge224
    i32 8, label %land.lhs.true25.if.then49_crit_edge225
    i32 5, label %land.lhs.true25.if.then49_crit_edge226
    i32 7, label %land.lhs.true25.if.then49_crit_edge227
    i32 12, label %land.lhs.true25.if.then49_crit_edge228
    i32 14, label %land.lhs.true25.if.then49_crit_edge229
  ]

land.lhs.true25.if.then49_crit_edge229:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge228:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge227:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge226:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge225:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge224:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge223:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.then49_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true25.if.end50_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then49:                                        ; preds = %land.lhs.true25.if.then49_crit_edge, %land.lhs.true25.if.then49_crit_edge223, %land.lhs.true25.if.then49_crit_edge224, %land.lhs.true25.if.then49_crit_edge225, %land.lhs.true25.if.then49_crit_edge226, %land.lhs.true25.if.then49_crit_edge227, %land.lhs.true25.if.then49_crit_edge228, %land.lhs.true25.if.then49_crit_edge229
  %first_source_change_sent = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %first_source_change_sent to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %first_source_change_sent, align 2
  br label %if.end50thread-pre-split

if.end50thread-pre-split:                         ; preds = %if.then49, %if.end.if.end50thread-pre-split_crit_edge
  %30 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %q, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50thread-pre-split, %land.lhs.true25.if.end50_crit_edge
  %31 = phi i32 [ %.pr, %if.end50thread-pre-split ], [ %27, %land.lhs.true25.if.end50_crit_edge ]
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %31, label %land.lhs.true74 [
    i32 2, label %if.end50.land.lhs.true101_crit_edge
    i32 10, label %if.end50.land.lhs.true101_crit_edge230
    i32 3, label %if.end50.land.lhs.true101_crit_edge231
    i32 8, label %if.end50.land.lhs.true101_crit_edge232
    i32 5, label %if.end50.land.lhs.true101_crit_edge233
    i32 7, label %if.end50.land.lhs.true101_crit_edge234
    i32 12, label %if.end50.land.lhs.true101_crit_edge235
    i32 14, label %if.end50.land.lhs.true101_crit_edge236
  ]

if.end50.land.lhs.true101_crit_edge236:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge235:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge234:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge233:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge232:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge231:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge230:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

if.end50.land.lhs.true101_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true101

land.lhs.true74:                                  ; preds = %if.end50
  %33 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool76.not = icmp eq i8 %34, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.then104_crit_edge, label %lor.lhs.false77

land.lhs.true74.if.then104_crit_edge:             ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77:                                  ; preds = %land.lhs.true74
  %35 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %31, label %lor.lhs.false77.if.end113_crit_edge [
    i32 2, label %lor.lhs.false77.if.then104_crit_edge
    i32 10, label %lor.lhs.false77.if.then104_crit_edge237
    i32 3, label %lor.lhs.false77.if.then104_crit_edge238
    i32 8, label %lor.lhs.false77.if.then104_crit_edge239
    i32 5, label %lor.lhs.false77.if.then104_crit_edge240
    i32 7, label %lor.lhs.false77.if.then104_crit_edge241
    i32 12, label %lor.lhs.false77.if.then104_crit_edge242
  ]

lor.lhs.false77.if.then104_crit_edge242:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge241:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge240:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge239:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge238:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge237:          ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.then104_crit_edge:             ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

lor.lhs.false77.if.end113_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

land.lhs.true101:                                 ; preds = %if.end50.land.lhs.true101_crit_edge, %if.end50.land.lhs.true101_crit_edge230, %if.end50.land.lhs.true101_crit_edge231, %if.end50.land.lhs.true101_crit_edge232, %if.end50.land.lhs.true101_crit_edge233, %if.end50.land.lhs.true101_crit_edge234, %if.end50.land.lhs.true101_crit_edge235, %if.end50.land.lhs.true101_crit_edge236
  %36 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr207 = load i8, ptr %is_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr207)
  %tobool103.not = icmp eq i8 %.pr207, 0
  br i1 %tobool103.not, label %land.lhs.true101.if.end113_crit_edge, label %land.lhs.true101.if.then104_crit_edge

land.lhs.true101.if.then104_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then104

land.lhs.true101.if.end113_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then104:                                       ; preds = %land.lhs.true101.if.then104_crit_edge, %lor.lhs.false77.if.then104_crit_edge, %lor.lhs.false77.if.then104_crit_edge237, %lor.lhs.false77.if.then104_crit_edge238, %lor.lhs.false77.if.then104_crit_edge239, %lor.lhs.false77.if.then104_crit_edge240, %lor.lhs.false77.if.then104_crit_edge241, %lor.lhs.false77.if.then104_crit_edge242, %land.lhs.true74.if.then104_crit_edge
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool105.not = icmp eq i8 %38, 0
  br i1 %tobool105.not, label %if.then106, label %if.then104.if.end107_crit_edge

if.then104.if.end107_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then106:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %buf = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 5
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  tail call void @kvfree(ptr noundef %40) #15
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then104.if.end107_crit_edge
  %buf110 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 5
  %41 = ptrtoint ptr %buf110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %buf110, align 4
  %luma = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 15, i32 6
  %42 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %luma, align 8
  %comp_max_size = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %comp_max_size, align 4
  %source_changed = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %source_changed to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %source_changed, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.end107, %land.lhs.true101.if.end113_crit_edge, %lor.lhs.false77.if.end113_crit_edge
  %45 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %q, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %46, label %if.end113.if.end141_crit_edge [
    i32 2, label %if.end113.land.lhs.true137_crit_edge
    i32 10, label %if.end113.land.lhs.true137_crit_edge243
    i32 3, label %if.end113.land.lhs.true137_crit_edge244
    i32 8, label %if.end113.land.lhs.true137_crit_edge245
    i32 5, label %if.end113.land.lhs.true137_crit_edge246
    i32 7, label %if.end113.land.lhs.true137_crit_edge247
    i32 12, label %if.end113.land.lhs.true137_crit_edge248
    i32 14, label %if.end113.land.lhs.true137_crit_edge249
  ]

if.end113.land.lhs.true137_crit_edge249:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge248:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge247:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge246:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge245:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge244:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge243:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.land.lhs.true137_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true137

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

land.lhs.true137:                                 ; preds = %if.end113.land.lhs.true137_crit_edge, %if.end113.land.lhs.true137_crit_edge243, %if.end113.land.lhs.true137_crit_edge244, %if.end113.land.lhs.true137_crit_edge245, %if.end113.land.lhs.true137_crit_edge246, %if.end113.land.lhs.true137_crit_edge247, %if.end113.land.lhs.true137_crit_edge248, %if.end113.land.lhs.true137_crit_edge249
  %48 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool139.not = icmp eq i8 %49, 0
  br i1 %tobool139.not, label %if.then140, label %land.lhs.true137.if.end141_crit_edge

land.lhs.true137.if.end141_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

if.then140:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  %cur_buf_offset = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cur_buf_offset, align 8
  %comp_size = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 10
  %51 = call ptr @memset(ptr %comp_size, i32 0, i32 14)
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %land.lhs.true137.if.end141_crit_edge, %if.end113.if.end141_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vicodec_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  %call3 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #15
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %p, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %call4 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %10, i32 noundef 2) #15
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %call7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %12, i32 noundef 1) #15
  %13 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vb, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %16, label %land.lhs.true [
    i32 2, label %vb2_get_plane_payload.exit.if.end_crit_edge
    i32 10, label %vb2_get_plane_payload.exit.if.end_crit_edge225
    i32 3, label %vb2_get_plane_payload.exit.if.end_crit_edge226
    i32 8, label %vb2_get_plane_payload.exit.if.end_crit_edge227
    i32 5, label %vb2_get_plane_payload.exit.if.end_crit_edge228
    i32 7, label %vb2_get_plane_payload.exit.if.end_crit_edge229
    i32 12, label %vb2_get_plane_payload.exit.if.end_crit_edge230
    i32 14, label %vb2_get_plane_payload.exit.if.end_crit_edge231
  ]

vb2_get_plane_payload.exit.if.end_crit_edge231:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge230:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge229:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge228:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge227:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge226:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge225:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

vb2_get_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %vb2_get_plane_payload.exit
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %14, i32 0, i32 28
  %18 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true38, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true38:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 4
  %is_draining.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %is_draining.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_draining.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true38.if.end_crit_edge, label %v4l2_m2m_dst_buf_is_last.exit

land.lhs.true38.if.end_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

v4l2_m2m_dst_buf_is_last.exit:                    ; preds = %land.lhs.true38
  %next_buf_last.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %next_buf_last.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %next_buf_last.i, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.i.not = icmp eq i8 %24, 0
  br i1 %tobool1.i.not, label %v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge, label %for.cond.preheader

v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge:   ; preds = %v4l2_m2m_dst_buf_is_last.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %v4l2_m2m_dst_buf_is_last.exit
  %25 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp42214.not = icmp eq i32 %26, 0
  br i1 %cmp42214.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge

for.cond.preheader.vb2_set_plane_payload.exit_crit_edge: ; preds = %for.cond.preheader
  br label %vb2_set_plane_payload.exit

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

vb2_set_plane_payload.exit:                       ; preds = %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge, %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge
  %i.0215 = phi i32 [ %inc, %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge ], [ 0, %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i198 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.0215, i32 3
  %27 = ptrtoint ptr %bytesused.i198 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bytesused.i198, align 4
  %inc = add nuw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %vb2_set_plane_payload.exit.for.end_crit_edge, label %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge

vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %14, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %30, label %for.end.get_q_data.exit_crit_edge [
    i32 2, label %for.end.sw.bb.i_crit_edge
    i32 10, label %for.end.sw.bb.i_crit_edge232
    i32 1, label %for.end.sw.bb1.i_crit_edge
    i32 9, label %for.end.sw.bb1.i_crit_edge233
  ]

for.end.sw.bb1.i_crit_edge233:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

for.end.sw.bb1.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

for.end.sw.bb.i_crit_edge232:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

for.end.sw.bb.i_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

for.end.get_q_data.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %for.end.sw.bb.i_crit_edge, %for.end.sw.bb.i_crit_edge232
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %for.end.sw.bb1.i_crit_edge, %for.end.sw.bb1.i_crit_edge233
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %3, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %for.end.get_q_data.exit_crit_edge
  %retval.0.i199 = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %for.end.get_q_data.exit_crit_edge ]
  %sequence = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i199, i32 0, i32 6
  %32 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sequence, align 4
  %inc46 = add i32 %33, 1
  store i32 %inc46, ptr %sequence, align 4
  %sequence47 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %34 = ptrtoint ptr %sequence47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sequence47, align 8
  %35 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_last_buffer_done(ptr noundef %36, ptr noundef %vb) #15
  tail call void @v4l2_event_queue_fh(ptr noundef %3, ptr noundef nonnull @vicodec_eos_event) #15
  br label %cleanup125

if.end:                                           ; preds = %v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge, %land.lhs.true38.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %vb2_get_plane_payload.exit.if.end_crit_edge, %vb2_get_plane_payload.exit.if.end_crit_edge225, %vb2_get_plane_payload.exit.if.end_crit_edge226, %vb2_get_plane_payload.exit.if.end_crit_edge227, %vb2_get_plane_payload.exit.if.end_crit_edge228, %vb2_get_plane_payload.exit.if.end_crit_edge229, %vb2_get_plane_payload.exit.if.end_crit_edge230, %vb2_get_plane_payload.exit.if.end_crit_edge231
  %first_source_change_sent = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 15
  %37 = ptrtoint ptr %first_source_change_sent to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %first_source_change_sent, align 2, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %40, ptr noundef %vb) #15
  br label %cleanup125

if.end54:                                         ; preds = %if.end
  %streaming.i200 = getelementptr inbounds %struct.vb2_queue, ptr %call7, i32 0, i32 28
  %41 = ptrtoint ptr %streaming.i200 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i201 = load i16, ptr %streaming.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i201)
  %tobool.i202 = icmp slt i16 %bf.load.i201, 0
  br i1 %tobool.i202, label %land.lhs.true56, label %if.end54.if.end61_crit_edge

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true56:                                  ; preds = %if.end54
  %streaming.i203 = getelementptr inbounds %struct.vb2_queue, ptr %call4, i32 0, i32 28
  %42 = ptrtoint ptr %streaming.i203 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i204 = load i16, ptr %streaming.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i204)
  %tobool.i205 = icmp slt i16 %bf.load.i204, 0
  br i1 %tobool.i205, label %if.then58, label %land.lhs.true56.if.end61_crit_edge

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %44, ptr noundef %vb) #15
  br label %cleanup125

if.end61:                                         ; preds = %land.lhs.true56.if.end61_crit_edge, %if.end54.if.end61_crit_edge
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool62.not = icmp eq i8 %46, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %if.end61.if.then97_crit_edge

if.end61.if.then97_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then97

lor.lhs.false63:                                  ; preds = %if.end61
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool64.not = icmp eq i8 %48, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false63.if.then97_crit_edge

lor.lhs.false63.if.then97_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then97

lor.lhs.false65:                                  ; preds = %lor.lhs.false63
  %49 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %16, label %lor.lhs.false65.if.then97_crit_edge [
    i32 2, label %lor.lhs.false65.if.end100_crit_edge
    i32 10, label %lor.lhs.false65.if.end100_crit_edge234
    i32 3, label %lor.lhs.false65.if.end100_crit_edge235
    i32 8, label %lor.lhs.false65.if.end100_crit_edge236
    i32 5, label %lor.lhs.false65.if.end100_crit_edge237
    i32 7, label %lor.lhs.false65.if.end100_crit_edge238
    i32 12, label %lor.lhs.false65.if.end100_crit_edge239
    i32 14, label %lor.lhs.false65.if.end100_crit_edge240
  ]

lor.lhs.false65.if.end100_crit_edge240:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge239:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge238:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge237:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge236:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge235:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge234:           ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.end100_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

lor.lhs.false65.if.then97_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false65.if.then97_crit_edge, %lor.lhs.false63.if.then97_crit_edge, %if.end61.if.then97_crit_edge
  %50 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %51, ptr noundef %vb) #15
  br label %cleanup125

if.end100:                                        ; preds = %lor.lhs.false65.if.end100_crit_edge, %lor.lhs.false65.if.end100_crit_edge234, %lor.lhs.false65.if.end100_crit_edge235, %lor.lhs.false65.if.end100_crit_edge236, %lor.lhs.false65.if.end100_crit_edge237, %lor.lhs.false65.if.end100_crit_edge238, %lor.lhs.false65.if.end100_crit_edge239, %lor.lhs.false65.if.end100_crit_edge240
  %add.ptr101 = getelementptr i8, ptr %call3, i32 %retval.0.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr101 to i32
  %52 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p, align 4
  %sub.ptr.rhs.cast216 = ptrtoint ptr %53 to i32
  %sub.ptr.sub217 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast216
  %call102218 = call fastcc i32 @get_next_header(ptr noundef %3, ptr noundef nonnull %p, i32 noundef %sub.ptr.sub217)
  %header_size = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 11
  %54 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %header_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %55)
  %cmp103219 = icmp ult i32 %55, 44
  br i1 %cmp103219, label %if.end100.cleanup_crit_edge, label %if.end105.lr.ph

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end105.lr.ph:                                  ; preds = %if.end100
  %width.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 7, i32 16, i32 3
  %height.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 7, i32 16, i32 4
  %version1.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 7, i32 16, i32 2
  %flags2.i = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 7, i32 16, i32 5
  %comp_magic_cnt = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 12
  br label %if.end105

if.end105:                                        ; preds = %do.cond.if.end105_crit_edge, %if.end105.lr.ph
  %56 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width.i, align 4
  %58 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height.i, align 4
  %60 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %version1.i, align 4
  %62 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags2.i, align 4
  %64 = add i32 %57, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3457, i32 %64)
  %65 = icmp ult i32 %64, -3457
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %59)
  %cmp5.i = icmp ult i32 %59, 360
  %or.cond24.i = select i1 %65, i1 true, i1 %cmp5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %59)
  %cmp7.i = icmp ugt i32 %59, 2160
  %or.cond25.i = select i1 %or.cond24.i, i1 true, i1 %cmp7.i
  %66 = add i32 %61, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %66)
  %67 = icmp ult i32 %66, -3
  %or.cond28.i = select i1 %or.cond25.i, i1 true, i1 %67
  br i1 %or.cond28.i, label %if.end105.do.cond_crit_edge, label %if.end.i.i

if.end105.do.cond_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end.i.i:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp1.i.i = icmp ugt i32 %61, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end.i.i.is_header_valid.exit_crit_edge

if.end.i.i.is_header_valid.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_header_valid.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  %and3.i.i = and i32 %63, 1572864
  %68 = and i32 %63, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp6.not.i.i = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool8.not.i.i = icmp ne i32 %and3.i.i, 0
  %switch.i.i = and i1 %cmp6.not.i.i, %tobool8.not.i.i
  br i1 %switch.i.i, label %if.then2.i.i.is_header_valid.exit_crit_edge, label %if.then2.i.i.do.cond_crit_edge

if.then2.i.i.do.cond_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.then2.i.i.is_header_valid.exit_crit_edge:      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_header_valid.exit

is_header_valid.exit:                             ; preds = %if.then2.i.i.is_header_valid.exit_crit_edge, %if.end.i.i.is_header_valid.exit_crit_edge
  %pixenc.0.i.i = phi i32 [ %and3.i.i, %if.then2.i.i.is_header_valid.exit_crit_edge ], [ 0, %if.end.i.i.is_header_valid.exit_crit_edge ]
  %and6.i.i = lshr i32 %63, 16
  %shr.i.i = and i32 %and6.i.i, 7
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %components_num.0.i.i = select i1 %cmp1.i.i, i32 %add.i.i, i32 3
  %and2.i.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %cond4.i.i = select i1 %tobool3.not.i.i, i32 2, i32 1
  %and.i.i = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call.i.i = tail call ptr @v4l2_fwht_find_nth_fmt(i32 noundef %cond.i.i, i32 noundef %cond4.i.i, i32 noundef %components_num.0.i.i, i32 noundef %pixenc.0.i.i, i32 noundef 0) #15
  %tobool.not.i206.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i206.not, label %is_header_valid.exit.do.cond_crit_edge, label %do.end

is_header_valid.exit.do.cond_crit_edge:           ; preds = %is_header_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end100.cleanup_crit_edge
  %call102.lcssa = phi i32 [ %call102218, %if.end100.cleanup_crit_edge ], [ %call102, %do.cond.cleanup_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef %call102.lcssa) #15
  br label %cleanup125

do.cond:                                          ; preds = %is_header_valid.exit.do.cond_crit_edge, %if.then2.i.i.do.cond_crit_edge, %if.end105.do.cond_crit_edge
  %69 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p, align 4
  %add.ptr111 = getelementptr i8, ptr %70, i32 -43
  %cmp112 = icmp ult ptr %add.ptr111, %call3
  %spec.select = select i1 %cmp112, ptr %call3, ptr %add.ptr111
  store ptr %spec.select, ptr %p, align 4
  %71 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %header_size, align 4
  %72 = ptrtoint ptr %comp_magic_cnt to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %comp_magic_cnt, align 8
  %sub.ptr.rhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call102 = call fastcc i32 @get_next_header(ptr noundef %3, ptr noundef nonnull %p, i32 noundef %sub.ptr.sub)
  %73 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %header_size, align 4
  %cmp103 = icmp ult i32 %74, 44
  br i1 %cmp103, label %do.cond.cleanup_crit_edge, label %do.cond.if.end105_crit_edge

do.cond.if.end105_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %is_header_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast118 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast119 = ptrtoint ptr %call3 to i32
  %sub.ptr.sub120 = sub i32 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %cur_buf_offset = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 8
  %77 = ptrtoint ptr %cur_buf_offset to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.ptr.sub120, ptr %cur_buf_offset, align 8
  tail call fastcc void @update_capture_data_from_header(ptr noundef %3)
  %78 = ptrtoint ptr %first_source_change_sent to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %first_source_change_sent, align 2
  tail call void @v4l2_event_queue_fh(ptr noundef %3, ptr noundef nonnull @vicodec_buf_queue.rs_event) #15
  %79 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %80, ptr noundef %vb) #15
  br label %cleanup125

cleanup125:                                       ; preds = %do.end, %cleanup, %if.then97, %if.then58, %if.then51, %get_q_data.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vicodec_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
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
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %hdl = getelementptr inbounds %struct.vicodec_ctx, ptr %3, i32 0, i32 5
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %hdl) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_update_start_streaming_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_update_stop_streaming_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_last_buffer_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #15
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #15
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc i32 @enum_fmt(ptr noundef %f, ptr noundef %1, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc i32 @enum_fmt(ptr noundef %f, ptr noundef %1, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc i32 @vidioc_g_fmt(ptr noundef %1, ptr noundef %f)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call fastcc i32 @vidioc_g_fmt(ptr noundef %1, ptr noundef %f)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call2 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %3, label %entry.get_q_data.exit_crit_edge [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 10, label %entry.sw.bb.i_crit_edge145
    i32 1, label %entry.sw.bb1.i_crit_edge
    i32 9, label %entry.sw.bb1.i_crit_edge146
  ]

entry.sw.bb1.i_crit_edge146:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge145
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge146
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %entry.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %entry.get_q_data.exit_crit_edge ]
  %arrayidx3.i137 = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1
  %call3 = tail call i32 @vidioc_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %get_q_data.exit.cleanup73_crit_edge

get_q_data.exit.cleanup73_crit_edge:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end:                                           ; preds = %get_q_data.exit
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end.if.end37_crit_edge, label %if.then5

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then5:                                         ; preds = %if.end
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  %call7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %8, i32 noundef %10) #15
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %call10 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %12, i32 noundef 1) #15
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 3
  %coded_w.0.in = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %coded_h.0.in = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %coded_h.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %coded_h.0 = load i32, ptr %coded_h.0.in, align 4
  %14 = ptrtoint ptr %coded_w.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %coded_w.0 = load i32, ptr %coded_w.0.in, align 4
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call7, i32 0, i32 21
  %15 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not = icmp eq i32 %16, 0
  br i1 %cmp.i.not, label %if.then5.if.end24_crit_edge, label %land.lhs.true

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then5
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %coded_w.0, i32 %18)
  %cmp21.not = icmp eq i32 %coded_w.0, %18
  br i1 %cmp21.not, label %lor.lhs.false, label %land.lhs.true.cleanup73_crit_edge

land.lhs.true.cleanup73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

lor.lhs.false:                                    ; preds = %land.lhs.true
  %coded_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %coded_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %coded_h.0, i32 %20)
  %cmp22.not = icmp eq i32 %coded_h.0, %20
  br i1 %cmp22.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.cleanup73_crit_edge

lor.lhs.false.cleanup73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %if.then5.if.end24_crit_edge
  %mul = mul i32 %coded_h.0, 3
  %mul25 = mul i32 %mul, %coded_w.0
  %21 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  %add = add i32 %mul25, 44
  %spec.select = select i1 %tobool27.not, i32 %add, i32 %mul25
  %num_buffers.i140 = getelementptr inbounds %struct.vb2_queue, ptr %call10, i32 0, i32 21
  %23 = ptrtoint ptr %num_buffers.i140 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_buffers.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i141.not = icmp eq i32 %24, 0
  br i1 %cmp.i141.not, label %if.end24.if.end37_crit_edge, label %land.lhs.true31

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true31:                                  ; preds = %if.end24
  %sizeimage = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1, i32 4
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %26)
  %cmp32 = icmp ugt i32 %spec.select, %26
  br i1 %cmp32, label %land.lhs.true31.cleanup73_crit_edge, label %land.lhs.true31.if.end37_crit_edge

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true31.cleanup73_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end37:                                         ; preds = %land.lhs.true31.if.end37_crit_edge, %if.end24.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %coded_w.1 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ %coded_w.0, %if.end24.if.end37_crit_edge ], [ %coded_w.0, %land.lhs.true31.if.end37_crit_edge ]
  %coded_h.1 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ %coded_h.0, %if.end24.if.end37_crit_edge ], [ %coded_h.0, %land.lhs.true31.if.end37_crit_edge ]
  %size.2 = phi i32 [ 0, %if.end.if.end37_crit_edge ], [ %spec.select, %if.end24.if.end37_crit_edge ], [ %spec.select, %land.lhs.true31.if.end37_crit_edge ]
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 4
  %call39 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %28, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end37.cleanup73_crit_edge

if.end37.cleanup73_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.then41:                                        ; preds = %if.end37
  %29 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool43.not = icmp eq i8 %30, 0
  br i1 %tobool43.not, label %if.then41.if.end48_crit_edge, label %if.then44

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  %visible_width = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %visible_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %coded_w.1, ptr %visible_width, align 4
  %visible_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %coded_h.1, ptr %visible_height, align 4
  %33 = ptrtoint ptr %arrayidx3.i137 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %coded_w.1, ptr %arrayidx3.i137, align 4
  %coded_height46 = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1, i32 1
  %34 = ptrtoint ptr %coded_height46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %coded_h.1, ptr %coded_height46, align 4
  %sizeimage47 = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1, i32 4
  %35 = ptrtoint ptr %sizeimage47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size.2, ptr %sizeimage47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then41.if.end48_crit_edge
  %36 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %37, label %if.end48.cleanup73_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb57
  ]

if.end48.cleanup73_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

sw.bb:                                            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %colorspace, align 4
  %colorspace51 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 11
  %41 = ptrtoint ptr %colorspace51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %colorspace51, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %42 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xfer_func, align 4
  %xfer_func53 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 13
  %44 = ptrtoint ptr %xfer_func53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %xfer_func53, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %ycbcr_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 12
  %48 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %quantization, align 4
  br label %cleanup73.sink.split

sw.bb57:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %colorspace59 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %51 = ptrtoint ptr %colorspace59 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %colorspace59, align 1
  %colorspace61 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 11
  %53 = ptrtoint ptr %colorspace61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %colorspace61, align 8
  %xfer_func62 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %54 = ptrtoint ptr %xfer_func62 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %xfer_func62, align 1
  %conv = zext i8 %55 to i32
  %xfer_func64 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 13
  %56 = ptrtoint ptr %xfer_func64 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv, ptr %xfer_func64, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv65 = zext i8 %59 to i32
  %ycbcr_enc67 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 12
  %60 = ptrtoint ptr %ycbcr_enc67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv65, ptr %ycbcr_enc67, align 4
  %quantization68 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %61 = ptrtoint ptr %quantization68 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %quantization68, align 1
  %conv69 = zext i8 %62 to i32
  br label %cleanup73.sink.split

cleanup73.sink.split:                             ; preds = %sw.bb57, %sw.bb
  %conv69.sink = phi i32 [ %conv69, %sw.bb57 ], [ %50, %sw.bb ]
  %quantization71 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 14
  %63 = ptrtoint ptr %quantization71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv69.sink, ptr %quantization71, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %cleanup73.sink.split, %if.end48.cleanup73_crit_edge, %if.end37.cleanup73_crit_edge, %land.lhs.true31.cleanup73_crit_edge, %lor.lhs.false.cleanup73_crit_edge, %land.lhs.true.cleanup73_crit_edge, %get_q_data.exit.cleanup73_crit_edge
  %retval.1 = phi i32 [ %call3, %get_q_data.exit.cleanup73_crit_edge ], [ 0, %if.end48.cleanup73_crit_edge ], [ %call39, %if.end37.cleanup73_crit_edge ], [ -16, %lor.lhs.false.cleanup73_crit_edge ], [ -16, %land.lhs.true.cleanup73_crit_edge ], [ -16, %land.lhs.true31.cleanup73_crit_edge ], [ 0, %cleanup73.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %call.i = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %9) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %cond.false.find_fmt.exit_crit_edge

cond.false.find_fmt.exit_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_fmt.exit

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %find_fmt.exit

find_fmt.exit:                                    ; preds = %if.then.i, %cond.false.find_fmt.exit_crit_edge
  %info.0.i = phi ptr [ %call.i, %cond.false.find_fmt.exit_crit_edge ], [ %call1.i, %if.then.i ]
  %10 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info.0.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %find_fmt.exit, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %11, %find_fmt.exit ], [ 1414027078, %if.end.cond.end_crit_edge ]
  %pixelformat4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %pixelformat4, align 4
  %colorspace = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 11
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace, align 8
  %colorspace5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %colorspace5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %colorspace5, align 4
  %xfer_func = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 13
  %16 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_func, align 8
  %xfer_func7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %xfer_func7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %xfer_func7, align 4
  %ycbcr_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 12
  %19 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ycbcr_enc, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %quantization = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 14
  %23 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quantization, align 4
  %quantization10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %quantization10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %quantization10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %26 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %sw.bb11.cleanup_crit_edge, label %if.end14

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  %is_enc16 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %is_enc16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_enc16, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %cond.false19, label %if.end14.cond.end23_crit_edge

if.end14.cond.end23_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end23

cond.false19:                                     ; preds = %if.end14
  %pixelformat20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %pixelformat20 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %pixelformat20, align 1
  %call.i65 = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %30) #15
  %tobool.not.i66 = icmp eq ptr %call.i65, null
  br i1 %tobool.not.i66, label %if.then.i68, label %cond.false19.find_fmt.exit70_crit_edge

cond.false19.find_fmt.exit70_crit_edge:           ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_fmt.exit70

if.then.i68:                                      ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i67 = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %find_fmt.exit70

find_fmt.exit70:                                  ; preds = %if.then.i68, %cond.false19.find_fmt.exit70_crit_edge
  %info.0.i69 = phi ptr [ %call.i65, %cond.false19.find_fmt.exit70_crit_edge ], [ %call1.i67, %if.then.i68 ]
  %31 = ptrtoint ptr %info.0.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %info.0.i69, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %find_fmt.exit70, %if.end14.cond.end23_crit_edge
  %cond24 = phi i32 [ %32, %find_fmt.exit70 ], [ 1414027078, %if.end14.cond.end23_crit_edge ]
  %pixelformat25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %cond24, ptr %pixelformat25, align 1
  %colorspace27 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 11
  %34 = ptrtoint ptr %colorspace27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorspace27, align 8
  %colorspace28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %colorspace28 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %colorspace28, align 1
  %xfer_func30 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 13
  %37 = ptrtoint ptr %xfer_func30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xfer_func30, align 8
  %conv = trunc i32 %38 to i8
  %xfer_func31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %39 = ptrtoint ptr %xfer_func31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %xfer_func31, align 1
  %ycbcr_enc33 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 12
  %40 = ptrtoint ptr %ycbcr_enc33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ycbcr_enc33, align 4
  %conv34 = trunc i32 %41 to i8
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv34, ptr %42, align 1
  %quantization36 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 7, i32 14
  %44 = ptrtoint ptr %quantization36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %quantization36, align 4
  %conv37 = trunc i32 %45 to i8
  %quantization38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %46 = ptrtoint ptr %quantization38 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv37, ptr %quantization38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end23, %cond.end
  %call39 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %call.i = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %9) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.find_fmt.exit_crit_edge

if.then2.find_fmt.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_fmt.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %find_fmt.exit

find_fmt.exit:                                    ; preds = %if.then.i, %if.then2.find_fmt.exit_crit_edge
  %info.0.i = phi ptr [ %call.i, %if.then2.find_fmt.exit_crit_edge ], [ %call1.i, %if.then.i ]
  %10 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info.0.i, align 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  %pixelformat9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1213679187, ptr %pixelformat9, align 4
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1414027078, ptr %pixelformat9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6, %find_fmt.exit
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %colorspace, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %20 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %sw.bb16.cleanup_crit_edge, label %if.end19

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %sw.bb16
  %is_enc21 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %is_enc21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_enc21, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %if.else28, label %if.then23

if.then23:                                        ; preds = %if.end19
  %pixelformat24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %pixelformat24 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %pixelformat24, align 1
  %call.i62 = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %24) #15
  %tobool.not.i63 = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i63, label %if.then.i65, label %if.then23.find_fmt.exit67_crit_edge

if.then23.find_fmt.exit67_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_fmt.exit67

if.then.i65:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i64 = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %find_fmt.exit67

find_fmt.exit67:                                  ; preds = %if.then.i65, %if.then23.find_fmt.exit67_crit_edge
  %info.0.i66 = phi ptr [ %call.i62, %if.then23.find_fmt.exit67_crit_edge ], [ %call1.i64, %if.then.i65 ]
  %25 = ptrtoint ptr %info.0.i66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %info.0.i66, align 4
  %27 = ptrtoint ptr %pixelformat24 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %pixelformat24, align 1
  br label %if.end36

if.else28:                                        ; preds = %if.end19
  %is_stateless29 = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %is_stateless29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_stateless29, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool30.not = icmp eq i8 %29, 0
  %pixelformat34 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %pixelformat34 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 1213679187, ptr %pixelformat34, align 1
  br label %if.end36

if.else33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %pixelformat34 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1414027078, ptr %pixelformat34, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31, %find_fmt.exit67
  %colorspace37 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %colorspace37 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %colorspace37, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool38.not = icmp eq i32 %33, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.sw.epilog_crit_edge

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %colorspace37 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 3, ptr %colorspace37, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %if.end36.sw.epilog_crit_edge, %if.then13, %if.end11.sw.epilog_crit_edge
  %call42 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 10, label %entry.sw.bb.i_crit_edge85
    i32 1, label %entry.sw.bb1.i_crit_edge
    i32 9, label %entry.sw.bb1.i_crit_edge86
  ]

entry.sw.bb1.i_crit_edge86:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge85
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge86
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %land.lhs.true19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %8, label %if.then4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.then4.sw.bb8_crit_edge
    i32 2, label %if.then4.sw.bb8_crit_edge87
  ]

if.then4.sw.bb8_crit_edge87:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

if.then4.sw.bb8_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %top, align 4
  %visible_width = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visible_width, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width, align 4
  %visible_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.then4.sw.bb8_crit_edge, %if.then4.sw.bb8_crit_edge87
  %r9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %15 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %r9, align 4
  %top12 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %top12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top12, align 4
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.0.i, align 4
  %width14 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width14, align 4
  %coded_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  br label %cleanup.sink.split

land.lhs.true19:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp21 = icmp eq i32 %3, 1
  br i1 %cmp21, label %if.then22, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true19
  %target23 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %20 = ptrtoint ptr %target23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target23, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %21, label %if.then22.cleanup_crit_edge [
    i32 256, label %sw.bb24
    i32 257, label %if.then22.sw.bb35_crit_edge
    i32 258, label %if.then22.sw.bb35_crit_edge88
  ]

if.then22.sw.bb35_crit_edge88:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.then22.sw.bb35_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb35

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb24:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %r25 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %23 = ptrtoint ptr %r25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %r25, align 4
  %top28 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %top28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top28, align 4
  %visible_width29 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %visible_width29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %visible_width29, align 4
  %width31 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %width31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %width31, align 4
  %visible_height32 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb35:                                          ; preds = %if.then22.sw.bb35_crit_edge, %if.then22.sw.bb35_crit_edge88
  %r36 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %28 = ptrtoint ptr %r36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %r36, align 4
  %top39 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %top39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %top39, align 4
  %30 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %retval.0.i, align 4
  %width42 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %width42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width42, align 4
  %coded_height43 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb35, %sw.bb24, %sw.bb8, %sw.bb
  %coded_height43.sink = phi ptr [ %coded_height43, %sw.bb35 ], [ %visible_height32, %sw.bb24 ], [ %coded_height, %sw.bb8 ], [ %visible_height, %sw.bb ]
  %33 = ptrtoint ptr %coded_height43.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %coded_height43.sink, align 4
  %height45 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %height45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height45, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then22.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %land.lhs.true19.cleanup_crit_edge ], [ -22, %if.then22.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6
  %tobool.not = icmp eq ptr %q_data.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 640)
  %13 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q_data.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %visible_width = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %visible_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %visible_width, align 4
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 360)
  %coded_height = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %coded_height, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %visible_height = getelementptr inbounds %struct.vicodec_ctx, ptr %1, i32 0, i32 6, i32 0, i32 3
  %24 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %visible_height, align 4
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %streaming.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 0, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %streaming.i48 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 0, i32 28
  %5 = ptrtoint ptr %streaming.i48 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i49 = load i16, ptr %streaming.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i49)
  %tobool.i50 = icmp slt i16 %bf.load.i49, 0
  br i1 %tobool.i50, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @v4l2_m2m_ioctl_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp14 = icmp eq i32 %7, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_stopped.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i51.not = icmp eq i8 %11, 0
  br i1 %tobool.i51.not, label %land.lhs.true.if.end20thread-pre-split_crit_edge, label %if.then18

land.lhs.true.if.end20thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20thread-pre-split

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull @vicodec_eos_event) #15
  br label %if.end20thread-pre-split

if.end20thread-pre-split:                         ; preds = %if.then18, %land.lhs.true.if.end20thread-pre-split_crit_edge
  %12 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %ec, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.end13.if.end20_crit_edge
  %13 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %7, %if.end13.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end20
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  %has_stopped.i52 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %has_stopped.i52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_stopped.i52, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i53.not = icmp eq i8 %17, 0
  br i1 %tobool.i53.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then27

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  %last_buffer_dequeued.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7, i32 0, i32 28
  %18 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i54 = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.clear.i = and i16 %bf.load.i54, -129
  store i16 %bf.clear.i, ptr %last_buffer_dequeued.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %land.lhs.true23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %streaming.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 0, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %streaming.i48 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 0, i32 28
  %5 = ptrtoint ptr %streaming.i48 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i49 = load i16, ptr %streaming.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i49)
  %tobool.i50 = icmp slt i16 %bf.load.i49, 0
  br i1 %tobool.i50, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @v4l2_m2m_ioctl_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp14 = icmp eq i32 %7, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_stopped.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i51.not = icmp eq i8 %11, 0
  br i1 %tobool.i51.not, label %land.lhs.true.if.end20thread-pre-split_crit_edge, label %if.then18

land.lhs.true.if.end20thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20thread-pre-split

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull @vicodec_eos_event) #15
  br label %if.end20thread-pre-split

if.end20thread-pre-split:                         ; preds = %if.then18, %land.lhs.true.if.end20thread-pre-split_crit_edge
  %12 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %dc, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.end13.if.end20_crit_edge
  %13 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %7, %if.end13.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end20
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  %has_stopped.i52 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %has_stopped.i52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_stopped.i52, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i53.not = icmp eq i8 %17, 0
  br i1 %tobool.i53.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then27

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  %last_buffer_dequeued.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7, i32 0, i32 28
  %18 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i54 = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.clear.i = and i16 %bf.load.i54, -129
  store i16 %bf.clear.i, ptr %last_buffer_dequeued.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %land.lhs.true23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %sw.default [
    i32 1213679187, label %entry.sw.epilog_crit_edge
    i32 1414027078, label %entry.sw.epilog_crit_edge15
  ]

entry.sw.epilog_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call.i = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %1) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %sw.default.find_fmt.exit_crit_edge

sw.default.find_fmt.exit_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_fmt.exit

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %find_fmt.exit

find_fmt.exit:                                    ; preds = %if.then.i, %sw.default.find_fmt.exit_crit_edge
  %info.0.i = phi ptr [ %call.i, %sw.default.find_fmt.exit_crit_edge ], [ %call1.i, %if.then.i ]
  %3 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %info.0.i, align 4
  %5 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %find_fmt.exit.sw.epilog_crit_edge, label %find_fmt.exit.return_crit_edge

find_fmt.exit.return_crit_edge:                   ; preds = %find_fmt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

find_fmt.exit.sw.epilog_crit_edge:                ; preds = %find_fmt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %find_fmt.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge15
  %7 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end4:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type, align 4
  %10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 640, ptr %10, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %max_width, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %13 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %14 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 360, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %15 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2160, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %16 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %step_height, align 4
  br label %return

return:                                           ; preds = %if.end4, %sw.epilog.return_crit_edge, %find_fmt.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %find_fmt.exit.return_crit_edge ], [ -22, %sw.epilog.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vicodec_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %1, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %fh, i32 0, i32 2
  %3 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.bb1_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %fh, i32 0, i32 3
  %5 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end4, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.default ], [ %call, %if.end4 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enum_fmt(ptr nocapture noundef %f, ptr nocapture noundef readonly %ctx, i1 noundef zeroext %is_out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select78 = xor i1 %tobool.not, %is_out
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %.off = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %4 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool9.not = icmp eq i8 %4, 0
  br i1 %switch, label %land.lhs.true8, label %land.lhs.true15

land.lhs.true8:                                   ; preds = %entry
  br i1 %tobool9.not, label %land.lhs.true8.cleanup50_crit_edge, label %land.lhs.true8.if.end18_crit_edge

land.lhs.true8.if.end18_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true8.cleanup50_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

land.lhs.true15:                                  ; preds = %entry
  br i1 %tobool9.not, label %land.lhs.true15.if.end18_crit_edge, label %land.lhs.true15.cleanup50_crit_edge

land.lhs.true15.cleanup50_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true15.if.end18_crit_edge, %land.lhs.true8.if.end18_crit_edge
  br i1 %spec.select78, label %if.then20, label %if.else35

if.then20:                                        ; preds = %if.end18
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %if.then20.get_q_data.exit_crit_edge [
    i32 2, label %if.then20.sw.bb.i_crit_edge
    i32 10, label %if.then20.sw.bb.i_crit_edge79
    i32 1, label %if.then20.sw.bb1.i_crit_edge
    i32 9, label %if.then20.sw.bb1.i_crit_edge80
  ]

if.then20.sw.bb1.i_crit_edge80:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.then20.sw.bb1.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.then20.sw.bb.i_crit_edge79:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then20.sw.bb.i_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then20.get_q_data.exit_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %if.then20.sw.bb.i_crit_edge, %if.then20.sw.bb.i_crit_edge79
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.then20.sw.bb1.i_crit_edge, %if.then20.sw.bb1.i_crit_edge80
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %if.then20.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %if.then20.get_q_data.exit_crit_edge ]
  %info22 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %6 = ptrtoint ptr %info22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info22, align 4
  br i1 %tobool.not, label %lor.lhs.false25, label %get_q_data.exit.if.then27_crit_edge

get_q_data.exit.if.then27_crit_edge:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

lor.lhs.false25:                                  ; preds = %get_q_data.exit
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %streaming.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7, i32 0, i32 28
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.else, label %lor.lhs.false25.if.then27_crit_edge

lor.lhs.false25.if.then27_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false25.if.then27_crit_edge, %get_q_data.exit.if.then27_crit_edge
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  %call28 = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef %12) #15
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #17
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width_div, align 4
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height_div, align 4
  %components_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %7, i32 0, i32 8
  %17 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %components_num, align 4
  %pixenc = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %7, i32 0, i32 10
  %19 = ptrtoint ptr %pixenc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixenc, align 4
  %21 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f, align 4
  %call30 = tail call ptr @v4l2_fwht_find_nth_fmt(i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #15
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %info.0 = phi ptr [ %call28, %if.then27 ], [ %call30, %if.else ]
  %tobool32.not = icmp eq ptr %info.0, null
  br i1 %tobool32.not, label %if.end31.cleanup50_crit_edge, label %if.end34

if.end31.cleanup50_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %info.0, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %25 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pixelformat, align 4
  br label %cleanup50

if.else35:                                        ; preds = %if.end18
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not = icmp eq i32 %27, 0
  br i1 %tobool37.not, label %if.end39, label %if.else35.cleanup50_crit_edge

if.else35.cleanup50_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

if.end39:                                         ; preds = %if.else35
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not = icmp eq i8 %29, 0
  %cond = select i1 %tobool40.not, i32 1414027078, i32 1213679187
  %pixelformat41 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %30 = ptrtoint ptr %pixelformat41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %pixelformat41, align 4
  %31 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool43.not = icmp eq i8 %32, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %if.end39.cleanup50_crit_edge

if.end39.cleanup50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

land.lhs.true44:                                  ; preds = %if.end39
  %33 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool46.not = icmp eq i8 %34, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true44.cleanup50_crit_edge

land.lhs.true44.cleanup50_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 12, ptr %flags, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.then47, %land.lhs.true44.cleanup50_crit_edge, %if.end39.cleanup50_crit_edge, %if.else35.cleanup50_crit_edge, %if.end34, %if.end31.cleanup50_crit_edge, %land.lhs.true15.cleanup50_crit_edge, %land.lhs.true8.cleanup50_crit_edge
  %retval.1 = phi i32 [ -22, %land.lhs.true8.cleanup50_crit_edge ], [ -22, %land.lhs.true15.cleanup50_crit_edge ], [ -22, %if.else35.cleanup50_crit_edge ], [ 0, %if.end34 ], [ 0, %if.end39.cleanup50_crit_edge ], [ 0, %land.lhs.true44.cleanup50_crit_edge ], [ 0, %if.then47 ], [ -22, %if.end31.cleanup50_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_g_fmt(ptr nocapture noundef readonly %ctx, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %if.end.get_q_data.exit_crit_edge [
    i32 2, label %if.end.sw.bb.i_crit_edge
    i32 10, label %if.end.sw.bb.i_crit_edge96
    i32 1, label %if.end.sw.bb1.i_crit_edge
    i32 9, label %if.end.sw.bb1.i_crit_edge97
  ]

if.end.sw.bb1.i_crit_edge97:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb.i_crit_edge96:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.get_q_data.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge96
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge97
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %if.end.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %if.end.get_q_data.exit_crit_edge ]
  %info3 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %7 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info3, align 4
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %5, label %get_q_data.exit.cleanup_crit_edge [
    i32 1, label %get_q_data.exit.sw.bb_crit_edge
    i32 2, label %get_q_data.exit.sw.bb_crit_edge98
    i32 9, label %get_q_data.exit.sw.bb16_crit_edge
    i32 10, label %get_q_data.exit.sw.bb16_crit_edge99
  ]

get_q_data.exit.sw.bb16_crit_edge99:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16

get_q_data.exit.sw.bb16_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16

get_q_data.exit.sw.bb_crit_edge98:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

get_q_data.exit.sw.bb_crit_edge:                  ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %get_q_data.exit.sw.bb_crit_edge, %get_q_data.exit.sw.bb_crit_edge98
  %10 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt, align 4
  %coded_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coded_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %8, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat, align 4
  %21 = load i32, ptr %retval.0.i, align 4
  %bytesperline_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %bytesperline_mult to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytesperline_mult, align 4
  %mul = mul i32 %23, %21
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 4
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizeimage, align 4
  %sizeimage9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sizeimage9, align 4
  %colorspace = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorspace, align 8
  %colorspace10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %colorspace10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %colorspace10, align 4
  %xfer_func = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 13
  %31 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xfer_func, align 8
  %xfer_func12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %33 = ptrtoint ptr %xfer_func12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %xfer_func12, align 4
  %ycbcr_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 12
  %34 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ycbcr_enc, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %36, align 4
  %quantization = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 14
  %38 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quantization, align 4
  %quantization15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %quantization15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %quantization15, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %get_q_data.exit.sw.bb16_crit_edge, %get_q_data.exit.sw.bb16_crit_edge99
  %41 = load i8, ptr @multiplanar, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool17.not = icmp eq i8 %41, 0
  br i1 %tobool17.not, label %sw.bb16.cleanup_crit_edge, label %if.end19

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  %fmt20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i, align 4
  %44 = ptrtoint ptr %fmt20 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %fmt20, align 1
  %coded_height23 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %coded_height23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %coded_height23, align 4
  %height24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %height24 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %height24, align 1
  %field25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %field25 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 1, ptr %field25, align 1
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %8, align 4
  %pixelformat27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %pixelformat27 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %pixelformat27, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %52 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %num_planes, align 1
  %53 = load i32, ptr %retval.0.i, align 4
  %bytesperline_mult29 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %8, i32 0, i32 1
  %54 = ptrtoint ptr %bytesperline_mult29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bytesperline_mult29, align 4
  %mul30 = mul i32 %55, %53
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %bytesperline31 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %mul30, ptr %bytesperline31, align 1
  %sizeimage32 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 4
  %57 = ptrtoint ptr %sizeimage32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sizeimage32, align 4
  %59 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %plane_fmt, align 1
  %colorspace37 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 11
  %60 = ptrtoint ptr %colorspace37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %colorspace37, align 8
  %colorspace38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %colorspace38 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %colorspace38, align 1
  %xfer_func40 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 13
  %63 = ptrtoint ptr %xfer_func40 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xfer_func40, align 8
  %conv = trunc i32 %64 to i8
  %xfer_func41 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %65 = ptrtoint ptr %xfer_func41 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv, ptr %xfer_func41, align 1
  %ycbcr_enc43 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 12
  %66 = ptrtoint ptr %ycbcr_enc43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ycbcr_enc43, align 4
  %conv44 = trunc i32 %67 to i8
  %68 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv44, ptr %68, align 1
  %quantization46 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 7, i32 14
  %70 = ptrtoint ptr %quantization46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quantization46, align 4
  %conv47 = trunc i32 %71 to i8
  %quantization48 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %72 = ptrtoint ptr %quantization48 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv47, ptr %quantization48, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.bb16.cleanup_crit_edge, %if.end7, %sw.bb.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb.i_crit_edge
    i32 10, label %if.end.sw.bb.i_crit_edge241
    i32 1, label %if.end.sw.bb1.i_crit_edge
    i32 9, label %if.end.sw.bb1.i_crit_edge242
  ]

if.end.sw.bb1.i_crit_edge242:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.end.sw.bb.i_crit_edge241:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge241
  %q_data.i = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge242
  %arrayidx3.i = getelementptr %struct.vicodec_ctx, ptr %ctx, i32 0, i32 6, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %get_q_data.exit
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %5, label %if.end5.cleanup_crit_edge [
    i32 1, label %if.end5.sw.bb_crit_edge
    i32 2, label %if.end5.sw.bb_crit_edge243
    i32 9, label %if.end5.sw.bb62_crit_edge
    i32 10, label %if.end5.sw.bb62_crit_edge244
  ]

if.end5.sw.bb62_crit_edge244:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb62

if.end5.sw.bb62_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb62

if.end5.sw.bb_crit_edge243:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge243
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %is_enc = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %is_enc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_enc, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  %or.cond = select i1 %tobool7.not, i1 %cond, i1 false
  br i1 %or.cond, label %if.then29, label %sw.bb.if.end37_crit_edge

sw.bb.if.end37_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then29:                                        ; preds = %sw.bb
  %info = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %if.then29.if.end37_crit_edge, label %lor.lhs.false31

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

lor.lhs.false31:                                  ; preds = %if.then29
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp33.not = icmp eq i32 %13, %15
  br i1 %cmp33.not, label %lor.lhs.false34, label %lor.lhs.false31.if.end37_crit_edge

lor.lhs.false31.if.end37_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i, align 4
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp35.not = icmp eq i32 %17, %19
  br i1 %cmp35.not, label %lor.rhs, label %lor.lhs.false34.if.end37_crit_edge

lor.lhs.false34.if.end37_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

lor.rhs:                                          ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #17
  %coded_height = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %coded_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp36 = icmp eq i32 %21, %23
  br label %if.end37

if.end37:                                         ; preds = %lor.rhs, %lor.lhs.false34.if.end37_crit_edge, %lor.lhs.false31.if.end37_crit_edge, %if.then29.if.end37_crit_edge, %sw.bb.if.end37_crit_edge
  %fmt_changed.0.off0 = phi i1 [ false, %sw.bb.if.end37_crit_edge ], [ false, %lor.lhs.false34.if.end37_crit_edge ], [ false, %lor.lhs.false31.if.end37_crit_edge ], [ false, %if.then29.if.end37_crit_edge ], [ %cmp36, %lor.rhs ]
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %24 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 0
  %brmerge = select i1 %cmp.i.not, i1 true, i1 %fmt_changed.0.off0
  br i1 %brmerge, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %pixelformat43 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %pixelformat43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat43, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %27, label %if.else51 [
    i32 1414027078, label %if.end42.if.end56_crit_edge
    i32 1213679187, label %if.then49
  ]

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.else51:                                        ; preds = %if.end42
  %call.i = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %27) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else51.if.end56_crit_edge

if.else51.if.end56_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then.i:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %if.end56

if.end56:                                         ; preds = %if.then.i, %if.else51.if.end56_crit_edge, %if.then49, %if.end42.if.end56_crit_edge
  %pixfmt_stateless_fwht.sink = phi ptr [ @pixfmt_stateless_fwht, %if.then49 ], [ @pixfmt_fwht, %if.end42.if.end56_crit_edge ], [ %call.i, %if.else51.if.end56_crit_edge ], [ %call1.i, %if.then.i ]
  %info50 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %29 = ptrtoint ptr %info50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pixfmt_stateless_fwht.sink, ptr %info50, align 4
  br label %do.body

sw.bb62:                                          ; preds = %if.end5.sw.bb62_crit_edge, %if.end5.sw.bb62_crit_edge244
  %fmt63 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %is_enc64 = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 2
  %30 = ptrtoint ptr %is_enc64 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_enc64, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool65.not = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cond237 = icmp eq i32 %5, 10
  %or.cond238 = select i1 %tobool65.not, i1 %cond237, i1 false
  br i1 %or.cond238, label %if.then90, label %sw.bb62.if.end108_crit_edge

sw.bb62.if.end108_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then90:                                        ; preds = %sw.bb62
  %info91 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %32 = ptrtoint ptr %info91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info91, align 4
  %tobool92.not = icmp eq ptr %33, null
  br i1 %tobool92.not, label %if.then90.if.end108_crit_edge, label %lor.lhs.false93

if.then90.if.end108_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

lor.lhs.false93:                                  ; preds = %if.then90
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %pixelformat96 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %pixelformat96 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %pixelformat96, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp97.not = icmp eq i32 %35, %37
  br i1 %cmp97.not, label %lor.lhs.false98, label %lor.lhs.false93.if.end108_crit_edge

lor.lhs.false93.if.end108_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

lor.lhs.false98:                                  ; preds = %lor.lhs.false93
  %38 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %retval.0.i, align 4
  %40 = ptrtoint ptr %fmt63 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %fmt63, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp101.not = icmp eq i32 %39, %41
  br i1 %cmp101.not, label %lor.rhs102, label %lor.lhs.false98.if.end108_crit_edge

lor.lhs.false98.if.end108_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

lor.rhs102:                                       ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #17
  %coded_height103 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %coded_height103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %coded_height103, align 4
  %height104 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %height104 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %height104, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp105 = icmp eq i32 %43, %45
  br label %if.end108

if.end108:                                        ; preds = %lor.rhs102, %lor.lhs.false98.if.end108_crit_edge, %lor.lhs.false93.if.end108_crit_edge, %if.then90.if.end108_crit_edge, %sw.bb62.if.end108_crit_edge
  %fmt_changed.1.off0 = phi i1 [ false, %sw.bb62.if.end108_crit_edge ], [ false, %lor.lhs.false98.if.end108_crit_edge ], [ false, %lor.lhs.false93.if.end108_crit_edge ], [ false, %if.then90.if.end108_crit_edge ], [ %cmp105, %lor.rhs102 ]
  %num_buffers.i224 = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %46 = ptrtoint ptr %num_buffers.i224 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_buffers.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i225.not = icmp eq i32 %47, 0
  %brmerge223 = select i1 %cmp.i225.not, i1 true, i1 %fmt_changed.1.off0
  br i1 %brmerge223, label %if.end113, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end113:                                        ; preds = %if.end108
  %pixelformat114 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %pixelformat114 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %pixelformat114, align 1
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %49, label %if.else123 [
    i32 1414027078, label %if.end113.if.end128_crit_edge
    i32 1213679187, label %if.then121
  ]

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.then121:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.else123:                                       ; preds = %if.end113
  %call.i226 = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %49) #15
  %tobool.not.i227 = icmp eq ptr %call.i226, null
  br i1 %tobool.not.i227, label %if.then.i229, label %if.else123.if.end128_crit_edge

if.else123.if.end128_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.then.i229:                                     ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i228 = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %if.end128

if.end128:                                        ; preds = %if.then.i229, %if.else123.if.end128_crit_edge, %if.then121, %if.end113.if.end128_crit_edge
  %pixfmt_stateless_fwht.sink239 = phi ptr [ @pixfmt_stateless_fwht, %if.then121 ], [ @pixfmt_fwht, %if.end113.if.end128_crit_edge ], [ %call.i226, %if.else123.if.end128_crit_edge ], [ %call1.i228, %if.then.i229 ]
  %info122 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %51 = ptrtoint ptr %info122 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pixfmt_stateless_fwht.sink239, ptr %info122, align 4
  br label %do.body

do.body:                                          ; preds = %if.end128, %if.end56
  %storemerge.in = phi ptr [ %fmt, %if.end56 ], [ %fmt63, %if.end128 ]
  %52 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %storemerge = load i32, ptr %storemerge.in, align 1
  %53 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge, ptr %retval.0.i, align 4
  %.sink240.in = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %.sink240.in to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %.sink240 = load i32, ptr %.sink240.in, align 1
  %coded_height60 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %55 = ptrtoint ptr %coded_height60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink240, ptr %coded_height60, align 4
  %.sink.in = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %sizeimage61 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 4
  %57 = ptrtoint ptr %sizeimage61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %sizeimage61, align 4
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp135.not = icmp eq i32 %58, 0
  br i1 %cmp135.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 1
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f, align 4
  %63 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %retval.0.i, align 4
  %coded_height140 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 1
  %65 = ptrtoint ptr %coded_height140 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %coded_height140, align 4
  %info141 = getelementptr inbounds %struct.vicodec_q_data, ptr %retval.0.i, i32 0, i32 7
  %67 = ptrtoint ptr %info141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info141, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, ptr noundef nonnull @.str.56, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %70) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -16, %if.end37.cleanup_crit_edge ], [ -16, %if.end108.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_fwht_find_pixfmt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_try_fmt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_stateless = getelementptr inbounds %struct.vicodec_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %is_stateless to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_stateless, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @pixfmt_fwht, ptr @pixfmt_stateless_fwht
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge209
    i32 9, label %entry.sw.bb50_crit_edge
    i32 10, label %entry.sw.bb50_crit_edge210
  ]

entry.sw.bb50_crit_edge210:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

entry.sw.bb50_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb50

entry.sw.bb_crit_edge209:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge209
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %6, label %if.then [
    i32 1414027078, label %sw.bb.if.end_crit_edge
    i32 1213679187, label %sw.bb.if.end_crit_edge211
  ]

sw.bb.if.end_crit_edge211:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %call.i = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %6) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge211
  %info.0 = phi ptr [ %cond, %sw.bb.if.end_crit_edge ], [ %cond, %sw.bb.if.end_crit_edge211 ], [ %call.i, %if.then.if.end_crit_edge ], [ %call1.i, %if.then.i ]
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 640)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmt, align 4
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.0, i32 0, i32 6
  %13 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width_div, align 4
  %div = udiv i32 %11, %14
  %sub = add nsw i32 %div, -1
  %or = or i32 %sub, 7
  %add = add nsw i32 %or, 1
  %mul = mul i32 %add, %14
  store i32 %mul, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 360)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 2160)
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.0, i32 0, i32 7
  %20 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height_div, align 4
  %div30 = udiv i32 %18, %21
  %sub31 = add nsw i32 %div30, -1
  %or32 = or i32 %sub31, 7
  %add33 = add nsw i32 %or32, 1
  %mul35 = mul i32 %add33, %21
  store i32 %mul35, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %field, align 4
  %bytesperline_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.0, i32 0, i32 1
  %23 = ptrtoint ptr %bytesperline_mult to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytesperline_mult, align 4
  %mul38 = mul i32 %24, %mul
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul38, ptr %bytesperline, align 4
  %mul41 = mul i32 %mul35, %mul
  %sizeimage_mult = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.0, i32 0, i32 2
  %26 = ptrtoint ptr %sizeimage_mult to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sizeimage_mult, align 4
  %mul42 = mul i32 %mul41, %27
  %sizeimage_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.0, i32 0, i32 3
  %28 = ptrtoint ptr %sizeimage_div to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sizeimage_div, align 4
  %div43 = udiv i32 %mul42, %29
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div43, ptr %sizeimage, align 4
  %31 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414027078, i32 %32)
  %cmp45 = icmp eq i32 %32, 1414027078
  br i1 %cmp45, label %if.then46, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add48 = add i32 %div43, 44
  %33 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add48, ptr %sizeimage, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %entry.sw.bb50_crit_edge, %entry.sw.bb50_crit_edge210
  %fmt51 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %pixelformat52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %pixelformat52 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %pixelformat52, align 1
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %35, label %if.then57 [
    i32 1414027078, label %sw.bb50.if.end60_crit_edge
    i32 1213679187, label %sw.bb50.if.end60_crit_edge212
  ]

sw.bb50.if.end60_crit_edge212:                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

sw.bb50.if.end60_crit_edge:                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then57:                                        ; preds = %sw.bb50
  %call.i203 = tail call ptr @v4l2_fwht_find_pixfmt(i32 noundef %35) #15
  %tobool.not.i204 = icmp eq ptr %call.i203, null
  br i1 %tobool.not.i204, label %if.then.i206, label %if.then57.if.end60_crit_edge

if.then57.if.end60_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then.i206:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i205 = tail call ptr @v4l2_fwht_get_pixfmt(i32 noundef 0) #15
  br label %if.end60

if.end60:                                         ; preds = %if.then.i206, %if.then57.if.end60_crit_edge, %sw.bb50.if.end60_crit_edge, %sw.bb50.if.end60_crit_edge212
  %info.1 = phi ptr [ %cond, %sw.bb50.if.end60_crit_edge ], [ %cond, %sw.bb50.if.end60_crit_edge212 ], [ %call.i203, %if.then57.if.end60_crit_edge ], [ %call1.i205, %if.then.i206 ]
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_planes, align 1
  %38 = ptrtoint ptr %fmt51 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %fmt51, align 1
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 640)
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4096)
  %42 = ptrtoint ptr %fmt51 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %fmt51, align 1
  %width_div76 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.1, i32 0, i32 6
  %43 = ptrtoint ptr %width_div76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width_div76, align 4
  %div77 = udiv i32 %41, %44
  %sub78 = add nsw i32 %div77, -1
  %or79 = or i32 %sub78, 7
  %add80 = add nsw i32 %or79, 1
  %mul82 = mul i32 %add80, %44
  store i32 %mul82, ptr %fmt51, align 1
  %height84 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %height84 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %height84, align 1
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 360)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 2160)
  %49 = ptrtoint ptr %height84 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %height84, align 1
  %height_div99 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.1, i32 0, i32 7
  %50 = ptrtoint ptr %height_div99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height_div99, align 4
  %div100 = udiv i32 %48, %51
  %sub101 = add nsw i32 %div100, -1
  %or102 = or i32 %sub101, 7
  %add103 = add nsw i32 %or102, 1
  %mul105 = mul i32 %add103, %51
  store i32 %mul105, ptr %height84, align 1
  %field107 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %field107 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 1, ptr %field107, align 1
  %bytesperline_mult109 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.1, i32 0, i32 1
  %53 = ptrtoint ptr %bytesperline_mult109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesperline_mult109, align 4
  %mul110 = mul i32 %54, %mul82
  %bytesperline111 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %55 = ptrtoint ptr %bytesperline111 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %mul110, ptr %bytesperline111, align 1
  %mul114 = mul i32 %mul105, %mul82
  %sizeimage_mult115 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.1, i32 0, i32 2
  %56 = ptrtoint ptr %sizeimage_mult115 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sizeimage_mult115, align 4
  %mul116 = mul i32 %mul114, %57
  %sizeimage_div117 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info.1, i32 0, i32 3
  %58 = ptrtoint ptr %sizeimage_div117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sizeimage_div117, align 4
  %div118 = udiv i32 %mul116, %59
  %60 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %div118, ptr %plane_fmt, align 1
  %61 = ptrtoint ptr %pixelformat52 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %pixelformat52, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414027078, i32 %62)
  %cmp121 = icmp eq i32 %62, 1414027078
  br i1 %cmp121, label %if.then122, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then122:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  %add124 = add i32 %div118, 44
  %63 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %add124, ptr %plane_fmt, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %if.end60.cleanup_crit_edge, %if.then46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %if.then122 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vicodec_dev_release(ptr nocapture noundef %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_author299, !3, !"__UNIQUE_ID_author299", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file300, !5, !"__UNIQUE_ID_file300", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license301, !5, !"__UNIQUE_ID_license301", i1 false, i1 false}
!7 = !{ptr @__param_multiplanar, !8, !"__param_multiplanar", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_multiplanartype302, !8, !"__UNIQUE_ID_multiplanartype302", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_multiplanar303, !11, !"__UNIQUE_ID_multiplanar303", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 34, i32 1}
!12 = !{ptr @__param_debug, !13, !"__param_debug", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 38, i32 1}
!14 = !{ptr @__UNIQUE_ID_debugtype304, !13, !"__UNIQUE_ID_debugtype304", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_debug305, !16, !"__UNIQUE_ID_debug305", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 39, i32 1}
!17 = !{ptr @__initcall__kmod_vicodec__332_2236_vicodec_init6, !18, !"__initcall__kmod_vicodec__332_2236_vicodec_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2236, i32 1}
!19 = !{ptr @__exitcall_vicodec_exit, !20, !"__exitcall_vicodec_exit", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2237, i32 1}
!21 = !{ptr @multiplanar, !22, !"multiplanar", i1 false, i1 false}
!22 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 32, i32 13}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 37, i32 21}
!25 = !{ptr @__param_str_multiplanar, !8, !"__param_str_multiplanar", i1 false, i1 false}
!26 = !{ptr @__param_str_debug, !13, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2211, i32 11}
!29 = !{ptr @vicodec_pdrv, !30, !"vicodec_pdrv", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2207, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2104, i32 30}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2113, i32 51}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2118, i32 51}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2123, i32 52}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2133, i32 3}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vicodec_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @vicodec_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2141, i32 3}
!47 = !{ptr @vicodec_probe._entry.8, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vicodec_probe._entry_ptr.10, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2149, i32 3}
!51 = !{ptr @vicodec_probe._entry.11, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vicodec_probe._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2155, i32 3}
!55 = !{ptr @vicodec_probe._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vicodec_probe._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @vicodec_m2m_media_ops, !58, !"vicodec_m2m_media_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2020, i32 38}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1968, i32 3}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vicodec_request_validate._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vicodec_request_validate._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1974, i32 3}
!66 = !{ptr @vicodec_request_validate._entry.19, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vicodec_request_validate._entry_ptr.21, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1978, i32 3}
!70 = !{ptr @vicodec_request_validate._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vicodec_request_validate._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1987, i32 3}
!74 = !{ptr @vicodec_request_validate._entry.25, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @vicodec_request_validate._entry_ptr.27, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1994, i32 3}
!78 = !{ptr @vicodec_request_validate._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @vicodec_request_validate._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @vicodec_ctrl_stateless_state, !81, !"vicodec_ctrl_stateless_state", i1 false, i1 false}
!81 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1811, i32 38}
!82 = !{ptr @vicodec_ctrl_ops, !83, !"vicodec_ctrl_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1806, i32 35}
!84 = !{ptr @register_instance.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2037, i32 2}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @register_instance.__key.32, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2038, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2041, i32 3}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @register_instance._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @register_instance._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2063, i32 3}
!97 = !{ptr @register_instance._entry.36, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @register_instance._entry_ptr.38, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2067, i32 2}
!101 = !{ptr @register_instance._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @register_instance._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @m2m_ops, !104, !"m2m_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2025, i32 34}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 304, i32 3}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @device_process._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @device_process._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!112 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vicodec_eos_event, !114, !"vicodec_eos_event", i1 false, i1 false}
!114 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 139, i32 32}
!115 = !{ptr @job_ready.magic, !116, !"magic", i1 false, i1 false}
!116 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 567, i32 18}
!117 = !{ptr @job_ready.rs_event, !118, !"rs_event", i1 false, i1 false}
!118 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 668, i32 34}
!119 = !{ptr @get_next_header.magic, !120, !"magic", i1 false, i1 false}
!120 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 348, i32 18}
!121 = !{ptr @vicodec_videodev, !122, !"vicodec_videodev", i1 false, i1 false}
!122 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2011, i32 34}
!123 = !{ptr @vicodec_fops, !124, !"vicodec_fops", i1 false, i1 false}
!124 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2002, i32 42}
!125 = !{ptr @vicodec_open._key, !126, !"_key", i1 false, i1 false}
!126 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1848, i32 2}
!127 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pixfmt_stateless_fwht, !129, !"pixfmt_stateless_fwht", i1 false, i1 false}
!129 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 67, i32 43}
!130 = !{ptr @pixfmt_fwht, !131, !"pixfmt_fwht", i1 false, i1 false}
!131 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 63, i32 43}
!132 = !{ptr @vicodec_qops, !133, !"vicodec_qops", i1 false, i1 false}
!133 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1682, i32 29}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1399, i32 2}
!136 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vicodec_buf_prepare._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @vicodec_buf_prepare._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1406, i32 4}
!141 = !{ptr @vicodec_buf_prepare._entry.48, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vicodec_buf_prepare._entry_ptr.50, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1413, i32 3}
!145 = !{ptr @vicodec_buf_prepare._entry.51, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @vicodec_buf_prepare._entry_ptr.53, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @vicodec_buf_queue.rs_event, !148, !"rs_event", i1 false, i1 false}
!148 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1435, i32 33}
!149 = !{ptr @vicodec_ioctl_ops, !150, !"vicodec_ioctl_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1318, i32 36}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 705, i32 4}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 1039, i32 2}
!155 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vidioc_s_fmt._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @vidioc_s_fmt._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 2190, i32 2}
!160 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @vicodec_remove._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @vicodec_remove._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @vicodec_pdev, !164, !"vicodec_pdev", i1 false, i1 false}
!164 = !{!"../drivers/media/test-drivers/vicodec/vicodec-core.c", i32 75, i32 31}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i8 0, i8 2}
!175 = !{!"branch_weights", i32 2000, i32 1}
