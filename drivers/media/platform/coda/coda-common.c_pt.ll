; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-common.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.coda_devtype = type { [3 x ptr], i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.coda_codec = type { i32, i32, i32, i32, i32 }
%struct.coda_video_device = type { ptr, i32, ptr, i8, [5 x i32], [5 x i32] }
%struct.coda_context_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.coda_dev = type { %struct.v4l2_device, [6 x %struct.video_device], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, ptr, %struct.coda_aux_buf, %struct.mutex, %struct.mutex, ptr, ptr, %struct.ida, ptr, %struct.ratelimit_state }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.coda_aux_buf = type { ptr, i32, i32, %struct.debugfs_blob_wrapper, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_event = type { i32, %union.anon.121, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.121 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.122, i32, i32, i32, i32, i32 }
%union.anon.122 = type { i64 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.coda_ctx = type { ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.coda_q_data], i32, ptr, i32, i32, i32, i32, %struct.coda_params, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fh, i32, i32, i32, [3 x [64 x i8]], [3 x i32], %struct.kfifo, %struct.mutex, %struct.coda_aux_buf, i8, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, [19 x %struct.coda_internal_frame], %struct.list_head, %struct.spinlock, i32, i32, %struct.coda_aux_buf, i32, i32, i32, %struct.coda_iram_info, i32, i32, i32, i32, i32, i32, ptr, i8, i8, ptr, %struct.mutex }
%struct.coda_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, [3 x ptr], [3 x i32], [3 x i32], [3 x i32], ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.kfifo = type { %union.anon.120, [0 x i8] }
%union.anon.120 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.coda_internal_frame = type { %struct.coda_aux_buf, %struct.coda_buffer_meta, i32, i32 }
%struct.coda_buffer_meta = type { %struct.list_head, i32, %struct.v4l2_timecode, i64, i32, i32, i8 }
%struct.coda_iram_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.99, i32, i32, %union.anon.101 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.99 = type { i32 }
%union.anon.101 = type { i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_coda_debug = internal constant [20 x i8] c"coda_vpu.coda_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@coda_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_coda_debug = internal constant %struct.kernel_param { ptr @__param_str_coda_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @coda_debug } }, section "__param", align 4
@__UNIQUE_ID_coda_debugtype299 = internal constant [33 x i8] c"coda_vpu.parmtype=coda_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_coda_debug300 = internal constant [43 x i8] c"coda_vpu.parm=coda_debug:Debug level (0-2)\00", section ".modinfo", align 1
@__param_str_disable_tiling = internal constant [24 x i8] c"coda_vpu.disable_tiling\00", align 1
@disable_tiling = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_tiling = internal constant %struct.kernel_param { ptr @__param_str_disable_tiling, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @disable_tiling } }, section "__param", align 4
@__UNIQUE_ID_disable_tilingtype301 = internal constant [37 x i8] c"coda_vpu.parmtype=disable_tiling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_tiling302 = internal constant [57 x i8] c"coda_vpu.parm=disable_tiling:Disable tiled frame buffers\00", section ".modinfo", align 1
@__param_str_disable_vdoa = internal constant [22 x i8] c"coda_vpu.disable_vdoa\00", align 1
@disable_vdoa = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_vdoa = internal constant %struct.kernel_param { ptr @__param_str_disable_vdoa, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @disable_vdoa } }, section "__param", align 4
@__UNIQUE_ID_disable_vdoatype303 = internal constant [35 x i8] c"coda_vpu.parmtype=disable_vdoa:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_vdoa304 = internal constant [92 x i8] c"coda_vpu.parm=disable_vdoa:Disable Video Data Order Adapter tiled to raster-scan conversion\00", section ".modinfo", align 1
@__param_str_enable_bwb = internal constant [20 x i8] c"coda_vpu.enable_bwb\00", align 1
@enable_bwb = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_enable_bwb = internal constant %struct.kernel_param { ptr @__param_str_enable_bwb, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @enable_bwb } }, section "__param", align 4
@__UNIQUE_ID_enable_bwbtype305 = internal constant [33 x i8] c"coda_vpu.parmtype=enable_bwb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_bwb306 = internal constant [84 x i8] c"coda_vpu.parm=enable_bwb:Enable BWB unit for decoding, may crash on certain streams\00", section ".modinfo", align 1
@coda_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: data=0x%x, reg=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"coda_write\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/coda/coda-common.c\00", [54 x i8] zeroinitializer }, align 32
@coda_write._entry_ptr = internal global ptr @coda_write._entry, section ".printk_index", align 4
@coda_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"coda_read\00", [22 x i8] zeroinitializer }, align 32
@coda_read._entry_ptr = internal global ptr @coda_read._entry, section ".printk_index", align 4
@coda_product_name.buf = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CodaDx6\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CodaHx4\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CODA7541\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CODA960\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(0x%04x)\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"H264\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MPEG-2\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MPEG-4\00", [25 x i8] zeroinitializer }, align 32
@coda_update_profile_level_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Invalid %s profile: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"coda_update_profile_level_ctrls\00", [32 x i8] zeroinitializer }, align 32
@coda_update_profile_level_ctrls._entry_ptr = internal global ptr @coda_update_profile_level_ctrls._entry, section ".printk_index", align 4
@coda_update_profile_level_ctrls._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %u: Parsed %s profile: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@coda_update_profile_level_ctrls._entry_ptr.16 = internal global ptr @coda_update_profile_level_ctrls._entry.14, section ".printk_index", align 4
@coda_update_profile_level_ctrls._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Invalid %s level: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@coda_update_profile_level_ctrls._entry_ptr.19 = internal global ptr @coda_update_profile_level_ctrls._entry.17, section ".printk_index", align 4
@coda_update_profile_level_ctrls._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %u: Parsed %s level: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@coda_update_profile_level_ctrls._entry_ptr.22 = internal global ptr @coda_update_profile_level_ctrls._entry.20, section ".printk_index", align 4
@coda_alloc_aux_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Failed to allocate %s buffer of size %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_alloc_aux_buf\00", [45 x i8] zeroinitializer }, align 32
@coda_alloc_aux_buf._entry_ptr = internal global ptr @coda_alloc_aux_buf._entry, section ".printk_index", align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@__initcall__kmod_coda_vpu__330_3336_coda_driver_init6 = internal global ptr @coda_driver_init, section ".initcall6.init", align 4
@coda_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @coda_probe, ptr @coda_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.45, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @coda_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_coda_driver_exit = internal global ptr @coda_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file331 = internal constant [51 x i8] c"coda_vpu.file=drivers/media/platform/coda/coda-vpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [21 x i8] c"coda_vpu.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author333 = internal constant [64 x i8] c"coda_vpu.author=Javier Martin <javier.martin@vista-silicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description334 = internal constant [59 x i8] c"coda_vpu.description=Coda multi-standard codec V4L2 driver\00", section ".modinfo", align 1
@coda_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @coda_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @coda_buf_prepare, ptr null, ptr null, ptr @coda_start_streaming, ptr @coda_stop_streaming, ptr @coda_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@coda_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %u: get %d buffer(s) of size %d each.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_queue_setup\00", [47 x i8] zeroinitializer }, align 32
@coda_queue_setup._entry_ptr = internal global ptr @coda_queue_setup._entry, section ".printk_index", align 4
@coda_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: %s field isn't supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_buf_prepare\00", [47 x i8] zeroinitializer }, align 32
@coda_buf_prepare._entry_ptr = internal global ptr @coda_buf_prepare._entry, section ".printk_index", align 4
@coda_buf_prepare._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: %s data will not fit into plane (%lu < %lu)\0A\00", [45 x i8] zeroinitializer }, align 32
@coda_buf_prepare._entry_ptr.31 = internal global ptr @coda_buf_prepare._entry.29, section ".printk_index", align 4
@coda_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %u: start streaming %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"coda_start_streaming\00", [43 x i8] zeroinitializer }, align 32
@coda_start_streaming._entry_ptr = internal global ptr @coda_start_streaming._entry, section ".printk_index", align 4
@v4l2_type_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@coda_start_streaming._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: start payload < 512\0A\00", [37 x i8] zeroinitializer }, align 32
@coda_start_streaming._entry_ptr.36 = internal global ptr @coda_start_streaming._entry.34, section ".printk_index", align 4
@coda_start_streaming._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 2017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to decode JPEG header: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@coda_start_streaming._entry_ptr.39 = internal global ptr @coda_start_streaming._entry.37, section ".printk_index", align 4
@coda_start_streaming._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: can't convert %dx%d to %dx%d\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_start_streaming._entry_ptr.42 = internal global ptr @coda_start_streaming._entry.40, section ".printk_index", align 4
@coda_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 2118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %u: stop streaming %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_stop_streaming\00", [44 x i8] zeroinitializer }, align 32
@coda_stop_streaming._entry_ptr = internal global ptr @coda_stop_streaming._entry, section ".printk_index", align 4
@coda_queue_source_change_event.source_change_event = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"coda\00", [27 x i8] zeroinitializer }, align 32
@coda_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @coda_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @coda_devdata, i64 44) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @coda_devdata, i64 88) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @coda_devdata, i64 132) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6dl-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @coda_devdata, i64 176) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@coda_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@coda_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 3141, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get per clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"coda_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr = internal global ptr @coda_probe._entry, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@coda_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 3147, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get ahb clock\0A\00", [39 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.54 = internal global ptr @coda_probe._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bit\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"coda-video\00", [21 x i8] zeroinitializer }, align 32
@coda_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.2, i32 3166, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.59 = internal global ptr @coda_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jpeg\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"coda-jpeg\00", [22 x i8] zeroinitializer }, align 32
@coda_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.2, i32 3181, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request jpeg irq\0A\00", [36 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.64 = internal global ptr @coda_probe._entry.62, section ".printk_index", align 4
@coda_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.48, ptr @.str.2, i32 3190, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed get reset control: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.67 = internal global ptr @coda_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@coda_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.48, ptr @.str.2, i32 3197, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iram pool not available\0A\00", [39 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.71 = internal global ptr @coda_probe._entry.69, section ".printk_index", align 4
@coda_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@coda_probe.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->coda_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"workbuf\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tempbuf\00", [24 x i8] zeroinitializer }, align 32
@coda_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.48, ptr @.str.2, i32 3239, ptr @.str.79, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to alloc iram\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.80 = internal global ptr @coda_probe._entry.77, section ".printk_index", align 4
@coda_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.48, ptr @.str.2, i32 3251, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to alloc workqueue\0A\00", [37 x i8] zeroinitializer }, align 32
@coda_probe._entry_ptr.83 = internal global ptr @coda_probe._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6q-vdoa\00", [17 x i8] zeroinitializer }, align 32
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@coda_firmware_request.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 2, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coda_vpu\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"coda_firmware_request\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requesting firmware '%s' for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: firmware request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_fw_callback\00", [47 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry_ptr = internal global ptr @coda_fw_callback._entry, section ".printk_index", align 4
@coda_fw_callback._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2981, ptr @.str.94, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using fallback firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry_ptr.95 = internal global ptr @coda_fw_callback._entry.92, section ".printk_index", align 4
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"codebuf\00", [24 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.91, ptr @.str.2, i32 2995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: HW initialization failed\0A\00", [32 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry_ptr.99 = internal global ptr @coda_fw_callback._entry.97, section ".printk_index", align 4
@coda_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @coda_device_run, ptr @coda_job_ready, ptr @coda_job_abort }, [20 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.91, ptr @.str.2, i32 3005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry_ptr.102 = internal global ptr @coda_fw_callback._entry.100, section ".printk_index", align 4
@coda_fw_callback._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.91, ptr @.str.2, i32 3014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Failed to register %s video device: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@coda_fw_callback._entry_ptr.105 = internal global ptr @coda_fw_callback._entry.103, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@coda_job_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %u: not ready: not enough vid-out buffers.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coda_job_ready\00", [17 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr = internal global ptr @coda_job_ready._entry, section ".printk_index", align 4
@coda_job_ready._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %u: not ready: not enough vid-cap buffers.\0A\00", [46 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.110 = internal global ptr @coda_job_ready._entry.108, section ".printk_index", align 4
@coda_job_ready._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %u: not ready: all internal buffers in use: %d/%d (0x%x)\00", [33 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.113 = internal global ptr @coda_job_ready._entry.111, section ".printk_index", align 4
@coda_job_ready._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: %u: not ready: on hold for more buffers.\0A\00", [48 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.116 = internal global ptr @coda_job_ready._entry.114, section ".printk_index", align 4
@coda_job_ready._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 1615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017%s: %u: not ready: need 2 buffers available (queue:%d + bitstream:%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.119 = internal global ptr @coda_job_ready._entry.117, section ".printk_index", align 4
@coda_job_ready._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: %u: not ready: not enough bitstream data to read past %u (%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.122 = internal global ptr @coda_job_ready._entry.120, section ".printk_index", align 4
@coda_job_ready._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.2, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %u: not ready: aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.125 = internal global ptr @coda_job_ready._entry.123, section ".printk_index", align 4
@coda_job_ready._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.2, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %u: job ready\0A\00", [43 x i8] zeroinitializer }, align 32
@coda_job_ready._entry_ptr.128 = internal global ptr @coda_job_ready._entry.126, section ".printk_index", align 4
@coda_job_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %u: job abort\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coda_job_abort\00", [17 x i8] zeroinitializer }, align 32
@coda_job_abort._entry_ptr = internal global ptr @coda_job_abort._entry, section ".printk_index", align 4
@coda_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @coda_open, ptr @coda_release }, [60 x i8] zeroinitializer }, align 32
@coda_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @coda_querycap, ptr @coda_enum_fmt, ptr null, ptr @coda_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @coda_g_fmt, ptr null, ptr @coda_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_s_fmt_vid_cap, ptr null, ptr @coda_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_try_fmt_vid_cap, ptr null, ptr @coda_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @coda_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @coda_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_g_selection, ptr @coda_s_selection, ptr null, ptr null, ptr null, ptr @coda_encoder_cmd, ptr @coda_try_encoder_cmd, ptr @coda_decoder_cmd, ptr @coda_try_decoder_cmd, ptr @coda_g_parm, ptr @coda_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_enum_framesizes, ptr @coda_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@coda_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 2906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s registered as %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"coda_register_device\00", [43 x i8] zeroinitializer }, align 32
@coda_register_device._entry_ptr = internal global ptr @coda_register_device._entry, section ".printk_index", align 4
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"context%d\00", [22 x i8] zeroinitializer }, align 32
@coda_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ctx->pic_run_work)\00", [58 x i8] zeroinitializer }, align 32
@coda_open.__key.135 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ctx->seq_init_work)\00", [57 x i8] zeroinitializer }, align 32
@coda_open.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ctx->seq_end_work)\00", [58 x i8] zeroinitializer }, align 32
@coda_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %u: open instance (%p)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"coda_open\00", [22 x i8] zeroinitializer }, align 32
@coda_open._entry_ptr = internal global ptr @coda_open._entry, section ".printk_index", align 4
@coda_open._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: Failed to create vdoa context: not using vdoa\00", [44 x i8] zeroinitializer }, align 32
@coda_open._entry_ptr.143 = internal global ptr @coda_open._entry.141, section ".printk_index", align 4
@coda_open._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to power up: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@coda_open._entry_ptr.146 = internal global ptr @coda_open._entry.144, section ".printk_index", align 4
@coda_open._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.2, i32 2692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: %s return error (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@coda_open._entry_ptr.149 = internal global ptr @coda_open._entry.147, section ".printk_index", align 4
@coda_open._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.140, ptr @.str.2, i32 2698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to setup coda controls\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_open._entry_ptr.152 = internal global ptr @coda_open._entry.150, section ".printk_index", align 4
@coda_open.__key.153 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ctx->bitstream_mutex\00", [42 x i8] zeroinitializer }, align 32
@coda_open.__key.155 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx->buffer_mutex\00", [45 x i8] zeroinitializer }, align 32
@coda_open.__key.157 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx->wakeup_mutex\00", [45 x i8] zeroinitializer }, align 32
@coda_open.__key.159 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ctx->buffer_meta_lock\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@coda_pic_run_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1547, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CODA PIC_RUN timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coda_pic_run_work\00", [46 x i8] zeroinitializer }, align 32
@coda_pic_run_work._entry_ptr = internal global ptr @coda_pic_run_work._entry, section ".printk_index", align 4
@coda_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.164 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"coda_common:2487:(&ctx->ctrls)->_lock\00", [58 x i8] zeroinitializer }, align 32
@coda_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @coda_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@coda_mb_err_cnt_ctrl_config = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9968096, ptr @.str.175, i32 1, i64 0, i64 2147483647, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@coda_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 2518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: control initialization error (%d)\00", [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_ctrls_setup\00", [47 x i8] zeroinitializer }, align 32
@coda_ctrls_setup._entry_ptr = internal global ptr @coda_ctrls_setup._entry, section ".printk_index", align 4
@coda_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 2184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: %u: s_ctrl: id = 0x%x, name = \22%s\22, val = %d (\22%s\22)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coda_s_ctrl\00", [20 x i8] zeroinitializer }, align 32
@coda_s_ctrl._entry_ptr = internal global ptr @coda_s_ctrl._entry, section ".printk_index", align 4
@coda_s_ctrl._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 2187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %u: s_ctrl: id = 0x%x, name = \22%s\22, val = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@coda_s_ctrl._entry_ptr.171 = internal global ptr @coda_s_ctrl._entry.169, section ".printk_index", align 4
@coda_s_ctrl._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.2, i32 2298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %u: Invalid control, id=%d, val=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@coda_s_ctrl._entry_ptr.174 = internal global ptr @coda_s_ctrl._entry.172, section ".printk_index", align 4
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Macroblocks Error Count\00", [40 x i8] zeroinitializer }, align 32
@coda_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 2735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %u: release instance (%p)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"coda_release\00", [19 x i8] zeroinitializer }, align 32
@coda_release._entry_ptr = internal global ptr @coda_release._entry, section ".printk_index", align 4
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"platform:coda\00", [18 x i8] zeroinitializer }, align 32
@coda_formats_420 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@coda_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to determine codec\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_s_fmt_vid_cap\00", [45 x i8] zeroinitializer }, align 32
@coda_s_fmt_vid_cap._entry_ptr = internal global ptr @coda_s_fmt_vid_cap._entry, section ".printk_index", align 4
@coda_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: %s: %s queue busy: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"coda_s_fmt\00", [21 x i8] zeroinitializer }, align 32
@coda_s_fmt._entry_ptr = internal global ptr @coda_s_fmt._entry, section ".printk_index", align 4
@coda_s_fmt._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %u: Setting %s format, wxh: %dx%d, fmt: %4.4s %c\0A\00", [40 x i8] zeroinitializer }, align 32
@coda_s_fmt._entry_ptr.185 = internal global ptr @coda_s_fmt._entry.183, section ".printk_index", align 4
@coda_s_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.186, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_s_fmt_vid_out\00", [45 x i8] zeroinitializer }, align 32
@coda_s_fmt_vid_out._entry_ptr = internal global ptr @coda_s_fmt_vid_out._entry, section ".printk_index", align 4
@coda_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %u: Setting crop rectangle: %dx%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_s_selection\00", [47 x i8] zeroinitializer }, align 32
@coda_s_selection._entry_ptr = internal global ptr @coda_s_selection._entry, section ".printk_index", align 4
@coda_wake_up_capture_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %u: waking up capture queue\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"coda_wake_up_capture_queue\00", [37 x i8] zeroinitializer }, align 32
@coda_wake_up_capture_queue._entry_ptr = internal global ptr @coda_wake_up_capture_queue._entry, section ".printk_index", align 4
@coda_decoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %u: marking last pending buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_decoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@coda_decoder_cmd._entry_ptr = internal global ptr @coda_decoder_cmd._entry, section ".printk_index", align 4
@coda_decoder_cmd._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %u: all remaining buffers queued\0A\00", [56 x i8] zeroinitializer }, align 32
@coda_decoder_cmd._entry_ptr.195 = internal global ptr @coda_decoder_cmd._entry.193, section ".printk_index", align 4
@coda_decoder_cmd._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@coda_decoder_cmd._entry_ptr.197 = internal global ptr @coda_decoder_cmd._entry.196, section ".printk_index", align 4
@coda_mark_last_meta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %u: marking last meta\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_mark_last_meta\00", [44 x i8] zeroinitializer }, align 32
@coda_mark_last_meta._entry_ptr = internal global ptr @coda_mark_last_meta._entry, section ".printk_index", align 4
@coda_mark_last_dst_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %u: marking last capture buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"coda_mark_last_dst_buf\00", [41 x i8] zeroinitializer }, align 32
@coda_mark_last_dst_buf._entry_ptr = internal global ptr @coda_mark_last_dst_buf._entry, section ".printk_index", align 4
@coda_devdata = internal constant { [5 x %struct.coda_devtype], [36 x i8] } { [5 x %struct.coda_devtype] [%struct.coda_devtype { [3 x ptr] [ptr @.str.202, ptr @.str.203, ptr @.str.204], i32 61441, ptr @codadx6_codecs, i32 2, ptr @codadx6_video_devices, i32 1, i32 557056, i32 0, i32 45056 }, %struct.coda_devtype { [3 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207], i32 61450, ptr @codahx4_codecs, i32 4, ptr @codahx4_video_devices, i32 2, i32 131072, i32 311296, i32 81920 }, %struct.coda_devtype { [3 x ptr] [ptr @.str.208, ptr @.str.209, ptr @.str.210], i32 61458, ptr @coda7_codecs, i32 7, ptr @coda7_video_devices, i32 4, i32 131072, i32 311296, i32 81920 }, %struct.coda_devtype { [3 x ptr] [ptr @.str.211, ptr @.str.212, ptr @.str.213], i32 61472, ptr @coda9_codecs, i32 7, ptr @coda9_video_devices, i32 4, i32 81920, i32 208896, i32 135168 }, %struct.coda_devtype { [3 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216], i32 61472, ptr @coda9_codecs, i32 7, ptr @coda9_video_devices, i32 4, i32 81920, i32 208896, i32 126976 }], [36 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpu_fw_imx27_TO2.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vpu/vpu_fw_imx27_TO2.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"v4l-codadx6-imx27.bin\00", [42 x i8] zeroinitializer }, align 32
@codadx6_codecs = internal constant { [2 x %struct.coda_codec], [56 x i8] } { [2 x %struct.coda_codec] [%struct.coda_codec { i32 3, i32 842093913, i32 875967048, i32 720, i32 576 }, %struct.coda_codec { i32 1, i32 842093913, i32 877088845, i32 720, i32 576 }], [56 x i8] zeroinitializer }, align 32
@codadx6_video_devices = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @coda_bit_encoder], [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_fw_imx51.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpu/vpu_fw_imx51.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"v4l-codahx4-imx51.bin\00", [42 x i8] zeroinitializer }, align 32
@codahx4_codecs = internal constant { [4 x %struct.coda_codec], [48 x i8] } { [4 x %struct.coda_codec] [%struct.coda_codec { i32 8, i32 842093913, i32 875967048, i32 720, i32 576 }, %struct.coda_codec { i32 0, i32 875967048, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 2, i32 843534413, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 3, i32 877088845, i32 842093913, i32 1280, i32 720 }], [48 x i8] zeroinitializer }, align 32
@codahx4_video_devices = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @coda_bit_encoder, ptr @coda_bit_decoder], [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_fw_imx53.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpu/vpu_fw_imx53.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"v4l-coda7541-imx53.bin\00", [41 x i8] zeroinitializer }, align 32
@coda7_codecs = internal constant { [7 x %struct.coda_codec], [52 x i8] } { [7 x %struct.coda_codec] [%struct.coda_codec { i32 8, i32 842093913, i32 875967048, i32 1280, i32 720 }, %struct.coda_codec { i32 11, i32 842093913, i32 877088845, i32 1280, i32 720 }, %struct.coda_codec { i32 13, i32 842093913, i32 1195724874, i32 8192, i32 8192 }, %struct.coda_codec { i32 0, i32 875967048, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 2, i32 843534413, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 3, i32 877088845, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 5, i32 1195724874, i32 842093913, i32 8192, i32 8192 }], [52 x i8] zeroinitializer }, align 32
@coda7_video_devices = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @coda_bit_jpeg_encoder, ptr @coda_bit_jpeg_decoder, ptr @coda_bit_encoder, ptr @coda_bit_decoder], [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_fw_imx6q.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpu/vpu_fw_imx6q.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"v4l-coda960-imx6q.bin\00", [42 x i8] zeroinitializer }, align 32
@coda9_codecs = internal constant { [7 x %struct.coda_codec], [52 x i8] } { [7 x %struct.coda_codec] [%struct.coda_codec { i32 8, i32 842093913, i32 875967048, i32 1920, i32 1088 }, %struct.coda_codec { i32 11, i32 842093913, i32 877088845, i32 1920, i32 1088 }, %struct.coda_codec { i32 13, i32 842093913, i32 1195724874, i32 8192, i32 8192 }, %struct.coda_codec { i32 0, i32 875967048, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 2, i32 843534413, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 3, i32 877088845, i32 842093913, i32 1920, i32 1088 }, %struct.coda_codec { i32 6, i32 1195724874, i32 842093913, i32 8192, i32 8192 }], [52 x i8] zeroinitializer }, align 32
@coda9_video_devices = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @coda9_jpeg_encoder, ptr @coda9_jpeg_decoder, ptr @coda_bit_encoder, ptr @coda_bit_decoder], [16 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_fw_imx6d.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vpu/vpu_fw_imx6d.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"v4l-coda960-imx6dl.bin\00", [41 x i8] zeroinitializer }, align 32
@coda_bit_encoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.217, i32 0, ptr @coda_bit_encode_ops, i8 0, [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 0, i32 0], [5 x i32] [i32 875967048, i32 877088845, i32 0, i32 0, i32 0] }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda-video-encoder\00", [45 x i8] zeroinitializer }, align 32
@coda_bit_encode_ops = external dso_local constant %struct.coda_context_ops, align 4
@coda_bit_decoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.218, i32 1, ptr @coda_bit_decode_ops, i8 0, [5 x i32] [i32 875967048, i32 843534413, i32 877088845, i32 0, i32 0], [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 1448695129, i32 0] }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda-video-decoder\00", [45 x i8] zeroinitializer }, align 32
@coda_bit_decode_ops = external dso_local constant %struct.coda_context_ops, align 4
@coda_bit_jpeg_encoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.219, i32 0, ptr @coda_bit_encode_ops, i8 0, [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 1345466932, i32 0], [5 x i32] [i32 1195724874, i32 0, i32 0, i32 0, i32 0] }, [40 x i8] zeroinitializer }, align 32
@coda_bit_jpeg_decoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.220, i32 1, ptr @coda_bit_decode_ops, i8 0, [5 x i32] [i32 1195724874, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 1345466932, i32 0] }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coda-jpeg-encoder\00", [46 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coda-jpeg-decoder\00", [46 x i8] zeroinitializer }, align 32
@coda9_jpeg_encoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.219, i32 0, ptr @coda9_jpeg_encode_ops, i8 1, [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 1345466932, i32 1497715271], [5 x i32] [i32 1195724874, i32 0, i32 0, i32 0, i32 0] }, [40 x i8] zeroinitializer }, align 32
@coda9_jpeg_decoder = internal constant { %struct.coda_video_device, [40 x i8] } { %struct.coda_video_device { ptr @.str.220, i32 1, ptr @coda9_jpeg_decode_ops, i8 1, [5 x i32] [i32 1195724874, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 842094158, i32 842093913, i32 842094169, i32 1345466932, i32 0] }, [40 x i8] zeroinitializer }, align 32
@coda9_jpeg_encode_ops = external dso_local constant %struct.coda_context_ops, align 4
@coda9_jpeg_decode_ops = external dso_local constant %struct.coda_context_ops, align 4
@coda_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.221, ptr @.str.2, i32 3315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@coda_runtime_resume._entry_ptr = internal global ptr @coda_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 842094169, i64 1345466932]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 843534413, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.225 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.231 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.232 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 61450, i64 61458]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 32, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.236 = internal global [35 x i64] [i64 33, i64 32, i64 9963796, i64 9963797, i64 10029515, i64 10029519, i64 10029526, i64 10029527, i64 10029528, i64 10029530, i64 10029531, i64 10029532, i64 10029533, i64 10029534, i64 10029537, i64 10029541, i64 10029582, i64 10029583, i64 10029662, i64 10029663, i64 10029665, i64 10029666, i64 10029671, i64 10029672, i64 10029673, i64 10029674, i64 10029675, i64 10029695, i64 10029696, i64 10029712, i64 10029713, i64 10029717, i64 10029718, i64 10291458, i64 10291459]
@__sancov_gen_cov_switch_values.237 = internal global [6 x i64] [i64 4, i64 32, i64 61441, i64 61450, i64 61458, i64 61472]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.241 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.242 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.243 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.245 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.246 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.247 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.248 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258, i64 259]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 256]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.253 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 256]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.255 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.256 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.257 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.260 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 1345466932, i64 1448695129]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.263 = internal global [12 x i64] [i64 10, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 843534413, i64 875967048, i64 877088845, i64 1195724874, i64 1345466932, i64 1448695129, i64 1497715271]
@___asan_gen_.264 = private unnamed_addr constant [11 x i8] c"coda_debug\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 59, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"disable_tiling\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 63, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"disable_vdoa\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 67, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant [11 x i8] c"enable_bwb\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 71, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 77, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 87, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 377, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 381, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 383, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 385, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 387, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 389, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1801, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1810, i32 16 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1819, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1835, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1838, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1844, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1847, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1935, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"coda_driver\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3326, i32 31 }
@___asan_gen_.360 = private unnamed_addr constant [10 x i8] c"coda_qops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2166, i32 29 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1726, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1743, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1750, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1978, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1992, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2015, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2057, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2118, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c"source_change_event\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1855, i32 33 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3330, i32 11 }
@___asan_gen_.429 = private unnamed_addr constant [12 x i8] c"coda_dt_ids\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3115, i32 34 }
@___asan_gen_.432 = private unnamed_addr constant [12 x i8] c"coda_pm_ops\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3322, i32 32 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3139, i32 42 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3141, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3145, i32 42 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3147, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3157, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3164, i32 11 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3166, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3172, i32 39 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3178, i32 21 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3181, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3190, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3195, i32 29 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3197, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3212, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3213, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3221, i32 35 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3229, i32 35 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3239, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3251, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 400, i32 50 }
@___asan_gen_.541 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 14, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 378, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2953, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2969, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2980, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2985, i32 57 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2995, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant [13 x i8] c"coda_m2m_ops\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1649, i32 34 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3005, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3012, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1581, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1586, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1599, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1607, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1613, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1623, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1631, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1635, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1646, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [10 x i8] c"coda_fops\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2770, i32 42 }
@___asan_gen_.663 = private unnamed_addr constant [15 x i8] c"coda_ioctl_ops\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1472, i32 36 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2905, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2617, i32 31 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2631, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2633, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2635, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2642, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2665, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2673, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2691, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2698, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2704, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2705, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2706, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2708, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 87, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1547, i32 4 }
@___asan_gen_.768 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2487, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [14 x i8] c"coda_ctrl_ops\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2305, i32 35 }
@___asan_gen_.777 = private unnamed_addr constant [28 x i8] c"coda_mb_err_cnt_ctrl_config\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2476, i32 38 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2516, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2183, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2186, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2297, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2478, i32 10 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 2735, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 429, i32 25 }
@___asan_gen_.825 = private unnamed_addr constant [17 x i8] c"coda_formats_420\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 433, i32 18 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 875, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 788, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 837, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 917, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1078, i32 4 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1108, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1243, i32 4 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1249, i32 5 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1264, i32 4 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1166, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 1189, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant [13 x i8] c"coda_devdata\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3038, i32 34 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3041, i32 4 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3042, i32 4 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3043, i32 4 }
@___asan_gen_.924 = private unnamed_addr constant [15 x i8] c"codadx6_codecs\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 133, i32 32 }
@___asan_gen_.927 = private unnamed_addr constant [22 x i8] c"codadx6_video_devices\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 273, i32 40 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3055, i32 4 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3056, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3057, i32 4 }
@___asan_gen_.939 = private unnamed_addr constant [15 x i8] c"codahx4_codecs\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 138, i32 32 }
@___asan_gen_.942 = private unnamed_addr constant [22 x i8] c"codahx4_video_devices\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 277, i32 40 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3070, i32 4 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3071, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3072, i32 4 }
@___asan_gen_.954 = private unnamed_addr constant [13 x i8] c"coda7_codecs\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 145, i32 32 }
@___asan_gen_.957 = private unnamed_addr constant [20 x i8] c"coda7_video_devices\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 282, i32 40 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3085, i32 4 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3086, i32 4 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3087, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant [13 x i8] c"coda9_codecs\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 155, i32 32 }
@___asan_gen_.972 = private unnamed_addr constant [20 x i8] c"coda9_video_devices\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 289, i32 40 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3100, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3101, i32 4 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3102, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant [17 x i8] c"coda_bit_encoder\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 174, i32 39 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 175, i32 10 }
@___asan_gen_.990 = private unnamed_addr constant [17 x i8] c"coda_bit_decoder\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 204, i32 39 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 205, i32 10 }
@___asan_gen_.996 = private unnamed_addr constant [22 x i8] c"coda_bit_jpeg_encoder\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 189, i32 39 }
@___asan_gen_.999 = private unnamed_addr constant [22 x i8] c"coda_bit_jpeg_decoder\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 225, i32 39 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 190, i32 10 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 226, i32 10 }
@___asan_gen_.1008 = private unnamed_addr constant [19 x i8] c"coda9_jpeg_encoder\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 240, i32 39 }
@___asan_gen_.1011 = private unnamed_addr constant [19 x i8] c"coda9_jpeg_decoder\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 257, i32 39 }
@___asan_gen_.1014 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1018 = private constant [45 x i8] c"../drivers/media/platform/coda/coda-common.c\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1018, i32 3315, i32 4 }
@llvm.compiler.used = appending global [332 x ptr] [ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_coda_debug300, ptr @__UNIQUE_ID_coda_debugtype299, ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_disable_tiling302, ptr @__UNIQUE_ID_disable_tilingtype301, ptr @__UNIQUE_ID_disable_vdoa304, ptr @__UNIQUE_ID_disable_vdoatype303, ptr @__UNIQUE_ID_enable_bwb306, ptr @__UNIQUE_ID_enable_bwbtype305, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_coda_driver_exit, ptr @__initcall__kmod_coda_vpu__330_3336_coda_driver_init6, ptr @__param_coda_debug, ptr @__param_disable_tiling, ptr @__param_disable_vdoa, ptr @__param_enable_bwb, ptr @coda_alloc_aux_buf._entry, ptr @coda_alloc_aux_buf._entry_ptr, ptr @coda_buf_prepare._entry, ptr @coda_buf_prepare._entry.29, ptr @coda_buf_prepare._entry_ptr, ptr @coda_buf_prepare._entry_ptr.31, ptr @coda_ctrls_setup._entry, ptr @coda_ctrls_setup._entry_ptr, ptr @coda_decoder_cmd._entry, ptr @coda_decoder_cmd._entry.193, ptr @coda_decoder_cmd._entry.196, ptr @coda_decoder_cmd._entry_ptr, ptr @coda_decoder_cmd._entry_ptr.195, ptr @coda_decoder_cmd._entry_ptr.197, ptr @coda_driver_exit, ptr @coda_fw_callback._entry, ptr @coda_fw_callback._entry.100, ptr @coda_fw_callback._entry.103, ptr @coda_fw_callback._entry.92, ptr @coda_fw_callback._entry.97, ptr @coda_fw_callback._entry_ptr, ptr @coda_fw_callback._entry_ptr.102, ptr @coda_fw_callback._entry_ptr.105, ptr @coda_fw_callback._entry_ptr.95, ptr @coda_fw_callback._entry_ptr.99, ptr @coda_job_abort._entry, ptr @coda_job_abort._entry_ptr, ptr @coda_job_ready._entry, ptr @coda_job_ready._entry.108, ptr @coda_job_ready._entry.111, ptr @coda_job_ready._entry.114, ptr @coda_job_ready._entry.117, ptr @coda_job_ready._entry.120, ptr @coda_job_ready._entry.123, ptr @coda_job_ready._entry.126, ptr @coda_job_ready._entry_ptr, ptr @coda_job_ready._entry_ptr.110, ptr @coda_job_ready._entry_ptr.113, ptr @coda_job_ready._entry_ptr.116, ptr @coda_job_ready._entry_ptr.119, ptr @coda_job_ready._entry_ptr.122, ptr @coda_job_ready._entry_ptr.125, ptr @coda_job_ready._entry_ptr.128, ptr @coda_mark_last_dst_buf._entry, ptr @coda_mark_last_dst_buf._entry_ptr, ptr @coda_mark_last_meta._entry, ptr @coda_mark_last_meta._entry_ptr, ptr @coda_open._entry, ptr @coda_open._entry.141, ptr @coda_open._entry.144, ptr @coda_open._entry.147, ptr @coda_open._entry.150, ptr @coda_open._entry_ptr, ptr @coda_open._entry_ptr.143, ptr @coda_open._entry_ptr.146, ptr @coda_open._entry_ptr.149, ptr @coda_open._entry_ptr.152, ptr @coda_pic_run_work._entry, ptr @coda_pic_run_work._entry_ptr, ptr @coda_probe._entry, ptr @coda_probe._entry.52, ptr @coda_probe._entry.57, ptr @coda_probe._entry.62, ptr @coda_probe._entry.65, ptr @coda_probe._entry.69, ptr @coda_probe._entry.77, ptr @coda_probe._entry.81, ptr @coda_probe._entry_ptr, ptr @coda_probe._entry_ptr.54, ptr @coda_probe._entry_ptr.59, ptr @coda_probe._entry_ptr.64, ptr @coda_probe._entry_ptr.67, ptr @coda_probe._entry_ptr.71, ptr @coda_probe._entry_ptr.80, ptr @coda_probe._entry_ptr.83, ptr @coda_queue_setup._entry, ptr @coda_queue_setup._entry_ptr, ptr @coda_read._entry, ptr @coda_read._entry_ptr, ptr @coda_register_device._entry, ptr @coda_register_device._entry_ptr, ptr @coda_release._entry, ptr @coda_release._entry_ptr, ptr @coda_runtime_resume._entry, ptr @coda_runtime_resume._entry_ptr, ptr @coda_s_ctrl._entry, ptr @coda_s_ctrl._entry.169, ptr @coda_s_ctrl._entry.172, ptr @coda_s_ctrl._entry_ptr, ptr @coda_s_ctrl._entry_ptr.171, ptr @coda_s_ctrl._entry_ptr.174, ptr @coda_s_fmt._entry, ptr @coda_s_fmt._entry.183, ptr @coda_s_fmt._entry_ptr, ptr @coda_s_fmt._entry_ptr.185, ptr @coda_s_fmt_vid_cap._entry, ptr @coda_s_fmt_vid_cap._entry_ptr, ptr @coda_s_fmt_vid_out._entry, ptr @coda_s_fmt_vid_out._entry_ptr, ptr @coda_s_selection._entry, ptr @coda_s_selection._entry_ptr, ptr @coda_start_streaming._entry, ptr @coda_start_streaming._entry.34, ptr @coda_start_streaming._entry.37, ptr @coda_start_streaming._entry.40, ptr @coda_start_streaming._entry_ptr, ptr @coda_start_streaming._entry_ptr.36, ptr @coda_start_streaming._entry_ptr.39, ptr @coda_start_streaming._entry_ptr.42, ptr @coda_stop_streaming._entry, ptr @coda_stop_streaming._entry_ptr, ptr @coda_update_profile_level_ctrls._entry, ptr @coda_update_profile_level_ctrls._entry.14, ptr @coda_update_profile_level_ctrls._entry.17, ptr @coda_update_profile_level_ctrls._entry.20, ptr @coda_update_profile_level_ctrls._entry_ptr, ptr @coda_update_profile_level_ctrls._entry_ptr.16, ptr @coda_update_profile_level_ctrls._entry_ptr.19, ptr @coda_update_profile_level_ctrls._entry_ptr.22, ptr @coda_wake_up_capture_queue._entry, ptr @coda_wake_up_capture_queue._entry_ptr, ptr @coda_write._entry, ptr @coda_write._entry_ptr, ptr @coda_debug, ptr @disable_tiling, ptr @disable_vdoa, ptr @enable_bwb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @coda_product_name.buf, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @coda_driver, ptr @coda_qops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @coda_queue_source_change_event.source_change_event, ptr @.str.45, ptr @coda_dt_ids, ptr @coda_pm_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @coda_probe.__key, ptr @.str.72, ptr @coda_probe.__key.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @ratelimit_state_init.__key, ptr @.str.85, ptr @xa_init_flags.__key, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @coda_m2m_ops, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @coda_fops, ptr @coda_ioctl_ops, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @coda_open.__key, ptr @.str.134, ptr @coda_open.__key.135, ptr @.str.136, ptr @coda_open.__key.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @coda_open.__key.153, ptr @.str.154, ptr @coda_open.__key.155, ptr @.str.156, ptr @coda_open.__key.157, ptr @.str.158, ptr @coda_open.__key.159, ptr @.str.160, ptr @init_completion.__key, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @coda_ctrls_setup._key, ptr @.str.164, ptr @coda_ctrl_ops, ptr @coda_mb_err_cnt_ctrl_config, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @coda_formats_420, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @coda_devdata, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @codadx6_codecs, ptr @codadx6_video_devices, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @codahx4_codecs, ptr @codahx4_video_devices, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @coda7_codecs, ptr @coda7_video_devices, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @coda9_codecs, ptr @coda9_video_devices, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @coda_bit_encoder, ptr @.str.217, ptr @coda_bit_decoder, ptr @.str.218, ptr @coda_bit_jpeg_encoder, ptr @coda_bit_jpeg_decoder, ptr @.str.219, ptr @.str.220, ptr @coda9_jpeg_encoder, ptr @coda9_jpeg_decoder, ptr @.str.221], section "llvm.metadata"
@0 = internal global [252 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_tiling to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_vdoa to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_bwb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_product_name.buf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_update_profile_level_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_update_profile_level_ctrls._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_update_profile_level_ctrls._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_update_profile_level_ctrls._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_alloc_aux_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_buf_prepare._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_streaming._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_streaming._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_start_streaming._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_queue_source_change_event.source_change_event to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fw_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fw_callback._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fw_callback._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fw_callback._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fw_callback._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_ready._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_job_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_open.__key.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_pic_run_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_mb_err_cnt_ctrl_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_ctrl._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_ctrl._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_formats_420 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_fmt._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_wake_up_capture_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_decoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_decoder_cmd._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_decoder_cmd._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_mark_last_meta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_mark_last_dst_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_devdata to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codadx6_codecs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codadx6_video_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codahx4_codecs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codahx4_video_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda7_codecs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda7_video_devices to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_codecs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_video_devices to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_encoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_decoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_jpeg_encoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_bit_jpeg_decoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_encoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_decoder to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_write(ptr noundef %dev, i32 noundef %data, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %data, i32 noundef %reg) #20
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %1 = tail call i32 @llvm.bswap.i32(i32 %data)
  %regs_base = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #17, !srcloc !506
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_read(ptr noundef %dev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !507
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !508
  %4 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %reg) #20
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_write_base(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %q_data, ptr noundef %buf, i32 noundef %reg_y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef 0) #17
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %fourcc = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 4
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 1345466932, label %sw.bb15
    i32 842094169, label %sw.bb5
  ]

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bytesperline = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 2
  %5 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytesperline, align 4
  %height = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %mul = mul i32 %8, %6
  %add = add i32 %mul, %1
  %div53 = lshr i32 %mul, 2
  %add4 = add i32 %add, %div53
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bytesperline6 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 2
  %9 = ptrtoint ptr %bytesperline6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytesperline6, align 4
  %height7 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 1
  %11 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height7, align 4
  %mul8 = mul i32 %12, %10
  %add9 = add i32 %mul8, %1
  %div1351 = lshr i32 %mul8, 2
  %add14 = add i32 %add9, %div1351
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bytesperline16 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 2
  %13 = ptrtoint ptr %bytesperline16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesperline16, align 4
  %height17 = getelementptr inbounds %struct.coda_q_data, ptr %q_data, i32 0, i32 1
  %15 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height17, align 4
  %mul18 = mul i32 %16, %14
  %add19 = add i32 %mul18, %1
  %div2352 = lshr i32 %mul18, 1
  %add24 = add i32 %add19, %div2352
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb5, %sw.default
  %base_cb.0 = phi i32 [ %add, %sw.default ], [ %add14, %sw.bb5 ], [ %add19, %sw.bb15 ]
  %base_cr.0 = phi i32 [ %add4, %sw.default ], [ %add9, %sw.bb5 ], [ %add24, %sw.bb15 ]
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %19 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp sgt i32 %19, 2
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.coda_write.exit_crit_edge

sw.epilog.coda_write.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 4
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %reg_y) #20
  br label %coda_write.exit

coda_write.exit:                                  ; preds = %do.end.i, %sw.epilog.coda_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %1) #17
  %regs_base.i = getelementptr inbounds %struct.coda_dev, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %reg_y
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #17, !srcloc !506
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  %add26 = add i32 %reg_y, 4
  %25 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i55 = icmp sgt i32 %25, 2
  br i1 %cmp.i55, label %do.end.i58, label %coda_write.exit.coda_write.exit61_crit_edge

coda_write.exit.coda_write.exit61_crit_edge:      ; preds = %coda_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit61

do.end.i58:                                       ; preds = %coda_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  %name.i56 = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i56, ptr noundef nonnull @.str.1, i32 noundef %base_cb.0, i32 noundef %add26) #20
  br label %coda_write.exit61

coda_write.exit61:                                ; preds = %do.end.i58, %coda_write.exit.coda_write.exit61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %26 = tail call i32 @llvm.bswap.i32(i32 %base_cb.0) #17
  %regs_base.i59 = getelementptr inbounds %struct.coda_dev, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %regs_base.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs_base.i59, align 8
  %add.ptr.i60 = getelementptr i8, ptr %28, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %26) #17, !srcloc !506
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %add28 = add i32 %reg_y, 8
  %31 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i62 = icmp sgt i32 %31, 2
  br i1 %cmp.i62, label %do.end.i65, label %coda_write.exit61.coda_write.exit68_crit_edge

coda_write.exit61.coda_write.exit68_crit_edge:    ; preds = %coda_write.exit61
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit68

do.end.i65:                                       ; preds = %coda_write.exit61
  call void @__sanitizer_cov_trace_pc() #19
  %name.i63 = getelementptr inbounds %struct.v4l2_device, ptr %30, i32 0, i32 4
  %call.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i63, ptr noundef nonnull @.str.1, i32 noundef %base_cr.0, i32 noundef %add28) #20
  br label %coda_write.exit68

coda_write.exit68:                                ; preds = %do.end.i65, %coda_write.exit61.coda_write.exit68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %32 = tail call i32 @llvm.bswap.i32(i32 %base_cr.0) #17
  %regs_base.i66 = getelementptr inbounds %struct.coda_dev, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %regs_base.i66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs_base.i66, align 8
  %add.ptr.i67 = getelementptr i8, ptr %34, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %32) #17, !srcloc !506
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @coda_product_name(i32 noundef %product) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %product to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %product, label %sw.default [
    i32 61441, label %entry.return_crit_edge
    i32 61450, label %sw.bb1
    i32 61458, label %sw.bb2
    i32 61472, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @coda_product_name.buf, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %product)
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @coda_product_name.buf, %sw.default ], [ @.str.7, %sw.bb3 ], [ @.str.6, %sw.bb2 ], [ @.str.5, %sw.bb1 ], [ @.str.4, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %buf, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %eos_event = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %eos_event) #17
  %0 = call ptr @memset(ptr %eos_event, i32 0, i32 136)
  %1 = ptrtoint ptr %eos_event to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %eos_event, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %fh = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31
  call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull %eos_event) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @vb2_buffer_done(ptr noundef %buf, i32 noundef %state) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %eos_event) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_update_profile_level_ctrls(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %profile_idc, i8 noundef zeroext %level_idc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %0 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec, align 4
  %src_fourcc = getelementptr inbounds %struct.coda_codec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %src_fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_fourcc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 875967048, label %sw.bb
    i32 843534413, label %sw.bb3
    i32 877088845, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %h264_profile_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 24
  %5 = ptrtoint ptr %h264_profile_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %h264_profile_ctrl, align 4
  %h264_level_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 25
  %7 = ptrtoint ptr %h264_level_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %h264_level_ctrl, align 8
  %conv = zext i8 %profile_idc to i32
  %call = tail call i32 @coda_h264_profile(i32 noundef %conv) #17
  %conv1 = zext i8 %level_idc to i32
  %call2 = tail call i32 @coda_h264_level(i32 noundef %conv1) #17
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mpeg2_profile_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 26
  %9 = ptrtoint ptr %mpeg2_profile_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mpeg2_profile_ctrl, align 4
  %mpeg2_level_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 27
  %11 = ptrtoint ptr %mpeg2_level_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mpeg2_level_ctrl, align 8
  %conv4 = zext i8 %profile_idc to i32
  %call5 = tail call i32 @coda_mpeg2_profile(i32 noundef %conv4) #17
  %conv6 = zext i8 %level_idc to i32
  %call7 = tail call i32 @coda_mpeg2_level(i32 noundef %conv6) #17
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mpeg4_profile_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 28
  %13 = ptrtoint ptr %mpeg4_profile_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mpeg4_profile_ctrl, align 4
  %mpeg4_level_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 29
  %15 = ptrtoint ptr %mpeg4_level_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mpeg4_level_ctrl, align 8
  %conv9 = zext i8 %profile_idc to i32
  %call10 = tail call i32 @coda_mpeg4_profile(i32 noundef %conv9) #17
  %conv11 = zext i8 %level_idc to i32
  %call12 = tail call i32 @coda_mpeg4_level(i32 noundef %conv11) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %codec_name.0 = phi ptr [ @.str.11, %sw.bb8 ], [ @.str.10, %sw.bb3 ], [ @.str.9, %sw.bb ]
  %profile_cid.0 = phi i32 [ 10029718, %sw.bb8 ], [ 10029583, %sw.bb3 ], [ 10029675, %sw.bb ]
  %level_cid.0 = phi i32 [ 10029717, %sw.bb8 ], [ 10029582, %sw.bb3 ], [ 10029671, %sw.bb ]
  %profile.0 = phi i32 [ %call10, %sw.bb8 ], [ %call5, %sw.bb3 ], [ %call, %sw.bb ]
  %level.0 = phi i32 [ %call12, %sw.bb8 ], [ %call7, %sw.bb3 ], [ %call2, %sw.bb ]
  %level_ctrl.0 = phi ptr [ %16, %sw.bb8 ], [ %12, %sw.bb3 ], [ %8, %sw.bb ]
  %profile_ctrl.0 = phi ptr [ %14, %sw.bb8 ], [ %10, %sw.bb3 ], [ %6, %sw.bb ]
  %call13 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %profile_cid.0) #17
  %call14 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %level_cid.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %profile.0)
  %cmp = icmp slt i32 %profile.0, 0
  br i1 %cmp, label %do.end, label %do.body18

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 4
  %conv16 = zext i8 %profile_idc to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %codec_name.0, i32 noundef %conv16) #20
  br label %if.end40

do.body18:                                        ; preds = %sw.epilog
  %19 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19 = icmp sgt i32 %19, 0
  br i1 %cmp19, label %do.end28, label %do.body18.do.end39_crit_edge

do.body18.do.end39_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end39

do.end28:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %name32 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr ptr, ptr %call13, i32 %profile.0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name32, i32 noundef %23, ptr noundef nonnull %codec_name.0, ptr noundef %25) #20
  br label %do.end39

do.end39:                                         ; preds = %do.end28, %do.body18.do.end39_crit_edge
  tail call fastcc void @coda_update_menu_ctrl(ptr noundef %profile_ctrl.0, i32 noundef %profile.0)
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %cmp41 = icmp slt i32 %level.0, 0
  br i1 %cmp41, label %do.end46, label %do.body55

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 8
  %name50 = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %conv52 = zext i8 %level_idc to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name50, ptr noundef nonnull %codec_name.0, i32 noundef %conv52) #20
  br label %cleanup

do.body55:                                        ; preds = %if.end40
  %28 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp56 = icmp sgt i32 %28, 0
  br i1 %cmp56, label %do.end65, label %do.body55.do.end79_crit_edge

do.body55.do.end79_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end79

do.end65:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %name69 = getelementptr inbounds %struct.v4l2_device, ptr %30, i32 0, i32 4
  %idx71 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %31 = ptrtoint ptr %idx71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx71, align 8
  %arrayidx72 = getelementptr ptr, ptr %call14, i32 %level.0
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx72, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name69, i32 noundef %32, ptr noundef nonnull %codec_name.0, ptr noundef %34) #20
  br label %do.end79

do.end79:                                         ; preds = %do.end65, %do.body55.do.end79_crit_edge
  tail call fastcc void @coda_update_menu_ctrl(ptr noundef %level_ctrl.0, i32 noundef %level.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_profile(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_h264_level(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg2_profile(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg2_level(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg4_profile(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_mpeg4_level(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_update_menu_ctrl(ptr noundef %ctrl, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctrl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #17
  %conv = sext i32 %value to i64
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 12
  %4 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %maximum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp slt i64 %5, %conv
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %6 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %minimum, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %shl = shl nuw i32 1, %value
  %neg = xor i32 %shl, -1
  %conv4 = sext i32 %neg to i64
  %and = and i64 %10, %conv4
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 13
  %11 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %default_value, align 8
  %call = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef nonnull %ctrl, i64 noundef %7, i64 noundef %conv, i64 noundef %and, i64 noundef %12) #17
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp7 = icmp sgt i64 %7, %conv
  br i1 %cmp7, label %if.then9, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %shl12 = shl nuw i32 1, %value
  %neg13 = xor i32 %shl12, -1
  %conv14 = sext i32 %neg13 to i64
  %and15 = and i64 %15, %conv14
  %default_value16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 13
  %16 = ptrtoint ptr %default_value16 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %default_value16, align 8
  %call17 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef nonnull %ctrl, i64 noundef %conv, i64 noundef %5, i64 noundef %and15, i64 noundef %17) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.else.if.end19_crit_edge, %if.then2
  %call20 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %ctrl, i32 noundef %value) #17
  %18 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i, align 8
  %lock.i41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i41, align 4
  tail call void @mutex_unlock(ptr noundef %21) #17
  br label %return

return:                                           ; preds = %if.end19, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_alloc_aux_buf(ptr noundef %dev, ptr noundef %buf, i32 noundef %size, ptr noundef %name, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %paddr = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %size, ptr noundef %paddr, i32 noundef 3264, i32 noundef 0) #17
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name3 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name3, ptr noundef %name, i32 noundef %size) #20
  br label %return

if.end:                                           ; preds = %entry
  %size5 = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %size5, align 4
  %tobool6.not = icmp eq ptr %name, null
  %tobool7.not = icmp eq ptr %parent, null
  %or.cond = or i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.then8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %blob = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %blob to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %blob, align 4
  %size11 = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size11, align 4
  %call13 = tail call ptr @debugfs_create_blob(ptr noundef nonnull %name, i16 noundef zeroext 292, ptr noundef nonnull %parent, ptr noundef %blob) #17
  %dentry = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 4
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %dentry, align 4
  br label %return

return:                                           ; preds = %if.then8, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then8 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_free_aux_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev1 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %size = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %paddr = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #17
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buf, align 4
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %size, align 4
  %dentry = getelementptr inbounds %struct.coda_aux_buf, ptr %buf, i32 0, i32 4
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 4
  tail call void @debugfs_remove(ptr noundef %11) #17
  %12 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_encoder_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %2 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @coda_qops, ptr %ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags.i, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %dev_mutex.i = getelementptr inbounds %struct.coda_dev, ptr %8, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex.i, ptr %lock.i, align 4
  %allow_zero_bytesused.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %10 = ptrtoint ptr %allow_zero_bytesused.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %allow_zero_bytesused.i, align 4
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %allow_zero_bytesused.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %11 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %min_buffers_needed.i, align 4
  %12 = load ptr, ptr %priv, align 8
  %dev2.i = getelementptr inbounds %struct.coda_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 8
  %dev3.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev3.i, align 4
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dst_vq, align 4
  %io_modes2 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %17 = ptrtoint ptr %io_modes2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %io_modes2, align 4
  %mem_ops3 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops3, align 4
  %drv_priv.i13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %19 = ptrtoint ptr %drv_priv.i13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %drv_priv.i13, align 4
  %ops.i14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %20 = ptrtoint ptr %ops.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @coda_qops, ptr %ops.i14, align 4
  %buf_struct_size.i15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %21 = ptrtoint ptr %buf_struct_size.i15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 744, ptr %buf_struct_size.i15, align 4
  %timestamp_flags.i16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %22 = ptrtoint ptr %timestamp_flags.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16384, ptr %timestamp_flags.i16, align 4
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %dev_mutex.i17 = getelementptr inbounds %struct.coda_dev, ptr %24, i32 0, i32 15
  %lock.i18 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %25 = ptrtoint ptr %lock.i18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev_mutex.i17, ptr %lock.i18, align 4
  %allow_zero_bytesused.i19 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %26 = ptrtoint ptr %allow_zero_bytesused.i19 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i20 = load i16, ptr %allow_zero_bytesused.i19, align 4
  %bf.set.i21 = or i16 %bf.load.i20, 4096
  store i16 %bf.set.i21, ptr %allow_zero_bytesused.i19, align 4
  %min_buffers_needed.i22 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %27 = ptrtoint ptr %min_buffers_needed.i22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %min_buffers_needed.i22, align 4
  %28 = load ptr, ptr %priv, align 8
  %dev2.i23 = getelementptr inbounds %struct.coda_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev2.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2.i23, align 8
  %dev3.i24 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %31 = ptrtoint ptr %dev3.i24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev3.i24, align 4
  %call.i25 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i25, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_decoder_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %2 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @coda_qops, ptr %ops.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags.i, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %dev_mutex.i = getelementptr inbounds %struct.coda_dev, ptr %8, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex.i, ptr %lock.i, align 4
  %allow_zero_bytesused.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %10 = ptrtoint ptr %allow_zero_bytesused.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %allow_zero_bytesused.i, align 4
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %allow_zero_bytesused.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %11 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %min_buffers_needed.i, align 4
  %12 = load ptr, ptr %priv, align 8
  %dev2.i = getelementptr inbounds %struct.coda_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i, align 8
  %dev3.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev3.i, align 4
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dst_vq, align 4
  %io_modes2 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %17 = ptrtoint ptr %io_modes2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %io_modes2, align 4
  %dma_attrs = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 3
  %18 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %dma_attrs, align 4
  %mem_ops3 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops3, align 4
  %drv_priv.i14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv.i14, align 4
  %ops.i15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %21 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @coda_qops, ptr %ops.i15, align 4
  %buf_struct_size.i16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %22 = ptrtoint ptr %buf_struct_size.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 744, ptr %buf_struct_size.i16, align 4
  %timestamp_flags.i17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %23 = ptrtoint ptr %timestamp_flags.i17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %timestamp_flags.i17, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %dev_mutex.i18 = getelementptr inbounds %struct.coda_dev, ptr %25, i32 0, i32 15
  %lock.i19 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %26 = ptrtoint ptr %lock.i19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev_mutex.i18, ptr %lock.i19, align 4
  %allow_zero_bytesused.i20 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %27 = ptrtoint ptr %allow_zero_bytesused.i20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i21 = load i16, ptr %allow_zero_bytesused.i20, align 4
  %bf.set.i22 = or i16 %bf.load.i21, 4096
  store i16 %bf.set.i22, ptr %allow_zero_bytesused.i20, align 4
  %min_buffers_needed.i23 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %28 = ptrtoint ptr %min_buffers_needed.i23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %min_buffers_needed.i23, align 4
  %29 = load ptr, ptr %priv, align 8
  %dev2.i24 = getelementptr inbounds %struct.coda_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev2.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2.i24, align 8
  %dev3.i25 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %32 = ptrtoint ptr %dev3.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %dev3.i25, align 4
  %call.i26 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_driver_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @coda_driver, ptr noundef null) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @coda_driver_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @platform_driver_unregister(ptr noundef nonnull @coda_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %3, label %entry.get_q_data.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %entry.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %entry.get_q_data.exit_crit_edge ]
  %sizeimage = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp = icmp ult i32 %10, %6
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %sizes, align 4
  %13 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 51
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 8
  %18 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuffers, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %17, i32 noundef %19, i32 noundef %6) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %5, label %entry.if.end41_crit_edge [
    i32 2, label %get_q_data.exit.thread85
    i32 1, label %get_q_data.exit.thread
    i32 14, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge95
    i32 3, label %entry.if.then_crit_edge96
    i32 8, label %entry.if.then_crit_edge97
    i32 5, label %entry.if.then_crit_edge98
    i32 7, label %entry.if.then_crit_edge99
    i32 12, label %entry.if.then_crit_edge100
  ]

entry.if.then_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

get_q_data.exit.thread85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 15
  br label %if.then

get_q_data.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %3, i32 0, i32 15, i32 1
  br label %if.end41

if.then:                                          ; preds = %get_q_data.exit.thread85, %entry.if.then_crit_edge, %entry.if.then_crit_edge95, %entry.if.then_crit_edge96, %entry.if.then_crit_edge97, %entry.if.then_crit_edge98, %entry.if.then_crit_edge99, %entry.if.then_crit_edge100
  %retval.0.i87 = phi ptr [ %q_data.i, %get_q_data.exit.thread85 ], [ null, %entry.if.then_crit_edge ], [ null, %entry.if.then_crit_edge95 ], [ null, %entry.if.then_crit_edge96 ], [ null, %entry.if.then_crit_edge97 ], [ null, %entry.if.then_crit_edge98 ], [ null, %entry.if.then_crit_edge99 ], [ null, %entry.if.then_crit_edge100 ]
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %8, label %do.end [
    i32 0, label %if.end.thread
    i32 1, label %if.then.if.end41_crit_edge
  ]

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  br label %if.end41

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef nonnull @.str.28) #20
  br label %cleanup

if.end41:                                         ; preds = %if.end.thread, %if.then.if.end41_crit_edge, %get_q_data.exit.thread, %entry.if.end41_crit_edge
  %retval.0.i84 = phi ptr [ %arrayidx3.i, %get_q_data.exit.thread ], [ %retval.0.i87, %if.end.thread ], [ null, %entry.if.end41_crit_edge ], [ %retval.0.i87, %if.then.if.end41_crit_edge ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end41
  %sizeimage = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i84, i32 0, i32 3
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp43.not = icmp eq i32 %16, 0
  br i1 %cmp43.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit82_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit82_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %vb2_plane_size.exit82

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end41
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  %sizeimage90 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i84, i32 0, i32 3
  %19 = ptrtoint ptr %sizeimage90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizeimage90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp4391 = icmp ult i32 %18, %20
  br i1 %cmp4391, label %if.then.i80, label %vb2_plane_size.exit.thread.cleanup_crit_edge

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i80:                                      ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit82

vb2_plane_size.exit82:                            ; preds = %if.then.i80, %vb2_plane_size.exit.vb2_plane_size.exit82_crit_edge
  %23 = phi i32 [ %20, %if.then.i80 ], [ %16, %vb2_plane_size.exit.vb2_plane_size.exit82_crit_edge ]
  %retval.0.i81 = phi i32 [ %22, %if.then.i80 ], [ 0, %vb2_plane_size.exit.vb2_plane_size.exit82_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %3, align 8
  %name5194 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name5194, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i81, i32 noundef %23) #20
  br label %cleanup

cleanup:                                          ; preds = %vb2_plane_size.exit82, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %vb2_plane_size.exit82 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #17
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %5 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 51
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %9, ptr noundef %13) #20
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %4, align 4
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp20 = icmp eq i32 %17, 2
  br i1 %cmp20, label %if.then21, label %if.else97

if.then21:                                        ; preds = %do.end17
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp22 = icmp eq i32 %19, 1
  br i1 %cmp22, label %land.lhs.true, label %if.then21.if.end50_crit_edge

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then21
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 61
  %20 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %land.lhs.true.if.end50_crit_edge, label %if.then23

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then23:                                        ; preds = %land.lhs.true
  %bitstream_mutex = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %bitstream_mutex, i32 noundef 0) #17
  call void @coda_fill_bitstream(ptr noundef %1, ptr noundef nonnull %list) #17
  call void @mutex_unlock(ptr noundef %bitstream_mutex) #17
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %27)
  %cmp26.not = icmp eq i32 %27, 61472
  br i1 %cmp26.not, label %if.then23.if.end38_crit_edge, label %land.lhs.true27

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

land.lhs.true27:                                  ; preds = %if.then23
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 37
  %28 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitstream_fifo.i, align 4
  %out.i = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 37, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp29 = icmp ult i32 %sub.i, 512
  br i1 %cmp29, label %do.end33, label %land.lhs.true27.if.end38_crit_edge

land.lhs.true27.if.end38_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

do.end33:                                         ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  %name35 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name35) #20
  br label %err

if.end38:                                         ; preds = %land.lhs.true27.if.end38_crit_edge, %if.then23.if.end38_crit_edge
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool39.not = icmp eq i32 %33, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end50_crit_edge

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then40:                                        ; preds = %if.end38
  %ops = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 8
  %seq_init_work = getelementptr inbounds %struct.coda_context_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %seq_init_work to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seq_init_work, align 4
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %if.then40.if.end50_crit_edge, label %if.then42

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %23, i32 0, i32 17
  %38 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %workqueue, align 4
  %seq_init_work44 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 3
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %seq_init_work44) #17
  %call47 = call zeroext i1 @flush_work(ptr noundef %seq_init_work44) #17
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %if.then40.if.end50_crit_edge, %if.end38.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.then21.if.end50_crit_edge
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 0, i32 4
  %40 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %41)
  %cmp51 = icmp eq i32 %41, 1195724874
  br i1 %cmp51, label %if.then52, label %if.end50.if.end96_crit_edge

if.end50.if.end96_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

if.then52:                                        ; preds = %if.end50
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %42 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %43, i32 0, i32 8
  %call.i361 = call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #17
  %call54 = call i32 @coda_jpeg_decode_header(ptr noundef %1, ptr noundef %call.i361) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end64

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %name61 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name61, i32 noundef %call54) #20
  br label %err

if.end64:                                         ; preds = %if.then52
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %q_data.i, align 4
  %sub = add i32 %45, -1
  %or = or i32 %sub, 15
  %add = add i32 %or, 1
  %46 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %arrayidx3.i, align 4
  %height = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 0, i32 1
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %sub67 = add i32 %48, -1
  %or68 = or i32 %sub67, 15
  %add69 = add i32 %or68, 1
  %height70 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 1
  %49 = ptrtoint ptr %height70 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add69, ptr %height70, align 4
  %bytesperline = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 2
  %50 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %bytesperline, align 4
  %jpeg_chroma_subsampling = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 22, i32 18
  %51 = ptrtoint ptr %jpeg_chroma_subsampling to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %jpeg_chroma_subsampling, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp72 = icmp eq i32 %52, 2
  %mul = mul i32 %add69, %add
  br i1 %cmp72, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end64
  %mul76 = mul i32 %mul, 3
  %div357 = lshr exact i32 %mul76, 1
  %sizeimage = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 3
  %53 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div357, ptr %sizeimage, align 4
  %fourcc77 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 4
  %54 = ptrtoint ptr %fourcc77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fourcc77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %55)
  %cmp78.not = icmp eq i32 %55, 842093913
  br i1 %cmp78.not, label %if.then73.if.end88_crit_edge, label %if.then79

if.then73.if.end88_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %fourcc77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 842094158, ptr %fourcc77, align 4
  br label %if.end88

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %mul85 = shl i32 %mul, 1
  %sizeimage86 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 3
  %57 = ptrtoint ptr %sizeimage86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul85, ptr %sizeimage86, align 4
  %fourcc87 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 4
  %58 = ptrtoint ptr %fourcc87 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1345466932, ptr %fourcc87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then79, %if.then73.if.end88_crit_edge
  %rect = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 5
  %59 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rect, align 4
  %top = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 5, i32 1
  %60 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %top, align 4
  %61 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %q_data.i, align 4
  %width92 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 5, i32 2
  %63 = ptrtoint ptr %width92 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %width92, align 4
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  %height95 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 5, i32 3
  %66 = ptrtoint ptr %height95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %height95, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end88, %if.end50.if.end96_crit_edge
  %streamon_out = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 10
  %67 = ptrtoint ptr %streamon_out to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %streamon_out, align 4
  br label %if.end98

if.else97:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #19
  %streamon_cap = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %streamon_cap, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %if.end96
  %streamon_out99 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %streamon_out99 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %streamon_out99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool100.not = icmp eq i32 %70, 0
  br i1 %tobool100.not, label %if.end98.out_crit_edge, label %land.lhs.true101

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true101:                                 ; preds = %if.end98
  %streamon_cap102 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %streamon_cap102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %streamon_cap102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool103.not = icmp eq i32 %72, 0
  br i1 %tobool103.not, label %land.lhs.true101.out_crit_edge, label %if.end105

land.lhs.true101.out_crit_edge:                   ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end105:                                        ; preds = %land.lhs.true101
  %arrayidx3.i362 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1
  %width108 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 0, i32 5, i32 2
  %73 = ptrtoint ptr %width108 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width108, align 4
  %75 = ptrtoint ptr %arrayidx3.i362 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx3.i362, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp110.not = icmp eq i32 %74, %76
  br i1 %cmp110.not, label %if.end105.lor.lhs.false_crit_edge, label %land.lhs.true111

if.end105.lor.lhs.false_crit_edge:                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true111:                                 ; preds = %if.end105
  %sub114 = add i32 %74, -1
  %or115 = or i32 %sub114, 15
  %add116 = add i32 %or115, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add116, i32 %76)
  %cmp118.not = icmp eq i32 %add116, %76
  br i1 %cmp118.not, label %land.lhs.true111.lor.lhs.false_crit_edge, label %land.lhs.true111.do.end134_crit_edge

land.lhs.true111.do.end134_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end134

land.lhs.true111.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true111.lor.lhs.false_crit_edge, %if.end105.lor.lhs.false_crit_edge
  %height120 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 0, i32 5, i32 3
  %77 = ptrtoint ptr %height120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height120, align 4
  %height121 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 1
  %79 = ptrtoint ptr %height121 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp122.not = icmp eq i32 %78, %80
  br i1 %cmp122.not, label %lor.lhs.false.if.end145_crit_edge, label %land.lhs.true123

lor.lhs.false.if.end145_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end145

land.lhs.true123:                                 ; preds = %lor.lhs.false
  %sub126 = add i32 %78, -1
  %or127 = or i32 %sub126, 15
  %add128 = add i32 %or127, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add128, i32 %80)
  %cmp130.not = icmp eq i32 %add128, %80
  br i1 %cmp130.not, label %land.lhs.true123.if.end145_crit_edge, label %land.lhs.true123.do.end134_crit_edge

land.lhs.true123.do.end134_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end134

land.lhs.true123.if.end145_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end145

do.end134:                                        ; preds = %land.lhs.true123.do.end134_crit_edge, %land.lhs.true111.do.end134_crit_edge
  %name136 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %height141 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 0, i32 5, i32 3
  %81 = ptrtoint ptr %height141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height141, align 4
  %height143 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 1
  %83 = ptrtoint ptr %height143 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height143, align 4
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name136, i32 noundef %74, i32 noundef %82, i32 noundef %76, i32 noundef %84) #20
  br label %err

if.end145:                                        ; preds = %land.lhs.true123.if.end145_crit_edge, %lor.lhs.false.if.end145_crit_edge
  %inst_type146 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 16
  %85 = ptrtoint ptr %inst_type146 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inst_type146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp147 = icmp eq i32 %86, 1
  br i1 %cmp147, label %land.lhs.true148, label %if.end145.if.end154_crit_edge

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

land.lhs.true148:                                 ; preds = %if.end145
  %use_bit149 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 61
  %87 = ptrtoint ptr %use_bit149 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %use_bit149, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool150.not = icmp eq i8 %88, 0
  br i1 %tobool150.not, label %land.lhs.true148.if.end154_crit_edge, label %if.then151

land.lhs.true148.if.end154_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then151:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #19
  %m2m_ctx153 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %89 = ptrtoint ptr %m2m_ctx153 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m2m_ctx153, align 4
  %buffered1.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %90, i32 0, i32 8, i32 4
  %91 = ptrtoint ptr %buffered1.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %buffered1.i, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %land.lhs.true148.if.end154_crit_edge, %if.end145.if.end154_crit_edge
  %gop_size = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 22, i32 16
  %gopcounter = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 32
  %fourcc157 = getelementptr %struct.coda_ctx, ptr %1, i32 0, i32 15, i32 1, i32 4
  %92 = ptrtoint ptr %fourcc157 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fourcc157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %93)
  %cmp158 = icmp eq i32 %93, 1195724874
  br i1 %cmp158, label %if.then160, label %if.end154.if.end163_crit_edge

if.end154.if.end163_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

if.then160:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  %94 = ptrtoint ptr %gop_size to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %gop_size, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end154.if.end163_crit_edge
  %95 = ptrtoint ptr %gop_size to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %gop_size, align 8
  %conv166 = zext i8 %96 to i32
  %sub167 = add nsw i32 %conv166, -1
  %97 = ptrtoint ptr %gopcounter to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub167, ptr %gopcounter, align 8
  %mb_err_cnt_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 30
  %98 = ptrtoint ptr %mb_err_cnt_ctrl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mb_err_cnt_ctrl, align 4
  %tobool169.not = icmp eq ptr %99, null
  br i1 %tobool169.not, label %if.end163.if.end173_crit_edge, label %if.then170

if.end163.if.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end173

if.then170:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %103, i32 noundef 0) #17
  %call.i363 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %99, i32 noundef 0) #17
  %104 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %107) #17
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end163.if.end173_crit_edge
  %ops174 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 7
  %108 = ptrtoint ptr %ops174 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops174, align 8
  %start_streaming = getelementptr inbounds %struct.coda_context_ops, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %start_streaming to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %start_streaming, align 4
  %call175 = call i32 %111(ptr noundef %1) #17
  %112 = ptrtoint ptr %inst_type146 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %inst_type146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp177 = icmp ne i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call175)
  %cmp180 = icmp ne i32 %call175, -11
  %or.cond = select i1 %cmp177, i1 true, i1 %cmp180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp185 = icmp slt i32 %call175, 0
  %or.cond360 = select i1 %or.cond, i1 %cmp185, i1 false
  br i1 %or.cond360, label %if.end173.err_crit_edge, label %if.end173.out_crit_edge

if.end173.out_crit_edge:                          ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end173.err_crit_edge:                          ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

out:                                              ; preds = %if.end173.out_crit_edge, %land.lhs.true101.out_crit_edge, %if.end98.out_crit_edge
  %114 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp190 = icmp eq i32 %115, 2
  br i1 %cmp190, label %if.then192, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then192:                                       ; preds = %out
  %116 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %list, align 4
  %cmp200.not376 = icmp eq ptr %117, %list
  br i1 %cmp200.not376, label %if.then192.cleanup_crit_edge, label %if.then192.for.body_crit_edge

if.then192.for.body_crit_edge:                    ; preds = %if.then192
  br label %for.body

if.then192.cleanup_crit_edge:                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then192.for.body_crit_edge
  %.pn.in377 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %117, %if.then192.for.body_crit_edge ]
  %m2m_buf.0 = getelementptr i8, ptr %.pn.in377, i32 -736
  %118 = ptrtoint ptr %.pn.in377 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn = load ptr, ptr %.pn.in377, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in377) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in377, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i, align 4
  %121 = ptrtoint ptr %.pn.in377 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %.pn.in377, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %125 = ptrtoint ptr %.pn.in377 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in377, align 4
  %prev.i364 = getelementptr inbounds %struct.list_head, ptr %.pn.in377, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i364 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i364, align 4
  call void @vb2_buffer_done(ptr noundef %m2m_buf.0, i32 noundef 5) #17
  %cmp200.not = icmp eq ptr %.pn, %list
  br i1 %cmp200.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err:                                              ; preds = %if.end173.err_crit_edge, %do.end134, %do.end59, %do.end33
  %ret.0 = phi i32 [ -22, %do.end33 ], [ %call54, %do.end59 ], [ -22, %do.end134 ], [ %call175, %if.end173.err_crit_edge ]
  %127 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp210 = icmp eq i32 %128, 2
  br i1 %cmp210, label %if.then212, label %while.cond242.preheader

while.cond242.preheader:                          ; preds = %err
  %m2m_ctx244 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %129 = ptrtoint ptr %m2m_ctx244 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %m2m_ctx244, align 4
  %cap_q_ctx.i379 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %130, i32 0, i32 7
  %call.i373380 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i379) #17
  %tobool246.not381 = icmp eq ptr %call.i373380, null
  br i1 %tobool246.not381, label %while.cond242.preheader.cleanup_crit_edge, label %while.cond242.preheader.while.body247_crit_edge

while.cond242.preheader.while.body247_crit_edge:  ; preds = %while.cond242.preheader
  br label %while.body247

while.cond242.preheader.cleanup_crit_edge:        ; preds = %while.cond242.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then212:                                       ; preds = %err
  %131 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %list, align 4
  %cmp224.not383 = icmp eq ptr %132, %list
  br i1 %cmp224.not383, label %if.then212.while.cond.preheader_crit_edge, label %if.then212.for.body227_crit_edge

if.then212.for.body227_crit_edge:                 ; preds = %if.then212
  br label %for.body227

if.then212.while.cond.preheader_crit_edge:        ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %list_del.exit370.while.cond.preheader_crit_edge, %if.then212.while.cond.preheader_crit_edge
  %m2m_ctx238 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %133 = ptrtoint ptr %m2m_ctx238 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %m2m_ctx238, align 4
  %out_q_ctx.i371386 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %134, i32 0, i32 8
  %call.i372387 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i371386) #17
  %tobool240.not388 = icmp eq ptr %call.i372387, null
  br i1 %tobool240.not388, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body227:                                      ; preds = %list_del.exit370.for.body227_crit_edge, %if.then212.for.body227_crit_edge
  %.pn356.in384 = phi ptr [ %.pn356, %list_del.exit370.for.body227_crit_edge ], [ %132, %if.then212.for.body227_crit_edge ]
  %m2m_buf.1 = getelementptr i8, ptr %.pn356.in384, i32 -736
  %135 = ptrtoint ptr %.pn356.in384 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn356 = load ptr, ptr %.pn356.in384, align 8
  %call.i.i365 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn356.in384) #17
  br i1 %call.i.i365, label %if.end.i.i368, label %for.body227.list_del.exit370_crit_edge

for.body227.list_del.exit370_crit_edge:           ; preds = %for.body227
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit370

if.end.i.i368:                                    ; preds = %for.body227
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i366 = getelementptr inbounds %struct.list_head, ptr %.pn356.in384, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i366 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i366, align 4
  %138 = ptrtoint ptr %.pn356.in384 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %.pn356.in384, align 4
  %prev1.i.i.i367 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %prev1.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev1.i.i.i367, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %139, ptr %137, align 4
  br label %list_del.exit370

list_del.exit370:                                 ; preds = %if.end.i.i368, %for.body227.list_del.exit370_crit_edge
  %142 = ptrtoint ptr %.pn356.in384 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn356.in384, align 4
  %prev.i369 = getelementptr inbounds %struct.list_head, ptr %.pn356.in384, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i369 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i369, align 4
  call void @vb2_buffer_done(ptr noundef %m2m_buf.1, i32 noundef 3) #17
  %cmp224.not = icmp eq ptr %.pn356, %list
  br i1 %cmp224.not, label %list_del.exit370.while.cond.preheader_crit_edge, label %list_del.exit370.for.body227_crit_edge

list_del.exit370.for.body227_crit_edge:           ; preds = %list_del.exit370
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body227

list_del.exit370.while.cond.preheader_crit_edge:  ; preds = %list_del.exit370
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i372389 = phi ptr [ %call.i372, %while.body.while.body_crit_edge ], [ %call.i372387, %while.cond.preheader.while.body_crit_edge ]
  call void @vb2_buffer_done(ptr noundef nonnull %call.i372389, i32 noundef 3) #17
  %144 = ptrtoint ptr %m2m_ctx238 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %m2m_ctx238, align 4
  %out_q_ctx.i371 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %145, i32 0, i32 8
  %call.i372 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i371) #17
  %tobool240.not = icmp eq ptr %call.i372, null
  br i1 %tobool240.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body247:                                    ; preds = %while.body247.while.body247_crit_edge, %while.cond242.preheader.while.body247_crit_edge
  %call.i373382 = phi ptr [ %call.i373, %while.body247.while.body247_crit_edge ], [ %call.i373380, %while.cond242.preheader.while.body247_crit_edge ]
  call void @vb2_buffer_done(ptr noundef nonnull %call.i373382, i32 noundef 3) #17
  %146 = ptrtoint ptr %m2m_ctx244 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %m2m_ctx244, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %147, i32 0, i32 7
  %call.i373 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #17
  %tobool246.not = icmp eq ptr %call.i373, null
  br i1 %tobool246.not, label %while.body247.cleanup_crit_edge, label %while.body247.while.body247_crit_edge

while.body247.while.body247_crit_edge:            ; preds = %while.body247
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body247

while.body247.cleanup_crit_edge:                  ; preds = %while.body247
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %while.body247.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %while.cond242.preheader.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %if.then192.cleanup_crit_edge, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %out.cleanup_crit_edge ], [ %ret.0, %while.cond.preheader.cleanup_crit_edge ], [ %ret.0, %while.cond242.preheader.cleanup_crit_edge ], [ 0, %if.then192.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ %ret.0, %while.body247.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %streamon_out = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %streamon_cap = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2 = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  %9 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %land.end.do.end13_crit_edge

land.end.do.end13_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 51
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 8
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %11, ptr noundef %15) #20
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.end.do.end13_crit_edge
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp15 = icmp eq i32 %17, 2
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end13
  %18 = ptrtoint ptr %streamon_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %streamon_out, align 4
  tail call void @coda_bit_stream_end_flag(ptr noundef %1) #17
  %qsequence = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %qsequence to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qsequence, align 4
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %20 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i96 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 8
  %call.i97 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i96) #17
  %tobool19.not98 = icmp eq ptr %call.i97, null
  br i1 %tobool19.not98, label %if.then16.if.end28_crit_edge, label %if.then16.while.body_crit_edge

if.then16.while.body_crit_edge:                   ; preds = %if.then16
  br label %while.body

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then16.while.body_crit_edge
  %call.i99 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i97, %if.then16.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i99, i32 noundef 6) #17
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #17
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %while.body.if.end28_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.else:                                          ; preds = %do.end13
  %streamon_cap20 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %streamon_cap20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %streamon_cap20, align 8
  %osequence = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %osequence to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %osequence, align 8
  %sequence_offset = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %sequence_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sequence_offset, align 4
  %m2m_ctx23 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 31, i32 10
  %27 = ptrtoint ptr %m2m_ctx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx23, align 4
  %cap_q_ctx.i92 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 7
  %call.i8993 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i92) #17
  %tobool25.not94 = icmp eq ptr %call.i8993, null
  br i1 %tobool25.not94, label %if.else.if.end28_crit_edge, label %if.else.while.body26_crit_edge

if.else.while.body26_crit_edge:                   ; preds = %if.else
  br label %while.body26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

while.body26:                                     ; preds = %while.body26.while.body26_crit_edge, %if.else.while.body26_crit_edge
  %call.i8995 = phi ptr [ %call.i89, %while.body26.while.body26_crit_edge ], [ %call.i8993, %if.else.while.body26_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i8995, i32 noundef 6) #17
  %29 = ptrtoint ptr %m2m_ctx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx23, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %30, i32 0, i32 7
  %call.i89 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #17
  %tobool25.not = icmp eq ptr %call.i89, null
  br i1 %tobool25.not, label %while.body26.if.end28_crit_edge, label %while.body26.while.body26_crit_edge

while.body26.while.body26_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body26

while.body26.if.end28_crit_edge:                  ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.end28:                                         ; preds = %while.body26.if.end28_crit_edge, %if.else.if.end28_crit_edge, %while.body.if.end28_crit_edge, %if.then16.if.end28_crit_edge
  br i1 %8, label %if.then30, label %if.end28.if.end49_crit_edge

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then30:                                        ; preds = %if.end28
  %ops = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 8
  %seq_end_work = getelementptr inbounds %struct.coda_context_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %seq_end_work to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seq_end_work, align 4
  %tobool31.not = icmp eq ptr %34, null
  br i1 %tobool31.not, label %if.then30.if.end37_crit_edge, label %if.then32

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %3, i32 0, i32 17
  %35 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %workqueue, align 4
  %seq_end_work33 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 4
  %call.i90 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %seq_end_work33) #17
  %call36 = tail call zeroext i1 @flush_work(ptr noundef %seq_end_work33) #17
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then30.if.end37_crit_edge
  %buffer_meta_lock = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock) #17
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 45
  %37 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %buffer_meta_list, align 4
  %cmp.i.not100 = icmp eq ptr %38, %buffer_meta_list
  br i1 %cmp.i.not100, label %if.end37.while.end44_crit_edge, label %if.end37.while.body41_crit_edge

if.end37.while.body41_crit_edge:                  ; preds = %if.end37
  br label %while.body41

if.end37.while.end44_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end44

while.body41:                                     ; preds = %list_del.exit.while.body41_crit_edge, %if.end37.while.body41_crit_edge
  %39 = phi ptr [ %49, %list_del.exit.while.body41_crit_edge ], [ %38, %if.end37.while.body41_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #17
  br i1 %call.i.i, label %if.end.i.i, label %while.body41.list_del.exit_crit_edge

while.body41.list_del.exit_crit_edge:             ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body41.list_del.exit_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %39) #17
  %48 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %buffer_meta_list, align 4
  %cmp.i.not = icmp eq ptr %49, %buffer_meta_list
  br i1 %cmp.i.not, label %list_del.exit.while.end44_crit_edge, label %list_del.exit.while.body41_crit_edge

list_del.exit.while.body41_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body41

list_del.exit.while.end44_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end44

while.end44:                                      ; preds = %list_del.exit.while.end44_crit_edge, %if.end37.while.end44_crit_edge
  %num_metas = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 47
  %50 = ptrtoint ptr %num_metas to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %num_metas, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock) #17
  %bitstream_fifo = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 37
  %bitstream = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 39
  %51 = ptrtoint ptr %bitstream to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bitstream, align 8
  %size = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 39, i32 2
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 8
  %call48 = tail call i32 @__kfifo_init(ptr noundef %bitstream_fifo, ptr noundef %52, i32 noundef %54, i32 noundef 1) #17
  %runcounter = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 33
  %55 = ptrtoint ptr %runcounter to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %runcounter, align 4
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %aborting, align 4
  %hold = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 40
  %57 = ptrtoint ptr %hold to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %hold, align 8
  br label %if.end49

if.end49:                                         ; preds = %while.end44, %if.end28.if.end49_crit_edge
  %58 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool51.not = icmp eq i32 %59, 0
  br i1 %tobool51.not, label %land.lhs.true, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end49
  %streamon_cap52 = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %streamon_cap52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %streamon_cap52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool53.not = icmp eq i32 %61, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %1, i32 0, i32 55
  %62 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %63, -5
  store i32 %and, ptr %bit_stream_param, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true.if.end55_crit_edge, %if.end49.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %5, label %if.else [
    i32 2, label %get_q_data.exit.thread92
    i32 1, label %entry.if.end46_crit_edge
  ]

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

get_q_data.exit.thread92:                         ; preds = %entry
  %size94 = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 39, i32 2
  %7 = ptrtoint ptr %size94 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not95 = icmp eq i32 %8, 0
  br i1 %tobool.not95, label %if.else.thread106, label %if.then

if.then:                                          ; preds = %get_q_data.exit.thread92
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.then.if.then7_crit_edge, label %vb2_get_plane_payload.exit

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

vb2_get_plane_payload.exit:                       ; preds = %if.then
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %vb2_get_plane_payload.exit.if.then7_crit_edge, label %vb2_get_plane_payload.exit.if.end_crit_edge

vb2_get_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

vb2_get_plane_payload.exit.if.then7_crit_edge:    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

if.then7:                                         ; preds = %vb2_get_plane_payload.exit.if.then7_crit_edge, %if.then.if.then7_crit_edge
  tail call void @coda_bit_stream_end_flag(ptr noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %if.then7, %vb2_get_plane_payload.exit.if.end_crit_edge
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 15, i32 0, i32 4
  %13 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %14)
  %cmp8 = icmp eq i32 %14, 875967048
  br i1 %cmp8, label %if.then9, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %h264_profile_idc = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 22, i32 10
  %15 = ptrtoint ptr %h264_profile_idc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h264_profile_idc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then11, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 @coda_sps_parse_profile(ptr noundef %3, ptr noundef %vb) #17
  %17 = ptrtoint ptr %h264_profile_idc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h264_profile_idc, align 2
  %h264_level_idc = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 22, i32 11
  %19 = ptrtoint ptr %h264_level_idc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h264_level_idc, align 1
  tail call void @coda_update_profile_level_ctrls(ptr noundef %3, i8 noundef zeroext %18, i8 noundef zeroext %20)
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then9.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %bitstream_mutex = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %bitstream_mutex, i32 noundef 0) #17
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 31, i32 10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %22, ptr noundef %vb) #17
  %23 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vb, align 8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @coda_fill_bitstream(ptr noundef %3, ptr noundef null) #17
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %bitstream_mutex) #17
  %initialized = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not = icmp eq i32 %27, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end49_crit_edge

if.end21.if.end49_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then24:                                        ; preds = %if.end21
  %28 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vb, align 8
  %streaming.i83 = getelementptr inbounds %struct.vb2_queue, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %streaming.i83 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i84 = load i16, ptr %streaming.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i84)
  %tobool.i85 = icmp slt i16 %bf.load.i84, 0
  br i1 %tobool.i85, label %land.lhs.true27, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true27:                                  ; preds = %if.then24
  %ops = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 8
  %seq_init_work = getelementptr inbounds %struct.coda_context_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %seq_init_work to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seq_init_work, align 4
  %tobool28.not = icmp eq ptr %34, null
  br i1 %tobool28.not, label %land.lhs.true27.if.end34_crit_edge, label %if.then29

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %workqueue, align 4
  %seq_init_work30 = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %seq_init_work30) #17
  %call33 = tail call zeroext i1 @flush_work(ptr noundef %seq_init_work30) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %land.lhs.true27.if.end34_crit_edge, %if.then24.if.end34_crit_edge
  %39 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool36.not = icmp eq i32 %40, 0
  br i1 %tobool36.not, label %if.end34.if.end49_crit_edge, label %if.then37

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %fh.i = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 31
  tail call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull @coda_queue_source_change_event.source_change_event) #17
  br label %if.end49

if.else:                                          ; preds = %entry
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp40 = icmp eq i32 %42, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.else.lor.lhs.false_crit_edge

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.else.thread106:                                ; preds = %get_q_data.exit.thread92
  %inst_type107 = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 16
  %43 = ptrtoint ptr %inst_type107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %inst_type107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp40108 = icmp eq i32 %44, 0
  br i1 %cmp40108, label %if.else.thread106.if.then45_crit_edge, label %if.else.thread106.lor.lhs.false_crit_edge

if.else.thread106.lor.lhs.false_crit_edge:        ; preds = %if.else.thread106
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.else.thread106.if.then45_crit_edge:            ; preds = %if.else.thread106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.else.thread106.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 61
  %45 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool41.not = icmp eq i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp44 = icmp eq i32 %5, 2
  %or.cond102 = select i1 %tobool41.not, i1 %cmp44, i1 false
  br i1 %or.cond102, label %lor.lhs.false.if.then45_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

land.lhs.true42:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp44.old = icmp eq i32 %5, 2
  br i1 %cmp44.old, label %land.lhs.true42.if.then45_crit_edge, label %land.lhs.true42.if.end46_crit_edge

land.lhs.true42.if.end46_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %if.else.thread106.if.then45_crit_edge
  %qsequence = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 12
  %47 = ptrtoint ptr %qsequence to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qsequence, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %qsequence, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %49 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sequence, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true42.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge, %entry.if.end46_crit_edge
  %m2m_ctx48 = getelementptr inbounds %struct.coda_ctx, ptr %3, i32 0, i32 31, i32 10
  %50 = ptrtoint ptr %m2m_ctx48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_ctx48, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %51, ptr noundef %vb) #17
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %if.then37, %if.end34.if.end49_crit_edge, %if.end21.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_fill_bitstream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_jpeg_decode_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_bit_stream_end_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_sps_parse_profile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8688, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #17
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %devtype, align 4
  %dev6 = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev6, align 8
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.46) #17
  %clk_per = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %clk_per, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #20
  %5 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_per, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.51) #17
  %clk_ahb = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %clk_ahb, align 8
  %cmp.i290 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #20
  %9 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_ahb, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %call28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #17
  %regs_base = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call28, ptr %regs_base, align 8
  %cmp.i291 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.55) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end38, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end38:                                         ; preds = %if.end34
  %call37 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %if.end38.cleanup_crit_edge, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %if.end38.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  %irq.0299 = phi i32 [ %call37, %if.end38.if.end41_crit_edge ], [ %call35, %if.end34.if.end41_crit_edge ]
  %call.i292 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq.0299, ptr noundef nonnull @coda_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp44 = icmp slt i32 %call.i292, 0
  br i1 %cmp44, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call.i292) #20
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %14 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %17)
  %cmp52 = icmp eq i32 %17, 61472
  br i1 %cmp52, label %if.then53, label %if.end50.if.end67_crit_edge

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end67

if.then53:                                        ; preds = %if.end50
  %call54 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.60) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then53.cleanup_crit_edge, label %if.end57

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end57:                                         ; preds = %if.then53
  %call59 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call54, ptr noundef null, ptr noundef nonnull @coda9_jpeg_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.61, ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end57.if.end67_crit_edge

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end67

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #20
  br label %cleanup

if.end67:                                         ; preds = %if.end57.if.end67_crit_edge, %if.end50.if.end67_crit_edge
  %call.i293 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #17
  %rstc = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i293, ptr %rstc, align 4
  %cmp.i294 = icmp ugt ptr %call.i293, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i294, label %if.then72, label %if.end79

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %call.i293 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %19) #20
  br label %cleanup

if.end79:                                         ; preds = %if.end67
  %call80 = tail call ptr @of_gen_pool_get(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef 0) #17
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #20
  br label %cleanup

if.end87:                                         ; preds = %if.end79
  %iram_pool = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %iram_pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call80, ptr %iram_pool, align 8
  %call.i295 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84) #17
  %tobool.not.i = icmp eq ptr %call.i295, null
  br i1 %tobool.not.i, label %coda_get_vdoa_data.exit.thread, label %if.end.i

coda_get_vdoa_data.exit.thread:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %vdoa301 = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %vdoa301 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vdoa301, align 4
  br label %if.end93

if.end.i:                                         ; preds = %if.end87
  %call1.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call.i295) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.coda_get_vdoa_data.exit_crit_edge, label %if.end4.i

if.end.i.coda_get_vdoa_data.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_get_vdoa_data.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool6.not.i = icmp eq ptr %23, null
  %spec.select = select i1 %tobool6.not.i, ptr inttoptr (i32 -517 to ptr), ptr %23
  br label %coda_get_vdoa_data.exit

coda_get_vdoa_data.exit:                          ; preds = %if.end4.i, %if.end.i.coda_get_vdoa_data.exit_crit_edge
  %vdoa_data.0.i = phi ptr [ null, %if.end.i.coda_get_vdoa_data.exit_crit_edge ], [ %spec.select, %if.end4.i ]
  tail call void @of_node_put(ptr noundef nonnull %call.i295) #17
  %vdoa = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %vdoa to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vdoa_data.0.i, ptr %vdoa, align 4
  %cmp91 = icmp eq ptr %vdoa_data.0.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp91, label %coda_get_vdoa_data.exit.cleanup_crit_edge, label %coda_get_vdoa_data.exit.if.end93_crit_edge

coda_get_vdoa_data.exit.if.end93_crit_edge:       ; preds = %coda_get_vdoa_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

coda_get_vdoa_data.exit.cleanup_crit_edge:        ; preds = %coda_get_vdoa_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end93:                                         ; preds = %coda_get_vdoa_data.exit.if.end93_crit_edge, %coda_get_vdoa_data.exit.thread
  %call95 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %mb_err_rs = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 21
  %25 = call ptr @memset(ptr %mb_err_rs, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %mb_err_rs, ptr noundef nonnull @.str.85, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #17
  %interval1.i.i = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 21, i32 1
  %26 = ptrtoint ptr %interval1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 500, ptr %interval1.i.i, align 4
  %burst2.i.i = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 21, i32 2
  %27 = ptrtoint ptr %burst2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %burst2.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.72, ptr noundef nonnull @coda_probe.__key) #17
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %coda_mutex, ptr noundef nonnull @.str.74, ptr noundef nonnull @coda_probe.__key.73) #17
  %ida = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %ida, ptr noundef nonnull @.str.86, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i.i = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 19, i32 0, i32 1
  %28 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 19, i32 0, i32 2
  %29 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %xa_head.i.i, align 4
  %call105 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.45, ptr noundef null) #17
  %debugfs_root = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call105, ptr %debugfs_root, align 8
  %31 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devtype, align 4
  %product107 = getelementptr inbounds %struct.coda_devtype, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %product107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %product107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %34)
  %cmp108 = icmp eq i32 %34, 61441
  br i1 %cmp108, label %if.then109, label %if.end98.if.end116_crit_edge

if.end98.if.end116_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

if.then109:                                       ; preds = %if.end98
  %workbuf = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 12
  %workbuf_size = getelementptr inbounds %struct.coda_devtype, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %workbuf_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %workbuf_size, align 4
  %call112 = tail call i32 @coda_alloc_aux_buf(ptr noundef nonnull %call.i, ptr noundef %workbuf, i32 noundef %36, ptr noundef nonnull @.str.75, ptr noundef %call105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then109.err_v4l2_register_crit_edge, label %if.then109.if.end116_crit_edge

if.then109.if.end116_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

if.then109.err_v4l2_register_crit_edge:           ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_v4l2_register

if.end116:                                        ; preds = %if.then109.if.end116_crit_edge, %if.end98.if.end116_crit_edge
  %37 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype, align 4
  %tempbuf_size = getelementptr inbounds %struct.coda_devtype, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %tempbuf_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tempbuf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool118.not = icmp eq i32 %40, 0
  br i1 %tobool118.not, label %if.end116.if.end127_crit_edge, label %if.then119

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127

if.then119:                                       ; preds = %if.end116
  %tempbuf = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 11
  %41 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debugfs_root, align 8
  %call123 = tail call i32 @coda_alloc_aux_buf(ptr noundef nonnull %call.i, ptr noundef %tempbuf, i32 noundef %40, ptr noundef nonnull @.str.76, ptr noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then119.err_v4l2_register_crit_edge, label %if.then119.if.end127_crit_edge

if.then119.if.end127_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127

if.then119.err_v4l2_register_crit_edge:           ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_v4l2_register

if.end127:                                        ; preds = %if.then119.if.end127_crit_edge, %if.end116.if.end127_crit_edge
  %43 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %devtype, align 4
  %iram_size = getelementptr inbounds %struct.coda_devtype, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %iram_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iram_size, align 4
  %iram = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14
  %size = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14, i32 2
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size, align 4
  %48 = ptrtoint ptr %iram_pool to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iram_pool, align 8
  %paddr = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14, i32 1
  %call133 = tail call ptr @gen_pool_dma_alloc(ptr noundef %49, i32 noundef %46, ptr noundef %paddr) #17
  %50 = ptrtoint ptr %iram to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call133, ptr %iram, align 4
  %tobool137.not = icmp eq ptr %call133, null
  br i1 %tobool137.not, label %do.end141, label %if.else

do.end141:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78) #20
  br label %if.end160

if.else:                                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  %53 = call ptr @memset(ptr %call133, i32 0, i32 %52)
  %54 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iram, align 4
  %blob = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14, i32 3
  %56 = ptrtoint ptr %blob to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %blob, align 4
  %57 = load i32, ptr %size, align 4
  %size154 = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14, i32 3, i32 1
  %58 = ptrtoint ptr %size154 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %size154, align 4
  %59 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %debugfs_root, align 8
  %call158 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.68, i16 noundef zeroext 292, ptr noundef %60, ptr noundef %blob) #17
  %dentry = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 14, i32 4
  %61 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call158, ptr %dentry, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.else, %do.end141
  %call161 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.45, i32 noundef 10, i32 noundef 1) #17
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %call.i, i32 0, i32 17
  %62 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call161, ptr %workqueue, align 4
  %tobool163.not = icmp eq ptr %call161, null
  br i1 %tobool163.not, label %do.end167, label %if.end169

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82) #20
  br label %err_v4l2_register

if.end169:                                        ; preds = %if.end160
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #17
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #17, !srcloc !510
  %call.i296 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #17
  tail call void @pm_runtime_enable(ptr noundef %dev) #17
  %call174 = tail call fastcc i32 @coda_firmware_request(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end169.cleanup_crit_edge, label %err_alloc_workqueue

if.end169.cleanup_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_alloc_workqueue:                              ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #17
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  %65 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %66) #17
  br label %err_v4l2_register

err_v4l2_register:                                ; preds = %err_alloc_workqueue, %do.end167, %if.then119.err_v4l2_register_crit_edge, %if.then109.err_v4l2_register_crit_edge
  %ret.0 = phi i32 [ %call112, %if.then109.err_v4l2_register_crit_edge ], [ %call123, %if.then119.err_v4l2_register_crit_edge ], [ %call174, %err_alloc_workqueue ], [ -12, %do.end167 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2_register, %if.end169.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %coda_get_vdoa_data.exit.cleanup_crit_edge, %do.end85, %if.then72, %do.end64, %if.then53.cleanup_crit_edge, %do.end48, %if.end38.cleanup_crit_edge, %if.then31, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %11, %do.end23 ], [ %13, %if.then31 ], [ %call.i292, %do.end48 ], [ %call59, %do.end64 ], [ %19, %if.then72 ], [ %ret.0, %err_v4l2_register ], [ -12, %do.end85 ], [ -12, %entry.cleanup_crit_edge ], [ %call37, %if.end38.cleanup_crit_edge ], [ %call54, %if.then53.cleanup_crit_edge ], [ -517, %coda_get_vdoa_data.exit.cleanup_crit_edge ], [ %call95, %if.end93.cleanup_crit_edge ], [ 0, %if.end169.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i37 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i37, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 0
  tail call void @video_unregister_device(ptr noundef %arrayidx) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %driver_data.i.i37.1 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i37.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i37.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.1 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 1
  tail call void @video_unregister_device(ptr noundef %arrayidx.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %driver_data.i.i37.2 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 2, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i37.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i37.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.2 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 2
  tail call void @video_unregister_device(ptr noundef %arrayidx.2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %driver_data.i.i37.3 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 3, i32 5, i32 8
  %8 = ptrtoint ptr %driver_data.i.i37.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i37.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.3 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 3
  tail call void @video_unregister_device(ptr noundef %arrayidx.3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %driver_data.i.i37.4 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 4, i32 5, i32 8
  %10 = ptrtoint ptr %driver_data.i.i37.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i37.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.4 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 4
  tail call void @video_unregister_device(ptr noundef %arrayidx.4) #17
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %driver_data.i.i37.5 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 5, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i37.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i37.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.5 = getelementptr %struct.coda_dev, ptr %1, i32 0, i32 1, i32 5
  tail call void @video_unregister_device(ptr noundef %arrayidx.5) #17
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 8
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %for.inc.5.if.end7_crit_edge, label %if.then5

for.inc.5.if.end7_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then5:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @v4l2_m2m_release(ptr noundef nonnull %15) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.inc.5.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #17
  tail call void @v4l2_device_unregister(ptr noundef %1) #17
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #17
  %iram = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iram, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %iram_pool = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %iram_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iram_pool, align 8
  %22 = ptrtoint ptr %19 to i32
  %size = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  tail call void @gen_pool_free_owner(ptr noundef %21, i32 noundef %22, i32 noundef %24, ptr noundef null) #17
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %codebuf = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %codebuf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codebuf, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end14.coda_free_aux_buf.exit_crit_edge, label %if.then.i

if.end14.coda_free_aux_buf.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_free_aux_buf.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 8
  %size.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %paddr.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #17
  %33 = ptrtoint ptr %codebuf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %codebuf, align 4
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %size.i, align 4
  %dentry.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 10, i32 4
  %35 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %36) #17
  %37 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dentry.i, align 4
  br label %coda_free_aux_buf.exit

coda_free_aux_buf.exit:                           ; preds = %if.then.i, %if.end14.coda_free_aux_buf.exit_crit_edge
  %tempbuf = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %tempbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tempbuf, align 4
  %tobool.not.i38 = icmp eq ptr %39, null
  br i1 %tobool.not.i38, label %coda_free_aux_buf.exit.coda_free_aux_buf.exit44_crit_edge, label %if.then.i43

coda_free_aux_buf.exit.coda_free_aux_buf.exit44_crit_edge: ; preds = %coda_free_aux_buf.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_free_aux_buf.exit44

if.then.i43:                                      ; preds = %coda_free_aux_buf.exit
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i39 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %dev1.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i39, align 8
  %size.i40 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %size.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i40, align 4
  %paddr.i41 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %paddr.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %paddr.i41, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %39, i32 noundef %45, i32 noundef 0) #17
  %46 = ptrtoint ptr %tempbuf to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %tempbuf, align 4
  %47 = ptrtoint ptr %size.i40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %size.i40, align 4
  %dentry.i42 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 11, i32 4
  %48 = ptrtoint ptr %dentry.i42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dentry.i42, align 4
  tail call void @debugfs_remove(ptr noundef %49) #17
  %50 = ptrtoint ptr %dentry.i42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dentry.i42, align 4
  br label %coda_free_aux_buf.exit44

coda_free_aux_buf.exit44:                         ; preds = %if.then.i43, %coda_free_aux_buf.exit.coda_free_aux_buf.exit44_crit_edge
  %workbuf = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %workbuf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %workbuf, align 4
  %tobool.not.i45 = icmp eq ptr %52, null
  br i1 %tobool.not.i45, label %coda_free_aux_buf.exit44.coda_free_aux_buf.exit51_crit_edge, label %if.then.i50

coda_free_aux_buf.exit44.coda_free_aux_buf.exit51_crit_edge: ; preds = %coda_free_aux_buf.exit44
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_free_aux_buf.exit51

if.then.i50:                                      ; preds = %coda_free_aux_buf.exit44
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i46 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %dev1.i46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i46, align 8
  %size.i47 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 12, i32 2
  %55 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i47, align 4
  %paddr.i48 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %paddr.i48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %paddr.i48, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %56, ptr noundef nonnull %52, i32 noundef %58, i32 noundef 0) #17
  %59 = ptrtoint ptr %workbuf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %workbuf, align 4
  %60 = ptrtoint ptr %size.i47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %size.i47, align 4
  %dentry.i49 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 12, i32 4
  %61 = ptrtoint ptr %dentry.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dentry.i49, align 4
  tail call void @debugfs_remove(ptr noundef %62) #17
  %63 = ptrtoint ptr %dentry.i49 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %dentry.i49, align 4
  br label %coda_free_aux_buf.exit51

coda_free_aux_buf.exit51:                         ; preds = %if.then.i50, %coda_free_aux_buf.exit44.coda_free_aux_buf.exit51_crit_edge
  %debugfs_root = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 20
  %64 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %debugfs_root, align 8
  tail call void @debugfs_remove(ptr noundef %65) #17
  %ida = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 19
  tail call void @ida_destroy(ptr noundef %ida) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_irq_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda9_jpeg_irq_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_firmware_request(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype, align 4
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @coda_firmware_request.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@coda_firmware_request, %if.then5)) #17
          to label %do.end [label %if.then5], !srcloc !511

if.then5:                                         ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %product, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %11, label %sw.default.i [
    i32 61441, label %if.then5.coda_product_name.exit_crit_edge
    i32 61450, label %sw.bb1.i
    i32 61458, label %sw.bb2.i
    i32 61472, label %sw.bb3.i
  ]

if.then5.coda_product_name.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb3.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @coda_product_name.buf, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %11) #17
  br label %coda_product_name.exit

coda_product_name.exit:                           ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then5.coda_product_name.exit_crit_edge
  %retval.0.i19 = phi ptr [ @coda_product_name.buf, %sw.default.i ], [ @.str.7, %sw.bb3.i ], [ @.str.6, %sw.bb2.i ], [ @.str.5, %sw.bb1.i ], [ @.str.4, %if.then5.coda_product_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @coda_firmware_request.__UNIQUE_ID_ddebug329, ptr noundef %7, ptr noundef nonnull @.str.89, ptr noundef %5, ptr noundef nonnull %retval.0.i19) #17
  br label %do.end

do.end:                                           ; preds = %coda_product_name.exit, %if.end
  %dev10 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 8
  %call11 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %5, ptr noundef %14, i32 noundef 3264, ptr noundef %dev, ptr noundef nonnull @coda_fw_callback) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !512
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #17, !srcloc !513
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !514
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_fw_callback(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  %firmware = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware, align 8
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %firmware, align 8
  %call = tail call fastcc i32 @coda_firmware_request(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name) #20
  br label %put_pm

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %do.end9, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %dev10 = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 2
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev10, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype, align 4
  %arrayidx = getelementptr [3 x ptr], ptr %6, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.93, ptr noundef %8) #20
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %if.end3.if.end13_crit_edge
  %codebuf = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  %debugfs_root = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 20
  %11 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root, align 8
  %dev1.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 2
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 8
  %paddr.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef %10, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #17
  %15 = ptrtoint ptr %codebuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %codebuf, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %coda_alloc_aux_buf.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end13
  %size5.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %size5.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.end.i.if.end17_crit_edge, label %if.then8.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %blob.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %blob.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %blob.i, align 4
  %size11.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10, i32 3, i32 1
  %18 = ptrtoint ptr %size11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %size11.i, align 4
  %call13.i = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.96, i16 noundef zeroext 292, ptr noundef nonnull %12, ptr noundef %blob.i) #17
  %dentry.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 10, i32 4
  %19 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13.i, ptr %dentry.i, align 4
  br label %if.end17

coda_alloc_aux_buf.exit:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %name3.i = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name3.i, ptr noundef nonnull @.str.96, i32 noundef %10) #20
  br label %put_pm

if.end17:                                         ; preds = %if.then8.i, %if.end.i.if.end17_crit_edge
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %25)
  %cmp.i = icmp eq i8 %25, 77
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end17.if.end.i113_crit_edge

if.end17.if.end.i113_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i113

land.lhs.true.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx2.i = getelementptr i8, ptr %21, i32 1
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %27)
  %cmp4.i = icmp eq i8 %27, 88
  %spec.select.idx.i = select i1 %cmp4.i, i32 4, i32 0
  %spec.select.i = getelementptr i32, ptr %21, i32 %spec.select.idx.i
  br label %if.end.i113

if.end.i113:                                      ; preds = %land.lhs.true.i, %if.end17.if.end.i113_crit_edge
  %src.0.i = phi ptr [ %21, %if.end17.if.end.i113_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %28 = ptrtoint ptr %src.0.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %src.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3812, i16 %29)
  %cmp7.i = icmp eq i16 %29, 3812
  %30 = ptrtoint ptr %codebuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %codebuf, align 8
  br i1 %cmp7.i, label %if.then9.i, label %if.else42.i

if.then9.i:                                       ; preds = %if.end.i113
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 3
  %32 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devtype.i, align 4
  %product.i = getelementptr inbounds %struct.coda_devtype, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %35)
  %cmp10.i = icmp eq i32 %35, 61441
  %sub.i = add i32 %23, -16
  br i1 %cmp10.i, label %for.cond.preheader.i, label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %if.then9.i
  %div2074.i = lshr i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp2177.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp2177.not.i, label %for.cond18.preheader.i.coda_copy_firmware.exit_crit_edge, label %for.cond18.preheader.i.for.body23.i_crit_edge

for.cond18.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond18.preheader.i
  br label %for.body23.i

for.cond18.preheader.i.coda_copy_firmware.exit_crit_edge: ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_copy_firmware.exit

for.cond.preheader.i:                             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp1379.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp1379.not.i, label %for.cond.preheader.i.coda_copy_firmware.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.coda_copy_firmware.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_copy_firmware.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div75.i = lshr i32 %sub.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.080.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx15.i = getelementptr i32, ptr %src.0.i, i32 %i.080.i
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 16) #17
  %arrayidx17.i = getelementptr i32, ptr %31, i32 %i.080.i
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %arrayidx17.i, align 4
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div75.i
  br i1 %exitcond.not.i, label %for.body.i.coda_copy_firmware.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.coda_copy_firmware.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_copy_firmware.exit

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.cond18.preheader.i.for.body23.i_crit_edge
  %i.178.i = phi i32 [ %add39.i, %for.body23.i.for.body23.i_crit_edge ], [ 0, %for.cond18.preheader.i.for.body23.i_crit_edge ]
  %add.i = or i32 %i.178.i, 1
  %arrayidx24.i = getelementptr i32, ptr %src.0.i, i32 %add.i
  %39 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx24.i, align 4
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 16) #17
  %arrayidx30.i = getelementptr i32, ptr %31, i32 %i.178.i
  %41 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or29.i, ptr %arrayidx30.i, align 4
  %arrayidx31.i = getelementptr i32, ptr %src.0.i, i32 %i.178.i
  %42 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx31.i, align 4
  %or35.i = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 16) #17
  %arrayidx37.i = getelementptr i32, ptr %31, i32 %add.i
  %44 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or35.i, ptr %arrayidx37.i, align 4
  %add39.i = add nuw nsw i32 %i.178.i, 2
  %cmp21.i = icmp ult i32 %add39.i, %div2074.i
  br i1 %cmp21.i, label %for.body23.i.for.body23.i_crit_edge, label %for.body23.i.coda_copy_firmware.exit_crit_edge

for.body23.i.coda_copy_firmware.exit_crit_edge:   ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_copy_firmware.exit

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body23.i

if.else42.i:                                      ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #19
  %45 = call ptr @memcpy(ptr %31, ptr %src.0.i, i32 %23)
  br label %coda_copy_firmware.exit

coda_copy_firmware.exit:                          ; preds = %if.else42.i, %for.body23.i.coda_copy_firmware.exit_crit_edge, %for.body.i.coda_copy_firmware.exit_crit_edge, %for.cond.preheader.i.coda_copy_firmware.exit_crit_edge, %for.cond18.preheader.i.coda_copy_firmware.exit_crit_edge
  tail call void @release_firmware(ptr noundef nonnull %fw) #17
  %call19 = tail call fastcc i32 @coda_hw_init(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end30

do.end24:                                         ; preds = %coda_copy_firmware.exit
  call void @__sanitizer_cov_trace_pc() #19
  %name27 = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name27) #20
  br label %put_pm

if.end30:                                         ; preds = %coda_copy_firmware.exit
  %call31 = tail call i32 @coda_check_firmware(ptr noundef %context) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.put_pm_crit_edge, label %if.end34

if.end30.put_pm_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_pm

if.end34:                                         ; preds = %if.end30
  %call35 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @coda_m2m_ops) #17
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 18
  %46 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call35, ptr %m2m_dev, align 8
  %cmp.i114 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %do.end41, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end34
  %devtype48 = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 3
  %47 = ptrtoint ptr %devtype48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devtype48, align 4
  %num_vdevs130 = getelementptr inbounds %struct.coda_devtype, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %num_vdevs130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_vdevs130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp49131.not = icmp eq i32 %50, 0
  br i1 %cmp49131.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %if.end.i118.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.i118.lr.ph:                                ; preds = %for.cond.preheader
  %dev_mutex.i = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 15
  %name14.i = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  br label %if.end.i118

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %name44 = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name44) #20
  br label %put_pm

if.end.i118:                                      ; preds = %for.inc.if.end.i118_crit_edge, %if.end.i118.lr.ph
  %51 = phi ptr [ %48, %if.end.i118.lr.ph ], [ %83, %for.inc.if.end.i118_crit_edge ]
  %i.0132 = phi i32 [ 0, %if.end.i118.lr.ph ], [ %inc65, %for.inc.if.end.i118_crit_edge ]
  %arrayidx.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132
  %vdevs.i = getelementptr inbounds %struct.coda_devtype, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %vdevs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vdevs.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %53, i32 %i.0132
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx3.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %name5.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 12
  %call.i = tail call i32 @strscpy(ptr noundef %name5.i, ptr noundef %57, i32 noundef 32) #17
  %fops.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 3
  %58 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @coda_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 24
  %59 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @coda_ioctl_ops, ptr %ioctl_ops.i, align 4
  %release.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 23
  %60 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %lock.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 26
  %61 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev_mutex.i, ptr %lock.i, align 8
  %v4l2_dev10.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 7
  %62 = ptrtoint ptr %v4l2_dev10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %context, ptr %v4l2_dev10.i, align 4
  %vfl_dir.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 14
  %63 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %vfl_dir.i, align 4
  %device_caps.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 4
  %64 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 67141632, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 5, i32 8
  %65 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %context, ptr %driver_data.i.i.i, align 4
  %valid_ioctls.i.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 25
  tail call void @_set_bit(i32 noundef 58, ptr noundef %valid_ioctls.i.i) #17
  tail call void @_set_bit(i32 noundef 59, ptr noundef %valid_ioctls.i.i) #17
  tail call void @_set_bit(i32 noundef 60, ptr noundef %valid_ioctls.i.i) #17
  %66 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fops.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i.i116 = tail call i32 @__video_register_device(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %69) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %tobool.not.i117 = icmp eq i32 %call.i.i116, 0
  br i1 %tobool.not.i117, label %do.end.i119, label %do.end55

do.end.i119:                                      ; preds = %if.end.i118
  %init_name.i.i.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 5, i32 3
  %70 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i119.for.inc_crit_edge

do.end.i119.for.inc_crit_edge:                    ; preds = %do.end.i119
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i.i.i:                                     ; preds = %do.end.i119
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i.i = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %i.0132, i32 5
  %72 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i.i, align 4
  br label %for.inc

do.end55:                                         ; preds = %if.end.i118
  %74 = ptrtoint ptr %devtype48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devtype48, align 4
  %vdevs = getelementptr inbounds %struct.coda_devtype, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdevs, align 4
  %arrayidx61 = getelementptr ptr, ptr %77, i32 %i.0132
  %78 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx61, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name14.i, ptr noundef %81, i32 noundef %call.i.i116) #20
  %dec134 = add i32 %i.0132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec134)
  %cmp68135 = icmp sgt i32 %dec134, -1
  br i1 %cmp68135, label %do.end55.while.body_crit_edge, label %do.end55.while.end_crit_edge

do.end55.while.end_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

do.end55.while.body_crit_edge:                    ; preds = %do.end55
  br label %while.body

for.inc:                                          ; preds = %if.end.i.i.i, %do.end.i119.for.inc_crit_edge
  %retval.0.i.i.i = phi ptr [ %73, %if.end.i.i.i ], [ %71, %do.end.i119.for.inc_crit_edge ]
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name14.i, ptr noundef %57, ptr noundef %retval.0.i.i.i) #20
  %inc65 = add nuw i32 %i.0132, 1
  %82 = ptrtoint ptr %devtype48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devtype48, align 4
  %num_vdevs = getelementptr inbounds %struct.coda_devtype, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %num_vdevs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_vdevs, align 4
  %cmp49 = icmp ult i32 %inc65, %85
  br i1 %cmp49, label %for.inc.if.end.i118_crit_edge, label %for.inc.cleanup.sink.split_crit_edge

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

for.inc.if.end.i118_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i118

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end55.while.body_crit_edge
  %dec136 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec134, %do.end55.while.body_crit_edge ]
  %arrayidx69 = getelementptr %struct.coda_dev, ptr %context, i32 0, i32 1, i32 %dec136
  tail call void @video_unregister_device(ptr noundef %arrayidx69) #17
  %dec = add nsw i32 %dec136, -1
  %cmp68 = icmp sgt i32 %dec136, 0
  br i1 %cmp68, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end55.while.end_crit_edge
  %86 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %87) #17
  br label %put_pm

put_pm:                                           ; preds = %while.end, %do.end41, %if.end30.put_pm_crit_edge, %do.end24, %coda_alloc_aux_buf.exit, %do.end
  %dev71 = getelementptr inbounds %struct.coda_dev, ptr %context, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_pm, %for.inc.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge
  %dev71.sink = phi ptr [ %dev71, %put_pm ], [ %dev1.i, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %dev1.i, %for.inc.cleanup.sink.split_crit_edge ]
  %88 = ptrtoint ptr %dev71.sink to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev71.sink, align 8
  %call.i122 = tail call i32 @__pm_runtime_idle(ptr noundef %89, i32 noundef 4) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_hw_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_ahb = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb, align 8
  %call.i128 = tail call i32 @clk_prepare(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i132, label %if.end.cleanup.sink.split.sink.split_crit_edge

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split

if.end.i132:                                      ; preds = %if.end
  %call1.i130 = tail call i32 @clk_enable(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130)
  %tobool2.not.i131 = icmp eq i32 %call1.i130, 0
  br i1 %tobool2.not.i131, label %if.end4, label %if.end.i132.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end.i132.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split.sink.split

if.end4:                                          ; preds = %if.end.i132
  %rstc = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 4
  %call5 = tail call i32 @reset_control_reset(ptr noundef %5) #17
  %codebuf = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %codebuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codebuf, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %11)
  %cmp = icmp eq i32 %11, 61441
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %regs_base.i = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 6
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.for.body12_crit_edge

if.end4.for.body12_crit_edge:                     ; preds = %if.end4
  br label %for.body12

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %coda_write.exit.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.0262 = phi i32 [ %inc, %coda_write.exit.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %shl = shl i32 %i.0262, 16
  %xor = xor i32 %i.0262, 1
  %arrayidx = getelementptr i16, ptr %7, i32 %xor
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %13 to i32
  %or = or i32 %shl, %conv
  %14 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp sgt i32 %14, 2
  br i1 %cmp.i, label %do.end.i, label %for.body.coda_write.exit_crit_edge

for.body.coda_write.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef %or, i32 noundef 4) #20
  br label %coda_write.exit

coda_write.exit:                                  ; preds = %do.end.i, %for.body.coda_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  %16 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #17, !srcloc !506
  %inc = add nuw nsw i32 %i.0262, 1
  %exitcond265.not = icmp eq i32 %inc, 2048
  br i1 %exitcond265.not, label %coda_write.exit.if.end23_crit_edge, label %coda_write.exit.for.body_crit_edge

coda_write.exit.for.body_crit_edge:               ; preds = %coda_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

coda_write.exit.if.end23_crit_edge:               ; preds = %coda_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

for.body12:                                       ; preds = %coda_write.exit143.for.body12_crit_edge, %if.end4.for.body12_crit_edge
  %i.1261 = phi i32 [ %inc21, %coda_write.exit143.for.body12_crit_edge ], [ 0, %if.end4.for.body12_crit_edge ]
  %shl14 = shl i32 %i.1261, 16
  %sub = xor i32 %i.1261, 3
  %arrayidx16 = getelementptr i16, ptr %7, i32 %sub
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %19 to i32
  %or19 = or i32 %shl14, %conv17
  %20 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i137 = icmp sgt i32 %20, 2
  br i1 %cmp.i137, label %do.end.i140, label %for.body12.coda_write.exit143_crit_edge

for.body12.coda_write.exit143_crit_edge:          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit143

do.end.i140:                                      ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  %call.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef %or19, i32 noundef 4) #20
  br label %coda_write.exit143

coda_write.exit143:                               ; preds = %do.end.i140, %for.body12.coda_write.exit143_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %21 = tail call i32 @llvm.bswap.i32(i32 %or19) #17
  %22 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_base.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %21) #17, !srcloc !506
  %inc21 = add nuw nsw i32 %i.1261, 1
  %exitcond.not = icmp eq i32 %inc21, 2048
  br i1 %exitcond.not, label %coda_write.exit143.if.end23_crit_edge, label %coda_write.exit143.for.body12_crit_edge

coda_write.exit143.for.body12_crit_edge:          ; preds = %coda_write.exit143
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body12

coda_write.exit143.if.end23_crit_edge:            ; preds = %coda_write.exit143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.end23:                                         ; preds = %coda_write.exit143.if.end23_crit_edge, %coda_write.exit.if.end23_crit_edge
  %name.i145 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %regs_base.i148 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 6
  br label %for.body27

for.body27:                                       ; preds = %coda_write.exit150.for.body27_crit_edge, %if.end23
  %i.2263 = phi i32 [ 0, %if.end23 ], [ %inc30, %coda_write.exit150.for.body27_crit_edge ]
  %mul = shl i32 %i.2263, 2
  %add28 = add nuw nsw i32 %mul, 256
  %24 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i144 = icmp sgt i32 %24, 2
  br i1 %cmp.i144, label %do.end.i147, label %for.body27.coda_write.exit150_crit_edge

for.body27.coda_write.exit150_crit_edge:          ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit150

do.end.i147:                                      ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #19
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %add28) #20
  br label %coda_write.exit150

coda_write.exit150:                               ; preds = %do.end.i147, %for.body27.coda_write.exit150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %25 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i149 = getelementptr i8, ptr %26, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 0) #17, !srcloc !506
  %inc30 = add nuw nsw i32 %i.2263, 1
  %exitcond266.not = icmp eq i32 %inc30, 64
  br i1 %exitcond266.not, label %for.end31, label %coda_write.exit150.for.body27_crit_edge

coda_write.exit150.for.body27_crit_edge:          ; preds = %coda_write.exit150
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body27

for.end31:                                        ; preds = %coda_write.exit150
  %27 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devtype, align 4
  %product33 = getelementptr inbounds %struct.coda_devtype, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %product33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %product33, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %30, label %if.else46 [
    i32 61472, label %for.end31.if.then45_crit_edge
    i32 61458, label %for.end31.if.then45_crit_edge272
    i32 61450, label %for.end31.if.then45_crit_edge273
  ]

for.end31.if.then45_crit_edge273:                 ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

for.end31.if.then45_crit_edge272:                 ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

for.end31.if.then45_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then45

if.then45:                                        ; preds = %for.end31.if.then45_crit_edge, %for.end31.if.then45_crit_edge272, %for.end31.if.then45_crit_edge273
  %paddr = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %paddr, align 4
  %34 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i151 = icmp sgt i32 %34, 2
  br i1 %cmp.i151, label %do.end.i154, label %if.then45.coda_write.exit157_crit_edge

if.then45.coda_write.exit157_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit157

do.end.i154:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %call.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef 280) #20
  br label %coda_write.exit157

coda_write.exit157:                               ; preds = %do.end.i154, %if.then45.coda_write.exit157_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #17
  %36 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i156 = getelementptr i8, ptr %37, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %35) #17, !srcloc !506
  %38 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.i158 = icmp sgt i32 %38, 2
  br i1 %cmp.i158, label %do.end.i161, label %coda_write.exit157.coda_write.exit164_crit_edge

coda_write.exit157.coda_write.exit164_crit_edge:  ; preds = %coda_write.exit157
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit164

do.end.i161:                                      ; preds = %coda_write.exit157
  call void @__sanitizer_cov_trace_pc() #19
  %call.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 276) #20
  br label %coda_write.exit164

coda_write.exit164:                               ; preds = %do.end.i161, %coda_write.exit157.coda_write.exit164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %39 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i163 = getelementptr i8, ptr %40, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 0) #17, !srcloc !506
  br label %if.end48

if.else46:                                        ; preds = %for.end31
  %paddr47 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %paddr47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %paddr47, align 4
  %43 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i165 = icmp sgt i32 %43, 2
  br i1 %cmp.i165, label %do.end.i168, label %if.else46.coda_write.exit171_crit_edge

if.else46.coda_write.exit171_crit_edge:           ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit171

do.end.i168:                                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  %call.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef %42, i32 noundef 260) #20
  br label %coda_write.exit171

coda_write.exit171:                               ; preds = %do.end.i168, %if.else46.coda_write.exit171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %44 = tail call i32 @llvm.bswap.i32(i32 %42) #17
  %45 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i170 = getelementptr i8, ptr %46, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %44) #17, !srcloc !506
  br label %if.end48

if.end48:                                         ; preds = %coda_write.exit171, %coda_write.exit164
  %paddr50 = getelementptr inbounds %struct.coda_dev, ptr %dev, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %paddr50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %paddr50, align 4
  %49 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i172 = icmp sgt i32 %49, 2
  br i1 %cmp.i172, label %do.end.i175, label %if.end48.coda_write.exit178_crit_edge

if.end48.coda_write.exit178_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit178

do.end.i175:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %call.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef %48, i32 noundef 256) #20
  br label %coda_write.exit178

coda_write.exit178:                               ; preds = %do.end.i175, %if.end48.coda_write.exit178_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #17
  %51 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i177 = getelementptr i8, ptr %52, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %50) #17, !srcloc !506
  %53 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i179 = icmp sgt i32 %53, 2
  br i1 %cmp.i179, label %do.end.i182, label %coda_write.exit178.coda_write.exit184_crit_edge

coda_write.exit178.coda_write.exit184_crit_edge:  ; preds = %coda_write.exit178
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit184

do.end.i182:                                      ; preds = %coda_write.exit178
  call void @__sanitizer_cov_trace_pc() #19
  %call.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #20
  br label %coda_write.exit184

coda_write.exit184:                               ; preds = %do.end.i182, %coda_write.exit178.coda_write.exit184_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %54 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs_base.i148, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #17, !srcloc !506
  %56 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %devtype, align 4
  %product52 = getelementptr inbounds %struct.coda_devtype, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %product52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %product52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %59)
  %cond = icmp eq i32 %59, 61441
  %60 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp.i185 = icmp sgt i32 %60, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %coda_write.exit184
  br i1 %cmp.i185, label %do.end.i188, label %sw.bb.coda_write.exit191_crit_edge

sw.bb.coda_write.exit191_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit191

do.end.i188:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef 268) #20
  br label %coda_write.exit191

coda_write.exit191:                               ; preds = %do.end.i188, %sw.bb.coda_write.exit191_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %61 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i190 = getelementptr i8, ptr %62, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 67108864) #17, !srcloc !506
  br label %sw.epilog

sw.default:                                       ; preds = %coda_write.exit184
  br i1 %cmp.i185, label %do.end.i195, label %sw.default.coda_write.exit198_crit_edge

sw.default.coda_write.exit198_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit198

do.end.i195:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  %call.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef 268) #20
  br label %coda_write.exit198

coda_write.exit198:                               ; preds = %do.end.i195, %sw.default.coda_write.exit198_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %63 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i197 = getelementptr i8, ptr %64, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 134217728) #17, !srcloc !506
  br label %sw.epilog

sw.epilog:                                        ; preds = %coda_write.exit198, %coda_write.exit191
  %65 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %devtype, align 4
  %product54 = getelementptr inbounds %struct.coda_devtype, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %product54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %product54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %68)
  %cmp55 = icmp eq i32 %68, 61472
  %69 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp.i199 = icmp sgt i32 %69, 2
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %sw.epilog
  br i1 %cmp.i199, label %do.end.i202, label %if.then57.coda_write.exit205_crit_edge

if.then57.coda_write.exit205_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit205

do.end.i202:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  %call.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 4096, i32 noundef 272) #20
  br label %coda_write.exit205

coda_write.exit205:                               ; preds = %do.end.i202, %if.then57.coda_write.exit205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %70 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i204 = getelementptr i8, ptr %71, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 1048576) #17, !srcloc !506
  br label %if.end59

if.else58:                                        ; preds = %sw.epilog
  br i1 %cmp.i199, label %do.end.i209, label %if.else58.coda_write.exit212_crit_edge

if.else58.coda_write.exit212_crit_edge:           ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit212

do.end.i209:                                      ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #19
  %call.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 272) #20
  br label %coda_write.exit212

coda_write.exit212:                               ; preds = %do.end.i209, %if.else58.coda_write.exit212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %72 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i211 = getelementptr i8, ptr %73, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 0) #17, !srcloc !506
  br label %if.end59

if.end59:                                         ; preds = %coda_write.exit212, %coda_write.exit205
  %74 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devtype, align 4
  %product61 = getelementptr inbounds %struct.coda_devtype, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %product61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %product61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %77)
  %cmp62.not = icmp eq i32 %77, 61441
  br i1 %cmp62.not, label %if.end59.if.end65_crit_edge, label %if.then64

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then64:                                        ; preds = %if.end59
  %78 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp.i213 = icmp sgt i32 %78, 2
  br i1 %cmp.i213, label %do.end.i216, label %if.then64.coda_write.exit219_crit_edge

if.then64.coda_write.exit219_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit219

do.end.i216:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  %call.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 320) #20
  br label %coda_write.exit219

coda_write.exit219:                               ; preds = %do.end.i216, %if.then64.coda_write.exit219_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %79 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i218 = getelementptr i8, ptr %80, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 0) #17, !srcloc !506
  br label %if.end65

if.end65:                                         ; preds = %coda_write.exit219, %if.end59.if.end65_crit_edge
  %81 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp.i220 = icmp sgt i32 %81, 2
  br i1 %cmp.i220, label %do.end.i223, label %if.end65.coda_write.exit226_crit_edge

if.end65.coda_write.exit226_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit226

do.end.i223:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  %call.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef 368) #20
  br label %coda_write.exit226

coda_write.exit226:                               ; preds = %do.end.i223, %if.end65.coda_write.exit226_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %82 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i225 = getelementptr i8, ptr %83, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 134217728) #17, !srcloc !506
  %84 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i228 = getelementptr i8, ptr %85, i32 20
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #17, !srcloc !507
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !508
  %88 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp.i229 = icmp sgt i32 %88, 2
  br i1 %cmp.i229, label %coda_read.exit, label %coda_read.exit.thread

coda_read.exit.thread:                            ; preds = %coda_write.exit226
  call void @__sanitizer_cov_trace_pc() #19
  %or67257 = or i32 %87, 1
  br label %coda_write.exit238

coda_read.exit:                                   ; preds = %coda_write.exit226
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.3, i32 noundef %87, i32 noundef 20) #20
  %.pr = load i32, ptr @coda_debug, align 4
  %or67 = or i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i232 = icmp sgt i32 %.pr, 2
  br i1 %cmp.i232, label %do.end.i235, label %coda_read.exit.coda_write.exit238_crit_edge

coda_read.exit.coda_write.exit238_crit_edge:      ; preds = %coda_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit238

do.end.i235:                                      ; preds = %coda_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call.i234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef %or67, i32 noundef 20) #20
  br label %coda_write.exit238

coda_write.exit238:                               ; preds = %do.end.i235, %coda_read.exit.coda_write.exit238_crit_edge, %coda_read.exit.thread
  %or67259 = phi i32 [ %or67257, %coda_read.exit.thread ], [ %or67, %coda_read.exit.coda_write.exit238_crit_edge ], [ %or67, %do.end.i235 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %89 = tail call i32 @llvm.bswap.i32(i32 %or67259) #17
  %90 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i237 = getelementptr i8, ptr %91, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %89) #17, !srcloc !506
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #17
  %and68 = and i32 %87, -2
  %93 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i239 = icmp sgt i32 %93, 2
  br i1 %cmp.i239, label %do.end.i242, label %coda_write.exit238.coda_write.exit245_crit_edge

coda_write.exit238.coda_write.exit245_crit_edge:  ; preds = %coda_write.exit238
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit245

do.end.i242:                                      ; preds = %coda_write.exit238
  call void @__sanitizer_cov_trace_pc() #19
  %call.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef %and68, i32 noundef 20) #20
  br label %coda_write.exit245

coda_write.exit245:                               ; preds = %do.end.i242, %coda_write.exit238.coda_write.exit245_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %94 = tail call i32 @llvm.bswap.i32(i32 %and68) #17
  %95 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs_base.i148, align 8
  %add.ptr.i244 = getelementptr i8, ptr %96, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244, i32 %94) #17, !srcloc !506
  %97 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp.i246 = icmp sgt i32 %97, 2
  br i1 %cmp.i246, label %do.end.i249, label %coda_write.exit245.coda_write.exit251_crit_edge

coda_write.exit245.coda_write.exit251_crit_edge:  ; preds = %coda_write.exit245
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_write.exit251

do.end.i249:                                      ; preds = %coda_write.exit245
  call void @__sanitizer_cov_trace_pc() #19
  %call.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i145, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 0) #20
  br label %coda_write.exit251

coda_write.exit251:                               ; preds = %do.end.i249, %coda_write.exit245.coda_write.exit251_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @arm_heavy_mb() #17
  %98 = ptrtoint ptr %regs_base.i148 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs_base.i148, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 16777216) #17, !srcloc !506
  %100 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk_ahb, align 8
  tail call void @clk_disable(ptr noundef %101) #17
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %coda_write.exit251, %if.end.i132.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.sink269 = phi ptr [ %101, %coda_write.exit251 ], [ %3, %if.end.i132.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ 0, %coda_write.exit251 ], [ %call1.i130, %if.end.i132.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink269) #17
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %call.i128, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %102 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %103) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.i.cleanup.sink.split_crit_edge ], [ %103, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_check_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_device_run(ptr noundef %m2m_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_priv, align 8
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  %pic_run_work = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %pic_run_work) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_job_ready(ptr noundef readonly %m2m_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 31, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rdy.i, align 4
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 16
  %4 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %do.body

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

do.body:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp sgt i32 %6, 0
  br i1 %cmp1, label %do.end, label %do.body.cleanup544_crit_edge

do.body.cleanup544_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_priv, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name, i32 noundef %10) #20
  br label %cleanup544

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %num_rdy.i630 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %num_rdy.i630 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_rdy.i630, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %do.body19, label %if.end41

do.body19:                                        ; preds = %if.end13
  %13 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20 = icmp sgt i32 %13, 0
  br i1 %cmp20, label %do.end27, label %do.body19.cleanup544_crit_edge

do.body19.cleanup544_crit_edge:                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end27:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_priv, align 8
  %name31 = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 4
  %idx33 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %16 = ptrtoint ptr %idx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx33, align 8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name31, i32 noundef %17) #20
  br label %cleanup544

if.end41:                                         ; preds = %if.end13
  %inst_type42 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 16
  %18 = ptrtoint ptr %inst_type42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst_type42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp43 = icmp eq i32 %19, 1
  br i1 %cmp43, label %land.lhs.true44, label %if.end41.if.end492_crit_edge

if.end41.if.end492_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end492

land.lhs.true44:                                  ; preds = %if.end41
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 61
  %20 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool45.not = icmp eq i8 %21, 0
  br i1 %tobool45.not, label %land.lhs.true44.if.end492_crit_edge, label %if.then46

land.lhs.true44.if.end492_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end492

if.then46:                                        ; preds = %land.lhs.true44
  %bit_stream_param = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 55
  %22 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  %num_metas48 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 47
  %24 = ptrtoint ptr %num_metas48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_metas48, align 4
  %frm_dis_flg = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 56
  %26 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frm_dis_flg, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %27) #17
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 62
  %28 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_vdoa, align 1, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool364.not = icmp eq i8 %29, 0
  br i1 %tobool364.not, label %if.then46.if.end396_crit_edge, label %land.lhs.true366

if.then46.if.end396_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end396

land.lhs.true366:                                 ; preds = %if.then46
  %num_internal_frames = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 50
  %30 = ptrtoint ptr %num_internal_frames to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_internal_frames, align 4
  %sub = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub)
  %cmp367.not = icmp ult i32 %call.i, %sub
  br i1 %cmp367.not, label %land.lhs.true366.if.end396_crit_edge, label %do.body370

land.lhs.true366.if.end396_crit_edge:             ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end396

do.body370:                                       ; preds = %land.lhs.true366
  %32 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp371 = icmp sgt i32 %32, 0
  br i1 %cmp371, label %do.end380, label %do.body370.cleanup544_crit_edge

do.body370.cleanup544_crit_edge:                  ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end380:                                        ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m2m_priv, align 8
  %name384 = getelementptr inbounds %struct.v4l2_device, ptr %34, i32 0, i32 4
  %idx386 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %35 = ptrtoint ptr %idx386 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx386, align 8
  %37 = ptrtoint ptr %frm_dis_flg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frm_dis_flg, align 4
  %call389 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name384, i32 noundef %36, i32 noundef %call.i, i32 noundef %31, i32 noundef %38) #20
  br label %cleanup544

if.end396:                                        ; preds = %land.lhs.true366.if.end396_crit_edge, %if.then46.if.end396_crit_edge
  %hold = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 40
  %39 = ptrtoint ptr %hold to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hold, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool397.not = icmp eq i8 %40, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool397.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end426, label %do.body402

do.body402:                                       ; preds = %if.end396
  %41 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp403 = icmp sgt i32 %41, 0
  br i1 %cmp403, label %do.end412, label %do.body402.cleanup544_crit_edge

do.body402.cleanup544_crit_edge:                  ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end412:                                        ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_priv, align 8
  %name416 = getelementptr inbounds %struct.v4l2_device, ptr %43, i32 0, i32 4
  %idx418 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %44 = ptrtoint ptr %idx418 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx418, align 8
  %call419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name416, i32 noundef %45) #20
  br label %cleanup544

if.end426:                                        ; preds = %if.end396
  %add429 = add i32 %25, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add429)
  %cmp430 = icmp slt i32 %add429, 2
  %or.cond = select i1 %tobool47.not, i1 %cmp430, i1 false
  br i1 %or.cond, label %do.body433, label %if.end457

do.body433:                                       ; preds = %if.end426
  %46 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp434 = icmp sgt i32 %46, 0
  br i1 %cmp434, label %do.end443, label %do.body433.cleanup544_crit_edge

do.body433.cleanup544_crit_edge:                  ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end443:                                        ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m2m_priv, align 8
  %name447 = getelementptr inbounds %struct.v4l2_device, ptr %48, i32 0, i32 4
  %idx449 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %49 = ptrtoint ptr %idx449 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx449, align 8
  %call450 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name447, i32 noundef %50, i32 noundef %25, i32 noundef %conv.i) #20
  br label %cleanup544

if.end457:                                        ; preds = %if.end426
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 45
  %51 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer_meta_list, align 8
  %end = getelementptr inbounds %struct.coda_buffer_meta, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end, align 4
  %bitstream_fifo.i = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 37
  %55 = ptrtoint ptr %bitstream_fifo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bitstream_fifo.i, align 8
  %add.i = add i32 %54, 255
  %and.i = and i32 %add.i, -256
  %sub.i = sub i32 %56, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 512
  %tobool47.not.not = xor i1 %tobool47.not, true
  %brmerge622 = select i1 %cmp.i, i1 true, i1 %tobool47.not.not
  br i1 %brmerge622, label %if.end457.if.end492_crit_edge, label %do.body463

if.end457.if.end492_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end492

do.body463:                                       ; preds = %if.end457
  %57 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp464 = icmp sgt i32 %57, 0
  br i1 %cmp464, label %do.end473, label %do.body463.cleanup544_crit_edge

do.body463.cleanup544_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end473:                                        ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m2m_priv, align 8
  %name477 = getelementptr inbounds %struct.v4l2_device, ptr %59, i32 0, i32 4
  %idx479 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %60 = ptrtoint ptr %idx479 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %idx479, align 8
  %call481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name477, i32 noundef %61, i32 noundef %54, i32 noundef %56) #20
  br label %cleanup544

if.end492:                                        ; preds = %if.end457.if.end492_crit_edge, %land.lhs.true44.if.end492_crit_edge, %if.end41.if.end492_crit_edge
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 8
  %62 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool493.not = icmp eq i32 %63, 0
  %64 = load i32, ptr @coda_debug, align 4
  br i1 %tobool493.not, label %do.body520, label %do.body495

do.body495:                                       ; preds = %if.end492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp496 = icmp sgt i32 %64, 0
  br i1 %cmp496, label %do.end505, label %do.body495.cleanup544_crit_edge

do.body495.cleanup544_crit_edge:                  ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end505:                                        ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #19
  %65 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %m2m_priv, align 8
  %name509 = getelementptr inbounds %struct.v4l2_device, ptr %66, i32 0, i32 4
  %idx511 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %67 = ptrtoint ptr %idx511 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %idx511, align 8
  %call512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name509, i32 noundef %68) #20
  br label %cleanup544

do.body520:                                       ; preds = %if.end492
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp521 = icmp sgt i32 %64, 1
  br i1 %cmp521, label %do.end530, label %do.body520.cleanup544_crit_edge

do.body520.cleanup544_crit_edge:                  ; preds = %do.body520
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup544

do.end530:                                        ; preds = %do.body520
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %m2m_priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %m2m_priv, align 8
  %name534 = getelementptr inbounds %struct.v4l2_device, ptr %70, i32 0, i32 4
  %idx536 = getelementptr inbounds %struct.coda_ctx, ptr %m2m_priv, i32 0, i32 51
  %71 = ptrtoint ptr %idx536 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx536, align 8
  %call537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name534, i32 noundef %72) #20
  br label %cleanup544

cleanup544:                                       ; preds = %do.end530, %do.body520.cleanup544_crit_edge, %do.end505, %do.body495.cleanup544_crit_edge, %do.end473, %do.body463.cleanup544_crit_edge, %do.end443, %do.body433.cleanup544_crit_edge, %do.end412, %do.body402.cleanup544_crit_edge, %do.end380, %do.body370.cleanup544_crit_edge, %do.end27, %do.body19.cleanup544_crit_edge, %do.end, %do.body.cleanup544_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup544_crit_edge ], [ 0, %do.end27 ], [ 0, %do.body19.cleanup544_crit_edge ], [ 0, %do.end380 ], [ 0, %do.end412 ], [ 0, %do.end443 ], [ 0, %do.end473 ], [ 0, %do.end505 ], [ 0, %do.body495.cleanup544_crit_edge ], [ 1, %do.end530 ], [ 1, %do.body520.cleanup544_crit_edge ], [ 0, %do.body370.cleanup544_crit_edge ], [ 0, %do.body402.cleanup544_crit_edge ], [ 0, %do.body433.cleanup544_crit_edge ], [ 0, %do.body463.cleanup544_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_job_abort(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aborting, align 4
  %1 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %priv, i32 0, i32 51
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name, i32 noundef %5) #20
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #17
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3328) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %6)
  %cmp = icmp eq i32 %6, 61441
  %spec.select = select i1 %cmp, i32 3, i32 -1
  %ida = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 19
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %ida, i32 noundef 0, i32 noundef %spec.select, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.err_coda_max_crit_edge, label %if.end8

if.end.err_coda_max_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_coda_max

if.end8:                                          ; preds = %if.end
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.133, i32 noundef %call.i) #17
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_coda_name_init_crit_edge, label %if.end12

if.end8.err_coda_name_init_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_coda_name_init

if.end12:                                         ; preds = %if.end8
  %debugfs_root = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs_root, align 8
  %call13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call9, ptr noundef %8) #17
  %debugfs_entry = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 60
  %9 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %debugfs_entry, align 4
  tail call void @kfree(ptr noundef nonnull %call9) #17
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %vfd.i = getelementptr inbounds %struct.coda_dev, ptr %11, i32 0, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %vfd.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 1352
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype.i, align 4
  %num_vdevs.i = getelementptr inbounds %struct.coda_devtype, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_vdevs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vdevs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %15)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %15
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.to_coda_video_device.exit_crit_edge

if.end12.to_coda_video_device.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %to_coda_video_device.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %vdevs.i = getelementptr inbounds %struct.coda_devtype, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %vdevs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdevs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %sub.ptr.div.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %to_coda_video_device.exit

to_coda_video_device.exit:                        ; preds = %if.end.i, %if.end12.to_coda_video_device.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ null, %if.end12.to_coda_video_device.exit_crit_edge ]
  %cvd = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %cvd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %cvd, align 4
  %type = getelementptr inbounds %struct.coda_video_device, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %inst_type = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %inst_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %inst_type, align 8
  %ops = getelementptr inbounds %struct.coda_video_device, ptr %retval.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %ops17 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ops17, align 8
  %direct = getelementptr inbounds %struct.coda_video_device, ptr %retval.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %direct to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %direct, align 4, !range !509
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 61
  %29 = xor i8 %28, 1
  %30 = ptrtoint ptr %use_bit to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %use_bit, align 8
  %completion = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.161, ptr noundef nonnull @init_completion.__key) #17
  %pic_run_work = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %pic_run_work, i32 noundef 0) #17
  %32 = ptrtoint ptr %pic_run_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %pic_run_work, align 8
  %lockdep_map = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.134, ptr noundef nonnull @coda_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry23 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry23, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @coda_pic_run_work, ptr %func, align 4
  %36 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops17, align 8
  %seq_init_work = getelementptr inbounds %struct.coda_context_ops, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %seq_init_work to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seq_init_work, align 4
  %tobool26.not = icmp eq ptr %39, null
  br i1 %tobool26.not, label %to_coda_video_device.exit.if.end44_crit_edge, label %do.body28

to_coda_video_device.exit.if.end44_crit_edge:     ; preds = %to_coda_video_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

do.body28:                                        ; preds = %to_coda_video_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  %seq_init_work29 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %seq_init_work29, i32 noundef 0) #17
  %40 = ptrtoint ptr %seq_init_work29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %seq_init_work29, align 4
  %lockdep_map35 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35, ptr noundef nonnull @.str.136, ptr noundef nonnull @coda_open.__key.135, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry37 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry37, ptr %entry37, align 8
  %prev.i295 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i295 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry37, ptr %prev.i295, align 4
  %43 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops17, align 8
  %seq_init_work39 = getelementptr inbounds %struct.coda_context_ops, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %seq_init_work39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seq_init_work39, align 4
  %func41 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %func41, align 8
  br label %if.end44

if.end44:                                         ; preds = %do.body28, %to_coda_video_device.exit.if.end44_crit_edge
  %48 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops17, align 8
  %seq_end_work = getelementptr inbounds %struct.coda_context_ops, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %seq_end_work to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %seq_end_work, align 4
  %tobool46.not = icmp eq ptr %51, null
  br i1 %tobool46.not, label %if.end44.if.end64_crit_edge, label %do.body48

if.end44.if.end64_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  %seq_end_work49 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %seq_end_work49, i32 noundef 0) #17
  %52 = ptrtoint ptr %seq_end_work49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %seq_end_work49, align 8
  %lockdep_map55 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.138, ptr noundef nonnull @coda_open.__key.137, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry57 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i296 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i296 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry57, ptr %prev.i296, align 8
  %55 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops17, align 8
  %seq_end_work59 = getelementptr inbounds %struct.coda_context_ops, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %seq_end_work59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seq_end_work59, align 4
  %func61 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %func61, align 4
  br label %if.end64

if.end64:                                         ; preds = %do.body48, %if.end44.if.end64_crit_edge
  %fh = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 31
  %call65 = tail call ptr @video_devdata(ptr noundef %file) #17
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call65) #17
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %60 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #17
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %1, ptr %call7.i.i, align 8
  %idx69 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 51
  %62 = ptrtoint ptr %idx69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i, ptr %idx69, align 8
  %63 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp71 = icmp sgt i32 %63, 0
  br i1 %cmp71, label %do.end78, label %if.end64.do.end88_crit_edge

if.end64.do.end88_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end88

do.end78:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %name80 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name80, i32 noundef %call.i, ptr noundef nonnull %call7.i.i) #20
  br label %do.end88

do.end88:                                         ; preds = %do.end78, %if.end64.do.end88_crit_edge
  %64 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %devtype, align 4
  %product90 = getelementptr inbounds %struct.coda_devtype, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %product90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %product90, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %67, label %sw.default [
    i32 61472, label %sw.bb
    i32 61450, label %do.end88.sw.epilog_crit_edge
    i32 61458, label %do.end88.sw.epilog_crit_edge335
  ]

do.end88.sw.epilog_crit_edge335:                  ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.end88.sw.epilog_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end88
  %69 = load i32, ptr @enable_bwb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool91.not = icmp eq i32 %69, 0
  br i1 %tobool91.not, label %lor.lhs.false, label %sw.bb.if.then94_crit_edge

sw.bb.if.then94_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then94

lor.lhs.false:                                    ; preds = %sw.bb
  %70 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp93 = icmp eq i32 %71, 0
  br i1 %cmp93, label %lor.lhs.false.if.then94_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %sw.bb.if.then94_crit_edge
  %frame_mem_ctrl = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 57
  %72 = ptrtoint ptr %frame_mem_ctrl to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4096, ptr %frame_mem_ctrl, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then94, %lor.lhs.false.sw.epilog_crit_edge, %do.end88.sw.epilog_crit_edge, %do.end88.sw.epilog_crit_edge335
  %call.i.sink = phi i32 [ %call.i, %sw.default ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %if.then94 ], [ 0, %do.end88.sw.epilog_crit_edge ], [ 0, %do.end88.sw.epilog_crit_edge335 ]
  %reg_idx97 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 52
  %73 = ptrtoint ptr %reg_idx97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i.sink, ptr %reg_idx97, align 4
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %vdoa = getelementptr inbounds %struct.coda_dev, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdoa, align 4
  %tobool99.not = icmp eq ptr %77, null
  br i1 %tobool99.not, label %sw.epilog.if.end117_crit_edge, label %land.lhs.true

sw.epilog.if.end117_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

land.lhs.true:                                    ; preds = %sw.epilog
  %78 = load i32, ptr @disable_vdoa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool100.not = icmp eq i32 %78, 0
  br i1 %tobool100.not, label %if.then101, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then101:                                       ; preds = %land.lhs.true
  %vdoa102 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %vdoa102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vdoa102, align 4
  %call103 = tail call ptr @vdoa_context_create(ptr noundef %80) #17
  %vdoa104 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 63
  %81 = ptrtoint ptr %vdoa104 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call103, ptr %vdoa104, align 4
  %tobool106.not = icmp eq ptr %call103, null
  br i1 %tobool106.not, label %do.end110, label %if.then101.if.end117_crit_edge

if.then101.if.end117_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

do.end110:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  %name113 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name113) #20
  br label %if.end117

if.end117:                                        ; preds = %do.end110, %if.then101.if.end117_crit_edge, %land.lhs.true.if.end117_crit_edge, %sw.epilog.if.end117_crit_edge
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 62
  %82 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %use_vdoa, align 1
  %dev118 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev118, align 8
  %call.i297 = tail call i32 @__pm_runtime_resume(ptr noundef %84, i32 noundef 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %cmp.i = icmp slt i32 %call.i297, 0
  br i1 %cmp.i, label %if.then.i, label %if.end130

if.then.i:                                        ; preds = %if.end117
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !512
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #17
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #17, !srcloc !513
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end124_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end124_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end124

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !514
  br label %do.end124

do.end124:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end124_crit_edge
  %name127 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name127, i32 noundef %call.i297) #20
  br label %err_pm_get

if.end130:                                        ; preds = %if.end117
  %clk_per = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 7
  %86 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk_per, align 4
  %call.i299 = tail call i32 @clk_prepare(ptr noundef %87) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %tobool.not.i = icmp eq i32 %call.i299, 0
  br i1 %tobool.not.i, label %if.end.i300, label %if.end130.err_clk_enable_crit_edge

if.end130.err_clk_enable_crit_edge:               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_enable

if.end.i300:                                      ; preds = %if.end130
  %call1.i = tail call i32 @clk_enable(ptr noundef %87) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end134, label %if.end.i300.err_clk_enable.sink.split_crit_edge

if.end.i300.err_clk_enable.sink.split_crit_edge:  ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_enable.sink.split

if.end134:                                        ; preds = %if.end.i300
  %clk_ahb = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 8
  %88 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk_ahb, align 8
  %call.i302 = tail call i32 @clk_prepare(ptr noundef %89) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool.not.i303 = icmp eq i32 %call.i302, 0
  br i1 %tobool.not.i303, label %if.end.i306, label %if.end134.err_clk_ahb_crit_edge

if.end134.err_clk_ahb_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_ahb

if.end.i306:                                      ; preds = %if.end134
  %call1.i304 = tail call i32 @clk_enable(ptr noundef %89) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i304)
  %tobool2.not.i305 = icmp eq i32 %call1.i304, 0
  br i1 %tobool2.not.i305, label %if.end138, label %if.end.i306.err_clk_ahb.sink.split_crit_edge

if.end.i306.err_clk_ahb.sink.split_crit_edge:     ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_ahb.sink.split

if.end138:                                        ; preds = %if.end.i306
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  %92 = ptrtoint ptr %cvd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cvd, align 4
  %src_formats.i = getelementptr inbounds %struct.coda_video_device, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %src_formats.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %src_formats.i, align 4
  %dst_formats.i = getelementptr inbounds %struct.coda_video_device, ptr %93, i32 0, i32 5
  %96 = ptrtoint ptr %dst_formats.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dst_formats.i, align 4
  %devtype.i.i = getelementptr inbounds %struct.coda_dev, ptr %91, i32 0, i32 3
  %98 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %devtype.i.i, align 4
  %codecs1.i.i = getelementptr inbounds %struct.coda_devtype, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %codecs1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %codecs1.i.i, align 4
  %num_codecs3.i.i = getelementptr inbounds %struct.coda_devtype, ptr %99, i32 0, i32 3
  %102 = ptrtoint ptr %num_codecs3.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_codecs3.i.i, align 4
  %104 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %95, label %sw.default.i.i.i [
    i32 842094158, label %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge
    i32 842093913, label %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge336
    i32 842094169, label %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge337
    i32 1345466932, label %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge338
    i32 1448695129, label %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge339
  ]

if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge339: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge338: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge337: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge336: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge: ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i.i

coda_format_normalize_yuv.exit.i.i:               ; preds = %sw.default.i.i.i, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge336, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge337, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge338, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge339
  %retval.0.i.i.i = phi i32 [ %95, %sw.default.i.i.i ], [ 842093913, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge ], [ 842093913, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge336 ], [ 842093913, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge337 ], [ 842093913, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge338 ], [ 842093913, %if.end138.coda_format_normalize_yuv.exit.i.i_crit_edge339 ]
  %105 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %97, label %sw.default.i32.i.i [
    i32 842094158, label %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge
    i32 842093913, label %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge340
    i32 842094169, label %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge341
    i32 1345466932, label %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge342
    i32 1448695129, label %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge343
  ]

coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge343: ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge342: ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge341: ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge340: ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

sw.default.i32.i.i:                               ; preds = %coda_format_normalize_yuv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i.i

coda_format_normalize_yuv.exit34.i.i:             ; preds = %sw.default.i32.i.i, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge340, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge341, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge342, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge343
  %retval.0.i33.i.i = phi i32 [ %97, %sw.default.i32.i.i ], [ 842093913, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge ], [ 842093913, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge340 ], [ 842093913, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge341 ], [ 842093913, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge342 ], [ 842093913, %coda_format_normalize_yuv.exit.i.i.coda_format_normalize_yuv.exit34.i.i_crit_edge343 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %retval.0.i33.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %retval.0.i33.i.i
  br i1 %cmp.i.i, label %coda_format_normalize_yuv.exit34.i.i.coda_find_codec.exit.i_crit_edge, label %for.cond.preheader.i.i

coda_format_normalize_yuv.exit34.i.i.coda_find_codec.exit.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_find_codec.exit.i

for.cond.preheader.i.i:                           ; preds = %coda_format_normalize_yuv.exit34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp535.i.i = icmp sgt i32 %103, 0
  br i1 %cmp535.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %k.036.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %src_fourcc6.i.i = getelementptr %struct.coda_codec, ptr %101, i32 %k.036.i.i, i32 1
  %106 = ptrtoint ptr %src_fourcc6.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %src_fourcc6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %retval.0.i.i.i)
  %cmp7.i.i = icmp eq i32 %107, %retval.0.i.i.i
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %dst_fourcc9.i.i = getelementptr %struct.coda_codec, ptr %101, i32 %k.036.i.i, i32 2
  %108 = ptrtoint ptr %dst_fourcc9.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dst_fourcc9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %retval.0.i33.i.i)
  %cmp10.i.i = icmp eq i32 %109, %retval.0.i33.i.i
  br i1 %cmp10.i.i, label %land.lhs.true.i.i.for.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true.i.i.for.end.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %k.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %103
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %land.lhs.true.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %k.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %k.036.i.i, %land.lhs.true.i.i.for.end.i.i_crit_edge ], [ %103, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i.i, i32 %103)
  %cmp13.i.i = icmp eq i32 %k.0.lcssa.i.i, %103
  %arrayidx16.i.i = getelementptr %struct.coda_codec, ptr %101, i32 %k.0.lcssa.i.i
  %spec.select.i.i = select i1 %cmp13.i.i, ptr null, ptr %arrayidx16.i.i
  br label %coda_find_codec.exit.i

coda_find_codec.exit.i:                           ; preds = %for.end.i.i, %coda_format_normalize_yuv.exit34.i.i.coda_find_codec.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %coda_format_normalize_yuv.exit34.i.i.coda_find_codec.exit.i_crit_edge ], [ %spec.select.i.i, %for.end.i.i ]
  %codec.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 17
  %110 = ptrtoint ptr %codec.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %retval.0.i.i, ptr %codec.i, align 4
  %max_w4.i = getelementptr inbounds %struct.coda_codec, ptr %retval.0.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %max_w4.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_w4.i, align 4
  %113 = tail call i32 @llvm.umin.i32(i32 %112, i32 1920) #17
  %max_h6.i = getelementptr inbounds %struct.coda_codec, ptr %retval.0.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %max_h6.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_h6.i, align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %115, i32 1088) #17
  %mul.i = mul nuw nsw i32 %116, %113
  %mul13.i = mul nuw nsw i32 %mul.i, 3
  %div141.i = lshr i32 %mul13.i, 1
  %div1.i.i = lshr i32 %mul.i, 3
  %117 = tail call i32 @llvm.umax.i32(i32 %div1.i.i, i32 %div141.i) #17
  %mul2.i.i = shl nuw nsw i32 %mul.i, 1
  %118 = tail call i32 @llvm.umin.i32(i32 %117, i32 %mul2.i.i) #17
  %sub.i.i = add nsw i32 %118, -1
  %or.i.i = or i32 %sub.i.i, 4095
  %add.i.i = add nsw i32 %or.i.i, 1
  %119 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %retval.0.i.i, align 4
  %codec_mode.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 22, i32 27
  %121 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %codec_mode.i, align 8
  %122 = ptrtoint ptr %src_formats.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %src_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %123)
  %cmp19.i = icmp eq i32 %123, 1195724874
  %spec.select.i = select i1 %cmp19.i, i32 7, i32 3
  %124 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 18
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %spec.select.i, ptr %124, align 8
  %xfer_func.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 19
  %126 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %xfer_func.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 20
  %127 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %ycbcr_enc.i, align 8
  %quantization.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 21
  %128 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %quantization.i, align 4
  %framerate.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 22, i32 30
  %129 = ptrtoint ptr %framerate.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 30, ptr %framerate.i, align 4
  %130 = ptrtoint ptr %src_formats.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %src_formats.i, align 4
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15
  %fourcc.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 4
  %132 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %fourcc.i, align 8
  %133 = ptrtoint ptr %dst_formats.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dst_formats.i, align 4
  %arrayidx30.i = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1
  %fourcc31.i = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 4
  %135 = ptrtoint ptr %fourcc31.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %fourcc31.i, align 4
  %136 = ptrtoint ptr %q_data.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %113, ptr %q_data.i, align 8
  %height.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %137 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %116, ptr %height.i, align 4
  %138 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %113, ptr %arrayidx30.i, align 4
  %height41.i = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %139 = ptrtoint ptr %height41.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %116, ptr %height41.i, align 8
  %src_fourcc.i = getelementptr inbounds %struct.coda_codec, ptr %retval.0.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %src_fourcc.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %src_fourcc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %141)
  %cmp43.i = icmp eq i32 %141, 842093913
  br i1 %cmp43.i, label %coda_find_codec.exit.i.set_default_params.exit_crit_edge, label %if.else55.i

coda_find_codec.exit.i.set_default_params.exit_crit_edge: ; preds = %coda_find_codec.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_default_params.exit

if.else55.i:                                      ; preds = %coda_find_codec.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_default_params.exit

set_default_params.exit:                          ; preds = %if.else55.i, %coda_find_codec.exit.i.set_default_params.exit_crit_edge
  %.sink143.i = phi i32 [ 0, %if.else55.i ], [ %113, %coda_find_codec.exit.i.set_default_params.exit_crit_edge ]
  %add.i.sink.i = phi i32 [ %add.i.i, %if.else55.i ], [ %div141.i, %coda_find_codec.exit.i.set_default_params.exit_crit_edge ]
  %.sink142.i = phi i32 [ %113, %if.else55.i ], [ 0, %coda_find_codec.exit.i.set_default_params.exit_crit_edge ]
  %div141.sink.i = phi i32 [ %div141.i, %if.else55.i ], [ %add.i.i, %coda_find_codec.exit.i.set_default_params.exit_crit_edge ]
  %142 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 2
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink143.i, ptr %142, align 8
  %144 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 3
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add.i.sink.i, ptr %144, align 4
  %146 = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 2
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %.sink142.i, ptr %146, align 4
  %148 = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 3
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %div141.sink.i, ptr %148, align 8
  %width71.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 5, i32 2
  %150 = ptrtoint ptr %width71.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %113, ptr %width71.i, align 4
  %height75.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 5, i32 3
  %151 = ptrtoint ptr %height75.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %116, ptr %height75.i, align 8
  %width79.i = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 5, i32 2
  %152 = ptrtoint ptr %width79.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %113, ptr %width79.i, align 8
  %height83.i = getelementptr %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 5, i32 3
  %153 = ptrtoint ptr %height83.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %116, ptr %height83.i, align 4
  %tiled_map_type.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 54
  %154 = ptrtoint ptr %tiled_map_type.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %tiled_map_type.i, align 4
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 18
  %155 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %m2m_dev, align 8
  %157 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops17, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %call140 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %156, ptr noundef nonnull %call7.i.i, ptr noundef %160) #17
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 31, i32 10
  %161 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call140, ptr %m2m_ctx, align 4
  %cmp.i310 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %if.then145, label %if.end157

if.then145:                                       ; preds = %set_default_params.exit
  call void @__sanitizer_cov_trace_pc() #19
  %162 = ptrtoint ptr %call140 to i32
  %name154 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name154, ptr noundef nonnull @.str.140, i32 noundef %162) #20
  br label %err_ctx_init

if.end157:                                        ; preds = %set_default_params.exit
  %ctrls.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 23
  %call.i311 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 2, ptr noundef nonnull @coda_ctrls_setup._key, ptr noundef nonnull @.str.164) #17
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #17
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #17
  %163 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp.i312 = icmp eq i32 %164, 0
  br i1 %cmp.i312, label %if.then.i315, label %if.else9.i

if.then.i315:                                     ; preds = %if.end157
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 9963816, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #17
  %165 = ptrtoint ptr %cvd to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cvd, align 4
  %dst_formats.i314 = getelementptr inbounds %struct.coda_video_device, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %dst_formats.i314 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dst_formats.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %168)
  %cmp7.i = icmp eq i32 %168, 1195724874
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i315
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10291459, i64 noundef 5, i64 noundef 100, i64 noundef 1, i64 noundef 50) #17
  %call2.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10291458, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 0) #17
  br label %if.end23.i

if.else.i:                                        ; preds = %if.then.i315
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call7.i.i, align 8
  %devtype.i.i316 = getelementptr inbounds %struct.coda_dev, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %devtype.i.i316 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %devtype.i.i316, align 4
  %product.i.i = getelementptr inbounds %struct.coda_devtype, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %product.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %174)
  %cmp.i.i317 = icmp eq i32 %174, 61441
  %cond.i.i = select i1 %cmp.i.i317, i32 60, i32 99
  %call.i53.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029519, i64 noundef 0, i64 noundef 32767000, i64 noundef 1000, i64 noundef 0) #17
  %175 = zext i32 %cond.i.i to i64
  %call2.i54.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029515, i64 noundef 0, i64 noundef %175, i64 noundef 1, i64 noundef 16) #17
  %call4.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029662, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 25) #17
  %call6.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029663, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 25) #17
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %call7.i.i, align 8
  %devtype8.i.i = getelementptr inbounds %struct.coda_dev, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %devtype8.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %devtype8.i.i, align 4
  %product9.i.i = getelementptr inbounds %struct.coda_devtype, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %product9.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %product9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %181)
  %cmp10.not.i.i = icmp eq i32 %181, 61472
  br i1 %cmp10.not.i.i, label %if.else.i.if.end.i.i_crit_edge, label %if.then.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call13.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029665, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 12) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.else.i.if.end.i.i_crit_edge
  %call15.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029666, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #17
  %call17.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029672, i64 noundef -6, i64 noundef 6, i64 noundef 1, i64 noundef 0) #17
  %call19.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029673, i64 noundef -6, i64 noundef 6, i64 noundef 1, i64 noundef 0) #17
  %call21.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029674, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #17
  %call23.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029695, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #17
  %call25.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029527, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #17
  %call27.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029530, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #17
  %call29.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029696, i64 noundef -12, i64 noundef 12, i64 noundef 1, i64 noundef 0) #17
  %call31.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #17
  %182 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %call7.i.i, align 8
  %devtype33.i.i = getelementptr inbounds %struct.coda_dev, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %devtype33.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %devtype33.i.i, align 4
  %product34.i.i = getelementptr inbounds %struct.coda_devtype, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %product34.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %product34.i.i, align 4
  %188 = zext i32 %187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %187, label %if.end.i.i.if.end45.i.i_crit_edge [
    i32 61450, label %if.end.i.i.if.then42.i.i_crit_edge
    i32 61458, label %if.end.i.i.if.then42.i.i_crit_edge344
  ]

if.end.i.i.if.then42.i.i_crit_edge344:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i.i

if.end.i.i.if.then42.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then42.i.i

if.end.i.i.if.end45.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i.i

if.then42.i.i:                                    ; preds = %if.end.i.i.if.then42.i.i_crit_edge, %if.end.i.i.if.then42.i.i_crit_edge344
  %call44.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 9, i64 noundef -801, i8 noundef zeroext 9) #17
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then42.i.i, %if.end.i.i.if.end45.i.i_crit_edge
  %189 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %call7.i.i, align 8
  %devtype47.i.i = getelementptr inbounds %struct.coda_dev, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %devtype47.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %devtype47.i.i, align 4
  %product48.i.i = getelementptr inbounds %struct.coda_devtype, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %product48.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %product48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %194)
  %cmp49.i.i = icmp eq i32 %194, 61472
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.end45.i.i.if.end54.i.i_crit_edge

if.end45.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.i.i

if.then51.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call53.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 11, i64 noundef -3873, i8 noundef zeroext 11) #17
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then51.i.i, %if.end45.i.i.if.end54.i.i_crit_edge
  %call56.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029712, i64 noundef 1, i64 noundef 31, i64 noundef 1, i64 noundef 2) #17
  %call58.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029713, i64 noundef 1, i64 noundef 31, i64 noundef 1, i64 noundef 2) #17
  %call60.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029718, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #17
  %195 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %call7.i.i, align 8
  %devtype62.i.i = getelementptr inbounds %struct.coda_dev, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %devtype62.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %devtype62.i.i, align 4
  %product63.i.i = getelementptr inbounds %struct.coda_devtype, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %product63.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %product63.i.i, align 4
  %201 = zext i32 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %200, label %if.end54.i.i.coda_encode_ctrls.exit.i_crit_edge [
    i32 61450, label %if.end54.i.i.if.then78.i.i_crit_edge
    i32 61458, label %if.end54.i.i.if.then78.i.i_crit_edge345
    i32 61472, label %if.end54.i.i.if.then78.i.i_crit_edge346
  ]

if.end54.i.i.if.then78.i.i_crit_edge346:          ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78.i.i

if.end54.i.i.if.then78.i.i_crit_edge345:          ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78.i.i

if.end54.i.i.if.then78.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78.i.i

if.end54.i.i.coda_encode_ctrls.exit.i_crit_edge:  ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_encode_ctrls.exit.i

if.then78.i.i:                                    ; preds = %if.end54.i.i.if.then78.i.i_crit_edge, %if.end54.i.i.if.then78.i.i_crit_edge345, %if.end54.i.i.if.then78.i.i_crit_edge346
  %call80.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029717, i8 noundef zeroext 7, i64 noundef -129, i8 noundef zeroext 7) #17
  br label %coda_encode_ctrls.exit.i

coda_encode_ctrls.exit.i:                         ; preds = %if.then78.i.i, %if.end54.i.i.coda_encode_ctrls.exit.i_crit_edge
  %call83.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029533, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #17
  %call85.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029532, i64 noundef 1, i64 noundef 1073741823, i64 noundef 1, i64 noundef 1) #17
  %call87.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029531, i64 noundef 1, i64 noundef 1073741823, i64 noundef 1, i64 noundef 500) #17
  %call89.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029528, i8 noundef zeroext 1, i64 noundef 1, i8 noundef zeroext 1) #17
  %call91.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029526, i64 noundef 0, i64 noundef 8160, i64 noundef 1, i64 noundef 0) #17
  %call93.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029537, i64 noundef 0, i64 noundef 32767, i64 noundef 1, i64 noundef 0) #17
  %call95.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029534, i64 noundef 0, i64 noundef 262144, i64 noundef 1, i64 noundef 0) #17
  br label %if.end23.i

if.else9.i:                                       ; preds = %if.end157
  %call11.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 9963815, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #17
  %202 = ptrtoint ptr %cvd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cvd, align 4
  %src_formats.i318 = getelementptr inbounds %struct.coda_video_device, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %src_formats.i318 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %src_formats.i318, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %205)
  %cmp14.i = icmp eq i32 %205, 875967048
  br i1 %cmp14.i, label %if.then15.i, label %if.else9.i.if.end16.i_crit_edge

if.else9.i.if.end16.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.else9.i
  %call.i56.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 4, i64 noundef -22, i8 noundef zeroext 4) #17
  %h264_profile_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 24
  %206 = ptrtoint ptr %h264_profile_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i56.i, ptr %h264_profile_ctrl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i56.i, null
  br i1 %tobool.not.i.i, label %if.then15.i.if.end.i60.i_crit_edge, label %if.then.i57.i

if.then15.i.if.end.i60.i_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i60.i

if.then.i57.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i56.i, i32 0, i32 20
  %207 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags.i.i, align 4
  %or.i.i319 = or i32 %208, 4
  store i32 %or.i.i319, ptr %flags.i.i, align 4
  br label %if.end.i60.i

if.end.i60.i:                                     ; preds = %if.then.i57.i, %if.then15.i.if.end.i60.i_crit_edge
  %209 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call7.i.i, align 8
  %devtype.i58.i = getelementptr inbounds %struct.coda_dev, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %devtype.i58.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %devtype.i58.i, align 4
  %product.i59.i = getelementptr inbounds %struct.coda_devtype, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %product.i59.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %product.i59.i, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %214, label %if.end.i60.i.if.end16.i_crit_edge [
    i32 61450, label %if.end.i60.i.if.end15.i.i_crit_edge
    i32 61458, label %if.end.i60.i.if.end15.i.i_crit_edge347
    i32 61472, label %if.then12.i.i
  ]

if.end.i60.i.if.end15.i.i_crit_edge347:           ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.end.i60.i.if.end15.i.i_crit_edge:              ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.end.i60.i.if.end16.i_crit_edge:                ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then12.i.i:                                    ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then12.i.i, %if.end.i60.i.if.end15.i.i_crit_edge, %if.end.i60.i.if.end15.i.i_crit_edge347
  %max.0.i.i = phi i8 [ 12, %if.then12.i.i ], [ 11, %if.end.i60.i.if.end15.i.i_crit_edge ], [ 11, %if.end.i60.i.if.end15.i.i_crit_edge347 ]
  %call17.i61.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext %max.0.i.i, i64 noundef 0, i8 noundef zeroext %max.0.i.i) #17
  %h264_level_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 25
  %216 = ptrtoint ptr %h264_level_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call17.i61.i, ptr %h264_level_ctrl.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %call17.i61.i, null
  br i1 %tobool19.not.i.i, label %if.end15.i.i.if.end24.i.i_crit_edge, label %if.then20.i.i

if.end15.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24.i.i

if.then20.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags22.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call17.i61.i, i32 0, i32 20
  %217 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flags22.i.i, align 4
  %or23.i.i = or i32 %218, 4
  store i32 %or23.i.i, ptr %flags22.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then20.i.i, %if.end15.i.i.if.end24.i.i_crit_edge
  %call26.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029583, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #17
  %mpeg2_profile_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 26
  %219 = ptrtoint ptr %mpeg2_profile_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call26.i.i, ptr %mpeg2_profile_ctrl.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool28.not.i.i, label %if.end24.i.i.if.end33.i.i_crit_edge, label %if.then29.i.i

if.end24.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags31.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call26.i.i, i32 0, i32 20
  %220 = ptrtoint ptr %flags31.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %flags31.i.i, align 4
  %or32.i.i = or i32 %221, 4
  store i32 %or32.i.i, ptr %flags31.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then29.i.i, %if.end24.i.i.if.end33.i.i_crit_edge
  %call35.i.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029582, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #17
  %mpeg2_level_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 27
  %222 = ptrtoint ptr %mpeg2_level_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call35.i.i, ptr %mpeg2_level_ctrl.i.i, align 8
  %tobool37.not.i.i = icmp eq ptr %call35.i.i, null
  br i1 %tobool37.not.i.i, label %if.end33.i.i.if.end42.i.i_crit_edge, label %if.then38.i.i

if.end33.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42.i.i

if.then38.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags40.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call35.i.i, i32 0, i32 20
  %223 = ptrtoint ptr %flags40.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags40.i.i, align 4
  %or41.i.i = or i32 %224, 4
  store i32 %or41.i.i, ptr %flags40.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.end33.i.i.if.end42.i.i_crit_edge
  %call44.i62.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029718, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #17
  %mpeg4_profile_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 28
  %225 = ptrtoint ptr %mpeg4_profile_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call44.i62.i, ptr %mpeg4_profile_ctrl.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %call44.i62.i, null
  br i1 %tobool46.not.i.i, label %if.end42.i.i.if.end51.i.i_crit_edge, label %if.then47.i.i

if.end42.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags49.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call44.i62.i, i32 0, i32 20
  %226 = ptrtoint ptr %flags49.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %flags49.i.i, align 4
  %or50.i.i = or i32 %227, 4
  store i32 %or50.i.i, ptr %flags49.i.i, align 4
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.end42.i.i.if.end51.i.i_crit_edge
  %call53.i63.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrls.i, ptr noundef nonnull @coda_ctrl_ops, i32 noundef 10029717, i8 noundef zeroext 7, i64 noundef 0, i8 noundef zeroext 7) #17
  %mpeg4_level_ctrl.i.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 29
  %228 = ptrtoint ptr %mpeg4_level_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call53.i63.i, ptr %mpeg4_level_ctrl.i.i, align 8
  %tobool55.not.i.i = icmp eq ptr %call53.i63.i, null
  br i1 %tobool55.not.i.i, label %if.end51.i.i.if.end16.i_crit_edge, label %if.then56.i.i

if.end51.i.i.if.end16.i_crit_edge:                ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then56.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags58.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call53.i63.i, i32 0, i32 20
  %229 = ptrtoint ptr %flags58.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flags58.i.i, align 4
  %or59.i.i = or i32 %230, 4
  store i32 %or59.i.i, ptr %flags58.i.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then56.i.i, %if.end51.i.i.if.end16.i_crit_edge, %if.end.i60.i.if.end16.i_crit_edge, %if.else9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls.i, ptr noundef nonnull @coda_mb_err_cnt_ctrl_config, ptr noundef null) #17
  %mb_err_cnt_ctrl.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 30
  %231 = ptrtoint ptr %mb_err_cnt_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call18.i, ptr %mb_err_cnt_ctrl.i, align 4
  %tobool.not.i320 = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i320, label %if.end16.i.if.end23.i_crit_edge, label %if.then20.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call18.i, i32 0, i32 20
  %232 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %233, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end23.i_crit_edge, %coda_encode_ctrls.exit.i, %if.then8.i
  %error.i = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 23, i32 9
  %234 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool25.not.i = icmp eq i32 %235, 0
  br i1 %tobool25.not.i, label %coda_ctrls_setup.exit, label %coda_ctrls_setup.exit.thread

coda_ctrls_setup.exit.thread:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %236 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %call7.i.i, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %237, i32 0, i32 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name.i, i32 noundef %235) #20
  br label %do.end163

coda_ctrls_setup.exit:                            ; preds = %if.end23.i
  %call33.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool159.not = icmp eq i32 %call33.i, 0
  br i1 %tobool159.not, label %if.end169, label %coda_ctrls_setup.exit.do.end163_crit_edge

coda_ctrls_setup.exit.do.end163_crit_edge:        ; preds = %coda_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end163

do.end163:                                        ; preds = %coda_ctrls_setup.exit.do.end163_crit_edge, %coda_ctrls_setup.exit.thread
  %retval.0.i321333 = phi i32 [ -22, %coda_ctrls_setup.exit.thread ], [ %call33.i, %coda_ctrls_setup.exit.do.end163_crit_edge ]
  %name166 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name166) #20
  %238 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %239) #17
  br label %err_ctx_init

if.end169:                                        ; preds = %coda_ctrls_setup.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl_handler = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 31, i32 2
  %240 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %ctrls.i, ptr %ctrl_handler, align 4
  %bitstream_mutex = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %bitstream_mutex, ptr noundef nonnull @.str.154, ptr noundef nonnull @coda_open.__key.153) #17
  %buffer_mutex = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %buffer_mutex, ptr noundef nonnull @.str.156, ptr noundef nonnull @coda_open.__key.155) #17
  %wakeup_mutex = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 64
  tail call void @__mutex_init(ptr noundef %wakeup_mutex, ptr noundef nonnull @.str.158, ptr noundef nonnull @coda_open.__key.157) #17
  %buffer_meta_list = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 45
  %241 = ptrtoint ptr %buffer_meta_list to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %buffer_meta_list, ptr %buffer_meta_list, align 8
  %prev.i322 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 45, i32 1
  %242 = ptrtoint ptr %prev.i322 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %buffer_meta_list, ptr %prev.i322, align 4
  %buffer_meta_lock = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_meta_lock, ptr noundef nonnull @.str.160, ptr noundef nonnull @coda_open.__key.159, i16 noundef signext 3) #17
  br label %cleanup

err_ctx_init:                                     ; preds = %do.end163, %if.then145
  %ret.0 = phi i32 [ %162, %if.then145 ], [ %retval.0.i321333, %do.end163 ]
  %243 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %clk_ahb, align 8
  tail call void @clk_disable(ptr noundef %244) #17
  br label %err_clk_ahb.sink.split

err_clk_ahb.sink.split:                           ; preds = %err_ctx_init, %if.end.i306.err_clk_ahb.sink.split_crit_edge
  %.sink = phi ptr [ %244, %err_ctx_init ], [ %89, %if.end.i306.err_clk_ahb.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_ctx_init ], [ %call1.i304, %if.end.i306.err_clk_ahb.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #17
  br label %err_clk_ahb

err_clk_ahb:                                      ; preds = %err_clk_ahb.sink.split, %if.end134.err_clk_ahb_crit_edge
  %ret.1 = phi i32 [ %call.i302, %if.end134.err_clk_ahb_crit_edge ], [ %ret.1.ph, %err_clk_ahb.sink.split ]
  %245 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %246) #17
  br label %err_clk_enable.sink.split

err_clk_enable.sink.split:                        ; preds = %err_clk_ahb, %if.end.i300.err_clk_enable.sink.split_crit_edge
  %.sink334 = phi ptr [ %246, %err_clk_ahb ], [ %87, %if.end.i300.err_clk_enable.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err_clk_ahb ], [ %call1.i, %if.end.i300.err_clk_enable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink334) #17
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %err_clk_enable.sink.split, %if.end130.err_clk_enable_crit_edge
  %ret.2 = phi i32 [ %call.i299, %if.end130.err_clk_enable_crit_edge ], [ %ret.2.ph, %err_clk_enable.sink.split ]
  %247 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev118, align 8
  %call.i323 = tail call i32 @__pm_runtime_idle(ptr noundef %248, i32 noundef 4) #17
  br label %err_pm_get

err_pm_get:                                       ; preds = %err_clk_enable, %do.end124
  %ret.3 = phi i32 [ %call.i297, %do.end124 ], [ %ret.2, %err_clk_enable ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #17
  tail call void @v4l2_fh_exit(ptr noundef %fh) #17
  br label %err_coda_name_init

err_coda_name_init:                               ; preds = %err_pm_get, %if.end8.err_coda_name_init_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_pm_get ], [ -12, %if.end8.err_coda_name_init_crit_edge ]
  %idx193 = getelementptr inbounds %struct.coda_ctx, ptr %call7.i.i, i32 0, i32 51
  %249 = ptrtoint ptr %idx193 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %idx193, align 8
  tail call void @ida_free(ptr noundef %ida, i32 noundef %250) #17
  br label %err_coda_max

err_coda_max:                                     ; preds = %err_coda_name_init, %if.end.err_coda_max_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_coda_name_init ], [ %call.i, %if.end.err_coda_max_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_coda_max, %if.end169, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err_coda_max ], [ 0, %if.end169 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #17
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -760
  %4 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %idx = getelementptr i8, ptr %3, i32 2384
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name, i32 noundef %8, ptr noundef %add.ptr) #20
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %inst_type = getelementptr i8, ptr %3, i32 -368
  %9 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13 = icmp eq i32 %10, 1
  br i1 %cmp13, label %land.lhs.true, label %do.end12.if.end15_crit_edge

do.end12.if.end15_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end12
  %use_bit = getelementptr i8, ptr %3, i32 2464
  %11 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @coda_bit_stream_end_flag(ptr noundef %add.ptr) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %do.end12.if.end15_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %14) #17
  %vdoa = getelementptr i8, ptr %3, i32 2468
  %15 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdoa, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @vdoa_context_destroy(ptr noundef nonnull %16) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %ops = getelementptr i8, ptr %3, i32 -472
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %seq_end_work = getelementptr inbounds %struct.coda_context_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %seq_end_work to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %seq_end_work, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 4
  %seq_end_work22 = getelementptr i8, ptr %3, i32 -576
  %call.i71 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %seq_end_work22) #17
  %call25 = tail call zeroext i1 @flush_work(ptr noundef %seq_end_work22) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61441, i32 %28)
  %cmp28 = icmp eq i32 %28, 61441
  br i1 %cmp28, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %workbuf = getelementptr i8, ptr %3, i32 2356
  %29 = ptrtoint ptr %workbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %workbuf, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then29.if.end30_crit_edge, label %if.then.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %dev1.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i, align 8
  %size.i = getelementptr i8, ptr %3, i32 2364
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %paddr.i = getelementptr i8, ptr %3, i32 2360
  %35 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %30, i32 noundef %36, i32 noundef 0) #17
  %37 = ptrtoint ptr %workbuf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %workbuf, align 4
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %size.i, align 4
  %dentry.i = getelementptr i8, ptr %3, i32 2376
  %39 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %40) #17
  %41 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dentry.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then.i, %if.then29.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %ctrls = getelementptr i8, ptr %3, i32 -212
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #17
  %clk_ahb = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_ahb, align 8
  tail call void @clk_disable(ptr noundef %43) #17
  tail call void @clk_unprepare(ptr noundef %43) #17
  %clk_per = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %45) #17
  tail call void @clk_unprepare(ptr noundef %45) #17
  %dev31 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev31, align 8
  %call.i72 = tail call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 4) #17
  tail call void @v4l2_fh_del(ptr noundef %3) #17
  tail call void @v4l2_fh_exit(ptr noundef %3) #17
  %ida = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 19
  %idx35 = getelementptr i8, ptr %3, i32 2384
  %48 = ptrtoint ptr %idx35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx35, align 8
  tail call void @ida_free(ptr noundef %ida, i32 noundef %49) #17
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 8
  %release = getelementptr inbounds %struct.coda_context_ops, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  %tobool37.not = icmp eq ptr %53, null
  br i1 %tobool37.not, label %if.end30.if.end41_crit_edge, label %if.then38

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %53(ptr noundef %add.ptr) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end30.if.end41_crit_edge
  %debugfs_entry = getelementptr i8, ptr %3, i32 2460
  %54 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %debugfs_entry, align 4
  tail call void @debugfs_remove(ptr noundef %55) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda_pic_run_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %buffer_mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #17
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #17
  %ops = getelementptr i8, ptr %work, i32 192
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %prepare_run = getelementptr inbounds %struct.coda_context_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %prepare_run to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_run, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %inst_type = getelementptr i8, ptr %work, i32 296
  %6 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #17
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %completion = getelementptr i8, ptr %work, i32 132
  %call6 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 100) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %use_bit = getelementptr i8, ptr %work, i32 3128
  %8 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.then7.if.end12_crit_edge, label %do.end

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %dev10 = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.162) #20
  %hold = getelementptr i8, ptr %work, i32 1208
  %12 = ptrtoint ptr %hold to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hold, align 8
  %call11 = tail call i32 @coda_hw_reset(ptr noundef %add.ptr) #17
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then7.if.end12_crit_edge
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 8
  %run_timeout = getelementptr inbounds %struct.coda_context_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %run_timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %run_timeout, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.end12.if.end20.sink.split_crit_edge

if.end12.if.end20.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20.sink.split

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %finish_run = getelementptr inbounds %struct.coda_context_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %finish_run to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %finish_run, align 4
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else, %if.end12.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %20, %if.else ], [ %16, %if.end12.if.end20.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %add.ptr) #17
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end12.if.end20_crit_edge
  %aborting = getelementptr i8, ptr %work, i32 196
  %21 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end20.land.lhs.true25_crit_edge

if.end20.land.lhs.true25_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true25

lor.lhs.false:                                    ; preds = %if.end20
  %streamon_cap = getelementptr i8, ptr %work, i32 208
  %23 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %streamon_out = getelementptr i8, ptr %work, i32 204
  %25 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %land.lhs.true23.land.lhs.true25_crit_edge, label %land.lhs.true23.if.end31_crit_edge

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true23.land.lhs.true25_crit_edge:        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23.land.lhs.true25_crit_edge, %if.end20.land.lhs.true25_crit_edge
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 8
  %seq_end_work = getelementptr inbounds %struct.coda_context_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %seq_end_work to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %seq_end_work, align 4
  %tobool27.not = icmp eq ptr %30, null
  br i1 %tobool27.not, label %land.lhs.true25.if.end31_crit_edge, label %if.then28

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #19
  %workqueue = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %workqueue, align 4
  %seq_end_work29 = getelementptr i8, ptr %work, i32 88
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %seq_end_work29) #17
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true25.if.end31_crit_edge, %land.lhs.true23.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #17
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #17
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_dev, align 8
  %m2m_ctx = getelementptr i8, ptr %work, i32 852
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %36, ptr noundef %38) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vdoa_context_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_s_ctrl(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %call = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %1) #17
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -548
  %tobool.not = icmp eq ptr %call, null
  %4 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp17 = icmp sgt i32 %4, 1
  br i1 %tobool.not, label %do.body16, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp17, label %do.end, label %do.body.if.end41_crit_edge

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %idx = getelementptr i8, ptr %3, i32 2596
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %name8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %11 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name8, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %arrayidx = getelementptr ptr, ptr %call, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name, i32 noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %14, ptr noundef %16) #20
  br label %if.end41

do.body16:                                        ; preds = %entry
  br i1 %cmp17, label %do.end24, label %do.body16.if.end41_crit_edge

do.body16.if.end41_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

do.end24:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %name28 = getelementptr inbounds %struct.v4l2_device, ptr %18, i32 0, i32 4
  %idx30 = getelementptr i8, ptr %3, i32 2596
  %19 = ptrtoint ptr %idx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx30, align 8
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %name32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %23 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name32, align 4
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val33, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name28, i32 noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26) #20
  br label %if.end41

if.end41:                                         ; preds = %do.end24, %do.body16.if.end41_crit_edge, %do.end, %do.body.if.end41_crit_edge
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %28, label %do.body177 [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb53
    i32 10029519, label %sw.bb69
    i32 10029515, label %sw.bb74
    i32 10029662, label %sw.bb78
    i32 10029663, label %sw.bb83
    i32 10029665, label %sw.bb87
    i32 10029666, label %sw.bb91
    i32 10029672, label %sw.bb95
    i32 10029673, label %sw.bb99
    i32 10029674, label %sw.bb103
    i32 10029695, label %sw.bb107
    i32 10029527, label %sw.bb111
    i32 10029530, label %sw.bb116
    i32 10029696, label %sw.bb121
    i32 10029675, label %sw.bb125
    i32 10029671, label %if.end41.cleanup_crit_edge
    i32 10029712, label %sw.bb131
    i32 10029713, label %sw.bb135
    i32 10029583, label %if.end41.cleanup_crit_edge284
    i32 10029582, label %if.end41.cleanup_crit_edge285
    i32 10029718, label %if.end41.cleanup_crit_edge286
    i32 10029717, label %if.end41.cleanup_crit_edge287
    i32 10029533, label %sw.bb140
    i32 10029532, label %sw.bb144
    i32 10029531, label %sw.bb149
    i32 10029528, label %if.end41.cleanup_crit_edge288
    i32 10029526, label %sw.bb154
    i32 10029541, label %sw.bb158
    i32 10291459, label %sw.bb160
    i32 10291458, label %sw.bb162
    i32 10029537, label %sw.bb166
    i32 10029534, label %cond.true
  ]

if.end41.cleanup_crit_edge288:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41.cleanup_crit_edge287:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41.cleanup_crit_edge286:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41.cleanup_crit_edge285:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41.cleanup_crit_edge284:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44.not = icmp eq i32 %31, 0
  %params48 = getelementptr i8, ptr %3, i32 -132
  %32 = ptrtoint ptr %params48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %params48, align 8
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %34 = or i8 %33, 8
  %35 = ptrtoint ptr %params48 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %params48, align 8
  br label %cleanup

if.else47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %36 = and i8 %33, -9
  %37 = ptrtoint ptr %params48 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %params48, align 8
  br label %cleanup

sw.bb53:                                          ; preds = %if.end41
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  %params63 = getelementptr i8, ptr %3, i32 -132
  %40 = ptrtoint ptr %params63 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %params63, align 8
  br i1 %tobool55.not, label %if.else62, label %if.then56

if.then56:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #19
  %42 = or i8 %41, 4
  %43 = ptrtoint ptr %params63 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %params63, align 8
  br label %cleanup

if.else62:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #19
  %44 = and i8 %41, -5
  %45 = ptrtoint ptr %params63 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %params63, align 8
  br label %cleanup

sw.bb69:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val70, align 4
  %div = sdiv i32 %47, 1000
  %conv71 = trunc i32 %div to i16
  %bitrate = getelementptr i8, ptr %3, i32 -28
  %48 = ptrtoint ptr %bitrate to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv71, ptr %bitrate, align 8
  %bitrate_changed = getelementptr i8, ptr %3, i32 -10
  %49 = ptrtoint ptr %bitrate_changed to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %bitrate_changed, align 2
  br label %cleanup

sw.bb74:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val75, align 4
  %conv76 = trunc i32 %51 to i8
  %gop_size = getelementptr i8, ptr %3, i32 -116
  %52 = ptrtoint ptr %gop_size to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv76, ptr %gop_size, align 8
  br label %cleanup

sw.bb78:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %53 = ptrtoint ptr %val79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val79, align 4
  %conv80 = trunc i32 %54 to i8
  %h264_intra_qp = getelementptr i8, ptr %3, i32 -131
  %55 = ptrtoint ptr %h264_intra_qp to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv80, ptr %h264_intra_qp, align 1
  %h264_intra_qp_changed = getelementptr i8, ptr %3, i32 -8
  %56 = ptrtoint ptr %h264_intra_qp_changed to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %h264_intra_qp_changed, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val84 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %57 = ptrtoint ptr %val84 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val84, align 4
  %conv85 = trunc i32 %58 to i8
  %h264_inter_qp = getelementptr i8, ptr %3, i32 -130
  %59 = ptrtoint ptr %h264_inter_qp to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv85, ptr %h264_inter_qp, align 2
  br label %cleanup

sw.bb87:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val88 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val88, align 4
  %conv89 = trunc i32 %61 to i8
  %h264_min_qp = getelementptr i8, ptr %3, i32 -129
  %62 = ptrtoint ptr %h264_min_qp to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv89, ptr %h264_min_qp, align 1
  br label %cleanup

sw.bb91:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val92 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %63 = ptrtoint ptr %val92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val92, align 4
  %conv93 = trunc i32 %64 to i8
  %h264_max_qp = getelementptr i8, ptr %3, i32 -128
  %65 = ptrtoint ptr %h264_max_qp to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv93, ptr %h264_max_qp, align 4
  br label %cleanup

sw.bb95:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val96, align 4
  %conv97 = trunc i32 %67 to i8
  %h264_slice_alpha_c0_offset_div2 = getelementptr i8, ptr %3, i32 -126
  %68 = ptrtoint ptr %h264_slice_alpha_c0_offset_div2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv97, ptr %h264_slice_alpha_c0_offset_div2, align 2
  br label %cleanup

sw.bb99:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val100 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val100 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val100, align 4
  %conv101 = trunc i32 %70 to i8
  %h264_slice_beta_offset_div2 = getelementptr i8, ptr %3, i32 -125
  %71 = ptrtoint ptr %h264_slice_beta_offset_div2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv101, ptr %h264_slice_beta_offset_div2, align 1
  br label %cleanup

sw.bb103:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val104 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val104, align 4
  %conv105 = trunc i32 %73 to i8
  %h264_disable_deblocking_filter_idc = getelementptr i8, ptr %3, i32 -127
  %74 = ptrtoint ptr %h264_disable_deblocking_filter_idc to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv105, ptr %h264_disable_deblocking_filter_idc, align 1
  br label %cleanup

sw.bb107:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val108 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool109 = icmp ne i32 %76, 0
  %h264_constrained_intra_pred_flag = getelementptr i8, ptr %3, i32 -124
  %frombool = zext i1 %tobool109 to i8
  %77 = ptrtoint ptr %h264_constrained_intra_pred_flag to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool, ptr %h264_constrained_intra_pred_flag, align 8
  br label %cleanup

sw.bb111:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool113 = icmp ne i32 %79, 0
  %frame_rc_enable = getelementptr i8, ptr %3, i32 -5
  %frombool115 = zext i1 %tobool113 to i8
  %80 = ptrtoint ptr %frame_rc_enable to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool115, ptr %frame_rc_enable, align 1
  br label %cleanup

sw.bb116:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val117 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %81 = ptrtoint ptr %val117 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool118 = icmp ne i32 %82, 0
  %mb_rc_enable = getelementptr i8, ptr %3, i32 -4
  %frombool120 = zext i1 %tobool118 to i8
  %83 = ptrtoint ptr %mb_rc_enable to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool120, ptr %mb_rc_enable, align 8
  br label %cleanup

sw.bb121:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val122 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %84 = ptrtoint ptr %val122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val122, align 4
  %conv123 = trunc i32 %85 to i8
  %h264_chroma_qp_index_offset = getelementptr i8, ptr %3, i32 -123
  %86 = ptrtoint ptr %h264_chroma_qp_index_offset to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv123, ptr %h264_chroma_qp_index_offset, align 1
  br label %cleanup

sw.bb125:                                         ; preds = %if.end41
  %inst_type = getelementptr i8, ptr %3, i32 -156
  %87 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp126 = icmp eq i32 %88, 0
  br i1 %cmp126, label %if.then128, label %sw.bb125.cleanup_crit_edge

sw.bb125.cleanup_crit_edge:                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then128:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #19
  %h264_profile_idc = getelementptr i8, ptr %3, i32 -122
  %89 = ptrtoint ptr %h264_profile_idc to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 66, ptr %h264_profile_idc, align 2
  br label %cleanup

sw.bb131:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val132 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %90 = ptrtoint ptr %val132 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val132, align 4
  %conv133 = trunc i32 %91 to i8
  %mpeg4_intra_qp = getelementptr i8, ptr %3, i32 -118
  %92 = ptrtoint ptr %mpeg4_intra_qp to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv133, ptr %mpeg4_intra_qp, align 2
  br label %cleanup

sw.bb135:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val136 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %93 = ptrtoint ptr %val136 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val136, align 4
  %conv137 = trunc i32 %94 to i8
  %mpeg4_inter_qp = getelementptr i8, ptr %3, i32 -117
  %95 = ptrtoint ptr %mpeg4_inter_qp to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv137, ptr %mpeg4_inter_qp, align 1
  br label %cleanup

sw.bb140:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val141 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %96 = ptrtoint ptr %val141 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val141, align 4
  %slice_mode = getelementptr i8, ptr %3, i32 -36
  %98 = ptrtoint ptr %slice_mode to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %slice_mode, align 8
  %slice_mode_changed = getelementptr i8, ptr %3, i32 -6
  %99 = ptrtoint ptr %slice_mode_changed to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %slice_mode_changed, align 2
  br label %cleanup

sw.bb144:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val145 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %100 = ptrtoint ptr %val145 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val145, align 4
  %slice_max_mb = getelementptr i8, ptr %3, i32 -16
  %102 = ptrtoint ptr %slice_max_mb to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %slice_max_mb, align 4
  %slice_mode_changed148 = getelementptr i8, ptr %3, i32 -6
  %103 = ptrtoint ptr %slice_mode_changed148 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %slice_mode_changed148, align 2
  br label %cleanup

sw.bb149:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %104 = ptrtoint ptr %val150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val150, align 4
  %mul = shl i32 %105, 3
  %slice_max_bits = getelementptr i8, ptr %3, i32 -20
  %106 = ptrtoint ptr %slice_max_bits to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul, ptr %slice_max_bits, align 8
  %slice_mode_changed153 = getelementptr i8, ptr %3, i32 -6
  %107 = ptrtoint ptr %slice_mode_changed153 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %slice_mode_changed153, align 2
  br label %cleanup

sw.bb154:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val155 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %108 = ptrtoint ptr %val155 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val155, align 4
  %intra_refresh = getelementptr i8, ptr %3, i32 -112
  %110 = ptrtoint ptr %intra_refresh to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %intra_refresh, align 4
  %intra_refresh_changed = getelementptr i8, ptr %3, i32 -7
  %111 = ptrtoint ptr %intra_refresh_changed to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %intra_refresh_changed, align 1
  br label %cleanup

sw.bb158:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %force_ipicture = getelementptr i8, ptr %3, i32 -12
  %112 = ptrtoint ptr %force_ipicture to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %force_ipicture, align 8
  br label %cleanup

sw.bb160:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val161 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %113 = ptrtoint ptr %val161 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val161, align 4
  tail call void @coda_set_jpeg_compression_quality(ptr noundef %add.ptr, i32 noundef %114) #17
  br label %cleanup

sw.bb162:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val163 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %115 = ptrtoint ptr %val163 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val163, align 4
  %conv164 = trunc i32 %116 to i8
  %jpeg_restart_interval = getelementptr i8, ptr %3, i32 -103
  %117 = ptrtoint ptr %jpeg_restart_interval to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv164, ptr %jpeg_restart_interval, align 1
  br label %cleanup

sw.bb166:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val167 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %118 = ptrtoint ptr %val167 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val167, align 4
  %conv168 = trunc i32 %119 to i16
  %vbv_delay = getelementptr i8, ptr %3, i32 -26
  %120 = ptrtoint ptr %vbv_delay to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv168, ptr %vbv_delay, align 2
  br label %cleanup

cond.true:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %val171 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %121 = ptrtoint ptr %val171 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val171, align 4
  %mul172 = shl i32 %122, 13
  %vbv_size = getelementptr i8, ptr %3, i32 -24
  %123 = ptrtoint ptr %vbv_size to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul172, ptr %vbv_size, align 4
  br label %cleanup

do.body177:                                       ; preds = %if.end41
  %124 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp178 = icmp sgt i32 %124, 0
  br i1 %cmp178, label %do.end187, label %do.body177.cleanup_crit_edge

do.body177.cleanup_crit_edge:                     ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end187:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #19
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr, align 8
  %name191 = getelementptr inbounds %struct.v4l2_device, ptr %126, i32 0, i32 4
  %idx193 = getelementptr i8, ptr %3, i32 2596
  %127 = ptrtoint ptr %idx193 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %idx193, align 8
  %val195 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %129 = ptrtoint ptr %val195 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val195, align 4
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name191, i32 noundef %128, i32 noundef %28, i32 noundef %130) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end187, %do.body177.cleanup_crit_edge, %cond.true, %sw.bb166, %sw.bb162, %sw.bb160, %sw.bb158, %sw.bb154, %sw.bb149, %sw.bb144, %sw.bb140, %sw.bb135, %sw.bb131, %if.then128, %sw.bb125.cleanup_crit_edge, %sw.bb121, %sw.bb116, %sw.bb111, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb78, %sw.bb74, %sw.bb69, %if.else62, %if.then56, %if.else47, %if.then45, %if.end41.cleanup_crit_edge, %if.end41.cleanup_crit_edge284, %if.end41.cleanup_crit_edge285, %if.end41.cleanup_crit_edge286, %if.end41.cleanup_crit_edge287, %if.end41.cleanup_crit_edge288
  %retval.0 = phi i32 [ -22, %do.end187 ], [ -22, %do.body177.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge284 ], [ 0, %if.end41.cleanup_crit_edge285 ], [ 0, %if.end41.cleanup_crit_edge286 ], [ 0, %sw.bb125.cleanup_crit_edge ], [ 0, %if.then128 ], [ 0, %if.then56 ], [ 0, %if.else62 ], [ 0, %if.then45 ], [ 0, %if.else47 ], [ 0, %cond.true ], [ 0, %if.end41.cleanup_crit_edge287 ], [ 0, %if.end41.cleanup_crit_edge288 ], [ 0, %sw.bb166 ], [ 0, %sw.bb162 ], [ 0, %sw.bb160 ], [ 0, %sw.bb158 ], [ 0, %sw.bb154 ], [ 0, %sw.bb149 ], [ 0, %sw.bb144 ], [ 0, %sw.bb140 ], [ 0, %sw.bb135 ], [ 0, %sw.bb131 ], [ 0, %sw.bb121 ], [ 0, %sw.bb116 ], [ 0, %sw.bb111 ], [ 0, %sw.bb107 ], [ 0, %sw.bb103 ], [ 0, %sw.bb99 ], [ 0, %sw.bb95 ], [ 0, %sw.bb91 ], [ 0, %sw.bb87 ], [ 0, %sw.bb83 ], [ 0, %sw.bb78 ], [ 0, %sw.bb74 ], [ 0, %sw.bb69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_set_jpeg_compression_quality(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdoa_context_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.45, i32 noundef 16) #17
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %5, label %sw.default.i [
    i32 61441, label %entry.coda_product_name.exit_crit_edge
    i32 61450, label %sw.bb1.i
    i32 61458, label %sw.bb2.i
    i32 61472, label %sw.bb3.i
  ]

entry.coda_product_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_product_name.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @coda_product_name.buf, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %5) #17
  br label %coda_product_name.exit

coda_product_name.exit:                           ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.coda_product_name.exit_crit_edge
  %retval.0.i = phi ptr [ @coda_product_name.buf, %sw.default.i ], [ @.str.7, %sw.bb3.i ], [ @.str.6, %sw.bb2.i ], [ @.str.5, %sw.bb1.i ], [ @.str.4, %entry.coda_product_name.exit_crit_edge ]
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull %retval.0.i, i32 noundef 32) #17
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call5 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.178, i32 noundef 32) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_enum_fmt(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #17
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vfd.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %vfd.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 1352
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype.i, align 4
  %num_vdevs.i = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_vdevs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vdevs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.ptr.div.i, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_coda_video_device.exit_crit_edge

entry.to_coda_video_device.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %to_coda_video_device.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %vdevs.i = getelementptr inbounds %struct.coda_devtype, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %vdevs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdevs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %sub.ptr.div.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %to_coda_video_device.exit

to_coda_video_device.exit:                        ; preds = %if.end.i, %entry.to_coda_video_device.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ null, %entry.to_coda_video_device.exit_crit_edge ]
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %11, label %to_coda_video_device.exit.cleanup43_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then4
  ]

to_coda_video_device.exit.cleanup43_crit_edge:    ; preds = %to_coda_video_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup43

if.then:                                          ; preds = %to_coda_video_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  %src_formats = getelementptr inbounds %struct.coda_video_device, ptr %retval.0.i, i32 0, i32 4
  br label %if.end23

if.then4:                                         ; preds = %to_coda_video_device.exit
  %dst_formats = getelementptr inbounds %struct.coda_video_device, ptr %retval.0.i, i32 0, i32 5
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %call7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %14, i32 noundef 2) #17
  %fourcc = getelementptr i8, ptr %priv, i32 -424
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %16)
  %cmp8 = icmp eq i32 %16, 1195724874
  br i1 %cmp8, label %land.lhs.true, label %if.then4.if.end23_crit_edge

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then4
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call7, i32 0, i32 28
  %17 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then10, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then10:                                        ; preds = %land.lhs.true
  %jpeg_chroma_subsampling = getelementptr i8, ptr %priv, i32 -320
  %18 = ptrtoint ptr %jpeg_chroma_subsampling to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jpeg_chroma_subsampling, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %19, label %if.end19.fold.split [
    i32 2, label %if.then10.if.end23_crit_edge
    i32 1, label %cleanup
  ]

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.end19.fold.split:                              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

cleanup:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1345466932, ptr %pixelformat, align 4
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup43

if.end23:                                         ; preds = %if.end19.fold.split, %if.then10.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.then4.if.end23_crit_edge, %if.then
  %formats.2 = phi ptr [ %src_formats, %if.then ], [ %dst_formats, %if.end19.fold.split ], [ @coda_formats_420, %if.then10.if.end23_crit_edge ], [ %dst_formats, %if.then4.if.end23_crit_edge ], [ %dst_formats, %land.lhs.true.if.end23_crit_edge ]
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp25 = icmp ugt i32 %25, 4
  br i1 %cmp25, label %if.end23.cleanup43_crit_edge, label %lor.lhs.false

if.end23.cleanup43_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup43

lor.lhs.false:                                    ; preds = %if.end23
  %arrayidx = getelementptr i32, ptr %formats.2, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27 = icmp eq i32 %27, 0
  br i1 %cmp27, label %lor.lhs.false.cleanup43_crit_edge, label %if.end29

lor.lhs.false.cleanup43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup43

if.end29:                                         ; preds = %lor.lhs.false
  %vdoa = getelementptr i8, ptr %priv, i32 2468
  %28 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdoa, align 4
  %tobool30.not = icmp eq ptr %29, null
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

land.lhs.true31:                                  ; preds = %if.end29
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp33 = icmp eq i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %27)
  %cmp37 = icmp eq i32 %27, 1448695129
  %or.cond = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond, label %land.lhs.true31.cleanup43_crit_edge, label %land.lhs.true31.if.end39_crit_edge

land.lhs.true31.if.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

land.lhs.true31.cleanup43_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup43

if.end39:                                         ; preds = %land.lhs.true31.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %pixelformat42 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %32 = ptrtoint ptr %pixelformat42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %pixelformat42, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end39, %land.lhs.true31.cleanup43_crit_edge, %lor.lhs.false.cleanup43_crit_edge, %if.end23.cleanup43_crit_edge, %cleanup, %to_coda_video_device.exit.cleanup43_crit_edge
  %retval.1 = phi i32 [ 0, %if.end39 ], [ %cond, %cleanup ], [ -22, %to_coda_video_device.exit.cleanup43_crit_edge ], [ -22, %lor.lhs.false.cleanup43_crit_edge ], [ -22, %if.end23.cleanup43_crit_edge ], [ -22, %land.lhs.true31.cleanup43_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_g_fmt(ptr nocapture noundef readnone %file, ptr noundef readonly %priv, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.get_q_data.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %entry.get_q_data.exit_crit_edge
  %.sink = phi i32 [ -404, %sw.bb1.i ], [ -440, %entry.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %tobool.not = icmp eq ptr %q_data.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field, align 4
  %fourcc = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 4
  %4 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  %7 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_data.i, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5, align 4
  %bytesperline = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 2
  %13 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesperline, align 4
  %bytesperline7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bytesperline7, align 4
  %sizeimage = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 3
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage, align 4
  %sizeimage9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sizeimage9, align 4
  %colorspace = getelementptr i8, ptr %priv, i32 -360
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorspace, align 8
  %colorspace11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %colorspace11, align 4
  %xfer_func = getelementptr i8, ptr %priv, i32 -356
  %22 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xfer_func, align 4
  %xfer_func13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %24 = ptrtoint ptr %xfer_func13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %xfer_func13, align 4
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 -352
  %25 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ycbcr_enc, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %27, align 4
  %quantization = getelementptr i8, ptr %priv, i32 -348
  %29 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quantization, align 4
  %quantization16 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %quantization16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %quantization16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  %r = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #17
  %call = tail call i32 @coda_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %1 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %2 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %q_data.i = getelementptr i8, ptr %priv, i32 -440
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %r, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %2, align 4
  %5 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_data.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %height = getelementptr i8, ptr %priv, i32 -436
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %call4 = call fastcc i32 @coda_s_fmt(ptr noundef %add.ptr, ptr noundef %f, ptr noundef nonnull %r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %inst_type = getelementptr i8, ptr %priv, i32 -368
  %11 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %fourcc = getelementptr i8, ptr %priv, i32 -424
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_codecs3.i, align 4
  %25 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %16, label %sw.default.i.i [
    i32 842094158, label %if.end9.coda_format_normalize_yuv.exit.i_crit_edge
    i32 842093913, label %if.end9.coda_format_normalize_yuv.exit.i_crit_edge62
    i32 842094169, label %if.end9.coda_format_normalize_yuv.exit.i_crit_edge63
    i32 1345466932, label %if.end9.coda_format_normalize_yuv.exit.i_crit_edge64
    i32 1448695129, label %if.end9.coda_format_normalize_yuv.exit.i_crit_edge65
  ]

if.end9.coda_format_normalize_yuv.exit.i_crit_edge65: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end9.coda_format_normalize_yuv.exit.i_crit_edge64: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end9.coda_format_normalize_yuv.exit.i_crit_edge63: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end9.coda_format_normalize_yuv.exit.i_crit_edge62: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end9.coda_format_normalize_yuv.exit.i_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

sw.default.i.i:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

coda_format_normalize_yuv.exit.i:                 ; preds = %sw.default.i.i, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge62, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge63, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge64, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge65
  %retval.0.i.i = phi i32 [ %16, %sw.default.i.i ], [ 842093913, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge ], [ 842093913, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge62 ], [ 842093913, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge63 ], [ 842093913, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge64 ], [ 842093913, %if.end9.coda_format_normalize_yuv.exit.i_crit_edge65 ]
  %26 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %18, label %sw.default.i32.i [
    i32 842094158, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge
    i32 842093913, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge66
    i32 842094169, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge67
    i32 1345466932, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge68
    i32 1448695129, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge69
  ]

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge69: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge68: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge67: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge66: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

sw.default.i32.i:                                 ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit34.i:               ; preds = %sw.default.i32.i, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge66, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge67, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge68, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge69
  %retval.0.i33.i = phi i32 [ %18, %sw.default.i32.i ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge66 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge67 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge68 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge69 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i33.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, %retval.0.i33.i
  br i1 %cmp.i, label %coda_format_normalize_yuv.exit34.i.do.end_crit_edge, label %for.cond.preheader.i

coda_format_normalize_yuv.exit34.i.do.end_crit_edge: ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.cond.preheader.i:                             ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp535.i = icmp sgt i32 %24, 0
  br i1 %cmp535.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %src_fourcc6.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 1
  %27 = ptrtoint ptr %src_fourcc6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_fourcc6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %retval.0.i.i)
  %cmp7.i = icmp eq i32 %28, %retval.0.i.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_fourcc9.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 2
  %29 = ptrtoint ptr %dst_fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %retval.0.i33.i)
  %cmp10.i = icmp eq i32 %30, %retval.0.i33.i
  br i1 %cmp10.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %k.036.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %24)
  %cmp13.i = icmp eq i32 %k.0.lcssa.i, %24
  %arrayidx16.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.0.lcssa.i
  %tobool11.not = icmp eq ptr %arrayidx16.i, null
  %or.cond = select i1 %cmp13.i, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %for.end.i.do.end_crit_edge, label %if.end16

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %coda_format_normalize_yuv.exit34.i.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name) #20
  br label %cleanup

if.end16:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %codec17 = getelementptr i8, ptr %priv, i32 -364
  %31 = ptrtoint ptr %codec17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx16.i, ptr %codec17, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %colorspace, align 4
  %colorspace19 = getelementptr i8, ptr %priv, i32 -360
  %34 = ptrtoint ptr %colorspace19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %colorspace19, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %35 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xfer_func, align 4
  %xfer_func21 = getelementptr i8, ptr %priv, i32 -356
  %37 = ptrtoint ptr %xfer_func21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %xfer_func21, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 -352
  %41 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ycbcr_enc, align 8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quantization, align 4
  %quantization24 = getelementptr i8, ptr %priv, i32 -348
  %44 = ptrtoint ptr %quantization24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %quantization24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  %f_cap = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f_cap) #17
  %call = tail call i32 @coda_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @coda_s_fmt(ptr noundef %add.ptr, ptr noundef %f, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %0 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %colorspace, align 4
  %colorspace5 = getelementptr i8, ptr %priv, i32 -360
  %2 = ptrtoint ptr %colorspace5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %colorspace5, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %3 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xfer_func, align 4
  %xfer_func7 = getelementptr i8, ptr %priv, i32 -356
  %5 = ptrtoint ptr %xfer_func7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %xfer_func7, align 4
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 -352
  %9 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ycbcr_enc, align 8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quantization, align 4
  %quantization10 = getelementptr i8, ptr %priv, i32 -348
  %12 = ptrtoint ptr %quantization10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %quantization10, align 4
  %inst_type = getelementptr i8, ptr %priv, i32 -368
  %13 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not = icmp eq i32 %14, 1
  br i1 %cmp.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_codecs3.i, align 4
  %25 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %18, label %for.cond.preheader.i [
    i32 842094158, label %if.end12.do.end_crit_edge
    i32 842093913, label %if.end12.do.end_crit_edge83
    i32 842094169, label %if.end12.do.end_crit_edge84
    i32 1345466932, label %if.end12.do.end_crit_edge85
    i32 1448695129, label %if.end12.do.end_crit_edge86
  ]

if.end12.do.end_crit_edge86:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end12.do.end_crit_edge85:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end12.do.end_crit_edge84:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end12.do.end_crit_edge83:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.cond.preheader.i:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp535.i = icmp sgt i32 %24, 0
  br i1 %cmp535.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %src_fourcc6.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 1
  %26 = ptrtoint ptr %src_fourcc6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_fourcc6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %18)
  %cmp7.i = icmp eq i32 %27, %18
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_fourcc9.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 2
  %28 = ptrtoint ptr %dst_fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_fourcc9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %29)
  %cmp10.i = icmp eq i32 %29, 842093913
  br i1 %cmp10.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %k.036.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %24)
  %cmp13.i = icmp eq i32 %k.0.lcssa.i, %24
  %arrayidx16.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.0.lcssa.i
  %tobool15.not = icmp eq ptr %arrayidx16.i, null
  %or.cond = select i1 %cmp13.i, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %for.end.i.do.end_crit_edge, label %if.end20

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %if.end12.do.end_crit_edge, %if.end12.do.end_crit_edge83, %if.end12.do.end_crit_edge84, %if.end12.do.end_crit_edge85, %if.end12.do.end_crit_edge86
  %name = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name) #20
  br label %cleanup

if.end20:                                         ; preds = %for.end.i
  %codec21 = getelementptr i8, ptr %priv, i32 -364
  %30 = ptrtoint ptr %codec21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx16.i, ptr %codec21, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %31 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m2m_ctx, align 4
  %call22 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %32, i32 noundef 1) #17
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call22, i32 0, i32 21
  %33 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i68.not = icmp eq i32 %34, 0
  br i1 %cmp.i68.not, label %get_q_data.exit.i, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

get_q_data.exit.i:                                ; preds = %if.end25
  %35 = getelementptr inbounds i8, ptr %f_cap, i32 12
  %36 = call ptr @memset(ptr %35, i32 0, i32 192)
  %37 = ptrtoint ptr %f_cap to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %f_cap, align 4
  %q_data.i.i = getelementptr i8, ptr %priv, i32 -404
  %tobool.not.i = icmp eq ptr %q_data.i.i, null
  br i1 %tobool.not.i, label %get_q_data.exit.i.coda_g_fmt.exit_crit_edge, label %if.end.i

get_q_data.exit.i.coda_g_fmt.exit_crit_edge:      ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_fmt.exit

if.end.i:                                         ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field.i, align 4
  %fourcc.i = getelementptr i8, ptr %priv, i32 -388
  %39 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr i8, ptr %priv, i32 -396
  %42 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytesperline.i, align 4
  %bytesperline7.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %bytesperline7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bytesperline7.i, align 4
  %sizeimage.i = getelementptr i8, ptr %priv, i32 -392
  %45 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sizeimage.i, align 4
  %sizeimage9.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 5
  %47 = ptrtoint ptr %sizeimage9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sizeimage9.i, align 4
  %48 = ptrtoint ptr %colorspace5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colorspace5, align 8
  %colorspace11.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %colorspace11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %colorspace11.i, align 4
  %51 = ptrtoint ptr %xfer_func7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xfer_func7, align 4
  %xfer_func13.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %53 = ptrtoint ptr %xfer_func13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %xfer_func13.i, align 4
  %54 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ycbcr_enc, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %56, align 4
  %58 = ptrtoint ptr %quantization10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quantization10, align 4
  %quantization16.i = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %quantization16.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %quantization16.i, align 4
  br label %coda_g_fmt.exit

coda_g_fmt.exit:                                  ; preds = %if.end.i, %get_q_data.exit.i.coda_g_fmt.exit_crit_edge
  %61 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fmt, align 4
  %fmt31 = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1
  %63 = ptrtoint ptr %fmt31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %fmt31, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  %height35 = getelementptr inbounds %struct.v4l2_format, ptr %f_cap, i32 0, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %height35 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %height35, align 4
  %call36 = call i32 @coda_s_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef nonnull %f_cap)
  br label %cleanup

cleanup:                                          ; preds = %coda_g_fmt.exit, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %coda_g_fmt.exit ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f_cap) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  %call = tail call fastcc i32 @coda_try_pixelformat(ptr noundef %add.ptr, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 2) #17
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then4, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then4:                                         ; preds = %if.end
  %q_data.i = getelementptr i8, ptr %priv, i32 -440
  %3 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %q_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt, align 4
  %height = getelementptr i8, ptr %priv, i32 -436
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height7, align 4
  %fourcc = getelementptr i8, ptr %priv, i32 -424
  %9 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %10)
  %cmp8 = icmp eq i32 %10, 1195724874
  br i1 %cmp8, label %if.then9, label %if.then4.if.end25_crit_edge

if.then4.if.end25_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then9:                                         ; preds = %if.then4
  %jpeg_chroma_subsampling = getelementptr i8, ptr %priv, i32 -320
  %11 = ptrtoint ptr %jpeg_chroma_subsampling to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jpeg_chroma_subsampling, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %12, label %if.then9.if.end25_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %if.then19
  ]

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then9
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %15)
  %cmp12 = icmp eq i32 %15, 1345466932
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 842094158, ptr %pixelformat, align 4
  br label %if.end25

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %pixelformat21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1345466932, ptr %pixelformat21, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then13, %land.lhs.true.if.end25_crit_edge, %if.then9.if.end25_crit_edge, %if.then4.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %colorspace = getelementptr i8, ptr %priv, i32 -360
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %colorspace, align 8
  %fmt26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %colorspace27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %colorspace27, align 4
  %xfer_func = getelementptr i8, ptr %priv, i32 -356
  %21 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xfer_func, align 4
  %xfer_func29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %23 = ptrtoint ptr %xfer_func29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %xfer_func29, align 4
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 -352
  %24 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ycbcr_enc, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  %quantization = getelementptr i8, ptr %priv, i32 -348
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quantization, align 4
  %quantization32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %quantization32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %quantization32, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %fourcc34 = getelementptr i8, ptr %priv, i32 -424
  %33 = ptrtoint ptr %fourcc34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fourcc34, align 4
  %pixelformat36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixelformat36, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_codecs3.i, align 4
  %43 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %34, label %sw.default.i.i [
    i32 842094158, label %if.end25.coda_format_normalize_yuv.exit.i_crit_edge
    i32 842093913, label %if.end25.coda_format_normalize_yuv.exit.i_crit_edge187
    i32 842094169, label %if.end25.coda_format_normalize_yuv.exit.i_crit_edge188
    i32 1345466932, label %if.end25.coda_format_normalize_yuv.exit.i_crit_edge189
    i32 1448695129, label %if.end25.coda_format_normalize_yuv.exit.i_crit_edge190
  ]

if.end25.coda_format_normalize_yuv.exit.i_crit_edge190: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end25.coda_format_normalize_yuv.exit.i_crit_edge189: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end25.coda_format_normalize_yuv.exit.i_crit_edge188: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end25.coda_format_normalize_yuv.exit.i_crit_edge187: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end25.coda_format_normalize_yuv.exit.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

sw.default.i.i:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

coda_format_normalize_yuv.exit.i:                 ; preds = %sw.default.i.i, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge187, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge188, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge189, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge190
  %retval.0.i.i = phi i32 [ %34, %sw.default.i.i ], [ 842093913, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge ], [ 842093913, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge187 ], [ 842093913, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge188 ], [ 842093913, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge189 ], [ 842093913, %if.end25.coda_format_normalize_yuv.exit.i_crit_edge190 ]
  %44 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %36, label %sw.default.i32.i [
    i32 842094158, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge
    i32 842093913, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge191
    i32 842094169, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge192
    i32 1345466932, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge193
    i32 1448695129, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge194
  ]

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge194: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge193: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge192: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge191: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

sw.default.i32.i:                                 ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit34.i:               ; preds = %sw.default.i32.i, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge191, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge192, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge193, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge194
  %retval.0.i33.i = phi i32 [ %36, %sw.default.i32.i ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge191 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge192 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge193 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge194 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i33.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, %retval.0.i33.i
  br i1 %cmp.i, label %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge, label %for.cond.preheader.i

coda_format_normalize_yuv.exit34.i.cleanup_crit_edge: ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader.i:                             ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp535.i = icmp sgt i32 %42, 0
  br i1 %cmp535.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %src_fourcc6.i = getelementptr %struct.coda_codec, ptr %40, i32 %k.036.i, i32 1
  %45 = ptrtoint ptr %src_fourcc6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_fourcc6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %retval.0.i.i)
  %cmp7.i = icmp eq i32 %46, %retval.0.i.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_fourcc9.i = getelementptr %struct.coda_codec, ptr %40, i32 %k.036.i, i32 2
  %47 = ptrtoint ptr %dst_fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst_fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %retval.0.i33.i)
  %cmp10.i = icmp eq i32 %48, %retval.0.i33.i
  br i1 %cmp10.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %42
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %k.036.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %42)
  %cmp13.i = icmp eq i32 %k.0.lcssa.i, %42
  %arrayidx16.i = getelementptr %struct.coda_codec, ptr %40, i32 %k.0.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx16.i, null
  %or.cond = select i1 %cmp13.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.end.i.cleanup_crit_edge, label %if.end39

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end39:                                         ; preds = %for.end.i
  %call40 = tail call fastcc i32 @coda_try_fmt(ptr noundef %add.ptr, ptr noundef nonnull %arrayidx16.i, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %inst_type = getelementptr i8, ptr %priv, i32 -368
  %49 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp44 = icmp eq i32 %50, 1
  br i1 %cmp44, label %if.then45, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  %51 = ptrtoint ptr %fmt26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt26, align 4
  %sub = add i32 %52, -1
  %or = or i32 %sub, 15
  %add = add i32 %or, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add, ptr %bytesperline, align 4
  %height50 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %height50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height50, align 4
  %sub51 = add i32 %55, -1
  %or52 = or i32 %sub51, 15
  %add53 = add i32 %or52, 1
  store i32 %add53, ptr %height50, align 4
  %src_fourcc = getelementptr %struct.coda_codec, ptr %40, i32 %k.0.lcssa.i, i32 1
  %56 = ptrtoint ptr %src_fourcc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %57)
  %cmp56 = icmp eq i32 %57, 1195724874
  br i1 %cmp56, label %land.lhs.true57, label %if.then45.if.else68_crit_edge

if.then45.if.else68_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else68

land.lhs.true57:                                  ; preds = %if.then45
  %58 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixelformat36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345466932, i32 %59)
  %cmp60 = icmp eq i32 %59, 1345466932
  br i1 %cmp60, label %if.then61, label %land.lhs.true57.if.else68_crit_edge

land.lhs.true57.if.else68_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else68

if.then61:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #19
  %mul = mul i32 %add53, %add
  %mul66 = shl i32 %mul, 1
  br label %if.end77

if.else68:                                        ; preds = %land.lhs.true57.if.else68_crit_edge, %if.then45.if.else68_crit_edge
  %mul73 = mul i32 %add53, %add
  %mul74 = mul i32 %mul73, 3
  %div163 = lshr exact i32 %mul74, 1
  br label %if.end77

if.end77:                                         ; preds = %if.else68, %if.then61
  %div163.sink = phi i32 [ %div163, %if.else68 ], [ %mul66, %if.then61 ]
  %sizeimage76 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %60 = ptrtoint ptr %sizeimage76 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div163.sink, ptr %sizeimage76, align 4
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.not.i.not = icmp eq i32 %62, 1
  br i1 %cmp.not.i.not, label %if.end2.i, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2.i:                                        ; preds = %if.end77
  %vdoa.i = getelementptr i8, ptr %priv, i32 2468
  %63 = ptrtoint ptr %vdoa.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdoa.i, align 4
  %tobool3.not.i = icmp eq ptr %64, null
  %65 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat36, align 4
  br i1 %tobool3.not.i, label %if.end81.thread, label %if.end81

if.end81:                                         ; preds = %if.end2.i
  %call.i = tail call i32 @vdoa_context_configure(ptr noundef null, i32 noundef %add, i32 noundef %add53, i32 noundef %66) #17
  %67 = ptrtoint ptr %pixelformat36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pixelformat36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %68)
  %cmp84 = icmp eq i32 %68, 1448695129
  br i1 %cmp84, label %if.then85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end81.thread:                                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %66)
  %cmp84174 = icmp eq i32 %66, 1448695129
  %spec.select = select i1 %cmp84174, i32 -22, i32 0
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i.not, label %if.end88, label %if.then85.cleanup_crit_edge

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end88:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %fmt26 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fmt26, align 4
  %sub91 = shl i32 %70, 1
  %or92 = add i32 %sub91, -2
  %add93 = or i32 %or92, 30
  %mul94 = add i32 %add93, 2
  %71 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul94, ptr %bytesperline, align 4
  %72 = ptrtoint ptr %height50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %height50, align 4
  %mul101 = mul i32 %mul94, %73
  %sizeimage103 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %74 = ptrtoint ptr %sizeimage103 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul101, ptr %sizeimage103, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then85.cleanup_crit_edge, %if.end81.thread, %if.end81.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ -22, %if.then85.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ 0, %if.end88 ], [ 0, %if.end43.cleanup_crit_edge ], [ -22, %if.end77.cleanup_crit_edge ], [ -22, %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ %spec.select, %if.end81.thread ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call fastcc i32 @coda_try_pixelformat(ptr noundef %add.ptr, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %5)
  %cmp.i = icmp eq i32 %5, 1195724874
  br i1 %cmp.i, label %if.then3.coda_set_default_colorspace.exit_crit_edge, label %if.else.i

if.then3.coda_set_default_colorspace.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_set_default_colorspace.exit

if.else.i:                                        ; preds = %if.then3
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 721, i32 %7)
  %cmp1.i = icmp ult i32 %7, 721
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.else.i.if.else4.i_crit_edge

if.else.i.if.else4.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else4.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %9)
  %cmp2.i = icmp ult i32 %9, 577
  br i1 %cmp2.i, label %land.lhs.true.i.coda_set_default_colorspace.exit_crit_edge, label %land.lhs.true.i.if.else4.i_crit_edge

land.lhs.true.i.if.else4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else4.i

land.lhs.true.i.coda_set_default_colorspace.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_set_default_colorspace.exit

if.else4.i:                                       ; preds = %land.lhs.true.i.if.else4.i_crit_edge, %if.else.i.if.else4.i_crit_edge
  br label %coda_set_default_colorspace.exit

coda_set_default_colorspace.exit:                 ; preds = %if.else4.i, %land.lhs.true.i.coda_set_default_colorspace.exit_crit_edge, %if.then3.coda_set_default_colorspace.exit_crit_edge
  %colorspace.0.i = phi i32 [ 3, %if.else4.i ], [ 7, %if.then3.coda_set_default_colorspace.exit_crit_edge ], [ 1, %land.lhs.true.i.coda_set_default_colorspace.exit_crit_edge ]
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %colorspace.0.i, ptr %colorspace, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %11 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %xfer_func.i, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %quantization.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %coda_set_default_colorspace.exit, %if.end.if.end5_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat, align 4
  %fourcc = getelementptr i8, ptr %priv, i32 -388
  %17 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fourcc, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_codecs3.i, align 4
  %25 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %16, label %sw.default.i.i [
    i32 842094158, label %if.end5.coda_format_normalize_yuv.exit.i_crit_edge
    i32 842093913, label %if.end5.coda_format_normalize_yuv.exit.i_crit_edge24
    i32 842094169, label %if.end5.coda_format_normalize_yuv.exit.i_crit_edge25
    i32 1345466932, label %if.end5.coda_format_normalize_yuv.exit.i_crit_edge26
    i32 1448695129, label %if.end5.coda_format_normalize_yuv.exit.i_crit_edge27
  ]

if.end5.coda_format_normalize_yuv.exit.i_crit_edge27: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end5.coda_format_normalize_yuv.exit.i_crit_edge26: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end5.coda_format_normalize_yuv.exit.i_crit_edge25: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end5.coda_format_normalize_yuv.exit.i_crit_edge24: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.end5.coda_format_normalize_yuv.exit.i_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

sw.default.i.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

coda_format_normalize_yuv.exit.i:                 ; preds = %sw.default.i.i, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge24, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge25, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge26, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge27
  %retval.0.i.i = phi i32 [ %16, %sw.default.i.i ], [ 842093913, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge ], [ 842093913, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge24 ], [ 842093913, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge25 ], [ 842093913, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge26 ], [ 842093913, %if.end5.coda_format_normalize_yuv.exit.i_crit_edge27 ]
  %26 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %18, label %sw.default.i32.i [
    i32 842094158, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge
    i32 842093913, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge28
    i32 842094169, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge29
    i32 1345466932, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge30
    i32 1448695129, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge31
  ]

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge31: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge30: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge29: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge28: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

sw.default.i32.i:                                 ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit34.i:               ; preds = %sw.default.i32.i, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge28, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge29, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge30, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge31
  %retval.0.i33.i = phi i32 [ %18, %sw.default.i32.i ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge28 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge29 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge30 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge31 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i33.i)
  %cmp.i22 = icmp eq i32 %retval.0.i.i, %retval.0.i33.i
  br i1 %cmp.i22, label %coda_format_normalize_yuv.exit34.i.coda_find_codec.exit_crit_edge, label %for.cond.preheader.i

coda_format_normalize_yuv.exit34.i.coda_find_codec.exit_crit_edge: ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_find_codec.exit

for.cond.preheader.i:                             ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp535.i = icmp sgt i32 %24, 0
  br i1 %cmp535.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %src_fourcc6.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 1
  %27 = ptrtoint ptr %src_fourcc6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_fourcc6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %retval.0.i.i)
  %cmp7.i = icmp eq i32 %28, %retval.0.i.i
  br i1 %cmp7.i, label %land.lhs.true.i23, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i23:                                ; preds = %for.body.i
  %dst_fourcc9.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.036.i, i32 2
  %29 = ptrtoint ptr %dst_fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %retval.0.i33.i)
  %cmp10.i = icmp eq i32 %30, %retval.0.i33.i
  br i1 %cmp10.i, label %land.lhs.true.i23.for.end.i_crit_edge, label %land.lhs.true.i23.for.inc.i_crit_edge

land.lhs.true.i23.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i23.for.end.i_crit_edge:            ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i23.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i23.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %24, %for.inc.i.for.end.i_crit_edge ], [ %k.036.i, %land.lhs.true.i23.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %24)
  %cmp13.i = icmp eq i32 %k.0.lcssa.i, %24
  %arrayidx16.i = getelementptr %struct.coda_codec, ptr %22, i32 %k.0.lcssa.i
  %spec.select.i = select i1 %cmp13.i, ptr null, ptr %arrayidx16.i
  br label %coda_find_codec.exit

coda_find_codec.exit:                             ; preds = %for.end.i, %coda_format_normalize_yuv.exit34.i.coda_find_codec.exit_crit_edge
  %retval.0.i = phi ptr [ null, %coda_format_normalize_yuv.exit34.i.coda_find_codec.exit_crit_edge ], [ %spec.select.i, %for.end.i ]
  %call9 = tail call fastcc i32 @coda_try_fmt(ptr noundef %add.ptr, ptr noundef %retval.0.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %coda_find_codec.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %coda_find_codec.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -760
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_reqbufs(ptr noundef %file, ptr noundef %1, ptr noundef %rb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %rb, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr i8, ptr %priv, i32 -472
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %reqbufs = getelementptr inbounds %struct.coda_context_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reqbufs, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call i32 %7(ptr noundef %add.ptr, ptr noundef %rb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_qbuf(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_type = getelementptr i8, ptr %priv, i32 -368
  %0 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -1048577
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_qbuf(ptr noundef %file, ptr noundef %7, ptr noundef %buf) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_dqbuf(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call i32 @v4l2_m2m_dqbuf(ptr noundef %file, ptr noundef %1, ptr noundef %buf) #17
  %inst_type = getelementptr i8, ptr %priv, i32 -368
  %2 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -1048577
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_g_selection(ptr nocapture noundef readnone %file, ptr noundef readonly %fh, ptr nocapture noundef %s) #12 align 64 {
entry:
  %r = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #17
  %0 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %1 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %2 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %entry.get_q_data.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %entry.get_q_data.exit_crit_edge
  %.sink = phi i32 [ -404, %sw.bb1.i ], [ -440, %entry.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %fh, i32 %.sink
  %tobool.not = icmp eq ptr %q_data.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %0, align 4
  %8 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_data.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %height = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %2, align 4
  %rect = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i, i32 0, i32 5
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %15, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge32
    i32 0, label %if.end.sw.bb3_crit_edge
    i32 258, label %if.end.sw.bb8_crit_edge
    i32 259, label %if.end.sw.bb8_crit_edge33
    i32 256, label %if.end.sw.bb9_crit_edge
    i32 257, label %if.end.sw.bb9_crit_edge34
  ]

if.end.sw.bb9_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

if.end.sw.bb8_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3

if.end.sw.bb_crit_edge32:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge32
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.end.sw.bb3_crit_edge
  %rsel.0 = phi ptr [ %rect, %if.end.sw.bb3_crit_edge ], [ %r, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb3
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %17 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp5 = icmp eq i32 %18, 1
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge33
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb8, %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge34
  %rsel.1 = phi ptr [ %rect, %if.end.sw.bb9_crit_edge ], [ %rect, %if.end.sw.bb9_crit_edge34 ], [ %r, %sw.bb8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp11.not = icmp eq i32 %4, 1
  br i1 %cmp11.not, label %lor.lhs.false12, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false12:                                  ; preds = %sw.bb9
  %inst_type13 = getelementptr i8, ptr %fh, i32 -368
  %19 = ptrtoint ptr %inst_type13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inst_type13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14 = icmp eq i32 %20, 0
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false12.sw.epilog_crit_edge

lor.lhs.false12.sw.epilog_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false12.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %rsel.2 = phi ptr [ %rsel.1, %lor.lhs.false12.sw.epilog_crit_edge ], [ %rsel.0, %lor.lhs.false.sw.epilog_crit_edge ]
  %r17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %r17, ptr %rsel.2, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false12.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_s_selection(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %s) #0 align 64 {
entry:
  %r.i = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -760
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %entry.sw.bb77thread-pre-split_crit_edge
    i32 256, label %entry.sw.bb77thread-pre-split_crit_edge120
  ]

entry.sw.bb77thread-pre-split_crit_edge120:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77thread-pre-split

entry.sw.bb77thread-pre-split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77thread-pre-split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %3 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.bb77thread-pre-split_crit_edge

sw.bb.sw.bb77thread-pre-split_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77thread-pre-split

land.lhs.true:                                    ; preds = %sw.bb
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then, label %land.lhs.true.sw.bb77_crit_edge

land.lhs.true.sw.bb77_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77

if.then:                                          ; preds = %land.lhs.true
  %q_data.i = getelementptr i8, ptr %fh, i32 -440
  %tobool.not = icmp eq ptr %q_data.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 2)
  %12 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_data.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 2)
  %height24 = getelementptr i8, ptr %fh, i32 -436
  %19 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height24, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add i32 %14, -1
  %or = or i32 %sub, 1
  %add = add i32 %or, 1
  %24 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %width, align 4
  %sub41 = add i32 %21, -1
  %or42 = or i32 %sub41, 1
  %add43 = add i32 %or42, 1
  br label %if.end56

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %and48 = and i32 %14, -2
  %25 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and48, ptr %width, align 4
  %and53 = and i32 %21, -2
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then34
  %storemerge = phi i32 [ %and53, %if.else ], [ %add43, %if.then34 ]
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %height, align 4
  %rect = getelementptr i8, ptr %fh, i32 -420
  %27 = call ptr @memcpy(ptr %rect, ptr %r, i32 16)
  %28 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp58 = icmp sgt i32 %28, 0
  br i1 %cmp58, label %do.end, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %30, i32 0, i32 4
  %idx = getelementptr i8, ptr %fh, i32 2384
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx, align 8
  %33 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width, align 4
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %name, i32 noundef %32, i32 noundef %34, i32 noundef %36) #20
  br label %cleanup

sw.bb77thread-pre-split:                          ; preds = %sw.bb.sw.bb77thread-pre-split_crit_edge, %entry.sw.bb77thread-pre-split_crit_edge, %entry.sw.bb77thread-pre-split_crit_edge120
  %37 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %s, align 4
  br label %sw.bb77

sw.bb77:                                          ; preds = %sw.bb77thread-pre-split, %land.lhs.true.sw.bb77_crit_edge
  %38 = phi i32 [ %.pr, %sw.bb77thread-pre-split ], [ %6, %land.lhs.true.sw.bb77_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r.i) #17
  %39 = getelementptr inbounds %struct.v4l2_rect, ptr %r.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.v4l2_rect, ptr %r.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.v4l2_rect, ptr %r.i, i32 0, i32 3
  %42 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %38, label %sw.bb77.coda_g_selection.exit_crit_edge [
    i32 2, label %sw.bb77.get_q_data.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

sw.bb77.get_q_data.exit.i_crit_edge:              ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit.i

sw.bb77.coda_g_selection.exit_crit_edge:          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

sw.bb1.i.i:                                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit.i

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb77.get_q_data.exit.i_crit_edge
  %.sink.i = phi i32 [ -404, %sw.bb1.i.i ], [ -440, %sw.bb77.get_q_data.exit.i_crit_edge ]
  %q_data.i.i = getelementptr i8, ptr %fh, i32 %.sink.i
  %tobool.not.i = icmp eq ptr %q_data.i.i, null
  br i1 %tobool.not.i, label %get_q_data.exit.i.coda_g_selection.exit_crit_edge, label %if.end.i

get_q_data.exit.i.coda_g_selection.exit_crit_edge: ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

if.end.i:                                         ; preds = %get_q_data.exit.i
  %43 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %r.i, align 4
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %39, align 4
  %45 = ptrtoint ptr %q_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %q_data.i.i, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %40, align 4
  %height.i = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height.i, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %41, align 4
  %rect.i = getelementptr inbounds %struct.coda_q_data, ptr %q_data.i.i, i32 0, i32 5
  %51 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %1, label %if.end.i.coda_g_selection.exit_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge121
    i32 0, label %if.end.i.sw.bb3.i_crit_edge
    i32 256, label %sw.bb9.i
  ]

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

if.end.i.sw.bb.i_crit_edge121:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.i.coda_g_selection.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge121
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb3.i_crit_edge
  %rsel.0.i = phi ptr [ %rect.i, %if.end.i.sw.bb3.i_crit_edge ], [ %r.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb3.i.coda_g_selection.exit_crit_edge

sw.bb3.i.coda_g_selection.exit_crit_edge:         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

lor.lhs.false.i:                                  ; preds = %sw.bb3.i
  %inst_type.i = getelementptr i8, ptr %fh, i32 -368
  %52 = ptrtoint ptr %inst_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inst_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp5.i = icmp eq i32 %53, 1
  br i1 %cmp5.i, label %lor.lhs.false.i.coda_g_selection.exit_crit_edge, label %lor.lhs.false.i.sw.epilog.i_crit_edge

lor.lhs.false.i.sw.epilog.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

lor.lhs.false.i.coda_g_selection.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp11.not.i = icmp eq i32 %38, 1
  br i1 %cmp11.not.i, label %lor.lhs.false12.i, label %sw.bb9.i.coda_g_selection.exit_crit_edge

sw.bb9.i.coda_g_selection.exit_crit_edge:         ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

lor.lhs.false12.i:                                ; preds = %sw.bb9.i
  %inst_type13.i = getelementptr i8, ptr %fh, i32 -368
  %54 = ptrtoint ptr %inst_type13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inst_type13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp14.i = icmp eq i32 %55, 0
  br i1 %cmp14.i, label %lor.lhs.false12.i.coda_g_selection.exit_crit_edge, label %lor.lhs.false12.i.sw.epilog.i_crit_edge

lor.lhs.false12.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

lor.lhs.false12.i.coda_g_selection.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_g_selection.exit

sw.epilog.i:                                      ; preds = %lor.lhs.false12.i.sw.epilog.i_crit_edge, %lor.lhs.false.i.sw.epilog.i_crit_edge
  %rsel.2.i = phi ptr [ %rect.i, %lor.lhs.false12.i.sw.epilog.i_crit_edge ], [ %rsel.0.i, %lor.lhs.false.i.sw.epilog.i_crit_edge ]
  %r17.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %56 = call ptr @memcpy(ptr %r17.i, ptr %rsel.2.i, i32 16)
  br label %coda_g_selection.exit

coda_g_selection.exit:                            ; preds = %sw.epilog.i, %lor.lhs.false12.i.coda_g_selection.exit_crit_edge, %sw.bb9.i.coda_g_selection.exit_crit_edge, %lor.lhs.false.i.coda_g_selection.exit_crit_edge, %sw.bb3.i.coda_g_selection.exit_crit_edge, %if.end.i.coda_g_selection.exit_crit_edge, %get_q_data.exit.i.coda_g_selection.exit_crit_edge, %sw.bb77.coda_g_selection.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %get_q_data.exit.i.coda_g_selection.exit_crit_edge ], [ -22, %lor.lhs.false.i.coda_g_selection.exit_crit_edge ], [ -22, %sw.bb3.i.coda_g_selection.exit_crit_edge ], [ -22, %lor.lhs.false12.i.coda_g_selection.exit_crit_edge ], [ -22, %sw.bb9.i.coda_g_selection.exit_crit_edge ], [ -22, %if.end.i.coda_g_selection.exit_crit_edge ], [ -22, %sw.bb77.coda_g_selection.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r.i) #17
  br label %cleanup

cleanup:                                          ; preds = %coda_g_selection.exit, %do.end, %if.end56.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %coda_g_selection.exit ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end56.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -760
  %inst_type.i = getelementptr i8, ptr %fh, i32 -368
  %0 = ptrtoint ptr %inst_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %coda_try_encoder_cmd.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

coda_try_encoder_cmd.exit:                        ; preds = %entry
  %call.i = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %coda_try_encoder_cmd.exit.cleanup_crit_edge, label %if.end

coda_try_encoder_cmd.exit.cleanup_crit_edge:      ; preds = %coda_try_encoder_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %coda_try_encoder_cmd.exit
  %wakeup_mutex = getelementptr i8, ptr %fh, i32 2472
  tail call void @mutex_lock_nested(ptr noundef %wakeup_mutex, i32 noundef 0) #17
  %m2m_ctx = getelementptr %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i16 = tail call ptr @v4l2_m2m_last_buf(ptr noundef %out_q_ctx.i) #17
  %tobool.not = icmp eq ptr %call.i16, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i16, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 1048576
  store i32 %or, ptr %flags, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %bit_stream_param = getelementptr i8, ptr %fh, i32 2440
  %6 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit_stream_param, align 8
  %or4 = or i32 %7, 4
  store i32 %or4, ptr %bit_stream_param, align 8
  %8 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.coda_wake_up_capture_queue.exit_crit_edge

if.else.coda_wake_up_capture_queue.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_wake_up_capture_queue.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %idx.i = getelementptr i8, ptr %fh, i32 2384
  %11 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx.i, align 8
  %call.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name.i, i32 noundef %12) #20
  br label %coda_wake_up_capture_queue.exit

coda_wake_up_capture_queue.exit:                  ; preds = %do.end.i, %if.else.coda_wake_up_capture_queue.exit_crit_edge
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %call10.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %14, i32 noundef 1) #17
  %last_buffer_dequeued.i = getelementptr inbounds %struct.vb2_queue, ptr %call10.i, i32 0, i32 28
  %15 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %last_buffer_dequeued.i, align 4
  %done_wq.i = getelementptr inbounds %struct.vb2_queue, ptr %call10.i, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %done_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end5

if.end5:                                          ; preds = %coda_wake_up_capture_queue.exit, %if.then3
  tail call void @mutex_unlock(ptr noundef %wakeup_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %coda_try_encoder_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %coda_try_encoder_cmd.exit.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_try_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %0 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %ec) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -760
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %inst_type.i = getelementptr i8, ptr %fh, i32 -368
  %2 = ptrtoint ptr %inst_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inst_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %coda_try_decoder_cmd.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

coda_try_decoder_cmd.exit:                        ; preds = %entry
  %call.i = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %coda_try_decoder_cmd.exit.cleanup_crit_edge, label %if.end

coda_try_decoder_cmd.exit.cleanup_crit_edge:      ; preds = %coda_try_decoder_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %coda_try_decoder_cmd.exit
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dc, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %coda_mutex, i32 noundef 0) #17
  %bitstream_mutex = getelementptr i8, ptr %fh, i32 428
  tail call void @mutex_lock_nested(ptr noundef %bitstream_mutex, i32 noundef 0) #17
  %call2 = tail call i32 @coda_bitstream_flush(ptr noundef %add.ptr) #17
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %call4 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %8, i32 noundef 1) #17
  %last_buffer_dequeued.i = getelementptr inbounds %struct.vb2_queue, ptr %call4, i32 0, i32 28
  %9 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -129
  store i16 %bf.clear.i, ptr %last_buffer_dequeued.i, align 4
  %bit_stream_param = getelementptr i8, ptr %fh, i32 2440
  %10 = ptrtoint ptr %bit_stream_param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit_stream_param, align 8
  %and = and i32 %11, -5
  store i32 %and, ptr %bit_stream_param, align 8
  tail call void @coda_fill_bitstream(ptr noundef %add.ptr, ptr noundef null) #17
  tail call void @mutex_unlock(ptr noundef %bitstream_mutex) #17
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end
  %wakeup_mutex = getelementptr i8, ptr %fh, i32 2472
  tail call void @mutex_lock_nested(ptr noundef %wakeup_mutex, i32 noundef 0) #17
  %m2m_ctx9 = getelementptr %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %12 = ptrtoint ptr %m2m_ctx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx9, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  %call.i133 = tail call ptr @v4l2_m2m_last_buf(ptr noundef %out_q_ctx.i) #17
  %tobool.not = icmp eq ptr %call.i133, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %sw.bb7
  %14 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %do.end, label %do.body.do.end26_crit_edge

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %idx = getelementptr i8, ptr %fh, i32 2384
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %name, i32 noundef %18) #20
  br label %do.end26

do.end26:                                         ; preds = %do.end, %do.body.do.end26_crit_edge
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i133, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %or = or i32 %20, 1048576
  store i32 %or, ptr %flags, align 8
  %21 = ptrtoint ptr %m2m_ctx9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx9, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %22, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp30 = icmp eq i8 %24, 0
  br i1 %cmp30, label %do.body32, label %do.end26.cleanup.sink.split_crit_edge

do.end26.cleanup.sink.split_crit_edge:            ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

do.body32:                                        ; preds = %do.end26
  %25 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33 = icmp sgt i32 %25, 0
  br i1 %cmp33, label %do.end40, label %do.body32.do.end90_crit_edge

do.body32.do.end90_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end90

do.end40:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %name44 = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %idx46 = getelementptr i8, ptr %fh, i32 2384
  %28 = ptrtoint ptr %idx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %name44, i32 noundef %29) #20
  br label %do.body69

if.else:                                          ; preds = %sw.bb7
  %use_bit = getelementptr i8, ptr %fh, i32 2464
  %30 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool55.not = icmp eq i8 %31, 0
  %32 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i135 = icmp sgt i32 %32, 0
  br i1 %tobool55.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.else
  br i1 %cmp.i135, label %do.end.i, label %if.then56.do.end9.i_crit_edge

if.then56.do.end9.i_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %34, i32 0, i32 4
  %idx.i = getelementptr i8, ptr %fh, i32 2384
  %35 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx.i, align 8
  %call.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name.i, i32 noundef %36) #20
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then56.do.end9.i_crit_edge
  %buffer_meta_lock.i = getelementptr i8, ptr %fh, i32 2304
  tail call void @_raw_spin_lock(ptr noundef %buffer_meta_lock.i) #17
  %buffer_meta_list.i = getelementptr i8, ptr %fh, i32 2296
  %37 = ptrtoint ptr %buffer_meta_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %buffer_meta_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %38, %buffer_meta_list.i
  br i1 %cmp.i.i.not, label %if.end66, label %if.end66.thread163

if.end66.thread163:                               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr i8, ptr %fh, i32 2300
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %last.i = getelementptr inbounds %struct.coda_buffer_meta, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %last.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %last.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock.i) #17
  br label %do.body69

if.else61:                                        ; preds = %if.else
  br i1 %cmp.i135, label %do.end.i139, label %if.else61.do.end9.i141_crit_edge

if.else61.do.end9.i141_crit_edge:                 ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9.i141

do.end.i139:                                      ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %name.i136 = getelementptr inbounds %struct.v4l2_device, ptr %43, i32 0, i32 4
  %idx.i137 = getelementptr i8, ptr %fh, i32 2384
  %44 = ptrtoint ptr %idx.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx.i137, align 8
  %call.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %name.i136, i32 noundef %45) #20
  br label %do.end9.i141

do.end9.i141:                                     ; preds = %do.end.i139, %if.else61.do.end9.i141_crit_edge
  %46 = ptrtoint ptr %m2m_ctx9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m2m_ctx9, align 4
  %call10.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %47, i32 noundef 1) #17
  %done_lock.i = getelementptr inbounds %struct.vb2_queue, ptr %call10.i, i32 0, i32 26
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %done_lock.i) #17
  %done_list.i = getelementptr inbounds %struct.vb2_queue, ptr %call10.i, i32 0, i32 25
  %48 = ptrtoint ptr %done_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %done_list.i, align 4
  %cmp.i.i140.not = icmp eq ptr %49, %done_list.i
  br i1 %cmp.i.i140.not, label %if.end93.thread166, label %if.end93

if.end93.thread166:                               ; preds = %do.end9.i141
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %done_lock.i, i32 noundef %call16.i) #17
  br label %if.then95

if.end66:                                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock(ptr noundef %buffer_meta_lock.i) #17
  br label %if.then95

do.body69:                                        ; preds = %if.end66.thread163, %do.end40
  %.pr = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp70 = icmp sgt i32 %.pr, 0
  br i1 %cmp70, label %do.end77, label %do.body69.do.end90_crit_edge

do.body69.do.end90_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end90

do.end77:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %name81 = getelementptr inbounds %struct.v4l2_device, ptr %51, i32 0, i32 4
  %idx83 = getelementptr i8, ptr %fh, i32 2384
  %52 = ptrtoint ptr %idx83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx83, align 8
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %name81, i32 noundef %53) #20
  br label %do.end90

do.end90:                                         ; preds = %do.end77, %do.body69.do.end90_crit_edge, %do.body32.do.end90_crit_edge
  tail call void @coda_bit_stream_end_flag(ptr noundef %add.ptr) #17
  %hold = getelementptr i8, ptr %fh, i32 544
  %54 = ptrtoint ptr %hold to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %hold, align 8
  %55 = ptrtoint ptr %m2m_ctx9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m2m_ctx9, align 4
  tail call void @v4l2_m2m_try_schedule(ptr noundef %56) #17
  br label %cleanup.sink.split

if.end93:                                         ; preds = %do.end9.i141
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i142 = getelementptr inbounds %struct.vb2_queue, ptr %call10.i, i32 0, i32 25, i32 1
  %57 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i142, align 4
  %flags30.i = getelementptr i8, ptr %58, i32 104
  %59 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags30.i, align 8
  %or.i = or i32 %60, 1048576
  store i32 %or.i, ptr %flags30.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %done_lock.i, i32 noundef %call16.i) #17
  br label %cleanup.sink.split

if.then95:                                        ; preds = %if.end66, %if.end93.thread166
  %61 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i143 = icmp sgt i32 %61, 0
  br i1 %cmp.i143, label %do.end.i147, label %if.then95.coda_wake_up_capture_queue.exit_crit_edge

if.then95.coda_wake_up_capture_queue.exit_crit_edge: ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_wake_up_capture_queue.exit

do.end.i147:                                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #19
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 8
  %name.i144 = getelementptr inbounds %struct.v4l2_device, ptr %63, i32 0, i32 4
  %idx.i145 = getelementptr i8, ptr %fh, i32 2384
  %64 = ptrtoint ptr %idx.i145 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx.i145, align 8
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name.i144, i32 noundef %65) #20
  br label %coda_wake_up_capture_queue.exit

coda_wake_up_capture_queue.exit:                  ; preds = %do.end.i147, %if.then95.coda_wake_up_capture_queue.exit_crit_edge
  %66 = ptrtoint ptr %m2m_ctx9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %m2m_ctx9, align 4
  %call10.i149 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %67, i32 noundef 1) #17
  %last_buffer_dequeued.i150 = getelementptr inbounds %struct.vb2_queue, ptr %call10.i149, i32 0, i32 28
  %68 = ptrtoint ptr %last_buffer_dequeued.i150 to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i151 = load i16, ptr %last_buffer_dequeued.i150, align 4
  %bf.set.i = or i16 %bf.load.i151, 128
  store i16 %bf.set.i, ptr %last_buffer_dequeued.i150, align 4
  %done_wq.i = getelementptr inbounds %struct.vb2_queue, ptr %call10.i149, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %done_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %coda_wake_up_capture_queue.exit, %if.end93, %do.end90, %do.end26.cleanup.sink.split_crit_edge, %sw.bb
  %coda_mutex.sink = phi ptr [ %coda_mutex, %sw.bb ], [ %wakeup_mutex, %do.end90 ], [ %wakeup_mutex, %do.end26.cleanup.sink.split_crit_edge ], [ %wakeup_mutex, %if.end93 ], [ %wakeup_mutex, %coda_wake_up_capture_queue.exit ]
  tail call void @mutex_unlock(ptr noundef %coda_mutex.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %coda_try_decoder_cmd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %coda_try_decoder_cmd.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %0 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %dc) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coda_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %a) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %framerate = getelementptr i8, ptr %fh, i32 -244
  %3 = ptrtoint ptr %framerate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %framerate, align 4
  %and = and i32 %4, 65535
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %denominator, align 4
  %6 = load i32, ptr %framerate, align 4
  %shr = lshr i32 %6, 16
  %add = add nuw nsw i32 %shr, 1
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_s_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %a) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %3)
  %s.sroa.0.0.copyload.i = load i32, ptr %timeperframe, align 4
  %s.sroa.17.0..sroa_idx.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %s.sroa.17.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %s.sroa.17.0.copyload.i = load i32, ptr %s.sroa.17.0..sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.0.0.copyload.i)
  %cmp.i = icmp eq i32 %s.sroa.0.0.copyload.i, 0
  br i1 %cmp.i, label %if.end.coda_approximate_timeperframe.exit_crit_edge, label %lor.lhs.false.i

if.end.coda_approximate_timeperframe.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %div2.i = udiv i32 %s.sroa.17.0.copyload.i, %s.sroa.0.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div2.i)
  %cmp3.i = icmp ugt i32 %div2.i, 65535
  br i1 %cmp3.i, label %lor.lhs.false.i.coda_approximate_timeperframe.exit_crit_edge, label %if.end.i

lor.lhs.false.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.17.0.copyload.i)
  %cmp7.i = icmp eq i32 %s.sroa.17.0.copyload.i, 0
  br i1 %cmp7.i, label %if.end.i.coda_approximate_timeperframe.exit_crit_edge, label %lor.lhs.false8.i

if.end.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %div11.i = udiv i32 %s.sroa.0.0.copyload.i, %s.sroa.17.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div11.i)
  %cmp12.i = icmp ugt i32 %div11.i, 65536
  br i1 %cmp12.i, label %lor.lhs.false8.i.coda_approximate_timeperframe.exit_crit_edge, label %if.end16.i

lor.lhs.false8.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

if.end16.i:                                       ; preds = %lor.lhs.false8.i
  %call.i = tail call i32 @gcd(i32 noundef %s.sroa.0.0.copyload.i, i32 noundef %s.sroa.17.0.copyload.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp19.i = icmp ugt i32 %call.i, 1
  br i1 %cmp19.i, label %if.then20.i, label %if.end16.i.if.end25.i_crit_edge

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %div22.i = udiv i32 %s.sroa.0.0.copyload.i, %call.i
  %div24.i = udiv i32 %s.sroa.17.0.copyload.i, %call.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end25.i_crit_edge
  %s.sroa.17.0.i = phi i32 [ %div24.i, %if.then20.i ], [ %s.sroa.17.0.copyload.i, %if.end16.i.if.end25.i_crit_edge ]
  %s.sroa.0.0.i = phi i32 [ %div22.i, %if.then20.i ], [ %s.sroa.0.0.copyload.i, %if.end16.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %s.sroa.0.0.i)
  %cmp27.i = icmp ult i32 %s.sroa.0.0.i, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %s.sroa.17.0.i)
  %cmp29.i = icmp ult i32 %s.sroa.17.0.i, 65536
  %or.cond.i = select i1 %cmp27.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i, label %if.end25.i.coda_approximate_timeperframe.exit_crit_edge, label %if.end25.i.while.body.i_crit_edge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  br label %while.body.i

if.end25.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

while.body.i:                                     ; preds = %if.end39.i.while.body.i_crit_edge, %if.end25.i.while.body.i_crit_edge
  %f2.sroa.0.0103.i = phi i32 [ %add.i, %if.end39.i.while.body.i_crit_edge ], [ 0, %if.end25.i.while.body.i_crit_edge ]
  %f2.sroa.6.0102.i = phi i32 [ %add49.i, %if.end39.i.while.body.i_crit_edge ], [ 1, %if.end25.i.while.body.i_crit_edge ]
  %f1.sroa.0.0101.i = phi i32 [ %f2.sroa.0.0103.i, %if.end39.i.while.body.i_crit_edge ], [ 1, %if.end25.i.while.body.i_crit_edge ]
  %f1.sroa.7.0100.i = phi i32 [ %f2.sroa.6.0102.i, %if.end39.i.while.body.i_crit_edge ], [ 0, %if.end25.i.while.body.i_crit_edge ]
  %s.sroa.0.199.i = phi i32 [ %rem.i.decomposed, %if.end39.i.while.body.i_crit_edge ], [ %s.sroa.0.0.i, %if.end25.i.while.body.i_crit_edge ]
  %s.sroa.17.198.i = phi i32 [ %s.sroa.0.199.i, %if.end39.i.while.body.i_crit_edge ], [ %s.sroa.17.0.i, %if.end25.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.0.199.i)
  %cmp37.i = icmp eq i32 %s.sroa.0.199.i, 0
  br i1 %cmp37.i, label %while.body.i.coda_approximate_timeperframe.exit_crit_edge, label %if.end39.i

while.body.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

if.end39.i:                                       ; preds = %while.body.i
  %s.sroa.17.198.i.frozen = freeze i32 %s.sroa.17.198.i
  %s.sroa.0.199.i.frozen = freeze i32 %s.sroa.0.199.i
  %div42.i = udiv i32 %s.sroa.17.198.i.frozen, %s.sroa.0.199.i.frozen
  %mul.i = mul i32 %div42.i, %f2.sroa.0.0103.i
  %add.i = add i32 %mul.i, %f1.sroa.0.0101.i
  %mul48.i = mul i32 %div42.i, %f2.sroa.6.0102.i
  %add49.i = add i32 %mul48.i, %f1.sroa.7.0100.i
  %5 = mul i32 %div42.i, %s.sroa.0.199.i.frozen
  %rem.i.decomposed = sub i32 %s.sroa.17.198.i.frozen, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %add.i)
  %cmp33.i = icmp ult i32 %add.i, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add49.i)
  %cmp35.i = icmp ult i32 %add49.i, 65536
  %or.cond97.i = select i1 %cmp33.i, i1 %cmp35.i, i1 false
  br i1 %or.cond97.i, label %if.end39.i.while.body.i_crit_edge, label %if.end39.i.coda_approximate_timeperframe.exit_crit_edge

if.end39.i.coda_approximate_timeperframe.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_approximate_timeperframe.exit

if.end39.i.while.body.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

coda_approximate_timeperframe.exit:               ; preds = %if.end39.i.coda_approximate_timeperframe.exit_crit_edge, %while.body.i.coda_approximate_timeperframe.exit_crit_edge, %if.end25.i.coda_approximate_timeperframe.exit_crit_edge, %lor.lhs.false8.i.coda_approximate_timeperframe.exit_crit_edge, %if.end.i.coda_approximate_timeperframe.exit_crit_edge, %lor.lhs.false.i.coda_approximate_timeperframe.exit_crit_edge, %if.end.coda_approximate_timeperframe.exit_crit_edge
  %f2.sroa.0.0103.lcssa.sink.i = phi i32 [ 1, %lor.lhs.false.i.coda_approximate_timeperframe.exit_crit_edge ], [ 1, %if.end.coda_approximate_timeperframe.exit_crit_edge ], [ 65536, %lor.lhs.false8.i.coda_approximate_timeperframe.exit_crit_edge ], [ 65536, %if.end.i.coda_approximate_timeperframe.exit_crit_edge ], [ %s.sroa.0.0.i, %if.end25.i.coda_approximate_timeperframe.exit_crit_edge ], [ %f2.sroa.0.0103.i, %if.end39.i.coda_approximate_timeperframe.exit_crit_edge ], [ %f2.sroa.0.0103.i, %while.body.i.coda_approximate_timeperframe.exit_crit_edge ]
  %f2.sroa.6.0102.lcssa.sink.i = phi i32 [ 65535, %lor.lhs.false.i.coda_approximate_timeperframe.exit_crit_edge ], [ 65535, %if.end.coda_approximate_timeperframe.exit_crit_edge ], [ 1, %lor.lhs.false8.i.coda_approximate_timeperframe.exit_crit_edge ], [ 1, %if.end.i.coda_approximate_timeperframe.exit_crit_edge ], [ %s.sroa.17.0.i, %if.end25.i.coda_approximate_timeperframe.exit_crit_edge ], [ %f2.sroa.6.0102.i, %if.end39.i.coda_approximate_timeperframe.exit_crit_edge ], [ %f2.sroa.6.0102.i, %while.body.i.coda_approximate_timeperframe.exit_crit_edge ]
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %f2.sroa.0.0103.lcssa.sink.i, ptr %timeperframe, align 4
  %7 = ptrtoint ptr %s.sroa.17.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %f2.sroa.6.0102.lcssa.sink.i, ptr %s.sroa.17.0..sroa_idx.i, align 4
  %sub.i = shl i32 %f2.sroa.0.0103.lcssa.sink.i, 16
  %shl.i = add i32 %sub.i, -65536
  %or.i = or i32 %shl.i, %f2.sroa.6.0102.lcssa.sink.i
  %framerate = getelementptr i8, ptr %fh, i32 -244
  %8 = ptrtoint ptr %framerate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %framerate, align 4
  %framerate_changed = getelementptr i8, ptr %fh, i32 -221
  %9 = ptrtoint ptr %framerate_changed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %framerate_changed, align 1
  br label %cleanup

cleanup:                                          ; preds = %coda_approximate_timeperframe.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %coda_approximate_timeperframe.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fsize) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -760
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %0 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %5, label %if.else [
    i32 842094158, label %if.end2.if.then4_crit_edge
    i32 842093913, label %if.end2.if.then4_crit_edge97
    i32 842094169, label %if.end2.if.then4_crit_edge98
    i32 1345466932, label %if.end2.if.then4_crit_edge99
    i32 1448695129, label %if.end2.if.then4_crit_edge100
  ]

if.end2.if.then4_crit_edge100:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.end2.if.then4_crit_edge99:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.end2.if.then4_crit_edge98:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.end2.if.then4_crit_edge97:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.end2.if.then4_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.then4:                                         ; preds = %if.end2.if.then4_crit_edge, %if.end2.if.then4_crit_edge97, %if.end2.if.then4_crit_edge98, %if.end2.if.then4_crit_edge99, %if.end2.if.then4_crit_edge100
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %fourcc = getelementptr i8, ptr %fh, i32 -388
  %9 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_codecs3.i, align 4
  %17 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %5, label %sw.default.i.i [
    i32 842094158, label %if.then4.coda_format_normalize_yuv.exit.i_crit_edge
    i32 842093913, label %if.then4.coda_format_normalize_yuv.exit.i_crit_edge101
    i32 842094169, label %if.then4.coda_format_normalize_yuv.exit.i_crit_edge102
    i32 1345466932, label %if.then4.coda_format_normalize_yuv.exit.i_crit_edge103
    i32 1448695129, label %if.then4.coda_format_normalize_yuv.exit.i_crit_edge104
  ]

if.then4.coda_format_normalize_yuv.exit.i_crit_edge104: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.then4.coda_format_normalize_yuv.exit.i_crit_edge103: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.then4.coda_format_normalize_yuv.exit.i_crit_edge102: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.then4.coda_format_normalize_yuv.exit.i_crit_edge101: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

if.then4.coda_format_normalize_yuv.exit.i_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

sw.default.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit.i

coda_format_normalize_yuv.exit.i:                 ; preds = %sw.default.i.i, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge101, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge102, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge103, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge104
  %retval.0.i.i = phi i32 [ %5, %sw.default.i.i ], [ 842093913, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge ], [ 842093913, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge101 ], [ 842093913, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge102 ], [ 842093913, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge103 ], [ 842093913, %if.then4.coda_format_normalize_yuv.exit.i_crit_edge104 ]
  %18 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %10, label %sw.default.i32.i [
    i32 842094158, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge
    i32 842093913, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge105
    i32 842094169, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge106
    i32 1345466932, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge107
    i32 1448695129, label %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge108
  ]

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge108: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge107: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge106: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge105: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge: ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

sw.default.i32.i:                                 ; preds = %coda_format_normalize_yuv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_format_normalize_yuv.exit34.i

coda_format_normalize_yuv.exit34.i:               ; preds = %sw.default.i32.i, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge105, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge106, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge107, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge108
  %retval.0.i33.i = phi i32 [ %10, %sw.default.i32.i ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge105 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge106 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge107 ], [ 842093913, %coda_format_normalize_yuv.exit.i.coda_format_normalize_yuv.exit34.i_crit_edge108 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i33.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, %retval.0.i33.i
  br i1 %cmp.i, label %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge, label %for.cond.preheader.i

coda_format_normalize_yuv.exit34.i.cleanup_crit_edge: ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader.i:                             ; preds = %coda_format_normalize_yuv.exit34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp535.i = icmp sgt i32 %16, 0
  br i1 %cmp535.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %src_fourcc6.i = getelementptr %struct.coda_codec, ptr %14, i32 %k.036.i, i32 1
  %19 = ptrtoint ptr %src_fourcc6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_fourcc6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %retval.0.i.i)
  %cmp7.i = icmp eq i32 %20, %retval.0.i.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_fourcc9.i = getelementptr %struct.coda_codec, ptr %14, i32 %k.036.i, i32 2
  %21 = ptrtoint ptr %dst_fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %retval.0.i33.i)
  %cmp10.i = icmp eq i32 %22, %retval.0.i33.i
  br i1 %cmp10.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %k.036.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %16)
  %cmp13.i = icmp eq i32 %k.0.lcssa.i, %16
  %arrayidx16.i = getelementptr %struct.coda_codec, ptr %14, i32 %k.0.lcssa.i
  br i1 %cmp13.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end11_crit_edge

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  %devtype.i34 = getelementptr inbounds %struct.coda_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %devtype.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype.i34, align 4
  %codecs1.i35 = getelementptr inbounds %struct.coda_devtype, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %codecs1.i35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %codecs1.i35, align 4
  %num_codecs3.i36 = getelementptr inbounds %struct.coda_devtype, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %num_codecs3.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_codecs3.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp535.i43 = icmp sgt i32 %30, 0
  br i1 %cmp535.i43, label %if.else.for.body.i48_crit_edge, label %if.else.for.end.i59_crit_edge

if.else.for.end.i59_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i59

if.else.for.body.i48_crit_edge:                   ; preds = %if.else
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.inc.i54.for.body.i48_crit_edge, %if.else.for.body.i48_crit_edge
  %k.036.i45 = phi i32 [ %inc.i52, %for.inc.i54.for.body.i48_crit_edge ], [ 0, %if.else.for.body.i48_crit_edge ]
  %src_fourcc6.i46 = getelementptr %struct.coda_codec, ptr %28, i32 %k.036.i45, i32 1
  %31 = ptrtoint ptr %src_fourcc6.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_fourcc6.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %32)
  %cmp7.i47 = icmp eq i32 %32, 842093913
  br i1 %cmp7.i47, label %land.lhs.true.i51, label %for.body.i48.for.inc.i54_crit_edge

for.body.i48.for.inc.i54_crit_edge:               ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i54

land.lhs.true.i51:                                ; preds = %for.body.i48
  %dst_fourcc9.i49 = getelementptr %struct.coda_codec, ptr %28, i32 %k.036.i45, i32 2
  %33 = ptrtoint ptr %dst_fourcc9.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst_fourcc9.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %5)
  %cmp10.i50 = icmp eq i32 %34, %5
  br i1 %cmp10.i50, label %land.lhs.true.i51.for.end.i59_crit_edge, label %land.lhs.true.i51.for.inc.i54_crit_edge

land.lhs.true.i51.for.inc.i54_crit_edge:          ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i54

land.lhs.true.i51.for.end.i59_crit_edge:          ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i59

for.inc.i54:                                      ; preds = %land.lhs.true.i51.for.inc.i54_crit_edge, %for.body.i48.for.inc.i54_crit_edge
  %inc.i52 = add nuw nsw i32 %k.036.i45, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %30
  br i1 %exitcond.not.i53, label %for.inc.i54.cleanup_crit_edge, label %for.inc.i54.for.body.i48_crit_edge

for.inc.i54.for.body.i48_crit_edge:               ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i48

for.inc.i54.cleanup_crit_edge:                    ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.end.i59:                                      ; preds = %land.lhs.true.i51.for.end.i59_crit_edge, %if.else.for.end.i59_crit_edge
  %k.0.lcssa.i55 = phi i32 [ 0, %if.else.for.end.i59_crit_edge ], [ %k.036.i45, %land.lhs.true.i51.for.end.i59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i55, i32 %30)
  %cmp13.i56 = icmp eq i32 %k.0.lcssa.i55, %30
  %arrayidx16.i57 = getelementptr %struct.coda_codec, ptr %28, i32 %k.0.lcssa.i55
  br i1 %cmp13.i56, label %for.end.i59.cleanup_crit_edge, label %for.end.i59.if.end11_crit_edge

for.end.i59.if.end11_crit_edge:                   ; preds = %for.end.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

for.end.i59.cleanup_crit_edge:                    ; preds = %for.end.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %for.end.i59.if.end11_crit_edge, %for.end.i.if.end11_crit_edge
  %codec.0 = phi ptr [ %arrayidx16.i, %for.end.i.if.end11_crit_edge ], [ %arrayidx16.i57, %for.end.i59.if.end11_crit_edge ]
  %tobool12.not = icmp eq ptr %codec.0, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %type, align 4
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 48, ptr %36, align 4
  %max_w = getelementptr inbounds %struct.coda_codec, ptr %codec.0, i32 0, i32 3
  %38 = ptrtoint ptr %max_w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_w, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %40 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %max_width, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %41 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %42 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %min_height, align 4
  %max_h = getelementptr inbounds %struct.coda_codec, ptr %codec.0, i32 0, i32 4
  %43 = ptrtoint ptr %max_h to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_h, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %45 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %46 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge, %for.end.i59.cleanup_crit_edge, %for.inc.i54.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %coda_format_normalize_yuv.exit34.i.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.end.i59.cleanup_crit_edge ], [ -22, %for.inc.i54.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_enum_frameintervals(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdoa = getelementptr i8, ptr %fh, i32 2468
  %2 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdoa, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %5)
  %cmp = icmp eq i32 %5, 1448695129
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %pixel_format5 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format5, align 4
  %cvd = getelementptr i8, ptr %fh, i32 -476
  %8 = ptrtoint ptr %cvd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cvd, align 4
  %arrayidx = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp6 = icmp eq i32 %7, %11
  br i1 %cmp6, label %if.end3.if.end15_crit_edge, label %lor.lhs.false

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false:                                    ; preds = %if.end3
  %arrayidx9 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp10 = icmp eq i32 %7, %13
  br i1 %cmp10, label %lor.lhs.false.if.end15_crit_edge, label %for.inc

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

for.inc:                                          ; preds = %lor.lhs.false
  %arrayidx.1 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %15)
  %cmp6.1 = icmp eq i32 %7, %15
  br i1 %cmp6.1, label %for.inc.if.end15_crit_edge, label %lor.lhs.false.1

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx9.1 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %17)
  %cmp10.1 = icmp eq i32 %7, %17
  br i1 %cmp10.1, label %lor.lhs.false.1.if.end15_crit_edge, label %for.inc.1

lor.lhs.false.1.if.end15_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

for.inc.1:                                        ; preds = %lor.lhs.false.1
  %arrayidx.2 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %19)
  %cmp6.2 = icmp eq i32 %7, %19
  br i1 %cmp6.2, label %for.inc.1.if.end15_crit_edge, label %lor.lhs.false.2

for.inc.1.if.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx9.2 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %21)
  %cmp10.2 = icmp eq i32 %7, %21
  br i1 %cmp10.2, label %lor.lhs.false.2.if.end15_crit_edge, label %for.inc.2

lor.lhs.false.2.if.end15_crit_edge:               ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

for.inc.2:                                        ; preds = %lor.lhs.false.2
  %arrayidx.3 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %23)
  %cmp6.3 = icmp eq i32 %7, %23
  br i1 %cmp6.3, label %for.inc.2.if.end15_crit_edge, label %lor.lhs.false.3

for.inc.2.if.end15_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx9.3 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %25)
  %cmp10.3 = icmp eq i32 %7, %25
  br i1 %cmp10.3, label %lor.lhs.false.3.if.end15_crit_edge, label %for.inc.3

lor.lhs.false.3.if.end15_crit_edge:               ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

for.inc.3:                                        ; preds = %lor.lhs.false.3
  %arrayidx.4 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %27)
  %cmp6.4 = icmp eq i32 %7, %27
  br i1 %cmp6.4, label %for.inc.3.if.end15_crit_edge, label %lor.lhs.false.4

for.inc.3.if.end15_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %arrayidx9.4 = getelementptr %struct.coda_video_device, ptr %9, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %29)
  %cmp10.4 = icmp eq i32 %7, %29
  br i1 %cmp10.4, label %lor.lhs.false.4.if.end15_crit_edge, label %lor.lhs.false.4.cleanup_crit_edge

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.4.if.end15_crit_edge:               ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false.4.if.end15_crit_edge, %for.inc.3.if.end15_crit_edge, %lor.lhs.false.3.if.end15_crit_edge, %for.inc.2.if.end15_crit_edge, %lor.lhs.false.2.if.end15_crit_edge, %for.inc.1.if.end15_crit_edge, %lor.lhs.false.1.if.end15_crit_edge, %for.inc.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %type, align 4
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %31, align 4
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %denominator, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65536, ptr %max, align 4
  %denominator19 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %denominator19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %denominator19, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 2
  %36 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %step, align 4
  %denominator22 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %denominator22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %denominator22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #17
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %inst_type = getelementptr i8, ptr %fh, i32 -368
  %3 = ptrtoint ptr %inst_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #17
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then, %sw.bb1.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ %call3, %sw.default ], [ %call2, %if.then ], [ %call, %sw.bb ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f, ptr noundef readonly %r) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %get_q_data.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %name, ptr noundef nonnull @.str.182, ptr noundef %12, i32 noundef %8) #20
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %fourcc = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fourcc, align 4
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt, align 4
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height14, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytesperline, align 4
  %bytesperline16 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %bytesperline16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bytesperline16, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizeimage, align 4
  %sizeimage18 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %sizeimage18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sizeimage18, align 4
  %tobool19.not = icmp eq ptr %r, null
  %rect21 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 5
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %28 = call ptr @memcpy(ptr %rect21, ptr %r, i32 16)
  br label %if.end31

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %rect21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rect21, align 4
  %top = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %top, align 4
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt, align 4
  %width26 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %width26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %width26, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %height30 = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %height30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then20
  %37 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixelformat, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %38, label %if.end31.sw.epilog_crit_edge [
    i32 1448695129, label %if.end31.sw.epilog.sink.split_crit_edge
    i32 842094158, label %sw.bb34
    i32 842093913, label %if.end31.sw.bb42_crit_edge
    i32 842094169, label %if.end31.sw.bb42_crit_edge147
    i32 1345466932, label %if.end31.sw.bb42_crit_edge148
  ]

if.end31.sw.bb42_crit_edge148:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

if.end31.sw.bb42_crit_edge147:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

if.end31.sw.bb42_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

if.end31.sw.epilog.sink.split_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end31
  %40 = load i32, ptr @disable_tiling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  br i1 %tobool35.not, label %land.lhs.true, label %sw.bb34.sw.bb42_crit_edge

sw.bb34.sw.bb42_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

land.lhs.true:                                    ; preds = %sw.bb34
  %use_bit = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 61
  %41 = ptrtoint ptr %use_bit to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_bit, align 8, !range !509
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool36.not = icmp eq i8 %42, 0
  br i1 %tobool36.not, label %land.lhs.true.sw.bb42_crit_edge, label %land.lhs.true37

land.lhs.true.sw.bb42_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

land.lhs.true37:                                  ; preds = %land.lhs.true
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 8
  %devtype = getelementptr inbounds %struct.coda_dev, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devtype, align 4
  %product = getelementptr inbounds %struct.coda_devtype, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61472, i32 %48)
  %cmp = icmp eq i32 %48, 61472
  br i1 %cmp, label %land.lhs.true37.sw.epilog.sink.split_crit_edge, label %land.lhs.true37.sw.bb42_crit_edge

land.lhs.true37.sw.bb42_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb42

land.lhs.true37.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

sw.bb42:                                          ; preds = %land.lhs.true37.sw.bb42_crit_edge, %land.lhs.true.sw.bb42_crit_edge, %sw.bb34.sw.bb42_crit_edge, %if.end31.sw.bb42_crit_edge, %if.end31.sw.bb42_crit_edge147, %if.end31.sw.bb42_crit_edge148
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb42, %land.lhs.true37.sw.epilog.sink.split_crit_edge, %if.end31.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb42 ], [ 1, %if.end31.sw.epilog.sink.split_crit_edge ], [ 1, %land.lhs.true37.sw.epilog.sink.split_crit_edge ]
  %tiled_map_type43 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %49 = ptrtoint ptr %tiled_map_type43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %tiled_map_type43, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end31.sw.epilog_crit_edge
  %tiled_map_type44 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %50 = ptrtoint ptr %tiled_map_type44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tiled_map_type44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp45 = icmp eq i32 %51, 1
  br i1 %cmp45, label %land.lhs.true46, label %sw.epilog.if.else60_crit_edge

sw.epilog.if.else60_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else60

land.lhs.true46:                                  ; preds = %sw.epilog
  %use_vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %52 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.not.i = icmp ne i32 %53, 1
  %tobool.not.i = icmp eq ptr %use_vdoa, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true46.if.else60_crit_edge, label %if.end2.i

land.lhs.true46.if.else60_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else60

if.end2.i:                                        ; preds = %land.lhs.true46
  %vdoa.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 63
  %54 = ptrtoint ptr %vdoa.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vdoa.i, align 4
  %tobool3.not.i = icmp eq ptr %55, null
  br i1 %tobool3.not.i, label %if.end2.i.if.else60_crit_edge, label %land.lhs.true49

if.end2.i.if.else60_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else60

land.lhs.true49:                                  ; preds = %if.end2.i
  %56 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmt, align 4
  %sub.i = add i32 %57, -1
  %or.i = or i32 %sub.i, 15
  %add.i = add i32 %or.i, 1
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %60 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pixelformat, align 4
  %call.i = tail call i32 @vdoa_context_configure(ptr noundef null, i32 noundef %add.i, i32 noundef %59, i32 noundef %61) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  %..i = zext i1 %tobool8.not.i to i8
  %62 = ptrtoint ptr %use_vdoa to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %..i, ptr %use_vdoa, align 1
  br i1 %tobool8.not.i, label %if.then52, label %land.lhs.true49.if.else60_crit_edge

land.lhs.true49.if.else60_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else60

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #19
  %63 = ptrtoint ptr %vdoa.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdoa.i, align 4
  %65 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fmt, align 4
  %sub = add i32 %66, -1
  %or = or i32 %sub, 15
  %add = add i32 %or, 1
  %67 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height, align 4
  %69 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pixelformat, align 4
  %call59 = tail call i32 @vdoa_context_configure(ptr noundef %64, i32 noundef %add, i32 noundef %68, i32 noundef %70) #17
  br label %do.body63

if.else60:                                        ; preds = %land.lhs.true49.if.else60_crit_edge, %if.end2.i.if.else60_crit_edge, %land.lhs.true46.if.else60_crit_edge, %sw.epilog.if.else60_crit_edge
  %use_vdoa61 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 62
  %71 = ptrtoint ptr %use_vdoa61 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %use_vdoa61, align 1
  br label %do.body63

do.body63:                                        ; preds = %if.else60, %if.then52
  %72 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp64 = icmp sgt i32 %72, 0
  br i1 %cmp64, label %do.end71, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end71:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx, align 8
  %name75 = getelementptr inbounds %struct.v4l2_device, ptr %74, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %75 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %idx, align 8
  %77 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %f, align 4
  %arrayidx78 = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx78, align 4
  %81 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %retval.0.i, align 4
  %83 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height14, align 4
  %85 = ptrtoint ptr %tiled_map_type44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tiled_map_type44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp83 = icmp eq i32 %86, 0
  %cond = select i1 %cmp83, i32 76, i32 84
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name75, i32 noundef %76, ptr noundef %80, i32 noundef %82, i32 noundef %84, ptr noundef %fourcc, i32 noundef %cond) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.body63.cleanup_crit_edge, %do.end, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %do.end71 ], [ 0, %do.body63.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdoa_context_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_try_pixelformat(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %f) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %if.end7.thread
    i32 1, label %if.end7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cvd = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %cvd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cvd, align 4
  %src_formats = getelementptr inbounds %struct.coda_video_device, ptr %4, i32 0, i32 4
  %pixelformat50 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  br label %if.end14

if.end7:                                          ; preds = %entry
  %cvd4 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %cvd4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cvd4, align 4
  %dst_formats = getelementptr inbounds %struct.coda_video_device, ptr %6, i32 0, i32 5
  %vdoa = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 63
  %7 = ptrtoint ptr %vdoa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdoa, align 4
  %tobool.not = icmp eq ptr %8, null
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  br i1 %tobool.not, label %land.lhs.true11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.end7
  %9 = ptrtoint ptr %dst_formats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %10)
  %cmp12 = icmp eq i32 %10, 1448695129
  br i1 %cmp12, label %land.lhs.true11.land.lhs.true11.1_crit_edge, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

land.lhs.true11.land.lhs.true11.1_crit_edge:      ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.1

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.end7.if.end14_crit_edge, %if.end7.thread
  %pixelformat62 = phi ptr [ %pixelformat50, %if.end7.thread ], [ %pixelformat, %land.lhs.true11.if.end14_crit_edge ], [ %pixelformat, %if.end7.if.end14_crit_edge ]
  %or.cond61 = phi i1 [ false, %if.end7.thread ], [ true, %land.lhs.true11.if.end14_crit_edge ], [ false, %if.end7.if.end14_crit_edge ]
  %formats.052 = phi ptr [ %src_formats, %if.end7.thread ], [ %dst_formats, %land.lhs.true11.if.end14_crit_edge ], [ %dst_formats, %if.end7.if.end14_crit_edge ]
  %11 = ptrtoint ptr %formats.052 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %formats.052, align 4
  %13 = ptrtoint ptr %pixelformat62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp16 = icmp eq i32 %12, %14
  br i1 %cmp16, label %if.end14.if.then17_crit_edge, label %for.inc

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

if.then17:                                        ; preds = %if.end14.4.if.then17_crit_edge, %if.end14.3.if.then17_crit_edge, %if.end14.2.if.then17_crit_edge, %if.end14.1.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %pixelformat67 = phi ptr [ %pixelformat62, %if.end14.if.then17_crit_edge ], [ %pixelformat6372, %if.end14.1.if.then17_crit_edge ], [ %pixelformat6484, %if.end14.2.if.then17_crit_edge ], [ %pixelformat6593, %if.end14.3.if.then17_crit_edge ], [ %pixelformat6699, %if.end14.4.if.then17_crit_edge ]
  %.lcssa = phi i32 [ %12, %if.end14.if.then17_crit_edge ], [ %19, %if.end14.1.if.then17_crit_edge ], [ %25, %if.end14.2.if.then17_crit_edge ], [ %31, %if.end14.3.if.then17_crit_edge ], [ %37, %if.end14.4.if.then17_crit_edge ]
  %15 = ptrtoint ptr %pixelformat67 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.lcssa, ptr %pixelformat67, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end14
  br i1 %or.cond61, label %for.inc.land.lhs.true11.1_crit_edge, label %for.inc.if.end14.1_crit_edge

for.inc.if.end14.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.1

for.inc.land.lhs.true11.1_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.1

land.lhs.true11.1:                                ; preds = %for.inc.land.lhs.true11.1_crit_edge, %land.lhs.true11.land.lhs.true11.1_crit_edge
  %formats.05177 = phi ptr [ %formats.052, %for.inc.land.lhs.true11.1_crit_edge ], [ %dst_formats, %land.lhs.true11.land.lhs.true11.1_crit_edge ]
  %pixelformat6373 = phi ptr [ %pixelformat62, %for.inc.land.lhs.true11.1_crit_edge ], [ %pixelformat, %land.lhs.true11.land.lhs.true11.1_crit_edge ]
  %arrayidx.1 = getelementptr i32, ptr %formats.05177, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %17)
  %cmp12.1 = icmp eq i32 %17, 1448695129
  br i1 %cmp12.1, label %land.lhs.true11.1.land.lhs.true11.2_crit_edge, label %land.lhs.true11.1.if.end14.1_crit_edge

land.lhs.true11.1.if.end14.1_crit_edge:           ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.1

land.lhs.true11.1.land.lhs.true11.2_crit_edge:    ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.2

if.end14.1:                                       ; preds = %land.lhs.true11.1.if.end14.1_crit_edge, %for.inc.if.end14.1_crit_edge
  %or.cond6074 = phi i1 [ true, %land.lhs.true11.1.if.end14.1_crit_edge ], [ false, %for.inc.if.end14.1_crit_edge ]
  %pixelformat6372 = phi ptr [ %pixelformat6373, %land.lhs.true11.1.if.end14.1_crit_edge ], [ %pixelformat62, %for.inc.if.end14.1_crit_edge ]
  %formats.053 = phi ptr [ %formats.05177, %land.lhs.true11.1.if.end14.1_crit_edge ], [ %formats.052, %for.inc.if.end14.1_crit_edge ]
  %arrayidx15.1 = getelementptr i32, ptr %formats.053, i32 1
  %18 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.1, align 4
  %20 = ptrtoint ptr %pixelformat6372 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat6372, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp16.1 = icmp eq i32 %19, %21
  br i1 %cmp16.1, label %if.end14.1.if.then17_crit_edge, label %for.inc.1

if.end14.1.if.then17_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

for.inc.1:                                        ; preds = %if.end14.1
  br i1 %or.cond6074, label %for.inc.1.land.lhs.true11.2_crit_edge, label %for.inc.1.if.end14.2_crit_edge

for.inc.1.if.end14.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.2

for.inc.1.land.lhs.true11.2_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.2

land.lhs.true11.2:                                ; preds = %for.inc.1.land.lhs.true11.2_crit_edge, %land.lhs.true11.1.land.lhs.true11.2_crit_edge
  %formats.05486 = phi ptr [ %formats.053, %for.inc.1.land.lhs.true11.2_crit_edge ], [ %formats.05177, %land.lhs.true11.1.land.lhs.true11.2_crit_edge ]
  %pixelformat6485 = phi ptr [ %pixelformat6372, %for.inc.1.land.lhs.true11.2_crit_edge ], [ %pixelformat6373, %land.lhs.true11.1.land.lhs.true11.2_crit_edge ]
  %arrayidx.2 = getelementptr i32, ptr %formats.05486, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %23)
  %cmp12.2 = icmp eq i32 %23, 1448695129
  br i1 %cmp12.2, label %land.lhs.true11.2.land.lhs.true11.3_crit_edge, label %land.lhs.true11.2.if.end14.2_crit_edge

land.lhs.true11.2.if.end14.2_crit_edge:           ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.2

land.lhs.true11.2.land.lhs.true11.3_crit_edge:    ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.3

if.end14.2:                                       ; preds = %land.lhs.true11.2.if.end14.2_crit_edge, %for.inc.1.if.end14.2_crit_edge
  %pixelformat6484 = phi ptr [ %pixelformat6485, %land.lhs.true11.2.if.end14.2_crit_edge ], [ %pixelformat6372, %for.inc.1.if.end14.2_crit_edge ]
  %or.cond607581 = phi i1 [ true, %land.lhs.true11.2.if.end14.2_crit_edge ], [ false, %for.inc.1.if.end14.2_crit_edge ]
  %formats.055 = phi ptr [ %formats.05486, %land.lhs.true11.2.if.end14.2_crit_edge ], [ %formats.053, %for.inc.1.if.end14.2_crit_edge ]
  %arrayidx15.2 = getelementptr i32, ptr %formats.055, i32 2
  %24 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15.2, align 4
  %26 = ptrtoint ptr %pixelformat6484 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat6484, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp16.2 = icmp eq i32 %25, %27
  br i1 %cmp16.2, label %if.end14.2.if.then17_crit_edge, label %for.inc.2

if.end14.2.if.then17_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

for.inc.2:                                        ; preds = %if.end14.2
  br i1 %or.cond607581, label %for.inc.2.land.lhs.true11.3_crit_edge, label %for.inc.2.if.end14.3_crit_edge

for.inc.2.if.end14.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.3

for.inc.2.land.lhs.true11.3_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.3

land.lhs.true11.3:                                ; preds = %for.inc.2.land.lhs.true11.3_crit_edge, %land.lhs.true11.2.land.lhs.true11.3_crit_edge
  %formats.05695 = phi ptr [ %formats.055, %for.inc.2.land.lhs.true11.3_crit_edge ], [ %formats.05486, %land.lhs.true11.2.land.lhs.true11.3_crit_edge ]
  %pixelformat6594 = phi ptr [ %pixelformat6484, %for.inc.2.land.lhs.true11.3_crit_edge ], [ %pixelformat6485, %land.lhs.true11.2.land.lhs.true11.3_crit_edge ]
  %arrayidx.3 = getelementptr i32, ptr %formats.05695, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %29)
  %cmp12.3 = icmp eq i32 %29, 1448695129
  br i1 %cmp12.3, label %land.lhs.true11.3.land.lhs.true11.4_crit_edge, label %land.lhs.true11.3.if.end14.3_crit_edge

land.lhs.true11.3.if.end14.3_crit_edge:           ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.3

land.lhs.true11.3.land.lhs.true11.4_crit_edge:    ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.4

if.end14.3:                                       ; preds = %land.lhs.true11.3.if.end14.3_crit_edge, %for.inc.2.if.end14.3_crit_edge
  %pixelformat6593 = phi ptr [ %pixelformat6594, %land.lhs.true11.3.if.end14.3_crit_edge ], [ %pixelformat6484, %for.inc.2.if.end14.3_crit_edge ]
  %or.cond60758290 = phi i1 [ true, %land.lhs.true11.3.if.end14.3_crit_edge ], [ false, %for.inc.2.if.end14.3_crit_edge ]
  %formats.057 = phi ptr [ %formats.05695, %land.lhs.true11.3.if.end14.3_crit_edge ], [ %formats.055, %for.inc.2.if.end14.3_crit_edge ]
  %arrayidx15.3 = getelementptr i32, ptr %formats.057, i32 3
  %30 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.3, align 4
  %32 = ptrtoint ptr %pixelformat6593 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixelformat6593, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp16.3 = icmp eq i32 %31, %33
  br i1 %cmp16.3, label %if.end14.3.if.then17_crit_edge, label %for.inc.3

if.end14.3.if.then17_crit_edge:                   ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

for.inc.3:                                        ; preds = %if.end14.3
  br i1 %or.cond60758290, label %for.inc.3.land.lhs.true11.4_crit_edge, label %for.inc.3.if.end14.4_crit_edge

for.inc.3.if.end14.4_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.4

for.inc.3.land.lhs.true11.4_crit_edge:            ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11.4

land.lhs.true11.4:                                ; preds = %for.inc.3.land.lhs.true11.4_crit_edge, %land.lhs.true11.3.land.lhs.true11.4_crit_edge
  %formats.058101 = phi ptr [ %formats.057, %for.inc.3.land.lhs.true11.4_crit_edge ], [ %formats.05695, %land.lhs.true11.3.land.lhs.true11.4_crit_edge ]
  %pixelformat66100 = phi ptr [ %pixelformat6593, %for.inc.3.land.lhs.true11.4_crit_edge ], [ %pixelformat6594, %land.lhs.true11.3.land.lhs.true11.4_crit_edge ]
  %arrayidx.4 = getelementptr i32, ptr %formats.058101, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %35)
  %cmp12.4 = icmp eq i32 %35, 1448695129
  br i1 %cmp12.4, label %land.lhs.true11.4.for.inc.4_crit_edge, label %land.lhs.true11.4.if.end14.4_crit_edge

land.lhs.true11.4.if.end14.4_crit_edge:           ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.4

land.lhs.true11.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.end14.4:                                       ; preds = %land.lhs.true11.4.if.end14.4_crit_edge, %for.inc.3.if.end14.4_crit_edge
  %pixelformat6699 = phi ptr [ %pixelformat66100, %land.lhs.true11.4.if.end14.4_crit_edge ], [ %pixelformat6593, %for.inc.3.if.end14.4_crit_edge ]
  %formats.059 = phi ptr [ %formats.058101, %land.lhs.true11.4.if.end14.4_crit_edge ], [ %formats.057, %for.inc.3.if.end14.4_crit_edge ]
  %arrayidx15.4 = getelementptr i32, ptr %formats.059, i32 4
  %36 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.4, align 4
  %38 = ptrtoint ptr %pixelformat6699 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixelformat6699, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp16.4 = icmp eq i32 %37, %39
  br i1 %cmp16.4, label %if.end14.4.if.then17_crit_edge, label %if.end14.4.for.inc.4_crit_edge

if.end14.4.for.inc.4_crit_edge:                   ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.end14.4.if.then17_crit_edge:                   ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

for.inc.4:                                        ; preds = %if.end14.4.for.inc.4_crit_edge, %land.lhs.true11.4.for.inc.4_crit_edge
  %pixelformat68 = phi ptr [ %pixelformat6699, %if.end14.4.for.inc.4_crit_edge ], [ %pixelformat66100, %land.lhs.true11.4.for.inc.4_crit_edge ]
  %40 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %1, label %for.inc.4.get_q_data.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

for.inc.4.get_q_data.exit_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_q_data.exit

sw.bb.i:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i, %for.inc.4.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ], [ null, %for.inc.4.get_q_data.exit_crit_edge ]
  %fourcc = getelementptr inbounds %struct.coda_q_data, ptr %retval.0.i, i32 0, i32 4
  %41 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fourcc, align 4
  %43 = ptrtoint ptr %pixelformat68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %pixelformat68, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_q_data.exit, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %get_q_data.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_try_fmt(ptr nocapture noundef readonly %ctx, ptr noundef readonly %codec, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %4 = ptrtoint ptr %field2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %field2, align 4
  %devtype.i = getelementptr inbounds %struct.coda_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype.i, align 4
  %codecs1.i = getelementptr inbounds %struct.coda_devtype, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %codecs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codecs1.i, align 4
  %num_codecs3.i = getelementptr inbounds %struct.coda_devtype, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %num_codecs3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_codecs3.i, align 4
  %tobool.not.i = icmp eq ptr %codec, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp38.i = icmp sgt i32 %10, 0
  br i1 %cmp38.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.coda_get_max_dimensions.exit_crit_edge

for.cond.preheader.i.coda_get_max_dimensions.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_get_max_dimensions.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %max_w4.i = getelementptr inbounds %struct.coda_codec, ptr %codec, i32 0, i32 3
  %11 = ptrtoint ptr %max_w4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_w4.i, align 4
  %max_h5.i = getelementptr inbounds %struct.coda_codec, ptr %codec, i32 0, i32 4
  %13 = ptrtoint ptr %max_h5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_h5.i, align 4
  br label %coda_get_max_dimensions.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.041.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %h.040.i = phi i32 [ %20, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %w.039.i = phi i32 [ %17, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %max_w6.i = getelementptr %struct.coda_codec, ptr %8, i32 %k.041.i, i32 3
  %15 = ptrtoint ptr %max_w6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_w6.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %w.039.i, i32 %16) #17
  %max_h9.i = getelementptr %struct.coda_codec, ptr %8, i32 %k.041.i, i32 4
  %18 = ptrtoint ptr %max_h9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_h9.i, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %h.040.i, i32 %19) #17
  %inc.i = add nuw nsw i32 %k.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.body.i.coda_get_max_dimensions.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.coda_get_max_dimensions.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %coda_get_max_dimensions.exit

coda_get_max_dimensions.exit:                     ; preds = %for.body.i.coda_get_max_dimensions.exit_crit_edge, %if.then.i, %for.cond.preheader.i.coda_get_max_dimensions.exit_crit_edge
  %w.1.i = phi i32 [ %12, %if.then.i ], [ 0, %for.cond.preheader.i.coda_get_max_dimensions.exit_crit_edge ], [ %17, %for.body.i.coda_get_max_dimensions.exit_crit_edge ]
  %h.1.i = phi i32 [ %14, %if.then.i ], [ 0, %for.cond.preheader.i.coda_get_max_dimensions.exit_crit_edge ], [ %20, %for.body.i.coda_get_max_dimensions.exit_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 48, i32 noundef %w.1.i, i32 noundef 1, ptr noundef %height, i32 noundef 16, i32 noundef %h.1.i, i32 noundef 1, i32 noundef 1) #17
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %22, label %do.body [
    i32 842094158, label %coda_get_max_dimensions.exit.sw.bb_crit_edge
    i32 842093913, label %coda_get_max_dimensions.exit.sw.bb_crit_edge123
    i32 842094169, label %coda_get_max_dimensions.exit.sw.bb_crit_edge124
    i32 1448695129, label %sw.bb20
    i32 1345466932, label %sw.bb36
    i32 1497715271, label %sw.bb52
    i32 1195724874, label %coda_get_max_dimensions.exit.sw.bb67_crit_edge
    i32 875967048, label %coda_get_max_dimensions.exit.sw.bb67_crit_edge125
    i32 877088845, label %coda_get_max_dimensions.exit.sw.bb67_crit_edge126
    i32 843534413, label %coda_get_max_dimensions.exit.sw.bb67_crit_edge127
  ]

coda_get_max_dimensions.exit.sw.bb67_crit_edge127: ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb67

coda_get_max_dimensions.exit.sw.bb67_crit_edge126: ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb67

coda_get_max_dimensions.exit.sw.bb67_crit_edge125: ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb67

coda_get_max_dimensions.exit.sw.bb67_crit_edge:   ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb67

coda_get_max_dimensions.exit.sw.bb_crit_edge124:  ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

coda_get_max_dimensions.exit.sw.bb_crit_edge123:  ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

coda_get_max_dimensions.exit.sw.bb_crit_edge:     ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %coda_get_max_dimensions.exit.sw.bb_crit_edge, %coda_get_max_dimensions.exit.sw.bb_crit_edge123, %coda_get_max_dimensions.exit.sw.bb_crit_edge124
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %sub = add i32 %25, -1
  %or = or i32 %sub, 15
  %add = add i32 %or, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %bytesperline, align 4
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %mul = mul i32 %28, 3
  %mul18 = mul i32 %mul, %add
  %div116 = lshr exact i32 %mul18, 1
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div116, ptr %sizeimage, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt, align 4
  %sub23 = shl i32 %31, 1
  %or24 = add i32 %sub23, -2
  %add25 = or i32 %or24, 30
  %mul26 = add i32 %add25, 2
  %bytesperline28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %bytesperline28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul26, ptr %bytesperline28, align 4
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %mul33 = mul i32 %mul26, %34
  %sizeimage35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %sizeimage35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul33, ptr %sizeimage35, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmt, align 4
  %sub39 = add i32 %37, -1
  %or40 = or i32 %sub39, 15
  %add41 = add i32 %or40, 1
  %bytesperline43 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %bytesperline43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add41, ptr %bytesperline43, align 4
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %mul48 = shl i32 %40, 1
  %mul49 = mul i32 %mul48, %add41
  %sizeimage51 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %41 = ptrtoint ptr %sizeimage51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul49, ptr %sizeimage51, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt, align 4
  %sub55 = add i32 %43, -1
  %or56 = or i32 %sub55, 15
  %add57 = add i32 %or56, 1
  %bytesperline59 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %bytesperline59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add57, ptr %bytesperline59, align 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %mul64 = mul i32 %add57, %46
  %sizeimage66 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %47 = ptrtoint ptr %sizeimage66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul64, ptr %sizeimage66, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %coda_get_max_dimensions.exit.sw.bb67_crit_edge, %coda_get_max_dimensions.exit.sw.bb67_crit_edge125, %coda_get_max_dimensions.exit.sw.bb67_crit_edge126, %coda_get_max_dimensions.exit.sw.bb67_crit_edge127
  %bytesperline69 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %bytesperline69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bytesperline69, align 4
  %sizeimage71 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %49 = ptrtoint ptr %sizeimage71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sizeimage71, align 4
  %51 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt, align 4
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 4
  %mul.i = mul i32 %54, %52
  %div1.i = lshr i32 %mul.i, 3
  %55 = tail call i32 @llvm.umax.i32(i32 %div1.i, i32 %50) #17
  %mul2.i = shl i32 %mul.i, 1
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %mul2.i) #17
  %sub.i = add i32 %56, -1
  %or.i = or i32 %sub.i, 4095
  %add.i = add i32 %or.i, 1
  %57 = ptrtoint ptr %sizeimage71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %sizeimage71, align 4
  br label %cleanup

do.body:                                          ; preds = %coda_get_max_dimensions.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/coda/coda-common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 646, 0\0A.popsection", ""() #17, !srcloc !515
  unreachable

cleanup:                                          ; preds = %sw.bb67, %sw.bb52, %sw.bb36, %sw.bb20, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb67 ], [ 0, %sw.bb52 ], [ 0, %sw.bb36 ], [ 0, %sw.bb20 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_last_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_bitstream_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_try_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_domain = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %codebuf = getelementptr inbounds %struct.coda_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %codebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codebuf, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call fastcc i32 @coda_hw_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name) #20
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %call2, %do.end ], [ 0, %if.then.if.end6_crit_edge ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !134, !136, !138, !140, !141, !142, !143, !144, !145, !147, !149, !150, !151, !153, !155, !157, !158, !159, !161, !163, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !179, !180, !182, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !282, !284, !285, !287, !288, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !331, !332, !334, !335, !337, !338, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !359, !361, !362, !363, !364, !366, !368, !370, !372, !373, !374, !375, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !398, !400, !401, !402, !403, !405, !406, !407, !409, !410, !412, !413, !414, !415, !417, !418, !419, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !495}
!llvm.module.flags = !{!496, !497, !498, !499, !500, !501, !502, !503}
!llvm.ident = !{!504}

!0 = !{ptr @__param_coda_debug, !1, !"__param_coda_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/coda-common.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_coda_debugtype299, !1, !"__UNIQUE_ID_coda_debugtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_coda_debug300, !4, !"__UNIQUE_ID_coda_debug300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/coda/coda-common.c", i32 61, i32 1}
!5 = !{ptr @__param_disable_tiling, !6, !"__param_disable_tiling", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/coda/coda-common.c", i32 64, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_tilingtype301, !6, !"__UNIQUE_ID_disable_tilingtype301", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_tiling302, !9, !"__UNIQUE_ID_disable_tiling302", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/coda/coda-common.c", i32 65, i32 1}
!10 = !{ptr @__param_disable_vdoa, !11, !"__param_disable_vdoa", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/coda/coda-common.c", i32 68, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_vdoatype303, !11, !"__UNIQUE_ID_disable_vdoatype303", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_vdoa304, !14, !"__UNIQUE_ID_disable_vdoa304", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/coda/coda-common.c", i32 69, i32 1}
!15 = !{ptr @__param_enable_bwb, !16, !"__param_enable_bwb", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/coda/coda-common.c", i32 72, i32 1}
!17 = !{ptr @__UNIQUE_ID_enable_bwbtype305, !16, !"__UNIQUE_ID_enable_bwbtype305", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable_bwb306, !19, !"__UNIQUE_ID_enable_bwb306", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/coda/coda-common.c", i32 73, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/coda/coda-common.c", i32 77, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @coda_write._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @coda_write._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/coda/coda-common.c", i32 87, i32 2}
!28 = !{ptr @coda_read._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @coda_read._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @coda_product_name.buf, !31, !"buf", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/coda/coda-common.c", i32 377, i32 14}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/coda/coda-common.c", i32 381, i32 10}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/coda/coda-common.c", i32 383, i32 10}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/coda/coda-common.c", i32 385, i32 10}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/coda/coda-common.c", i32 387, i32 10}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/coda/coda-common.c", i32 389, i32 30}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1801, i32 16}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1810, i32 16}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1819, i32 16}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1835, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @coda_update_profile_level_ctrls._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @coda_update_profile_level_ctrls._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1838, i32 3}
!55 = !{ptr @coda_update_profile_level_ctrls._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @coda_update_profile_level_ctrls._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1844, i32 3}
!59 = !{ptr @coda_update_profile_level_ctrls._entry.17, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @coda_update_profile_level_ctrls._entry_ptr.19, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1847, i32 3}
!63 = !{ptr @coda_update_profile_level_ctrls._entry.20, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @coda_update_profile_level_ctrls._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1935, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @coda_alloc_aux_buf._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @coda_alloc_aux_buf._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__initcall__kmod_coda_vpu__330_3336_coda_driver_init6, !71, !"__initcall__kmod_coda_vpu__330_3336_coda_driver_init6", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3336, i32 1}
!72 = !{ptr @__exitcall_coda_driver_exit, !71, !"__exitcall_coda_driver_exit", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_file331, !74, !"__UNIQUE_ID_file331", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3338, i32 1}
!75 = !{ptr @__UNIQUE_ID_license332, !74, !"__UNIQUE_ID_license332", i1 false, i1 false}
!76 = !{ptr @__UNIQUE_ID_author333, !77, !"__UNIQUE_ID_author333", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3339, i32 1}
!78 = !{ptr @__UNIQUE_ID_description334, !79, !"__UNIQUE_ID_description334", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3340, i32 1}
!80 = !{ptr @coda_debug, !81, !"coda_debug", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/coda/coda-common.c", i32 59, i32 5}
!82 = !{ptr @disable_tiling, !83, !"disable_tiling", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/coda/coda-common.c", i32 63, i32 12}
!84 = !{ptr @disable_vdoa, !85, !"disable_vdoa", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/coda/coda-common.c", i32 67, i32 12}
!86 = !{ptr @__param_str_coda_debug, !1, !"__param_str_coda_debug", i1 false, i1 false}
!87 = !{ptr @__param_str_disable_tiling, !6, !"__param_str_disable_tiling", i1 false, i1 false}
!88 = !{ptr @__param_str_disable_vdoa, !11, !"__param_str_disable_vdoa", i1 false, i1 false}
!89 = !{ptr @__param_str_enable_bwb, !16, !"__param_str_enable_bwb", i1 false, i1 false}
!90 = !{ptr @enable_bwb, !91, !"enable_bwb", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/coda/coda-common.c", i32 71, i32 12}
!92 = !{ptr @coda_qops, !93, !"coda_qops", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2166, i32 29}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1726, i32 2}
!96 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @coda_queue_setup._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @coda_queue_setup._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1743, i32 4}
!101 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @coda_buf_prepare._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @coda_buf_prepare._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1750, i32 3}
!106 = !{ptr @coda_buf_prepare._entry.29, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @coda_buf_prepare._entry_ptr.31, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1978, i32 2}
!110 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @coda_start_streaming._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @coda_start_streaming._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1992, i32 5}
!115 = !{ptr @coda_start_streaming._entry.34, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @coda_start_streaming._entry_ptr.36, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2015, i32 5}
!119 = !{ptr @coda_start_streaming._entry.37, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @coda_start_streaming._entry_ptr.39, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2057, i32 3}
!123 = !{ptr @coda_start_streaming._entry.40, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @coda_start_streaming._entry_ptr.42, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2118, i32 2}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @coda_stop_streaming._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @coda_stop_streaming._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @coda_queue_source_change_event.source_change_event, !131, !"source_change_event", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1855, i32 33}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3330, i32 11}
!134 = !{ptr @coda_driver, !135, !"coda_driver", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3326, i32 31}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3139, i32 42}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3141, i32 3}
!140 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @coda_probe._entry, !139, !"_entry", i1 false, i1 false}
!144 = !{ptr @coda_probe._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3145, i32 42}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3147, i32 3}
!149 = !{ptr @coda_probe._entry.52, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @coda_probe._entry_ptr.54, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3157, i32 38}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3164, i32 11}
!155 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3166, i32 3}
!157 = !{ptr @coda_probe._entry.57, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @coda_probe._entry_ptr.59, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3172, i32 39}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3178, i32 21}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3181, i32 4}
!165 = !{ptr @coda_probe._entry.62, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @coda_probe._entry_ptr.64, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3190, i32 3}
!169 = !{ptr @coda_probe._entry.65, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @coda_probe._entry_ptr.67, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3195, i32 29}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3197, i32 3}
!175 = !{ptr @coda_probe._entry.69, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @coda_probe._entry_ptr.71, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @coda_probe.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3212, i32 2}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @coda_probe.__key.73, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3213, i32 2}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3221, i32 35}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3229, i32 35}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3239, i32 3}
!189 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @coda_probe._entry.77, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @coda_probe._entry_ptr.80, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3251, i32 3}
!194 = !{ptr @coda_probe._entry.81, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @coda_probe._entry_ptr.83, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.84, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/coda/coda-common.c", i32 400, i32 50}
!198 = !{ptr @ratelimit_state_init.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!200 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @xa_init_flags.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!203 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2953, i32 2}
!206 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @coda_firmware_request.__UNIQUE_ID_ddebug329, !205, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2969, i32 4}
!211 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @coda_fw_callback._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @coda_fw_callback._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2980, i32 3}
!216 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @coda_fw_callback._entry.92, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @coda_fw_callback._entry_ptr.95, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2985, i32 57}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2995, i32 3}
!223 = !{ptr @coda_fw_callback._entry.97, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @coda_fw_callback._entry_ptr.99, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3005, i32 3}
!227 = !{ptr @coda_fw_callback._entry.100, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @coda_fw_callback._entry_ptr.102, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3012, i32 4}
!231 = !{ptr @coda_fw_callback._entry.103, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @coda_fw_callback._entry_ptr.105, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @coda_m2m_ops, !234, !"coda_m2m_ops", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1649, i32 34}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1581, i32 3}
!237 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @coda_job_ready._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @coda_job_ready._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1586, i32 3}
!242 = !{ptr @coda_job_ready._entry.108, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @coda_job_ready._entry_ptr.110, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1599, i32 4}
!246 = !{ptr @coda_job_ready._entry.111, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @coda_job_ready._entry_ptr.113, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1607, i32 4}
!250 = !{ptr @coda_job_ready._entry.114, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @coda_job_ready._entry_ptr.116, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1613, i32 4}
!254 = !{ptr @coda_job_ready._entry.117, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @coda_job_ready._entry_ptr.119, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1623, i32 4}
!258 = !{ptr @coda_job_ready._entry.120, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @coda_job_ready._entry_ptr.122, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1631, i32 3}
!262 = !{ptr @coda_job_ready._entry.123, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @coda_job_ready._entry_ptr.125, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1635, i32 2}
!266 = !{ptr @coda_job_ready._entry.126, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @coda_job_ready._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1646, i32 2}
!270 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @coda_job_abort._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @coda_job_abort._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2905, i32 3}
!275 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @coda_register_device._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @coda_register_device._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @coda_fops, !279, !"coda_fops", i1 false, i1 false}
!279 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2770, i32 42}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2617, i32 31}
!282 = !{ptr @coda_open.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2631, i32 2}
!284 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @coda_open.__key.135, !286, !"__key", i1 false, i1 false}
!286 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2633, i32 3}
!287 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @coda_open.__key.137, !289, !"__key", i1 false, i1 false}
!289 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2635, i32 3}
!290 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2642, i32 2}
!293 = !{ptr @.str.140, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @coda_open._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @coda_open._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2665, i32 4}
!298 = !{ptr @coda_open._entry.141, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @coda_open._entry_ptr.143, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2673, i32 3}
!302 = !{ptr @coda_open._entry.144, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @coda_open._entry_ptr.146, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.148, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2691, i32 3}
!306 = !{ptr @coda_open._entry.147, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @coda_open._entry_ptr.149, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.151, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2698, i32 3}
!310 = !{ptr @coda_open._entry.150, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @coda_open._entry_ptr.152, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @coda_open.__key.153, !313, !"__key", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2704, i32 2}
!314 = !{ptr @.str.154, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @coda_open.__key.155, !316, !"__key", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2705, i32 2}
!317 = !{ptr @.str.156, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @coda_open.__key.157, !319, !"__key", i1 false, i1 false}
!319 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2706, i32 2}
!320 = !{ptr @.str.158, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @coda_open.__key.159, !322, !"__key", i1 false, i1 false}
!322 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2708, i32 2}
!323 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @init_completion.__key, !325, !"__key", i1 false, i1 false}
!325 = !{!"../include/linux/completion.h", i32 87, i32 2}
!326 = !{ptr @.str.161, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.162, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1547, i32 4}
!329 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @coda_pic_run_work._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @coda_pic_run_work._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @coda_ctrls_setup._key, !333, !"_key", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2487, i32 2}
!334 = !{ptr @.str.164, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.165, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2516, i32 3}
!337 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @coda_ctrls_setup._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @coda_ctrls_setup._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @coda_ctrl_ops, !341, !"coda_ctrl_ops", i1 false, i1 false}
!341 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2305, i32 35}
!342 = !{ptr @.str.167, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2183, i32 3}
!344 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @coda_s_ctrl._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @coda_s_ctrl._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.170, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2186, i32 3}
!349 = !{ptr @coda_s_ctrl._entry.169, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @coda_s_ctrl._entry_ptr.171, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.173, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2297, i32 3}
!353 = !{ptr @coda_s_ctrl._entry.172, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @coda_s_ctrl._entry_ptr.174, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.175, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2478, i32 10}
!357 = !{ptr @coda_mb_err_cnt_ctrl_config, !358, !"coda_mb_err_cnt_ctrl_config", i1 false, i1 false}
!358 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2476, i32 38}
!359 = !{ptr @.str.176, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/platform/coda/coda-common.c", i32 2735, i32 2}
!361 = !{ptr @.str.177, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @coda_release._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @coda_release._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @coda_ioctl_ops, !365, !"coda_ioctl_ops", i1 false, i1 false}
!365 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1472, i32 36}
!366 = !{ptr @.str.178, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/coda/coda-common.c", i32 429, i32 25}
!368 = !{ptr @coda_formats_420, !369, !"coda_formats_420", i1 false, i1 false}
!369 = !{!"../drivers/media/platform/coda/coda-common.c", i32 433, i32 18}
!370 = !{ptr @.str.179, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/platform/coda/coda-common.c", i32 875, i32 3}
!372 = !{ptr @.str.180, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @coda_s_fmt_vid_cap._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @coda_s_fmt_vid_cap._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.181, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/platform/coda/coda-common.c", i32 788, i32 3}
!377 = !{ptr @.str.182, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @coda_s_fmt._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @coda_s_fmt._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.184, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/platform/coda/coda-common.c", i32 837, i32 2}
!382 = !{ptr @coda_s_fmt._entry.183, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @coda_s_fmt._entry_ptr.185, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.186, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/media/platform/coda/coda-common.c", i32 917, i32 3}
!386 = !{ptr @coda_s_fmt_vid_out._entry, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @coda_s_fmt_vid_out._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.187, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1078, i32 4}
!390 = !{ptr @.str.188, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @coda_s_selection._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @coda_s_selection._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1108, i32 2}
!395 = !{ptr @.str.190, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @coda_wake_up_capture_queue._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @coda_wake_up_capture_queue._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1243, i32 4}
!400 = !{ptr @.str.192, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @coda_decoder_cmd._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @coda_decoder_cmd._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1249, i32 5}
!405 = !{ptr @coda_decoder_cmd._entry.193, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @coda_decoder_cmd._entry_ptr.195, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @coda_decoder_cmd._entry.196, !408, !"_entry", i1 false, i1 false}
!408 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1264, i32 4}
!409 = !{ptr @coda_decoder_cmd._entry_ptr.197, !408, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.198, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1166, i32 2}
!412 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @coda_mark_last_meta._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @coda_mark_last_meta._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.200, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/platform/coda/coda-common.c", i32 1189, i32 2}
!417 = !{ptr @.str.201, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @coda_mark_last_dst_buf._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @coda_mark_last_dst_buf._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @coda_dt_ids, !421, !"coda_dt_ids", i1 false, i1 false}
!421 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3115, i32 34}
!422 = !{ptr @.str.202, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3041, i32 4}
!424 = !{ptr @.str.203, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3042, i32 4}
!426 = !{ptr @.str.204, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3043, i32 4}
!428 = !{ptr @.str.205, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3055, i32 4}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3056, i32 4}
!432 = !{ptr @.str.207, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3057, i32 4}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3070, i32 4}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3071, i32 4}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3072, i32 4}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3085, i32 4}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3086, i32 4}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3087, i32 4}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3100, i32 4}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3101, i32 4}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3102, i32 4}
!452 = !{ptr @coda_devdata, !453, !"coda_devdata", i1 false, i1 false}
!453 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3038, i32 34}
!454 = !{ptr @codadx6_codecs, !455, !"codadx6_codecs", i1 false, i1 false}
!455 = !{!"../drivers/media/platform/coda/coda-common.c", i32 133, i32 32}
!456 = !{ptr @codadx6_video_devices, !457, !"codadx6_video_devices", i1 false, i1 false}
!457 = !{!"../drivers/media/platform/coda/coda-common.c", i32 273, i32 40}
!458 = !{ptr @.str.217, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/platform/coda/coda-common.c", i32 175, i32 10}
!460 = !{ptr @coda_bit_encoder, !461, !"coda_bit_encoder", i1 false, i1 false}
!461 = !{!"../drivers/media/platform/coda/coda-common.c", i32 174, i32 39}
!462 = !{ptr @codahx4_codecs, !463, !"codahx4_codecs", i1 false, i1 false}
!463 = !{!"../drivers/media/platform/coda/coda-common.c", i32 138, i32 32}
!464 = !{ptr @codahx4_video_devices, !465, !"codahx4_video_devices", i1 false, i1 false}
!465 = !{!"../drivers/media/platform/coda/coda-common.c", i32 277, i32 40}
!466 = !{ptr @.str.218, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/platform/coda/coda-common.c", i32 205, i32 10}
!468 = !{ptr @coda_bit_decoder, !469, !"coda_bit_decoder", i1 false, i1 false}
!469 = !{!"../drivers/media/platform/coda/coda-common.c", i32 204, i32 39}
!470 = !{ptr @coda7_codecs, !471, !"coda7_codecs", i1 false, i1 false}
!471 = !{!"../drivers/media/platform/coda/coda-common.c", i32 145, i32 32}
!472 = !{ptr @coda7_video_devices, !473, !"coda7_video_devices", i1 false, i1 false}
!473 = !{!"../drivers/media/platform/coda/coda-common.c", i32 282, i32 40}
!474 = !{ptr @.str.219, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/platform/coda/coda-common.c", i32 190, i32 10}
!476 = !{ptr @coda_bit_jpeg_encoder, !477, !"coda_bit_jpeg_encoder", i1 false, i1 false}
!477 = !{!"../drivers/media/platform/coda/coda-common.c", i32 189, i32 39}
!478 = !{ptr @.str.220, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/platform/coda/coda-common.c", i32 226, i32 10}
!480 = !{ptr @coda_bit_jpeg_decoder, !481, !"coda_bit_jpeg_decoder", i1 false, i1 false}
!481 = !{!"../drivers/media/platform/coda/coda-common.c", i32 225, i32 39}
!482 = !{ptr @coda9_codecs, !483, !"coda9_codecs", i1 false, i1 false}
!483 = !{!"../drivers/media/platform/coda/coda-common.c", i32 155, i32 32}
!484 = !{ptr @coda9_video_devices, !485, !"coda9_video_devices", i1 false, i1 false}
!485 = !{!"../drivers/media/platform/coda/coda-common.c", i32 289, i32 40}
!486 = !{ptr @coda9_jpeg_encoder, !487, !"coda9_jpeg_encoder", i1 false, i1 false}
!487 = !{!"../drivers/media/platform/coda/coda-common.c", i32 240, i32 39}
!488 = !{ptr @coda9_jpeg_decoder, !489, !"coda9_jpeg_decoder", i1 false, i1 false}
!489 = !{!"../drivers/media/platform/coda/coda-common.c", i32 257, i32 39}
!490 = !{ptr @coda_pm_ops, !491, !"coda_pm_ops", i1 false, i1 false}
!491 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3322, i32 32}
!492 = !{ptr @.str.221, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/media/platform/coda/coda-common.c", i32 3315, i32 4}
!494 = !{ptr @coda_runtime_resume._entry, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @coda_runtime_resume._entry_ptr, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{i32 1, !"wchar_size", i32 2}
!497 = !{i32 1, !"min_enum_size", i32 4}
!498 = !{i32 8, !"branch-target-enforcement", i32 0}
!499 = !{i32 8, !"sign-return-address", i32 0}
!500 = !{i32 8, !"sign-return-address-all", i32 0}
!501 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!502 = !{i32 7, !"uwtable", i32 1}
!503 = !{i32 7, !"frame-pointer", i32 2}
!504 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!505 = !{i64 2156774146}
!506 = !{i64 5346199}
!507 = !{i64 5346617}
!508 = !{i64 2156774825}
!509 = !{i8 0, i8 2}
!510 = !{i64 2148329406, i64 2148329432, i64 2148329461, i64 2148329495, i64 2148329526, i64 2148329549}
!511 = !{i64 2148811221, i64 2148811226, i64 2148811239, i64 2148811283, i64 2148811317, i64 2148811338}
!512 = !{i64 2148328825}
!513 = !{i64 813648, i64 813673, i64 813695, i64 813711, i64 813723, i64 813743, i64 813767, i64 813783, i64 813795}
!514 = !{i64 2148329013}
!515 = !{i64 2156825928, i64 2156826434, i64 2156825965, i64 2156826021, i64 2156826055, i64 2156826079, i64 2156826120, i64 2156826141, i64 2156826169, i64 2156826203}
