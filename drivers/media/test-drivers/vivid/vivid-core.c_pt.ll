; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-core.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_dv_timings = type { i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.121, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.123, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.123 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.98, i32, i32 }
%union.anon.98 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.126 }
%union.anon.126 = type { [16 x i32] }
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
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_create_buffers = type { i32, i32, i32, %struct.v4l2_format, i32, i32, [6 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }

@__UNIQUE_ID_description315 = internal constant [44 x i8] c"vivid.description=Virtual Video Test Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [26 x i8] c"vivid.author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [50 x i8] c"vivid.file=drivers/media/test-drivers/vivid/vivid\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [18 x i8] c"vivid.license=GPL\00", section ".modinfo", align 1
@__param_str_n_devs = internal constant [13 x i8] c"vivid.n_devs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@n_devs = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_n_devs = internal constant %struct.kernel_param { ptr @__param_str_n_devs, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @n_devs } }, section "__param", align 4
@__UNIQUE_ID_n_devstype319 = internal constant [27 x i8] c"vivid.parmtype=n_devs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_n_devs320 = internal constant [56 x i8] c"vivid.parm=n_devs: number of driver instances to create\00", section ".modinfo", align 1
@__param_str_vid_cap_nr = internal constant [17 x i8] c"vivid.vid_cap_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_vid_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vid_cap_nr }, align 4
@__param_vid_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_vid_cap_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vid_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_vid_cap_nrtype321 = internal constant [39 x i8] c"vivid.parmtype=vid_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_cap_nr322 = internal constant [61 x i8] c"vivid.parm=vid_cap_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vid_out_nr = internal constant [17 x i8] c"vivid.vid_out_nr\00", align 1
@__param_arr_vid_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vid_out_nr }, align 4
@__param_vid_out_nr = internal constant %struct.kernel_param { ptr @__param_str_vid_out_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vid_out_nr } }, section "__param", align 4
@__UNIQUE_ID_vid_out_nrtype323 = internal constant [39 x i8] c"vivid.parmtype=vid_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_out_nr324 = internal constant [61 x i8] c"vivid.parm=vid_out_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vbi_cap_nr = internal constant [17 x i8] c"vivid.vbi_cap_nr\00", align 1
@__param_arr_vbi_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_cap_nr }, align 4
@__param_vbi_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_cap_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vbi_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_cap_nrtype325 = internal constant [39 x i8] c"vivid.parmtype=vbi_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_cap_nr326 = internal constant [59 x i8] c"vivid.parm=vbi_cap_nr: vbiX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vbi_out_nr = internal constant [17 x i8] c"vivid.vbi_out_nr\00", align 1
@__param_arr_vbi_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_out_nr }, align 4
@__param_vbi_out_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_out_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vbi_out_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_out_nrtype327 = internal constant [39 x i8] c"vivid.parmtype=vbi_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_out_nr328 = internal constant [59 x i8] c"vivid.parm=vbi_out_nr: vbiX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_sdr_cap_nr = internal constant [17 x i8] c"vivid.sdr_cap_nr\00", align 1
@__param_arr_sdr_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @sdr_cap_nr }, align 4
@__param_sdr_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_sdr_cap_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_sdr_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_sdr_cap_nrtype329 = internal constant [39 x i8] c"vivid.parmtype=sdr_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_sdr_cap_nr330 = internal constant [63 x i8] c"vivid.parm=sdr_cap_nr: swradioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_radio_rx_nr = internal constant [18 x i8] c"vivid.radio_rx_nr\00", align 1
@__param_arr_radio_rx_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @radio_rx_nr }, align 4
@__param_radio_rx_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_rx_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_rx_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_rx_nrtype331 = internal constant [40 x i8] c"vivid.parmtype=radio_rx_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_rx_nr332 = internal constant [62 x i8] c"vivid.parm=radio_rx_nr: radioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_radio_tx_nr = internal constant [18 x i8] c"vivid.radio_tx_nr\00", align 1
@__param_arr_radio_tx_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @radio_tx_nr }, align 4
@__param_radio_tx_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_tx_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_tx_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_tx_nrtype333 = internal constant [40 x i8] c"vivid.parmtype=radio_tx_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_tx_nr334 = internal constant [62 x i8] c"vivid.parm=radio_tx_nr: radioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_meta_cap_nr = internal constant [18 x i8] c"vivid.meta_cap_nr\00", align 1
@__param_arr_meta_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @meta_cap_nr }, align 4
@__param_meta_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_meta_cap_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_meta_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_meta_cap_nrtype335 = internal constant [40 x i8] c"vivid.parmtype=meta_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_meta_cap_nr336 = internal constant [62 x i8] c"vivid.parm=meta_cap_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_meta_out_nr = internal constant [18 x i8] c"vivid.meta_out_nr\00", align 1
@__param_arr_meta_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @meta_out_nr }, align 4
@__param_meta_out_nr = internal constant %struct.kernel_param { ptr @__param_str_meta_out_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_meta_out_nr } }, section "__param", align 4
@__UNIQUE_ID_meta_out_nrtype337 = internal constant [40 x i8] c"vivid.parmtype=meta_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_meta_out_nr338 = internal constant [62 x i8] c"vivid.parm=meta_out_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_touch_cap_nr = internal constant [19 x i8] c"vivid.touch_cap_nr\00", align 1
@__param_arr_touch_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @touch_cap_nr }, align 4
@__param_touch_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_touch_cap_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_touch_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_touch_cap_nrtype339 = internal constant [41 x i8] c"vivid.parmtype=touch_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_touch_cap_nr340 = internal constant [67 x i8] c"vivid.parm=touch_cap_nr: v4l-touchX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_ccs_cap_mode = internal constant [19 x i8] c"vivid.ccs_cap_mode\00", align 1
@__param_arr_ccs_cap_mode = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @ccs_cap_mode }, align 4
@__param_ccs_cap_mode = internal constant %struct.kernel_param { ptr @__param_str_ccs_cap_mode, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_ccs_cap_mode } }, section "__param", align 4
@__UNIQUE_ID_ccs_cap_modetype341 = internal constant [41 x i8] c"vivid.parmtype=ccs_cap_mode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ccs_cap_mode342 = internal constant [131 x i8] c"vivid.parm=ccs_cap_mode: capture crop/compose/scale mode:\0A\09\09    bit 0=crop, 1=compose, 2=scale,\0A\09\09    -1=user-controlled (default)\00", section ".modinfo", align 1
@__param_str_ccs_out_mode = internal constant [19 x i8] c"vivid.ccs_out_mode\00", align 1
@__param_arr_ccs_out_mode = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @ccs_out_mode }, align 4
@__param_ccs_out_mode = internal constant %struct.kernel_param { ptr @__param_str_ccs_out_mode, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_ccs_out_mode } }, section "__param", align 4
@__UNIQUE_ID_ccs_out_modetype343 = internal constant [41 x i8] c"vivid.parmtype=ccs_out_mode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ccs_out_mode344 = internal constant [130 x i8] c"vivid.parm=ccs_out_mode: output crop/compose/scale mode:\0A\09\09    bit 0=crop, 1=compose, 2=scale,\0A\09\09    -1=user-controlled (default)\00", section ".modinfo", align 1
@__param_str_multiplanar = internal constant [18 x i8] c"vivid.multiplanar\00", align 1
@__param_arr_multiplanar = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @multiplanar }, align 4
@__param_multiplanar = internal constant %struct.kernel_param { ptr @__param_str_multiplanar, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_multiplanar } }, section "__param", align 4
@__UNIQUE_ID_multiplanartype345 = internal constant [41 x i8] c"vivid.parmtype=multiplanar:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_multiplanar346 = internal constant [100 x i8] c"vivid.parm=multiplanar: 1 (default) creates a single planar device, 2 creates a multiplanar device.\00", section ".modinfo", align 1
@__param_str_node_types = internal constant [17 x i8] c"vivid.node_types\00", align 1
@__param_arr_node_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @node_types }, align 4
@__param_node_types = internal constant %struct.kernel_param { ptr @__param_str_node_types, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_node_types } }, section "__param", align 4
@__UNIQUE_ID_node_typestype347 = internal constant [40 x i8] c"vivid.parmtype=node_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_node_types348 = internal constant [589 x i8] c"vivid.parm=node_types: node types, default is 0xe1d3d. Bitmask with the following meaning:\0A\09\09    bit 0: Video Capture node\0A\09\09    bit 2-3: VBI Capture node: 0 = none, 1 = raw vbi, 2 = sliced vbi, 3 = both\0A\09\09    bit 4: Radio Receiver node\0A\09\09    bit 5: Software Defined Radio Receiver node\0A\09\09    bit 8: Video Output node\0A\09\09    bit 10-11: VBI Output node: 0 = none, 1 = raw vbi, 2 = sliced vbi, 3 = both\0A\09\09    bit 12: Radio Transmitter node\0A\09\09    bit 16: Framebuffer for testing overlays\0A\09\09    bit 17: Metadata Capture node\0A\09\09    bit 18: Metadata Output node\0A\09\09    bit 19: Touch Capture node\0A\00", section ".modinfo", align 1
@__param_str_num_inputs = internal constant [17 x i8] c"vivid.num_inputs\00", align 1
@__param_arr_num_inputs = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @num_inputs }, align 4
@__param_num_inputs = internal constant %struct.kernel_param { ptr @__param_str_num_inputs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_num_inputs } }, section "__param", align 4
@__UNIQUE_ID_num_inputstype349 = internal constant [40 x i8] c"vivid.parmtype=num_inputs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_inputs350 = internal constant [54 x i8] c"vivid.parm=num_inputs: number of inputs, default is 4\00", section ".modinfo", align 1
@__param_str_input_types = internal constant [18 x i8] c"vivid.input_types\00", align 1
@__param_arr_input_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @input_types }, align 4
@__param_input_types = internal constant %struct.kernel_param { ptr @__param_str_input_types, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_input_types } }, section "__param", align 4
@__UNIQUE_ID_input_typestype351 = internal constant [41 x i8] c"vivid.parmtype=input_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_input_types352 = internal constant [182 x i8] c"vivid.parm=input_types: input types, default is 0xe4. Two bits per input,\0A\09\09    bits 0-1 == input 0, bits 31-30 == input 15.\0A\09\09    Type 0 == webcam, 1 == TV, 2 == S-Video, 3 == HDMI\00", section ".modinfo", align 1
@__param_str_num_outputs = internal constant [18 x i8] c"vivid.num_outputs\00", align 1
@__param_arr_num_outputs = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @num_outputs }, align 4
@__param_num_outputs = internal constant %struct.kernel_param { ptr @__param_str_num_outputs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_num_outputs } }, section "__param", align 4
@__UNIQUE_ID_num_outputstype353 = internal constant [41 x i8] c"vivid.parmtype=num_outputs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_outputs354 = internal constant [56 x i8] c"vivid.parm=num_outputs: number of outputs, default is 2\00", section ".modinfo", align 1
@__param_str_output_types = internal constant [19 x i8] c"vivid.output_types\00", align 1
@__param_arr_output_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @output_types }, align 4
@__param_output_types = internal constant %struct.kernel_param { ptr @__param_str_output_types, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_output_types } }, section "__param", align 4
@__UNIQUE_ID_output_typestype355 = internal constant [42 x i8] c"vivid.parmtype=output_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_output_types356 = internal constant [157 x i8] c"vivid.parm=output_types: output types, default is 0x02. One bit per output,\0A\09\09    bit 0 == output 0, bit 15 == output 15.\0A\09\09    Type 0 == S-Video, 1 == HDMI\00", section ".modinfo", align 1
@__param_str_vivid_debug = internal constant [18 x i8] c"vivid.vivid_debug\00", align 1
@vivid_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vivid_debug = internal constant %struct.kernel_param { ptr @__param_str_vivid_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @vivid_debug } }, section "__param", align 4
@__UNIQUE_ID_vivid_debugtype357 = internal constant [32 x i8] c"vivid.parmtype=vivid_debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vivid_debug358 = internal constant [45 x i8] c"vivid.parm=vivid_debug: activates debug info\00", section ".modinfo", align 1
@__param_str_no_error_inj = internal constant [19 x i8] c"vivid.no_error_inj\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_error_inj = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_error_inj = internal constant %struct.kernel_param { ptr @__param_str_no_error_inj, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @no_error_inj } }, section "__param", align 4
@__UNIQUE_ID_no_error_injtype359 = internal constant [33 x i8] c"vivid.parmtype=no_error_inj:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_error_inj360 = internal constant [69 x i8] c"vivid.parm=no_error_inj: if set disable the error injecting controls\00", section ".modinfo", align 1
@__param_str_allocators = internal constant [17 x i8] c"vivid.allocators\00", align 1
@__param_arr_allocators = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @allocators }, align 4
@__param_allocators = internal constant %struct.kernel_param { ptr @__param_str_allocators, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_allocators } }, section "__param", align 4
@__UNIQUE_ID_allocatorstype361 = internal constant [40 x i8] c"vivid.parmtype=allocators:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_allocators362 = internal constant [106 x i8] c"vivid.parm=allocators: memory allocator selection, default is 0.\0A\09\09    0 == vmalloc\0A\09\09    1 == dma-contig\00", section ".modinfo", align 1
@__param_str_cache_hints = internal constant [18 x i8] c"vivid.cache_hints\00", align 1
@__param_arr_cache_hints = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @cache_hints }, align 4
@__param_cache_hints = internal constant %struct.kernel_param { ptr @__param_str_cache_hints, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_cache_hints } }, section "__param", align 4
@__UNIQUE_ID_cache_hintstype363 = internal constant [41 x i8] c"vivid.parmtype=cache_hints:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_hints364 = internal constant [97 x i8] c"vivid.parm=cache_hints: user-space cache hints, default is 0.\0A\09\09    0 == forbid\0A\09\09    1 == allow\00", section ".modinfo", align 1
@__param_str_supports_requests = internal constant [24 x i8] c"vivid.supports_requests\00", align 1
@__param_arr_supports_requests = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @supports_requests }, align 4
@__param_supports_requests = internal constant %struct.kernel_param { ptr @__param_str_supports_requests, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_supports_requests } }, section "__param", align 4
@__UNIQUE_ID_supports_requeststype365 = internal constant [47 x i8] c"vivid.parmtype=supports_requests:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_supports_requests366 = internal constant [146 x i8] c"vivid.parm=supports_requests: support for requests, default is 1.\0A\09\09    0 == no support\0A\09\09    1 == supports requests\0A\09\09    2 == requires requests\00", section ".modinfo", align 1
@vivid_min_rect = dso_local constant { %struct.v4l2_rect, [16 x i8] } { %struct.v4l2_rect { i32 0, i32 0, i32 16, i32 16 }, [16 x i8] zeroinitializer }, align 32
@vivid_max_rect = dso_local constant { %struct.v4l2_rect, [16 x i8] } { %struct.v4l2_rect { i32 0, i32 0, i32 16384, i32 8640 }, [16 x i8] zeroinitializer }, align 32
@vivid_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vivid_probe, ptr @vivid_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vivid_pdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vivid_pdev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vivid__371_2152_vivid_init6 = internal global ptr @vivid_init, section ".initcall6.init", align 4
@__exitcall_vivid_exit = internal global ptr @vivid_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vid_cap_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@vid_out_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@vbi_cap_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@vbi_out_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@sdr_cap_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@radio_rx_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@radio_tx_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@meta_cap_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@meta_out_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@touch_cap_nr = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@ccs_cap_mode = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@ccs_out_mode = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [64 x i8] zeroinitializer }, align 32
@multiplanar = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [64 x i8] zeroinitializer }, align 32
@node_types = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989], [64 x i8] zeroinitializer }, align 32
@num_inputs = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [64 x i8] zeroinitializer }, align 32
@input_types = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228], [64 x i8] zeroinitializer }, align 32
@num_outputs = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [64 x i8] zeroinitializer }, align 32
@output_types = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [64 x i8] zeroinitializer }, align 32
@allocators = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@cache_hints = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@supports_requests = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vivid\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VGA8x16\00", [24 x i8] zeroinitializer }, align 32
@vivid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013vivid: could not find font\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vivid_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/test-drivers/vivid/vivid-core.c\00", [50 x i8] zeroinitializer }, align 32
@vivid_probe._entry_ptr = internal global ptr @vivid_probe._entry, section ".printk_index", align 4
@vivid_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013vivid: error %d while loading driver\0A\00", [56 x i8] zeroinitializer }, align 32
@vivid_probe._entry_ptr.7 = internal global ptr @vivid_probe._entry.5, section ".printk_index", align 4
@vivid_create_instance.def_dv_timings = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"platform:%s-%03d\00", [47 x i8] zeroinitializer }, align 32
@vivid_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @vivid_req_validate, ptr @vb2_request_queue }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-%03d\00", [24 x i8] zeroinitializer }, align 32
@vivid_formats = external dso_local global [0 x %struct.vivid_fmt], align 4
@vivid_hdmi_edid = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D84\12\00\00\00\00\22\1A\01\03\80`6x\0F\EE\91\A3TL\99&\0FPT/\CF\001YEY\81\80\81@\90@\95\00\A9@\B3\00\08\E8\000\F2pZ\80\B0X\8A\00\C0\1C2\00\00\1E\00\00\00\FD\00\18U\18\87<\00\0A      \00\00\00\FC\00vivid\0A       \00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01{\02\03?\F1Qa`_^]\10\1F\04\13\22! \05\14\02\11\01#\09\07\07\83\01\00\00m\03\0C\00\10\00\00<!\00`\01\02\03g\D8]\C4\01x\00\00\E2\00\CA\E3\05\00\00\E3\06\01\00M\D0\00\A0\F0p>\800 5\00\C0\1C2\00\00\1E\1A6\80\A0p8\1F@0 5\00\C0\1C2\00\00\1A\1A\1D\00\80Q\D0\1C @\805\00\C0\1C2\00\00\1C\00\00\00\00\00\00\00\00\00\00\82", [64 x i8] zeroinitializer }, align 32
@vivid_create_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@vivid_create_instance.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@vivid_create_instance.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->cec_xfers_slock\00", [42 x i8] zeroinitializer }, align 32
@vivid_create_instance.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev->kthread_waitq_cec\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vivid_cec-%s\00", [19 x i8] zeroinitializer }, align 32
@vivid_create_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: kernel_thread() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_create_instance\00", [42 x i8] zeroinitializer }, align 32
@vivid_create_instance._entry_ptr = internal global ptr @vivid_create_instance._entry, section ".printk_index", align 4
@vivid_devs = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@vivid_detect_feature_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: using %splanar format API\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vivid_detect_feature_set\00", [39 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr = internal global ptr @vivid_detect_feature_set._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"multi\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"single \00", [24 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: Webcam or HDMI input without video or metadata nodes\0A\00", [36 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.26 = internal global ptr @vivid_detect_feature_set._entry.24, section ".printk_index", align 4
@vivid_detect_feature_set._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.4, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: TV or S-Video input without video, VBI or metadata nodes\0A\00", [32 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.29 = internal global ptr @vivid_detect_feature_set._entry.27, section ".printk_index", align 4
@vivid_detect_feature_set._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.4, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: S-Video output without video, VBI or metadata nodes\0A\00", [37 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.32 = internal global ptr @vivid_detect_feature_set._entry.30, section ".printk_index", align 4
@vivid_detect_feature_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.4, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: HDMI output without video or metadata nodes\0A\00", [45 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.35 = internal global ptr @vivid_detect_feature_set._entry.33, section ".printk_index", align 4
@vivid_detect_feature_set._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.21, ptr @.str.4, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Capture Crop: %c Compose: %c Scaler: %c\0A\00", [49 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.38 = internal global ptr @vivid_detect_feature_set._entry.36, section ".printk_index", align 4
@vivid_detect_feature_set._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.4, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Output Crop: %c Compose: %c Scaler: %c\0A\00", [50 x i8] zeroinitializer }, align 32
@vivid_detect_feature_set._entry_ptr.41 = internal global ptr @vivid_detect_feature_set._entry.39, section ".printk_index", align 4
@v4l2_dv_timings_presets = external dso_local local_unnamed_addr constant [0 x %struct.v4l2_dv_timings], align 1
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%ux%u%s%u\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@vivid_vid_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vid_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vbi_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vbi_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_sdr_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_meta_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_meta_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_touch_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_create_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: Framebuffer device registered as fb%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid_create_queues\00", [44 x i8] zeroinitializer }, align 32
@vivid_create_queues._entry_ptr = internal global ptr @vivid_create_queues._entry, section ".printk_index", align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid-%03d-vid-cap\00", [45 x i8] zeroinitializer }, align 32
@vivid_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vivid_fop_release }, [60 x i8] zeroinitializer }, align 32
@vivid_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vivid_enum_fmt_cap, ptr @vidioc_enum_fmt_vid_overlay, ptr @vivid_enum_fmt_vid, ptr @vidioc_enum_fmt_sdr_cap, ptr null, ptr @vidioc_enum_fmt_meta_cap, ptr @vidioc_enum_fmt_meta_out, ptr @vivid_g_fmt_cap, ptr @vidioc_g_fmt_vid_overlay, ptr @vidioc_g_fmt_vid_out, ptr @vidioc_g_fmt_vid_out_overlay, ptr @vidioc_g_fmt_vbi_cap, ptr @vidioc_g_fmt_vbi_out, ptr @vidioc_g_fmt_sliced_vbi_cap, ptr @vidioc_g_fmt_sliced_vbi_out, ptr @vivid_g_fmt_cap_mplane, ptr @vidioc_g_fmt_vid_out_mplane, ptr @vidioc_g_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vivid_s_fmt_cap, ptr @vidioc_s_fmt_vid_overlay, ptr @vidioc_s_fmt_vid_out, ptr @vidioc_s_fmt_vid_out_overlay, ptr @vidioc_s_fmt_vbi_cap, ptr @vidioc_s_fmt_vbi_out, ptr @vidioc_s_fmt_sliced_vbi_cap, ptr @vidioc_s_fmt_sliced_vbi_out, ptr @vivid_s_fmt_cap_mplane, ptr @vidioc_s_fmt_vid_out_mplane, ptr @vidioc_s_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vivid_try_fmt_cap, ptr @vidioc_try_fmt_vid_overlay, ptr @vidioc_try_fmt_vid_out, ptr @vidioc_try_fmt_vid_out_overlay, ptr @vidioc_g_fmt_vbi_cap, ptr @vidioc_g_fmt_vbi_out, ptr @vidioc_try_fmt_sliced_vbi_cap, ptr @vidioc_try_fmt_sliced_vbi_out, ptr @vivid_try_fmt_cap_mplane, ptr @vidioc_try_fmt_vid_out_mplane, ptr @vidioc_try_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vidioc_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vidioc_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr @vidioc_overlay, ptr @vidioc_g_fbuf, ptr @vidioc_s_fbuf, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vivid_enum_input, ptr @vivid_g_input, ptr @vivid_s_input, ptr @vidioc_enum_output, ptr @vidioc_g_output, ptr @vidioc_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr @vidioc_enumaudout, ptr @vidioc_g_audout, ptr @vidioc_s_audout, ptr @vidioc_g_modulator, ptr @vidioc_s_modulator, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr @vidioc_enum_freq_bands, ptr @vidioc_g_sliced_vbi_cap, ptr @vidioc_log_status, ptr @vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr @vidioc_enum_frameintervals, ptr @vidioc_s_dv_timings, ptr @vidioc_g_dv_timings, ptr @vidioc_query_dv_timings, ptr @vidioc_enum_dv_timings, ptr @vidioc_dv_timings_cap, ptr @vidioc_g_edid, ptr @vidioc_s_edid, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: CEC adapter %s registered for HDMI input 0\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_create_devnodes\00", [42 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr = internal global ptr @vivid_create_devnodes._entry, section ".printk_index", align 4
@vivid_create_devnodes._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: V4L2 capture device registered as %s\0A\00", [52 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.52 = internal global ptr @vivid_create_devnodes._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid-%03d-vid-out\00", [45 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.4, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: CEC adapter %s registered for HDMI output %d\0A\00", [44 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.56 = internal global ptr @vivid_create_devnodes._entry.54, section ".printk_index", align 4
@vivid_create_devnodes._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.4, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: V4L2 output device registered as %s\0A\00", [53 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.59 = internal global ptr @vivid_create_devnodes._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid-%03d-vbi-cap\00", [45 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.4, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: V4L2 capture device registered as %s, supports %s VBI\0A\00", [35 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.63 = internal global ptr @vivid_create_devnodes._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raw and sliced\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sliced\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid-%03d-vbi-out\00", [45 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.4, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: V4L2 output device registered as %s, supports %s VBI\0A\00", [36 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.70 = internal global ptr @vivid_create_devnodes._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid-%03d-sdr-cap\00", [45 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.73 = internal global ptr @vivid_create_devnodes._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vivid-%03d-rad-rx\00", [46 x i8] zeroinitializer }, align 32
@vivid_radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vivid_radio_read, ptr @vivid_radio_write, ptr @vivid_radio_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @vivid_fop_release }, [60 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.49, ptr @.str.4, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: V4L2 receiver device registered as %s\0A\00", [51 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.77 = internal global ptr @vivid_create_devnodes._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vivid-%03d-rad-tx\00", [46 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.49, ptr @.str.4, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: V4L2 transmitter device registered as %s\0A\00", [48 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.81 = internal global ptr @vivid_create_devnodes._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid-%03d-meta-cap\00", [44 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.49, ptr @.str.4, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: V4L2 metadata capture device registered as %s\0A\00", [43 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.85 = internal global ptr @vivid_create_devnodes._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vivid-%03d-meta-out\00", [44 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.49, ptr @.str.4, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: V4L2 metadata output device registered as %s\0A\00", [44 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.89 = internal global ptr @vivid_create_devnodes._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vivid-%03d-touch-cap\00", [43 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.49, ptr @.str.4, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: V4L2 touch capture device registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.93 = internal global ptr @vivid_create_devnodes._entry.91, section ".printk_index", align 4
@vivid_create_devnodes._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.49, ptr @.str.4, i32 1715, ptr @.str.96, ptr @.str.97 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"media device register failed (err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vivid_create_devnodes._entry_ptr.98 = internal global ptr @vivid_create_devnodes._entry.94, section ".printk_index", align 4
@vivid_fop_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: reconnect\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vivid_fop_release\00", [46 x i8] zeroinitializer }, align 32
@vivid_fop_release._entry_ptr = internal global ptr @vivid_fop_release._entry, section ".printk_index", align 4
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vivid_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: unregistering %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vivid_remove\00", [19 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr = internal global ptr @vivid_remove._entry, section ".printk_index", align 4
@vivid_remove._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.105 = internal global ptr @vivid_remove._entry.104, section ".printk_index", align 4
@vivid_remove._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.107 = internal global ptr @vivid_remove._entry.106, section ".printk_index", align 4
@vivid_remove._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.109 = internal global ptr @vivid_remove._entry.108, section ".printk_index", align 4
@vivid_remove._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.111 = internal global ptr @vivid_remove._entry.110, section ".printk_index", align 4
@vivid_remove._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.113 = internal global ptr @vivid_remove._entry.112, section ".printk_index", align 4
@vivid_remove._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.115 = internal global ptr @vivid_remove._entry.114, section ".printk_index", align 4
@vivid_remove._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.103, ptr @.str.4, i32 2084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: unregistering fb%d\0A\00", [38 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.118 = internal global ptr @vivid_remove._entry.116, section ".printk_index", align 4
@vivid_remove._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.120 = internal global ptr @vivid_remove._entry.119, section ".printk_index", align 4
@vivid_remove._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.122 = internal global ptr @vivid_remove._entry.121, section ".printk_index", align 4
@vivid_remove._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vivid_remove._entry_ptr.124 = internal global ptr @vivid_remove._entry.123, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 7, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"n_devs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 53, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"vivid_debug\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 158, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"no_error_inj\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 162, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"vivid_min_rect\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 191, i32 24 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"vivid_max_rect\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 195, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"vivid_pdrv\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2123, i32 31 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"vivid_pdev\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2118, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"vid_cap_nr\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 57, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"vid_out_nr\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 61, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"vbi_cap_nr\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 65, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"vbi_out_nr\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 69, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"sdr_cap_nr\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 73, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"radio_rx_nr\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 77, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"radio_tx_nr\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 81, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"meta_cap_nr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 85, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"meta_out_nr\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 89, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"touch_cap_nr\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 93, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"ccs_cap_mode\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 97, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"ccs_out_mode\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 103, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"multiplanar\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 109, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"node_types\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 117, i32 21 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"num_inputs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 135, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"input_types\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 140, i32 17 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"num_outputs\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 147, i32 17 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"output_types\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 152, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"allocators\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 166, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"cache_hints\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 172, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"supports_requests\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 180, i32 21 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2127, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1998, i32 43 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2002, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2021, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"def_dv_timings\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1724, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1752, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"vivid_media_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 863, i32 38 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1760, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"vivid_hdmi_edid\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 199, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1878, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1879, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1891, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1933, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1934, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1939, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [11 x i8] c"vivid_devs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 189, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 918, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 978, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 984, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1005, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1010, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1047, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1062, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1283, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1284, i32 44 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1284, i32 50 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1373, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1393, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant [11 x i8] c"vivid_fops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 647, i32 42 }
@___asan_gen_.370 = private unnamed_addr constant [16 x i8] c"vivid_ioctl_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 708, i32 36 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1425, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1433, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1443, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1477, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1489, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1496, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1517, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1527, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1549, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1559, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1579, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1586, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant [17 x i8] c"vivid_radio_fops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 658, i32 42 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1598, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1605, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1618, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1625, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1646, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1654, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1676, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1684, i32 5 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1705, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1714, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 628, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 243, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2048, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2053, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2058, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2063, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2068, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2073, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2078, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2083, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2089, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2094, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private constant [49 x i8] c"../drivers/media/test-drivers/vivid/vivid-core.c\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 2099, i32 4 }
@llvm.compiler.used = appending global [254 x ptr] [ptr @__UNIQUE_ID_allocators362, ptr @__UNIQUE_ID_allocatorstype361, ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_cache_hints364, ptr @__UNIQUE_ID_cache_hintstype363, ptr @__UNIQUE_ID_ccs_cap_mode342, ptr @__UNIQUE_ID_ccs_cap_modetype341, ptr @__UNIQUE_ID_ccs_out_mode344, ptr @__UNIQUE_ID_ccs_out_modetype343, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_input_types352, ptr @__UNIQUE_ID_input_typestype351, ptr @__UNIQUE_ID_license318, ptr @__UNIQUE_ID_meta_cap_nr336, ptr @__UNIQUE_ID_meta_cap_nrtype335, ptr @__UNIQUE_ID_meta_out_nr338, ptr @__UNIQUE_ID_meta_out_nrtype337, ptr @__UNIQUE_ID_multiplanar346, ptr @__UNIQUE_ID_multiplanartype345, ptr @__UNIQUE_ID_n_devs320, ptr @__UNIQUE_ID_n_devstype319, ptr @__UNIQUE_ID_no_error_inj360, ptr @__UNIQUE_ID_no_error_injtype359, ptr @__UNIQUE_ID_node_types348, ptr @__UNIQUE_ID_node_typestype347, ptr @__UNIQUE_ID_num_inputs350, ptr @__UNIQUE_ID_num_inputstype349, ptr @__UNIQUE_ID_num_outputs354, ptr @__UNIQUE_ID_num_outputstype353, ptr @__UNIQUE_ID_output_types356, ptr @__UNIQUE_ID_output_typestype355, ptr @__UNIQUE_ID_radio_rx_nr332, ptr @__UNIQUE_ID_radio_rx_nrtype331, ptr @__UNIQUE_ID_radio_tx_nr334, ptr @__UNIQUE_ID_radio_tx_nrtype333, ptr @__UNIQUE_ID_sdr_cap_nr330, ptr @__UNIQUE_ID_sdr_cap_nrtype329, ptr @__UNIQUE_ID_supports_requests366, ptr @__UNIQUE_ID_supports_requeststype365, ptr @__UNIQUE_ID_touch_cap_nr340, ptr @__UNIQUE_ID_touch_cap_nrtype339, ptr @__UNIQUE_ID_vbi_cap_nr326, ptr @__UNIQUE_ID_vbi_cap_nrtype325, ptr @__UNIQUE_ID_vbi_out_nr328, ptr @__UNIQUE_ID_vbi_out_nrtype327, ptr @__UNIQUE_ID_vid_cap_nr322, ptr @__UNIQUE_ID_vid_cap_nrtype321, ptr @__UNIQUE_ID_vid_out_nr324, ptr @__UNIQUE_ID_vid_out_nrtype323, ptr @__UNIQUE_ID_vivid_debug358, ptr @__UNIQUE_ID_vivid_debugtype357, ptr @__exitcall_vivid_exit, ptr @__initcall__kmod_vivid__371_2152_vivid_init6, ptr @__param_allocators, ptr @__param_cache_hints, ptr @__param_ccs_cap_mode, ptr @__param_ccs_out_mode, ptr @__param_input_types, ptr @__param_meta_cap_nr, ptr @__param_meta_out_nr, ptr @__param_multiplanar, ptr @__param_n_devs, ptr @__param_no_error_inj, ptr @__param_node_types, ptr @__param_num_inputs, ptr @__param_num_outputs, ptr @__param_output_types, ptr @__param_radio_rx_nr, ptr @__param_radio_tx_nr, ptr @__param_sdr_cap_nr, ptr @__param_supports_requests, ptr @__param_touch_cap_nr, ptr @__param_vbi_cap_nr, ptr @__param_vbi_out_nr, ptr @__param_vid_cap_nr, ptr @__param_vid_out_nr, ptr @__param_vivid_debug, ptr @vivid_create_devnodes._entry, ptr @vivid_create_devnodes._entry.50, ptr @vivid_create_devnodes._entry.54, ptr @vivid_create_devnodes._entry.57, ptr @vivid_create_devnodes._entry.61, ptr @vivid_create_devnodes._entry.68, ptr @vivid_create_devnodes._entry.72, ptr @vivid_create_devnodes._entry.75, ptr @vivid_create_devnodes._entry.79, ptr @vivid_create_devnodes._entry.83, ptr @vivid_create_devnodes._entry.87, ptr @vivid_create_devnodes._entry.91, ptr @vivid_create_devnodes._entry.94, ptr @vivid_create_devnodes._entry_ptr, ptr @vivid_create_devnodes._entry_ptr.52, ptr @vivid_create_devnodes._entry_ptr.56, ptr @vivid_create_devnodes._entry_ptr.59, ptr @vivid_create_devnodes._entry_ptr.63, ptr @vivid_create_devnodes._entry_ptr.70, ptr @vivid_create_devnodes._entry_ptr.73, ptr @vivid_create_devnodes._entry_ptr.77, ptr @vivid_create_devnodes._entry_ptr.81, ptr @vivid_create_devnodes._entry_ptr.85, ptr @vivid_create_devnodes._entry_ptr.89, ptr @vivid_create_devnodes._entry_ptr.93, ptr @vivid_create_devnodes._entry_ptr.98, ptr @vivid_create_instance._entry, ptr @vivid_create_instance._entry_ptr, ptr @vivid_create_queues._entry, ptr @vivid_create_queues._entry_ptr, ptr @vivid_detect_feature_set._entry, ptr @vivid_detect_feature_set._entry.24, ptr @vivid_detect_feature_set._entry.27, ptr @vivid_detect_feature_set._entry.30, ptr @vivid_detect_feature_set._entry.33, ptr @vivid_detect_feature_set._entry.36, ptr @vivid_detect_feature_set._entry.39, ptr @vivid_detect_feature_set._entry_ptr, ptr @vivid_detect_feature_set._entry_ptr.26, ptr @vivid_detect_feature_set._entry_ptr.29, ptr @vivid_detect_feature_set._entry_ptr.32, ptr @vivid_detect_feature_set._entry_ptr.35, ptr @vivid_detect_feature_set._entry_ptr.38, ptr @vivid_detect_feature_set._entry_ptr.41, ptr @vivid_exit, ptr @vivid_fop_release._entry, ptr @vivid_fop_release._entry_ptr, ptr @vivid_probe._entry, ptr @vivid_probe._entry.5, ptr @vivid_probe._entry_ptr, ptr @vivid_probe._entry_ptr.7, ptr @vivid_remove._entry, ptr @vivid_remove._entry.104, ptr @vivid_remove._entry.106, ptr @vivid_remove._entry.108, ptr @vivid_remove._entry.110, ptr @vivid_remove._entry.112, ptr @vivid_remove._entry.114, ptr @vivid_remove._entry.116, ptr @vivid_remove._entry.119, ptr @vivid_remove._entry.121, ptr @vivid_remove._entry.123, ptr @vivid_remove._entry_ptr, ptr @vivid_remove._entry_ptr.105, ptr @vivid_remove._entry_ptr.107, ptr @vivid_remove._entry_ptr.109, ptr @vivid_remove._entry_ptr.111, ptr @vivid_remove._entry_ptr.113, ptr @vivid_remove._entry_ptr.115, ptr @vivid_remove._entry_ptr.118, ptr @vivid_remove._entry_ptr.120, ptr @vivid_remove._entry_ptr.122, ptr @vivid_remove._entry_ptr.124, ptr @n_devs, ptr @vivid_debug, ptr @no_error_inj, ptr @vivid_min_rect, ptr @vivid_max_rect, ptr @vivid_pdrv, ptr @vivid_pdev, ptr @vid_cap_nr, ptr @vid_out_nr, ptr @vbi_cap_nr, ptr @vbi_out_nr, ptr @sdr_cap_nr, ptr @radio_rx_nr, ptr @radio_tx_nr, ptr @meta_cap_nr, ptr @meta_out_nr, ptr @touch_cap_nr, ptr @ccs_cap_mode, ptr @ccs_out_mode, ptr @multiplanar, ptr @node_types, ptr @num_inputs, ptr @input_types, ptr @num_outputs, ptr @output_types, ptr @allocators, ptr @cache_hints, ptr @supports_requests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @vivid_create_instance.def_dv_timings, ptr @.str.8, ptr @vivid_media_ops, ptr @.str.9, ptr @vivid_hdmi_edid, ptr @vivid_create_instance.__key, ptr @.str.10, ptr @vivid_create_instance.__key.11, ptr @.str.12, ptr @vivid_create_instance.__key.13, ptr @.str.14, ptr @vivid_create_instance.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vivid_devs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @vivid_fops, ptr @vivid_ioctl_ops, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @vivid_radio_fops, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.117], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_error_inj to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_min_rect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_max_rect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_pdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_cap_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_out_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_cap_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_out_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdr_cap_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_rx_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tx_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_cap_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_out_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_cap_nr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_cap_mode to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs_out_mode to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiplanar to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_types to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_inputs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_types to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_outputs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_types to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocators to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_hints to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supports_requests to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance.def_dv_timings to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_hdmi_edid to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_devs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_detect_feature_set._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_create_devnodes._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fop_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_remove._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vivid_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @vivid_pdrv) #10
  tail call void @platform_device_unregister(ptr noundef nonnull @vivid_pdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @vivid_pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vivid_pdrv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_unregister(ptr noundef nonnull @vivid_pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %in_type_counter.i = alloca [4 x i32], align 4
  %out_type_counter.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_font(ptr noundef nonnull @.str.1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %for.body.lr.ph

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.font_desc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @tpg_set_font(ptr noundef %1) #10
  %2 = load i32, ptr @n_devs, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 64)
  store i32 %4, ptr @n_devs, align 4
  %dev10.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %arrayidx21.i.i = getelementptr inbounds i32, ptr %in_type_counter.i, i32 1
  %arrayidx23.i.i = getelementptr inbounds i32, ptr %in_type_counter.i, i32 2
  %arrayidx26.i.i = getelementptr inbounds i32, ptr %in_type_counter.i, i32 3
  %arrayidx71.i.i = getelementptr inbounds i32, ptr %out_type_counter.i, i32 2
  %arrayidx74.i.i = getelementptr inbounds i32, ptr %out_type_counter.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in_type_counter.i) #10
  %5 = call ptr @memset(ptr %in_type_counter.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out_type_counter.i) #10
  %6 = call ptr @memset(ptr %out_type_counter.i, i32 0, i32 16)
  %arrayidx.i = getelementptr [64 x i32], ptr @ccs_cap_mode, i32 0, i32 %i.0118
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ccs_out_mode, i32 0, i32 %i.0118
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @node_types, i32 0, i32 %i.0118
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 33464, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.vivid_create_instance.exit.thread_crit_edge, label %if.end.i

for.body.vivid_create_instance.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread

if.end.i:                                         ; preds = %for.body
  %13 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.0118, ptr %call1.i.i.i.i, align 4096
  %mdev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %v4l2_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %mdev4.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %mdev4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mdev.i, ptr %mdev4.i, align 8
  %model.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 2, i32 2
  %call6.i = tail call i32 @strscpy(ptr noundef %model.i, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 2, i32 5
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info.i, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef %i.0118) #10
  %15 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev10.i, ptr %mdev.i, align 8
  tail call void @media_device_init(ptr noundef %mdev.i) #10
  %ops.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 2, i32 21
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vivid_media_ops, ptr %ops.i, align 128
  %name.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 1, i32 4
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 36, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %i.0118) #10
  %call20.i = tail call i32 @v4l2_device_register(ptr noundef %dev10.i, ptr noundef %v4l2_dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #10
  br label %vivid_create_instance.exit.thread

if.end23.i:                                       ; preds = %if.end.i
  %release.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vivid_dev_release, ptr %release.i, align 128
  %arrayidx.i.i = getelementptr [64 x i32], ptr @multiplanar, i32 0, i32 %i.0118
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 1
  %multiplanar.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 50
  %frombool.i.i = zext i1 %cmp.i.i to i8
  %20 = ptrtoint ptr %multiplanar.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i.i, ptr %multiplanar.i.i, align 32
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.22, ptr @.str.23
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i, ptr noundef nonnull %cond.i.i) #13
  %arrayidx2.i.i = getelementptr [64 x i32], ptr @num_inputs, i32 0, i32 %i.0118
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i.i, align 4
  %num_inputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.i.i = icmp eq i32 %22, 0
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 16) #10
  %24 = select i1 %cmp4.i.i, i32 1, i32 %23
  %25 = ptrtoint ptr %num_inputs.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_inputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12509.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp12509.not.i.i, label %if.end23.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end23.i.for.end.i.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end23.i
  %arrayidx13.i.i = getelementptr [64 x i32], ptr @input_types, i32 0, i32 %i.0118
  %26 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0510.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc20.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.0510.i.i, 1
  %shr.i.i = lshr i32 %27, %mul.i.i
  %28 = trunc i32 %shr.i.i to i8
  %conv.i.i = and i8 %28, 3
  %arrayidx14.i.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 53, i32 %i.0510.i.i
  %29 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i, ptr %arrayidx14.i.i, align 1
  %idxprom.i.i = zext i8 %conv.i.i to i32
  %arrayidx17.i.i = getelementptr i32, ptr %in_type_counter.i, i32 %idxprom.i.i
  %30 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.i, align 4
  %inc.i.i = add i32 %31, 1
  store i32 %inc.i.i, ptr %arrayidx17.i.i, align 4
  %conv18.i.i = trunc i32 %31 to i8
  %arrayidx19.i.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 54, i32 %i.0510.i.i
  %32 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv18.i.i, ptr %arrayidx19.i.i, align 1
  %inc20.i.i = add nuw i32 %i.0510.i.i, 1
  %33 = ptrtoint ptr %num_inputs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_inputs.i.i, align 4
  %cmp12.i.i = icmp ult i32 %inc20.i.i, %34
  br i1 %cmp12.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end23.i.for.end.i.i_crit_edge
  %35 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool22.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool22.not.i.i, label %for.end.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

for.end.i.i.land.end.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool24.i.i = icmp ne i32 %38, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %for.end.i.i.land.end.i.i_crit_edge
  %39 = phi i1 [ false, %for.end.i.i.land.end.i.i_crit_edge ], [ %tobool24.i.i, %land.rhs.i.i ]
  %has_audio_inputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 59
  %frombool25.i.i = zext i1 %39 to i8
  %40 = ptrtoint ptr %has_audio_inputs.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool25.i.i, ptr %has_audio_inputs.i.i, align 4
  %41 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp27.i.i = icmp eq i32 %42, 16
  br i1 %cmp27.i.i, label %if.then29.i.i, label %land.end.i.i.if.end33.i.i_crit_edge

land.end.i.i.if.end33.i.i_crit_edge:              ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

if.then29.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 15, ptr %arrayidx26.i.i, align 4
  %44 = ptrtoint ptr %num_inputs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_inputs.i.i, align 4
  %dec32.i.i = add i32 %45, -1
  store i32 %dec32.i.i, ptr %num_inputs.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then29.i.i, %land.end.i.i.if.end33.i.i_crit_edge
  %46 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx26.i.i, align 4
  %num_hdmi_inputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 52
  %48 = ptrtoint ptr %num_hdmi_inputs.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %num_hdmi_inputs.i.i, align 8
  %arrayidx35.i.i = getelementptr [64 x i32], ptr @num_outputs, i32 0, i32 %i.0118
  %49 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx35.i.i, align 4
  %num_outputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp37.i.i = icmp eq i32 %50, 0
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 16) #10
  %52 = select i1 %cmp37.i.i, i32 1, i32 %51
  %53 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_outputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp50511.not.i.i = icmp eq i32 %52, 0
  br i1 %cmp50511.not.i.i, label %if.end33.i.i.for.end70.i.i_crit_edge, label %for.body52.lr.ph.i.i

if.end33.i.i.for.end70.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70.i.i

for.body52.lr.ph.i.i:                             ; preds = %if.end33.i.i
  %arrayidx53.i.i = getelementptr [64 x i32], ptr @output_types, i32 0, i32 %i.0118
  %54 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx53.i.i, align 4
  br label %for.body52.i.i

for.body52.i.i:                                   ; preds = %for.body52.i.i.for.body52.i.i_crit_edge, %for.body52.lr.ph.i.i
  %i.1512.i.i = phi i32 [ 0, %for.body52.lr.ph.i.i ], [ %inc69.i.i, %for.body52.i.i.for.body52.i.i_crit_edge ]
  %56 = shl nuw i32 1, %i.1512.i.i
  %57 = and i32 %56, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool56.not.i.i = icmp eq i32 %57, 0
  %conv58.i.i = select i1 %tobool56.not.i.i, i8 2, i8 3
  %arrayidx59.i.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 57, i32 %i.1512.i.i
  %58 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv58.i.i, ptr %arrayidx59.i.i, align 1
  %idxprom62.i.i = zext i8 %conv58.i.i to i32
  %arrayidx63.i.i = getelementptr i32, ptr %out_type_counter.i, i32 %idxprom62.i.i
  %59 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx63.i.i, align 4
  %inc64.i.i = add i32 %60, 1
  store i32 %inc64.i.i, ptr %arrayidx63.i.i, align 4
  %conv65.i.i = trunc i32 %60 to i8
  %arrayidx66.i.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 58, i32 %i.1512.i.i
  %61 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv65.i.i, ptr %arrayidx66.i.i, align 1
  %arrayidx67.i.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 219, i32 %i.1512.i.i
  %62 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx67.i.i, align 1
  %inc69.i.i = add nuw i32 %i.1512.i.i, 1
  %63 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_outputs.i.i, align 4
  %cmp50.i.i = icmp ult i32 %inc69.i.i, %64
  br i1 %cmp50.i.i, label %for.body52.i.i.for.body52.i.i_crit_edge, label %for.body52.i.i.for.end70.i.i_crit_edge

for.body52.i.i.for.end70.i.i_crit_edge:           ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70.i.i

for.body52.i.i.for.body52.i.i_crit_edge:          ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52.i.i

for.end70.i.i:                                    ; preds = %for.body52.i.i.for.end70.i.i_crit_edge, %if.end33.i.i.for.end70.i.i_crit_edge
  %65 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool72.i.i = icmp ne i32 %66, 0
  %has_audio_outputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 60
  %frombool73.i.i = zext i1 %tobool72.i.i to i8
  %67 = ptrtoint ptr %has_audio_outputs.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool73.i.i, ptr %has_audio_outputs.i.i, align 1
  %68 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp75.i.i = icmp eq i32 %69, 16
  br i1 %cmp75.i.i, label %if.then77.i.i, label %for.end70.i.i.if.end82.i.i_crit_edge

for.end70.i.i.if.end82.i.i_crit_edge:             ; preds = %for.end70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i.i

if.then77.i.i:                                    ; preds = %for.end70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 15, ptr %arrayidx74.i.i, align 4
  %71 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_outputs.i.i, align 4
  %dec81.i.i = add i32 %72, -1
  store i32 %dec81.i.i, ptr %num_outputs.i.i, align 4
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then77.i.i, %for.end70.i.i.if.end82.i.i_crit_edge
  %73 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx74.i.i, align 4
  %num_hdmi_outputs.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 56
  %75 = ptrtoint ptr %num_hdmi_outputs.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %num_hdmi_outputs.i.i, align 16
  %has_vid_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 61
  %76 = trunc i32 %12 to i8
  %77 = and i8 %76, 1
  %78 = ptrtoint ptr %has_vid_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %has_vid_cap.i.i, align 2
  br i1 %tobool22.not.i.i, label %lor.lhs.false.i.i, label %if.end82.i.i.if.then91.i.i_crit_edge

if.end82.i.i.if.then91.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91.i.i

lor.lhs.false.i.i:                                ; preds = %if.end82.i.i
  %79 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool90.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool90.not.i.i, label %lor.lhs.false.i.i.if.end106.i.i_crit_edge, label %lor.lhs.false.i.i.if.then91.i.i_crit_edge

lor.lhs.false.i.i.if.then91.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91.i.i

lor.lhs.false.i.i.if.end106.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i.i

if.then91.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then91.i.i_crit_edge, %if.end82.i.i.if.then91.i.i_crit_edge
  %has_raw_vbi_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 64
  %81 = lshr i8 %76, 2
  %82 = and i8 %81, 1
  %83 = ptrtoint ptr %has_raw_vbi_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %has_raw_vbi_cap.i.i, align 1
  %has_sliced_vbi_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 65
  %84 = lshr i8 %76, 3
  %85 = and i8 %84, 1
  %86 = ptrtoint ptr %has_sliced_vbi_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %has_sliced_vbi_cap.i.i, align 2
  %has_vbi_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 63
  %87 = or i8 %82, %85
  %88 = ptrtoint ptr %has_vbi_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %has_vbi_cap.i.i, align 8
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then91.i.i, %lor.lhs.false.i.i.if.end106.i.i_crit_edge
  %has_meta_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 73
  %and107.i.i = lshr i32 %12, 17
  %89 = trunc i32 %and107.i.i to i8
  %90 = and i8 %89, 1
  %91 = ptrtoint ptr %has_meta_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %has_meta_cap.i.i, align 2
  %92 = ptrtoint ptr %in_type_counter.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %in_type_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool111.not.i.i = icmp eq i32 %93, 0
  br i1 %tobool111.not.i.i, label %lor.lhs.false112.i.i, label %land.lhs.true.i.i

lor.lhs.false112.i.i:                             ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool114.not.i.i = icmp ne i32 %47, 0
  %94 = and i32 %12, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %95, %tobool114.not.i.i
  br i1 %96, label %lor.lhs.false112.i.i.do.end123.i.i_crit_edge, label %lor.lhs.false112.i.i.if.end129.i.i_crit_edge

lor.lhs.false112.i.i.if.end129.i.i_crit_edge:     ; preds = %lor.lhs.false112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129.i.i

lor.lhs.false112.i.i.do.end123.i.i_crit_edge:     ; preds = %lor.lhs.false112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123.i.i

land.lhs.true.i.i:                                ; preds = %if.end106.i.i
  %97 = and i32 %12, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %land.lhs.true.i.i.do.end123.i.i_crit_edge, label %land.lhs.true.i.i.if.end129.i.i_crit_edge

land.lhs.true.i.i.if.end129.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129.i.i

land.lhs.true.i.i.do.end123.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123.i.i

do.end123.i.i:                                    ; preds = %land.lhs.true.i.i.do.end123.i.i_crit_edge, %lor.lhs.false112.i.i.do.end123.i.i_crit_edge
  %call128.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i) #13
  br label %vivid_create_instance.exit.thread66

if.end129.i.i:                                    ; preds = %land.lhs.true.i.i.if.end129.i.i_crit_edge, %lor.lhs.false112.i.i.if.end129.i.i_crit_edge
  br i1 %tobool22.not.i.i, label %lor.lhs.false132.i.i, label %land.lhs.true135.i.i

lor.lhs.false132.i.i:                             ; preds = %if.end129.i.i
  %99 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool134.not.i.i = icmp ne i32 %100, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool137.not.i.i = icmp eq i8 %77, 0
  %or.cond503.i.i = and i1 %tobool137.not.i.i, %tobool134.not.i.i
  br i1 %or.cond503.i.i, label %lor.lhs.false132.i.i.land.lhs.true138.i.i_crit_edge, label %lor.lhs.false132.i.i.if.end153.i.i_crit_edge

lor.lhs.false132.i.i.if.end153.i.i_crit_edge:     ; preds = %lor.lhs.false132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i.i

lor.lhs.false132.i.i.land.lhs.true138.i.i_crit_edge: ; preds = %lor.lhs.false132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true138.i.i

land.lhs.true135.i.i:                             ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool137.not.old.i.i = icmp eq i8 %77, 0
  br i1 %tobool137.not.old.i.i, label %land.lhs.true135.i.i.land.lhs.true138.i.i_crit_edge, label %land.lhs.true135.i.i.if.end153.i.i_crit_edge

land.lhs.true135.i.i.if.end153.i.i_crit_edge:     ; preds = %land.lhs.true135.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i.i

land.lhs.true135.i.i.land.lhs.true138.i.i_crit_edge: ; preds = %land.lhs.true135.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true138.i.i

land.lhs.true138.i.i:                             ; preds = %land.lhs.true135.i.i.land.lhs.true138.i.i_crit_edge, %lor.lhs.false132.i.i.land.lhs.true138.i.i_crit_edge
  %has_vbi_cap139.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 63
  %101 = ptrtoint ptr %has_vbi_cap139.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %has_vbi_cap139.i.i, align 8, !range !454
  %103 = or i8 %102, %90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %do.end147.i.i, label %land.lhs.true138.i.i.if.end153.i.i_crit_edge

land.lhs.true138.i.i.if.end153.i.i_crit_edge:     ; preds = %land.lhs.true138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i.i

do.end147.i.i:                                    ; preds = %land.lhs.true138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call152.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i) #13
  br label %vivid_create_instance.exit.thread66

if.end153.i.i:                                    ; preds = %land.lhs.true138.i.i.if.end153.i.i_crit_edge, %land.lhs.true135.i.i.if.end153.i.i_crit_edge, %lor.lhs.false132.i.i.if.end153.i.i_crit_edge
  %has_vid_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 62
  %and154.i.i = lshr i32 %12, 8
  %105 = trunc i32 %and154.i.i to i8
  %106 = and i8 %105, 1
  %107 = ptrtoint ptr %has_vid_out.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %has_vid_out.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool158.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool158.not.i.i, label %if.end199.i.i, label %land.lhs.true181.i.i

land.lhs.true181.i.i:                             ; preds = %if.end153.i.i
  %has_raw_vbi_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 67
  %and160.i.i = lshr i32 %12, 10
  %108 = trunc i32 %and160.i.i to i8
  %109 = and i8 %108, 1
  %110 = ptrtoint ptr %has_raw_vbi_out.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %has_raw_vbi_out.i.i, align 4
  %has_sliced_vbi_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 68
  %and163.i.i = lshr i32 %12, 11
  %111 = trunc i32 %and163.i.i to i8
  %112 = and i8 %111, 1
  %113 = ptrtoint ptr %has_sliced_vbi_out.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %has_sliced_vbi_out.i.i, align 1
  %has_vbi_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 66
  %114 = or i8 %109, %112
  %115 = ptrtoint ptr %has_vbi_out.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %has_vbi_out.i.i, align 1
  %and176.i.i = and i32 %12, 262144
  %has_meta_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 74
  %and176.lobit.i.i = lshr exact i32 %and176.i.i, 18
  %116 = trunc i32 %and176.lobit.i.i to i8
  %117 = ptrtoint ptr %has_meta_out.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %has_meta_out.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool183.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool183.not.i.i, label %land.lhs.true184.i.i, label %land.lhs.true181.i.i.if.end217.i.i_crit_edge

land.lhs.true181.i.i.if.end217.i.i_crit_edge:     ; preds = %land.lhs.true181.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217.i.i

land.lhs.true184.i.i:                             ; preds = %land.lhs.true181.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i.i)
  %tobool177.not.i.i = icmp ne i32 %and176.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool186.not.i.i = icmp ne i8 %114, 0
  %brmerge.i.i = or i1 %tobool177.not.i.i, %tobool186.not.i.i
  br i1 %brmerge.i.i, label %if.end199.thread491.i.i, label %do.end193.i.i

do.end193.i.i:                                    ; preds = %land.lhs.true184.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call198.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i) #13
  br label %vivid_create_instance.exit.thread66

if.end199.i.i:                                    ; preds = %if.end153.i.i
  %has_meta_out.i550.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 74
  %and176.i548.i = lshr i32 %12, 18
  %118 = trunc i32 %and176.i548.i to i8
  %119 = and i8 %118, 1
  %120 = ptrtoint ptr %has_meta_out.i550.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %has_meta_out.i550.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool201.not.i.i = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool204.not.i.i = icmp eq i8 %106, 0
  %or.cond505.i.i = and i1 %tobool204.not.i.i, %tobool201.not.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool207.not.i.i = icmp eq i8 %119, 0
  %or.cond506.i.i = select i1 %or.cond505.i.i, i1 %tobool207.not.i.i, i1 false
  br i1 %or.cond506.i.i, label %if.end199.i.i.do.end211.i.i_crit_edge, label %if.end199.i.i.if.end217.i.i_crit_edge

if.end199.i.i.if.end217.i.i_crit_edge:            ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217.i.i

if.end199.i.i.do.end211.i.i_crit_edge:            ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end211.i.i

if.end199.thread491.i.i:                          ; preds = %land.lhs.true184.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool201.not492.i.i = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool207.not.old.i.i = icmp eq i8 %116, 0
  %or.cond507.i.i = select i1 %tobool201.not492.i.i, i1 %tobool207.not.old.i.i, i1 false
  br i1 %or.cond507.i.i, label %if.end199.thread491.i.i.do.end211.i.i_crit_edge, label %if.end199.thread491.i.i.if.end217.i.i_crit_edge

if.end199.thread491.i.i.if.end217.i.i_crit_edge:  ; preds = %if.end199.thread491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217.i.i

if.end199.thread491.i.i.do.end211.i.i_crit_edge:  ; preds = %if.end199.thread491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end211.i.i

do.end211.i.i:                                    ; preds = %if.end199.thread491.i.i.do.end211.i.i_crit_edge, %if.end199.i.i.do.end211.i.i_crit_edge
  %call216.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i) #13
  br label %vivid_create_instance.exit.thread66

if.end217.i.i:                                    ; preds = %if.end199.thread491.i.i.if.end217.i.i_crit_edge, %if.end199.i.i.if.end217.i.i_crit_edge, %land.lhs.true181.i.i.if.end217.i.i_crit_edge
  %has_radio_rx.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 69
  %121 = lshr i8 %76, 4
  %122 = and i8 %121, 1
  %123 = ptrtoint ptr %has_radio_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %has_radio_rx.i.i, align 2
  %has_radio_tx.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 70
  %and221.i.i = lshr i32 %12, 12
  %124 = trunc i32 %and221.i.i to i8
  %125 = and i8 %124, 1
  %126 = ptrtoint ptr %has_radio_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %has_radio_tx.i.i, align 1
  %has_sdr_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 71
  %127 = lshr i8 %76, 5
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %has_sdr_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %has_sdr_cap.i.i, align 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool228.i.i = icmp ne i32 %36, 0
  %has_tv_tuner.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 75
  %frombool229.i.i = zext i1 %tobool228.i.i to i8
  %130 = ptrtoint ptr %has_tv_tuner.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %frombool229.i.i, ptr %has_tv_tuner.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool231.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool231.not.i.i, label %lor.lhs.false233.i.i, label %if.end217.i.i.land.lhs.true237.i.i_crit_edge

if.end217.i.i.land.lhs.true237.i.i_crit_edge:     ; preds = %if.end217.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true237.i.i

lor.lhs.false233.i.i:                             ; preds = %if.end217.i.i
  %has_vbi_cap234.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 63
  %131 = ptrtoint ptr %has_vbi_cap234.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %has_vbi_cap234.i.i, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool235.not.i.i = icmp eq i8 %132, 0
  br i1 %tobool235.not.i.i, label %lor.lhs.false240.i.i, label %lor.lhs.false233.i.i.land.lhs.true237.i.i_crit_edge

lor.lhs.false233.i.i.land.lhs.true237.i.i_crit_edge: ; preds = %lor.lhs.false233.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true237.i.i

land.lhs.true237.i.i:                             ; preds = %lor.lhs.false233.i.i.land.lhs.true237.i.i_crit_edge, %if.end217.i.i.land.lhs.true237.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool242.not.i.i = icmp eq i8 %122, 0
  %or.cond508.i.i = and i1 %tobool242.not.i.i, %tobool22.not.i.i
  br i1 %or.cond508.i.i, label %land.lhs.true237.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true237.i.i.lor.end.i.i_crit_edge

land.lhs.true237.i.i.lor.end.i.i_crit_edge:       ; preds = %land.lhs.true237.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i.i

land.lhs.true237.i.i.lor.rhs.i.i_crit_edge:       ; preds = %land.lhs.true237.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i

lor.lhs.false240.i.i:                             ; preds = %lor.lhs.false233.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool242.not.old.i.i = icmp eq i8 %122, 0
  br i1 %tobool242.not.old.i.i, label %lor.lhs.false240.i.i.lor.rhs.i.i_crit_edge, label %lor.lhs.false240.i.i.lor.end.i.i_crit_edge

lor.lhs.false240.i.i.lor.end.i.i_crit_edge:       ; preds = %lor.lhs.false240.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i.i

lor.lhs.false240.i.i.lor.rhs.i.i_crit_edge:       ; preds = %lor.lhs.false240.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false240.i.i.lor.rhs.i.i_crit_edge, %land.lhs.true237.i.i.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool245.i.i = icmp ne i8 %128, 0
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %lor.lhs.false240.i.i.lor.end.i.i_crit_edge, %land.lhs.true237.i.i.lor.end.i.i_crit_edge
  %133 = phi i1 [ true, %lor.lhs.false240.i.i.lor.end.i.i_crit_edge ], [ true, %land.lhs.true237.i.i.lor.end.i.i_crit_edge ], [ %tobool245.i.i, %lor.rhs.i.i ]
  %134 = ptrtoint ptr %has_vid_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %has_vid_cap.i.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool252.not.i.i = icmp eq i8 %135, 0
  br i1 %tobool252.not.i.i, label %lor.end.i.i.if.end257.i.i_crit_edge, label %if.then253.i.i

lor.end.i.i.if.end257.i.i_crit_edge:              ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257.i.i

if.then253.i.i:                                   ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %has_fb.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 72
  %and254.i.i = lshr i32 %12, 16
  %136 = trunc i32 %and254.i.i to i8
  %137 = and i8 %136, 1
  %138 = ptrtoint ptr %has_fb.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %has_fb.i.i, align 1
  br label %if.end257.i.i

if.end257.i.i:                                    ; preds = %if.then253.i.i, %lor.end.i.i.if.end257.i.i_crit_edge
  %139 = load i8, ptr @no_error_inj, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool258.not.i.i = icmp eq i8 %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp265.not.i.i = icmp eq i32 %8, -1
  br i1 %tobool258.not.i.i, label %if.end264.i.i, label %land.lhs.true260.i.i

land.lhs.true260.i.i:                             ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select568.i = select i1 %cmp265.not.i.i, i32 7, i32 %8
  br label %if.end297.i.i

if.end264.i.i:                                    ; preds = %if.end257.i.i
  br i1 %cmp265.not.i.i, label %if.end264.i.i.if.end304.i.i_crit_edge, label %if.end264.i.i.if.end297.i.i_crit_edge

if.end264.i.i.if.end297.i.i_crit_edge:            ; preds = %if.end264.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end297.i.i

if.end264.i.i.if.end304.i.i_crit_edge:            ; preds = %if.end264.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.i.i

if.end297.i.i:                                    ; preds = %if.end264.i.i.if.end297.i.i_crit_edge, %land.lhs.true260.i.i
  %ccs_cap.0.i = phi i32 [ %8, %if.end264.i.i.if.end297.i.i_crit_edge ], [ %spec.select568.i, %land.lhs.true260.i.i ]
  %has_crop_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 323
  %140 = trunc i32 %ccs_cap.0.i to i8
  %141 = and i8 %140, 1
  %142 = ptrtoint ptr %has_crop_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %has_crop_cap.i.i, align 1
  %has_compose_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 324
  %143 = lshr i8 %140, 1
  %144 = and i8 %143, 1
  %145 = ptrtoint ptr %has_compose_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %has_compose_cap.i.i, align 2
  %and274.i.i = and i32 %ccs_cap.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i.i)
  %tobool275.not.i.i = icmp eq i32 %and274.i.i, 0
  %has_scaler_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 325
  %and274.lobit.i.i = lshr exact i32 %and274.i.i, 2
  %146 = trunc i32 %and274.lobit.i.i to i8
  %147 = ptrtoint ptr %has_scaler_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %has_scaler_cap.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool285.not.i.i = icmp eq i8 %141, 0
  %cond287.i.i = select i1 %tobool285.not.i.i, i32 78, i32 89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool289.not.i.i = icmp eq i8 %144, 0
  %cond291.i.i = select i1 %tobool289.not.i.i, i32 78, i32 89
  %cond295.i.i = select i1 %tobool275.not.i.i, i32 78, i32 89
  %call296.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %cond287.i.i, i32 noundef %cond291.i.i, i32 noundef %cond295.i.i) #13
  %.pr496.i.i = load i8, ptr @no_error_inj, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr496.i.i)
  %tobool298.not.i.i = icmp eq i8 %.pr496.i.i, 0
  br i1 %tobool298.not.i.i, label %if.end297.i.i.if.end304.i.i_crit_edge, label %land.lhs.true300.i.i

if.end297.i.i.if.end304.i.i_crit_edge:            ; preds = %if.end297.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.i.i

land.lhs.true300.i.i:                             ; preds = %if.end297.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp301.i.i = icmp eq i32 %10, -1
  %spec.select570.i = select i1 %cmp301.i.i, i32 7, i32 %10
  br label %if.then307.i.i

if.end304.i.i:                                    ; preds = %if.end297.i.i.if.end304.i.i_crit_edge, %if.end264.i.i.if.end304.i.i_crit_edge
  %ccs_cap.1.i = phi i32 [ -1, %if.end264.i.i.if.end304.i.i_crit_edge ], [ %ccs_cap.0.i, %if.end297.i.i.if.end304.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp305.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp305.not.i.i, label %if.end304.i.i.if.end30.i_crit_edge, label %if.end304.i.i.if.then307.i.i_crit_edge

if.end304.i.i.if.then307.i.i_crit_edge:           ; preds = %if.end304.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then307.i.i

if.end304.i.i.if.end30.i_crit_edge:               ; preds = %if.end304.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then307.i.i:                                   ; preds = %if.end304.i.i.if.then307.i.i_crit_edge, %land.lhs.true300.i.i
  %ccs_cap.2.i = phi i32 [ %ccs_cap.1.i, %if.end304.i.i.if.then307.i.i_crit_edge ], [ %ccs_cap.0.i, %land.lhs.true300.i.i ]
  %ccs_out.0.i = phi i32 [ %10, %if.end304.i.i.if.then307.i.i_crit_edge ], [ %spec.select570.i, %land.lhs.true300.i.i ]
  %has_crop_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 326
  %148 = trunc i32 %ccs_out.0.i to i8
  %149 = and i8 %148, 1
  %150 = ptrtoint ptr %has_crop_out.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %has_crop_out.i.i, align 8
  %has_compose_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 327
  %151 = lshr i8 %148, 1
  %152 = and i8 %151, 1
  %153 = ptrtoint ptr %has_compose_out.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %has_compose_out.i.i, align 1
  %and314.i.i = and i32 %ccs_out.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i.i)
  %tobool315.not.i.i = icmp eq i32 %and314.i.i, 0
  %has_scaler_out.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 328
  %and314.lobit.i.i = lshr exact i32 %and314.i.i, 2
  %154 = trunc i32 %and314.lobit.i.i to i8
  %155 = ptrtoint ptr %has_scaler_out.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %has_scaler_out.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool325.not.i.i = icmp eq i8 %149, 0
  %cond327.i.i = select i1 %tobool325.not.i.i, i32 78, i32 89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool329.not.i.i = icmp eq i8 %152, 0
  %cond331.i.i = select i1 %tobool329.not.i.i, i32 78, i32 89
  %cond335.i.i = select i1 %tobool315.not.i.i, i32 78, i32 89
  %call336.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %cond327.i.i, i32 noundef %cond331.i.i, i32 noundef %cond335.i.i) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then307.i.i, %if.end304.i.i.if.end30.i_crit_edge
  %ccs_cap.3.i = phi i32 [ %ccs_cap.1.i, %if.end304.i.i.if.end30.i_crit_edge ], [ %ccs_cap.2.i, %if.then307.i.i ]
  %ccs_out.1.i = phi i32 [ -1, %if.end304.i.i.if.end30.i_crit_edge ], [ %ccs_out.0.i, %if.then307.i.i ]
  %has_touch_cap.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 76
  %and338.i.i = lshr i32 %12, 19
  %156 = trunc i32 %and338.i.i to i8
  %157 = and i8 %156, 1
  %158 = ptrtoint ptr %has_touch_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %has_touch_cap.i.i, align 1
  %159 = ptrtoint ptr %has_vid_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %has_vid_cap.i.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i.i = icmp eq i8 %160, 0
  br i1 %tobool.not.i.i, label %if.end30.i.if.end12.i.i_crit_edge, label %if.then.i.i

if.end30.i.if.end12.i.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end30.i
  %161 = ptrtoint ptr %multiplanar.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %multiplanar.i.i, align 32, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool1.not.i.i = icmp eq i8 %162, 0
  %vid_cap_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 40
  %or.i.i = select i1 %tobool1.not.i.i, i32 83886085, i32 83890176
  %163 = ptrtoint ptr %vid_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or.i.i, ptr %vid_cap_caps.i.i, align 8
  %164 = ptrtoint ptr %has_audio_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %has_audio_inputs.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool3.not.i.i = icmp eq i8 %165, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or6.i.i = or i32 %or.i.i, 131072
  %166 = ptrtoint ptr %vid_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or6.i.i, ptr %vid_cap_caps.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %167 = ptrtoint ptr %has_tv_tuner.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %has_tv_tuner.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool7.not.i.i = icmp eq i8 %168, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %vid_cap_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vid_cap_caps.i.i, align 8
  %or10.i.i = or i32 %170, 65536
  store i32 %or10.i.i, ptr %vid_cap_caps.i.i, align 8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end12.i.i_crit_edge, %if.end30.i.if.end12.i.i_crit_edge
  %171 = ptrtoint ptr %has_vid_out.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %has_vid_out.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool13.not.i.i = icmp eq i8 %172, 0
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.end30.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  %173 = ptrtoint ptr %multiplanar.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %multiplanar.i.i, align 32, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool16.not.i.i = icmp eq i8 %174, 0
  %cond17.i.i = select i1 %tobool16.not.i.i, i32 2, i32 8192
  %vid_out_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 41
  %175 = ptrtoint ptr %vid_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %cond17.i.i, ptr %vid_out_caps.i.i, align 4
  %has_fb.i516.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 72
  %176 = ptrtoint ptr %has_fb.i516.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %has_fb.i516.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool18.not.i.i = icmp eq i8 %177, 0
  br i1 %tobool18.not.i.i, label %if.then14.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.then14.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or21.i.i = or i32 %cond17.i.i, 512
  %178 = ptrtoint ptr %vid_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or21.i.i, ptr %vid_out_caps.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.then14.i.i.if.end22.i.i_crit_edge
  %179 = ptrtoint ptr %vid_out_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %vid_out_caps.i.i, align 4
  %or24.i.i = or i32 %180, 83886080
  store i32 %or24.i.i, ptr %vid_out_caps.i.i, align 4
  %181 = ptrtoint ptr %has_audio_outputs.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %has_audio_outputs.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool25.not.i.i = icmp eq i8 %182, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end30.i.i_crit_edge, label %if.then26.i.i

if.end22.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or28.i.i = or i32 %180, 84017152
  %183 = ptrtoint ptr %vid_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or28.i.i, ptr %vid_out_caps.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then26.i.i, %if.end22.i.i.if.end30.i.i_crit_edge, %if.end12.i.i.if.end30.i.i_crit_edge
  %has_vbi_cap.i518.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 63
  %184 = ptrtoint ptr %has_vbi_cap.i518.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %has_vbi_cap.i518.i, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool31.not.i.i = icmp eq i8 %185, 0
  br i1 %tobool31.not.i.i, label %if.end30.i.i.if.end52.i.i_crit_edge, label %if.then32.i.i

if.end30.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  %has_raw_vbi_cap.i519.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 64
  %186 = ptrtoint ptr %has_raw_vbi_cap.i519.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %has_raw_vbi_cap.i519.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool33.not.i.i = icmp eq i8 %187, 0
  %cond34.i.i = select i1 %tobool33.not.i.i, i32 0, i32 16
  %has_sliced_vbi_cap.i520.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 65
  %188 = ptrtoint ptr %has_sliced_vbi_cap.i520.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %has_sliced_vbi_cap.i520.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool35.not.i.i = icmp eq i8 %189, 0
  %cond36.i.i = select i1 %tobool35.not.i.i, i32 0, i32 64
  %or37.i.i = or i32 %cond36.i.i, %cond34.i.i
  %vbi_cap_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 42
  %or39.i.i = or i32 %or37.i.i, 83886080
  %190 = ptrtoint ptr %vbi_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or39.i.i, ptr %vbi_cap_caps.i.i, align 128
  %191 = ptrtoint ptr %has_audio_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %has_audio_inputs.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool41.not.i.i = icmp eq i8 %192, 0
  br i1 %tobool41.not.i.i, label %if.then32.i.i.if.end45.i.i_crit_edge, label %if.then42.i.i

if.then32.i.i.if.end45.i.i_crit_edge:             ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i.i

if.then42.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or44.i.i = or i32 %or37.i.i, 84017152
  %193 = ptrtoint ptr %vbi_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %or44.i.i, ptr %vbi_cap_caps.i.i, align 128
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then42.i.i, %if.then32.i.i.if.end45.i.i_crit_edge
  %194 = ptrtoint ptr %has_tv_tuner.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %has_tv_tuner.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool47.not.i.i = icmp eq i8 %195, 0
  br i1 %tobool47.not.i.i, label %if.end45.i.i.if.end52.i.i_crit_edge, label %if.then48.i.i

if.end45.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i.i

if.then48.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %vbi_cap_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %vbi_cap_caps.i.i, align 128
  %or50.i.i = or i32 %197, 65536
  store i32 %or50.i.i, ptr %vbi_cap_caps.i.i, align 128
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then48.i.i, %if.end45.i.i.if.end52.i.i_crit_edge, %if.end30.i.i.if.end52.i.i_crit_edge
  %has_vbi_out.i521.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 66
  %198 = ptrtoint ptr %has_vbi_out.i521.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %has_vbi_out.i521.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool53.not.i.i = icmp eq i8 %199, 0
  br i1 %tobool53.not.i.i, label %if.end52.i.i.if.end68.i.i_crit_edge, label %if.then54.i.i

if.end52.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.i

if.then54.i.i:                                    ; preds = %if.end52.i.i
  %has_raw_vbi_out.i522.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 67
  %200 = ptrtoint ptr %has_raw_vbi_out.i522.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %has_raw_vbi_out.i522.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool55.not.i.i = icmp eq i8 %201, 0
  %cond56.i.i = select i1 %tobool55.not.i.i, i32 0, i32 32
  %has_sliced_vbi_out.i523.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 68
  %202 = ptrtoint ptr %has_sliced_vbi_out.i523.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %has_sliced_vbi_out.i523.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool57.not.i.i = icmp eq i8 %203, 0
  %cond58.i.i = select i1 %tobool57.not.i.i, i32 0, i32 128
  %or59.i.i = or i32 %cond58.i.i, %cond56.i.i
  %vbi_out_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 43
  %or61.i.i = or i32 %or59.i.i, 83886080
  %204 = ptrtoint ptr %vbi_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or61.i.i, ptr %vbi_out_caps.i.i, align 4
  %205 = ptrtoint ptr %has_audio_outputs.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %has_audio_outputs.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool63.not.i.i = icmp eq i8 %206, 0
  br i1 %tobool63.not.i.i, label %if.then54.i.i.if.end68.i.i_crit_edge, label %if.then64.i.i

if.then54.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.i

if.then64.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or66.i.i = or i32 %or59.i.i, 84017152
  %207 = ptrtoint ptr %vbi_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %or66.i.i, ptr %vbi_out_caps.i.i, align 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then64.i.i, %if.then54.i.i.if.end68.i.i_crit_edge, %if.end52.i.i.if.end68.i.i_crit_edge
  %208 = ptrtoint ptr %has_sdr_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %has_sdr_cap.i.i, align 512, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool69.not.i.i = icmp eq i8 %209, 0
  br i1 %tobool69.not.i.i, label %if.end68.i.i.if.end73.i.i_crit_edge, label %if.then70.i.i

if.end68.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i.i

if.then70.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sdr_cap_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 44
  %210 = ptrtoint ptr %sdr_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 85000192, ptr %sdr_cap_caps.i.i, align 8
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.then70.i.i, %if.end68.i.i.if.end73.i.i_crit_edge
  %211 = ptrtoint ptr %has_radio_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %has_radio_rx.i.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool74.not.i.i = icmp eq i8 %212, 0
  br i1 %tobool74.not.i.i, label %if.end73.i.i.if.end76.i.i_crit_edge, label %if.then75.i.i

if.end73.i.i.if.end76.i.i_crit_edge:              ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i.i

if.then75.i.i:                                    ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %radio_rx_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 45
  %213 = ptrtoint ptr %radio_rx_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 17106176, ptr %radio_rx_caps.i.i, align 4
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.then75.i.i, %if.end73.i.i.if.end76.i.i_crit_edge
  %214 = ptrtoint ptr %has_radio_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %has_radio_tx.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool77.not.i.i = icmp eq i8 %215, 0
  br i1 %tobool77.not.i.i, label %if.end76.i.i.if.end79.i.i_crit_edge, label %if.then78.i.i

if.end76.i.i.if.end79.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i.i

if.then78.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %radio_tx_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 46
  %216 = ptrtoint ptr %radio_tx_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 17303552, ptr %radio_tx_caps.i.i, align 16
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then78.i.i, %if.end76.i.i.if.end79.i.i_crit_edge
  %217 = ptrtoint ptr %has_meta_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %has_meta_cap.i.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool80.not.i.i = icmp eq i8 %218, 0
  br i1 %tobool80.not.i.i, label %if.end79.i.i.if.end94.i.i_crit_edge, label %if.then81.i.i

if.end79.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.then81.i.i:                                    ; preds = %if.end79.i.i
  %meta_cap_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 47
  %219 = ptrtoint ptr %has_audio_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %has_audio_inputs.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool83.not.i.i = icmp eq i8 %220, 0
  %spec.store.select.i.i = select i1 %tobool83.not.i.i, i32 92274688, i32 92405760
  %221 = ptrtoint ptr %meta_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %spec.store.select.i.i, ptr %meta_cap_caps.i.i, align 4
  %222 = ptrtoint ptr %has_tv_tuner.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %has_tv_tuner.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool89.not.i.i = icmp eq i8 %223, 0
  br i1 %tobool89.not.i.i, label %if.then81.i.i.if.end94.i.i_crit_edge, label %if.then90.i.i

if.then81.i.i.if.end94.i.i_crit_edge:             ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.then90.i.i:                                    ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or92.i.i = or i32 %spec.store.select.i.i, 65536
  %224 = ptrtoint ptr %meta_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %or92.i.i, ptr %meta_cap_caps.i.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then90.i.i, %if.then81.i.i.if.end94.i.i_crit_edge, %if.end79.i.i.if.end94.i.i_crit_edge
  %has_meta_out.i528.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 74
  %225 = ptrtoint ptr %has_meta_out.i528.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %has_meta_out.i528.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool95.not.i.i = icmp eq i8 %226, 0
  br i1 %tobool95.not.i.i, label %if.end94.i.i.if.end103.i.i_crit_edge, label %if.then96.i.i

if.end94.i.i.if.end103.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i.i

if.then96.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %meta_out_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 48
  %227 = ptrtoint ptr %has_audio_outputs.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %has_audio_outputs.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool98.not.i.i = icmp eq i8 %228, 0
  %spec.store.select164.i.i = select i1 %tobool98.not.i.i, i32 218103808, i32 218234880
  %229 = ptrtoint ptr %meta_out_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %spec.store.select164.i.i, ptr %meta_out_caps.i.i, align 8
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %if.then96.i.i, %if.end94.i.i.if.end103.i.i_crit_edge
  %230 = ptrtoint ptr %has_touch_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %has_touch_cap.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool104.not.i.i = icmp eq i8 %231, 0
  br i1 %tobool104.not.i.i, label %if.end103.i.i.vivid_set_capabilities.exit.i_crit_edge, label %if.then105.i.i

if.end103.i.i.vivid_set_capabilities.exit.i_crit_edge: ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_set_capabilities.exit.i

if.then105.i.i:                                   ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %touch_cap_caps.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 49
  %232 = ptrtoint ptr %multiplanar.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %multiplanar.i.i, align 32, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool107.not.i.i = icmp eq i8 %233, 0
  %or110.i.i = select i1 %tobool107.not.i.i, i32 352321537, i32 352325632
  %234 = ptrtoint ptr %touch_cap_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or110.i.i, ptr %touch_cap_caps.i.i, align 4
  br label %vivid_set_capabilities.exit.i

vivid_set_capabilities.exit.i:                    ; preds = %if.then105.i.i, %if.end103.i.i.vivid_set_capabilities.exit.i_crit_edge
  %tpg.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 231
  tail call void @tpg_init(ptr noundef %tpg.i, i32 noundef 640, i32 noundef 360) #10
  %call33.i = tail call i32 @tpg_alloc(ptr noundef %tpg.i, i32 noundef 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %vivid_set_capabilities.exit.i.vivid_create_instance.exit.thread66_crit_edge

vivid_set_capabilities.exit.i.vivid_create_instance.exit.thread66_crit_edge: ; preds = %vivid_set_capabilities.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread66

if.end36.i:                                       ; preds = %vivid_set_capabilities.exit.i
  %call38.i = tail call noalias ptr @vzalloc(i32 noundef 16384) #14
  %scaled_line.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 216
  %235 = ptrtoint ptr %scaled_line.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call38.i, ptr %scaled_line.i, align 4
  %tobool40.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool40.not.i, label %if.end36.i.vivid_create_instance.exit.thread66_crit_edge, label %if.end42.i

if.end36.i.vivid_create_instance.exit.thread66_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread66

if.end42.i:                                       ; preds = %if.end36.i
  %call44.i = tail call noalias ptr @vzalloc(i32 noundef 16384) #14
  %blended_line.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 217
  %236 = ptrtoint ptr %blended_line.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call44.i, ptr %blended_line.i, align 16
  %tobool46.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool46.not.i, label %if.end42.i.vivid_create_instance.exit.thread66_crit_edge, label %if.end48.i

if.end42.i.vivid_create_instance.exit.thread66_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread66

if.end48.i:                                       ; preds = %if.end42.i
  %call50.i = tail call noalias ptr @vmalloc(i32 noundef 32768) #14
  %edid.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 179
  %237 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call50.i, ptr %edid.i, align 4
  %tobool52.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool52.not.i, label %if.end48.i.vivid_create_instance.exit.thread66_crit_edge, label %if.end54.i

if.end48.i.vivid_create_instance.exit.thread66_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread66

if.end54.i:                                       ; preds = %if.end48.i
  %query_dv_timings_size.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 169
  %238 = ptrtoint ptr %query_dv_timings_size.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %query_dv_timings_size.i, align 8
  %240 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %239, i32 1
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_loadN_noabort(i32 %241, i32 4)
  %242 = load i32, ptr %240, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not96.i = icmp eq i32 %242, 0
  br i1 %tobool.not96.i, label %if.end54.i.while.end.i_crit_edge, label %if.end54.i.while.body.i_crit_edge

if.end54.i.while.body.i_crit_edge:                ; preds = %if.end54.i
  br label %while.body.i

if.end54.i.while.end.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end54.i.while.body.i_crit_edge
  %243 = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %239, %if.end54.i.while.body.i_crit_edge ]
  %inc.i = add i32 %243, 1
  %244 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %inc.i, i32 1
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %244, align 1
  %tobool.not.i46 = icmp eq i32 %246, 0
  br i1 %tobool.not.i46, label %while.end.i.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i.loopexit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %query_dv_timings_size.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %inc.i, ptr %query_dv_timings_size.i, align 8
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end54.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %239, %if.end54.i.while.end.i_crit_edge ], [ %inc.i, %while.end.i.loopexit ]
  %248 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.lcssa.i, i32 4) #10
  %249 = extractvalue { i32, i1 } %248, 1
  br i1 %249, label %while.end.i.kmalloc_array.exit.i_crit_edge, label %if.end7.i.i, !prof !455

while.end.i.kmalloc_array.exit.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc_array.exit.i

if.end7.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %250 = extractvalue { i32, i1 } %248, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %250, i32 noundef 3264) #14
  br label %kmalloc_array.exit.i

kmalloc_array.exit.i:                             ; preds = %if.end7.i.i, %while.end.i.kmalloc_array.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %while.end.i.kmalloc_array.exit.i_crit_edge ]
  %query_dv_timings_qmenu.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 167
  %251 = ptrtoint ptr %query_dv_timings_qmenu.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %retval.0.i.i, ptr %query_dv_timings_qmenu.i, align 16
  %252 = ptrtoint ptr %query_dv_timings_size.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %query_dv_timings_size.i, align 8
  %254 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %253, i32 32) #10
  %255 = extractvalue { i32, i1 } %254, 1
  br i1 %255, label %kmalloc_array.exit90.thread.i, label %if.end7.i88.i, !prof !455

kmalloc_array.exit90.thread.i:                    ; preds = %kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %query_dv_timings_qmenu_strings92.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 168
  %256 = ptrtoint ptr %query_dv_timings_qmenu_strings92.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %query_dv_timings_qmenu_strings92.i, align 4
  br label %vivid_create_instance.exit.thread66

if.end7.i88.i:                                    ; preds = %kmalloc_array.exit.i
  %257 = extractvalue { i32, i1 } %254, 0
  %call8.i87.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %257, i32 noundef 3264) #14
  %query_dv_timings_qmenu_strings.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 168
  %258 = ptrtoint ptr %query_dv_timings_qmenu_strings.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call8.i87.i, ptr %query_dv_timings_qmenu_strings.i, align 4
  %259 = ptrtoint ptr %query_dv_timings_qmenu.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %query_dv_timings_qmenu.i, align 16
  %tobool6.not.i = icmp eq ptr %260, null
  %tobool8.not.i51 = icmp eq ptr %call8.i87.i, null
  %or.cond.i52 = select i1 %tobool6.not.i, i1 true, i1 %tobool8.not.i51
  br i1 %or.cond.i52, label %if.end7.i88.i.vivid_create_instance.exit.thread66_crit_edge, label %for.cond.preheader.i

if.end7.i88.i.vivid_create_instance.exit.thread66_crit_edge: ; preds = %if.end7.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit.thread66

for.cond.preheader.i:                             ; preds = %if.end7.i88.i
  %261 = ptrtoint ptr %query_dv_timings_size.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %query_dv_timings_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp98.not.i = icmp eq i32 %262, 0
  br i1 %cmp98.not.i, label %for.cond.preheader.i.if.end57.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end57.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.099.i = phi i32 [ %inc28.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %263 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %i.099.i, i32 1
  %264 = ptrtoint ptr %query_dv_timings_qmenu_strings.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %query_dv_timings_qmenu_strings.i, align 4
  %mul.i53 = shl i32 %i.099.i, 5
  %add.ptr.i = getelementptr i8, ptr %265, i32 %mul.i53
  %266 = ptrtoint ptr %query_dv_timings_qmenu.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %query_dv_timings_qmenu.i, align 16
  %arrayidx13.i = getelementptr ptr, ptr %267, i32 %i.099.i
  %268 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %add.ptr.i, ptr %arrayidx13.i, align 4
  %269 = ptrtoint ptr %263 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %263, align 1
  %hfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 5
  %271 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %hfrontporch.i, align 1
  %hsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 6
  %273 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %273, i32 4)
  %274 = load i32, ptr %hsync.i, align 1
  %hbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 7
  %275 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %276 = load i32, ptr %hbackporch.i, align 1
  %add.i = add i32 %272, %270
  %add15.i = add i32 %add.i, %274
  %add16.i = add i32 %add15.i, %276
  %height.i54 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 1
  %277 = ptrtoint ptr %height.i54 to i32
  call void @__asan_loadN_noabort(i32 %277, i32 4)
  %278 = load i32, ptr %height.i54, align 1
  %vfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 8
  %279 = ptrtoint ptr %vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %279, i32 4)
  %280 = load i32, ptr %vfrontporch.i, align 1
  %vsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 9
  %281 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %282 = load i32, ptr %vsync.i, align 1
  %vbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 10
  %283 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %vbackporch.i, align 1
  %il_vfrontporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 11
  %285 = ptrtoint ptr %il_vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %il_vfrontporch.i, align 1
  %il_vsync.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 12
  %287 = ptrtoint ptr %il_vsync.i to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %il_vsync.i, align 1
  %il_vbackporch.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 13
  %289 = ptrtoint ptr %il_vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %290 = load i32, ptr %il_vbackporch.i, align 1
  %add17.i = add i32 %280, %278
  %add18.i = add i32 %add17.i, %282
  %add19.i = add i32 %add18.i, %284
  %add20.i = add i32 %add19.i, %286
  %add21.i = add i32 %add20.i, %288
  %add22.i = add i32 %add21.i, %290
  %interlaced.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 2
  %291 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool25.not.i = icmp eq i32 %292, 0
  %cond.i = select i1 %tobool25.not.i, ptr @.str.44, ptr @.str.43
  %pixelclock.i = getelementptr inbounds %struct.v4l2_bt_timings, ptr %263, i32 0, i32 4
  %293 = ptrtoint ptr %pixelclock.i to i32
  call void @__asan_loadN_noabort(i32 %293, i32 8)
  %294 = load i64, ptr %pixelclock.i, align 1
  %conv.i = trunc i64 %294 to i32
  %mul26.i = mul i32 %add22.i, %add16.i
  %div.i = udiv i32 %conv.i, %mul26.i
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %270, i32 noundef %278, ptr noundef nonnull %cond.i, i32 noundef %div.i) #10
  %inc28.i = add nuw i32 %i.099.i, 1
  %295 = ptrtoint ptr %query_dv_timings_size.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %query_dv_timings_size.i, align 8
  %cmp.i55 = icmp ult i32 %inc28.i, %296
  br i1 %cmp.i55, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end57.i_crit_edge

for.body.i.if.end57.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end57.i:                                       ; preds = %for.body.i.if.end57.i_crit_edge, %for.cond.preheader.i.if.end57.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool59.i = icmp ne i8 %125, 0
  %297 = ptrtoint ptr %has_audio_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %has_audio_inputs.i.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool.not.i40 = icmp eq i8 %298, 0
  br i1 %tobool.not.i40, label %if.then.i, label %if.end57.i.if.end.i41_crit_edge

if.end57.i.if.end.i41_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i41

if.then.i:                                        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i.i) #10
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i.i) #10
  tail call void @_set_bit(i32 noundef 65, ptr noundef %valid_ioctls.i.i) #10
  %valid_ioctls.i166.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i166.i) #10
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i166.i) #10
  tail call void @_set_bit(i32 noundef 65, ptr noundef %valid_ioctls.i166.i) #10
  %valid_ioctls.i169.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i169.i) #10
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i169.i) #10
  tail call void @_set_bit(i32 noundef 65, ptr noundef %valid_ioctls.i169.i) #10
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i, %if.end57.i.if.end.i41_crit_edge
  %299 = ptrtoint ptr %has_audio_outputs.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %has_audio_outputs.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool8.not.i = icmp eq i8 %300, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end.i41.if.end16.i_crit_edge

if.end.i41.if.end16.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i172.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %valid_ioctls.i172.i) #10
  tail call void @_set_bit(i32 noundef 49, ptr noundef %valid_ioctls.i172.i) #10
  tail call void @_set_bit(i32 noundef 66, ptr noundef %valid_ioctls.i172.i) #10
  %valid_ioctls.i175.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 24, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %valid_ioctls.i175.i) #10
  tail call void @_set_bit(i32 noundef 49, ptr noundef %valid_ioctls.i175.i) #10
  tail call void @_set_bit(i32 noundef 66, ptr noundef %valid_ioctls.i175.i) #10
  %valid_ioctls.i178.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 34, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %valid_ioctls.i178.i) #10
  tail call void @_set_bit(i32 noundef 49, ptr noundef %valid_ioctls.i178.i) #10
  tail call void @_set_bit(i32 noundef 66, ptr noundef %valid_ioctls.i178.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %if.end.i41.if.end16.i_crit_edge
  %301 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool17.not.i = icmp eq i32 %302, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i43, label %if.end16.i.if.end25.i_crit_edge

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

land.lhs.true.i43:                                ; preds = %if.end16.i
  %303 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool19.not.i = icmp eq i32 %304, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true.i43.if.end25.i_crit_edge

land.lhs.true.i43.if.end25.i_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then20.i:                                      ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i181.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 24, ptr noundef %valid_ioctls.i181.i) #10
  tail call void @_set_bit(i32 noundef 23, ptr noundef %valid_ioctls.i181.i) #10
  tail call void @_set_bit(i32 noundef 25, ptr noundef %valid_ioctls.i181.i) #10
  tail call void @_set_bit(i32 noundef 63, ptr noundef %valid_ioctls.i181.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %land.lhs.true.i43.if.end25.i_crit_edge, %if.end16.i.if.end25.i_crit_edge
  %305 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool27.not.i = icmp eq i32 %306, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end32.i_crit_edge

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i185.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 24, ptr noundef %valid_ioctls.i185.i) #10
  tail call void @_set_bit(i32 noundef 23, ptr noundef %valid_ioctls.i185.i) #10
  tail call void @_set_bit(i32 noundef 25, ptr noundef %valid_ioctls.i185.i) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end32.i_crit_edge
  %brmerge.i44 = or i1 %tobool59.i, %133
  br i1 %brmerge.i44, label %if.end32.i.if.end43.i_crit_edge, label %if.then36.i

if.end32.i.if.end43.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i188.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i188.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i188.i) #10
  %valid_ioctls.i190.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i190.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i190.i) #10
  %valid_ioctls.i192.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i192.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i192.i) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end43.i_crit_edge
  br i1 %133, label %if.end43.i.if.end52.i_crit_edge, label %if.then45.i

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i194.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i194.i) #10
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i194.i) #10
  %valid_ioctls.i196.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i196.i) #10
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i196.i) #10
  %valid_ioctls.i198.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i198.i) #10
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i198.i) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end52.i_crit_edge
  %307 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %cmp.i45 = icmp eq i32 %308, 0
  br i1 %cmp.i45, label %if.then54.i, label %if.end52.i.if.end62.i_crit_edge

if.end52.i.if.end62.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i200.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 41, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 40, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 100, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 88, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 87, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 98, ptr noundef %valid_ioctls.i200.i) #10
  tail call void @_set_bit(i32 noundef 99, ptr noundef %valid_ioctls.i200.i) #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end62.i_crit_edge
  %309 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp64.i = icmp eq i32 %310, 0
  br i1 %cmp64.i, label %if.then65.i, label %if.end62.i.if.end71.i_crit_edge

if.end62.i.if.end71.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i207.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 40, ptr noundef %valid_ioctls.i207.i) #10
  tail call void @_set_bit(i32 noundef 100, ptr noundef %valid_ioctls.i207.i) #10
  tail call void @_set_bit(i32 noundef 88, ptr noundef %valid_ioctls.i207.i) #10
  tail call void @_set_bit(i32 noundef 87, ptr noundef %valid_ioctls.i207.i) #10
  tail call void @_set_bit(i32 noundef 98, ptr noundef %valid_ioctls.i207.i) #10
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then65.i, %if.end62.i.if.end71.i_crit_edge
  %has_fb.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 72
  %311 = ptrtoint ptr %has_fb.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %has_fb.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool72.not.i = icmp eq i8 %312, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.end71.i.vivid_disable_unused_ioctls.exit_crit_edge

if.end71.i.vivid_disable_unused_ioctls.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_disable_unused_ioctls.exit

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %valid_ioctls.i212.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 10, ptr noundef %valid_ioctls.i212.i) #10
  tail call void @_set_bit(i32 noundef 11, ptr noundef %valid_ioctls.i212.i) #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %valid_ioctls.i212.i) #10
  br label %vivid_disable_unused_ioctls.exit

vivid_disable_unused_ioctls.exit:                 ; preds = %if.then73.i, %if.end71.i.vivid_disable_unused_ioctls.exit_crit_edge
  %valid_ioctls.i215.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %valid_ioctls.i215.i) #10
  %valid_ioctls.i216.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %valid_ioctls.i216.i) #10
  %valid_ioctls.i217.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 30, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %valid_ioctls.i217.i) #10
  %valid_ioctls.i218.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %valid_ioctls.i218.i) #10
  %valid_ioctls.i219.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i219.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i219.i) #10
  tail call void @_set_bit(i32 noundef 74, ptr noundef %valid_ioctls.i219.i) #10
  tail call void @_set_bit(i32 noundef 75, ptr noundef %valid_ioctls.i219.i) #10
  %valid_ioctls.i223.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 24, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i223.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i223.i) #10
  %valid_ioctls.i225.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 34, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i225.i) #10
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i225.i) #10
  %valid_ioctls.i227.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 36, i32 25
  tail call void @_set_bit(i32 noundef 22, ptr noundef %valid_ioctls.i227.i) #10
  tail call void @_set_bit(i32 noundef 74, ptr noundef %valid_ioctls.i227.i) #10
  tail call void @_set_bit(i32 noundef 75, ptr noundef %valid_ioctls.i227.i) #10
  %fmt_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 234
  %313 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @vivid_formats, ptr %fmt_cap.i, align 4
  %fmt_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 278
  %314 = ptrtoint ptr %fmt_out.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr @vivid_formats, ptr %fmt_out.i, align 16
  %315 = ptrtoint ptr %multiplanar.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %multiplanar.i.i, align 32, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool62.not.i = icmp eq i8 %316, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %vivid_disable_unused_ioctls.exit.if.end64.i_crit_edge

vivid_disable_unused_ioctls.exit.if.end64.i_crit_edge: ; preds = %vivid_disable_unused_ioctls.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then63.i:                                      ; preds = %vivid_disable_unused_ioctls.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 0, i32 7) to i32))
  store i32 0, ptr getelementptr inbounds ([0 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 0, i32 7), align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %vivid_disable_unused_ioctls.exit.if.end64.i_crit_edge
  %webcam_size_idx.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 182
  %317 = ptrtoint ptr %webcam_size_idx.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 1, ptr %webcam_size_idx.i, align 32
  %webcam_ival_idx.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 183
  %318 = ptrtoint ptr %webcam_ival_idx.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 3, ptr %webcam_ival_idx.i, align 4
  %319 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %fmt_cap.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %320, align 4
  %call67.i = tail call zeroext i1 @tpg_s_fourcc(ptr noundef %tpg.i, i32 noundef %322) #10
  %std_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 200
  %323 = ptrtoint ptr %std_out.i to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 255, ptr %std_out.i, align 8
  %input_type.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 53
  %324 = ptrtoint ptr %input_type.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %input_type.i, align 4
  %.off.i = add i8 %325, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %output_type.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 57
  %326 = ptrtoint ptr %output_type.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %output_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %327)
  %cmp80.i = icmp eq i8 %327, 2
  %arrayidx86.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 0
  %328 = call ptr @memcpy(ptr %arrayidx86.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 0
  %329 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 255, ptr %arrayidx87.i, align 256
  %arrayidx86.1.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 1
  %330 = call ptr @memcpy(ptr %arrayidx86.1.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.1.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 1
  %331 = ptrtoint ptr %arrayidx87.1.i to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 255, ptr %arrayidx87.1.i, align 8
  %arrayidx86.2.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 2
  %332 = call ptr @memcpy(ptr %arrayidx86.2.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.2.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 2
  %333 = ptrtoint ptr %arrayidx87.2.i to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 255, ptr %arrayidx87.2.i, align 16
  %arrayidx86.3.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 3
  %334 = call ptr @memcpy(ptr %arrayidx86.3.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.3.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 3
  %335 = ptrtoint ptr %arrayidx87.3.i to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 255, ptr %arrayidx87.3.i, align 8
  %arrayidx86.4.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 4
  %336 = call ptr @memcpy(ptr %arrayidx86.4.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.4.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 4
  %337 = ptrtoint ptr %arrayidx87.4.i to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 255, ptr %arrayidx87.4.i, align 32
  %arrayidx86.5.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 5
  %338 = call ptr @memcpy(ptr %arrayidx86.5.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.5.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 5
  %339 = ptrtoint ptr %arrayidx87.5.i to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 255, ptr %arrayidx87.5.i, align 8
  %arrayidx86.6.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 6
  %340 = call ptr @memcpy(ptr %arrayidx86.6.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.6.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 6
  %341 = ptrtoint ptr %arrayidx87.6.i to i32
  call void @__asan_store8_noabort(i32 %341)
  store i64 255, ptr %arrayidx87.6.i, align 16
  %arrayidx86.7.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 7
  %342 = call ptr @memcpy(ptr %arrayidx86.7.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.7.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 7
  %343 = ptrtoint ptr %arrayidx87.7.i to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 255, ptr %arrayidx87.7.i, align 8
  %arrayidx86.8.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 8
  %344 = call ptr @memcpy(ptr %arrayidx86.8.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.8.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 8
  %345 = ptrtoint ptr %arrayidx87.8.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 255, ptr %arrayidx87.8.i, align 64
  %arrayidx86.9.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 9
  %346 = call ptr @memcpy(ptr %arrayidx86.9.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.9.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 9
  %347 = ptrtoint ptr %arrayidx87.9.i to i32
  call void @__asan_store8_noabort(i32 %347)
  store i64 255, ptr %arrayidx87.9.i, align 8
  %arrayidx86.10.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 10
  %348 = call ptr @memcpy(ptr %arrayidx86.10.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.10.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 10
  %349 = ptrtoint ptr %arrayidx87.10.i to i32
  call void @__asan_store8_noabort(i32 %349)
  store i64 255, ptr %arrayidx87.10.i, align 16
  %arrayidx86.11.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 11
  %350 = call ptr @memcpy(ptr %arrayidx86.11.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.11.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 11
  %351 = ptrtoint ptr %arrayidx87.11.i to i32
  call void @__asan_store8_noabort(i32 %351)
  store i64 255, ptr %arrayidx87.11.i, align 8
  %arrayidx86.12.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 12
  %352 = call ptr @memcpy(ptr %arrayidx86.12.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.12.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 12
  %353 = ptrtoint ptr %arrayidx87.12.i to i32
  call void @__asan_store8_noabort(i32 %353)
  store i64 255, ptr %arrayidx87.12.i, align 32
  %arrayidx86.13.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 13
  %354 = call ptr @memcpy(ptr %arrayidx86.13.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.13.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 13
  %355 = ptrtoint ptr %arrayidx87.13.i to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 255, ptr %arrayidx87.13.i, align 8
  %arrayidx86.14.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 14
  %356 = call ptr @memcpy(ptr %arrayidx86.14.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.14.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 14
  %357 = ptrtoint ptr %arrayidx87.14.i to i32
  call void @__asan_store8_noabort(i32 %357)
  store i64 255, ptr %arrayidx87.14.i, align 16
  %arrayidx86.15.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 175, i32 15
  %358 = call ptr @memcpy(ptr %arrayidx86.15.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %arrayidx87.15.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 174, i32 15
  %359 = ptrtoint ptr %arrayidx87.15.i to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 255, ptr %arrayidx87.15.i, align 8
  %spec.select510.i = select i1 %switch.i, i64 16777215, i64 0
  %spec.select.i = select i1 %cmp80.i, i64 16777215, i64 0
  %dv_timings_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 201
  %360 = call ptr @memcpy(ptr %dv_timings_out.i, ptr @vivid_create_instance.def_dv_timings, i32 132)
  %tv_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 184
  %361 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 2804, ptr %tv_freq.i, align 8
  %tv_audmode.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 185
  %362 = ptrtoint ptr %tv_audmode.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 1, ptr %tv_audmode.i, align 4
  %tv_field_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 186
  %363 = ptrtoint ptr %tv_field_cap.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 4, ptr %tv_field_cap.i, align 16
  %tv_field_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 209
  %364 = ptrtoint ptr %tv_field_out.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 4, ptr %tv_field_out.i, align 8
  %radio_rx_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 335
  %365 = ptrtoint ptr %radio_rx_freq.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 1520000, ptr %radio_rx_freq.i, align 32
  %radio_rx_audmode.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 336
  %366 = ptrtoint ptr %radio_rx_audmode.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 1, ptr %radio_rx_audmode.i, align 4
  %367 = ptrtoint ptr %has_radio_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %has_radio_tx.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool88.not.i = icmp eq i8 %368, 0
  br i1 %tobool88.not.i, label %if.end64.i.if.end90.i_crit_edge, label %if.then89.i

if.end64.i.if.end90.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

if.then89.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %radio_tx_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 345
  %369 = ptrtoint ptr %radio_tx_freq.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 1528000, ptr %radio_tx_freq.i, align 4096
  %radio_rds_loop.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 350
  %370 = ptrtoint ptr %radio_rds_loop.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %radio_rds_loop.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %if.end64.i.if.end90.i_crit_edge
  %radio_tx_subchans.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 346
  %371 = ptrtoint ptr %radio_tx_subchans.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 18, ptr %radio_tx_subchans.i, align 4
  %sdr_adc_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 317
  %372 = ptrtoint ptr %sdr_adc_freq.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 300000, ptr %sdr_adc_freq.i, align 16
  %sdr_fm_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 318
  %373 = ptrtoint ptr %sdr_fm_freq.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 50000000, ptr %sdr_fm_freq.i, align 4
  %sdr_pixelformat.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 315
  %374 = ptrtoint ptr %sdr_pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 942691651, ptr %sdr_pixelformat.i, align 8
  %sdr_buffersize.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 316
  %375 = ptrtoint ptr %sdr_buffersize.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 32768, ptr %sdr_buffersize.i, align 4
  %edid_blocks.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 180
  %376 = ptrtoint ptr %edid_blocks.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 2, ptr %edid_blocks.i, align 8
  %edid_max_blocks.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 181
  %377 = ptrtoint ptr %edid_max_blocks.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 2, ptr %edid_max_blocks.i, align 4
  %378 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %edid.i, align 4
  %380 = call ptr @memcpy(ptr %379, ptr @vivid_hdmi_edid, i32 256)
  %call92.i = tail call i64 @ktime_get() #10
  %radio_rds_init_time.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 351
  %381 = ptrtoint ptr %radio_rds_init_time.i to i32
  call void @__asan_store8_noabort(i32 %381)
  store i64 %call92.i, ptr %radio_rds_init_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ccs_cap.3.i)
  %cmp93.i = icmp eq i32 %ccs_cap.3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ccs_out.1.i)
  %cmp95.i = icmp eq i32 %ccs_out.1.i, -1
  %382 = load i8, ptr @no_error_inj, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool97.i = icmp ne i8 %382, 0
  %383 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool99.not.i = icmp eq i32 %384, 0
  br i1 %tobool99.not.i, label %lor.lhs.false100.i, label %if.end90.i.lor.end.i_crit_edge

if.end90.i.lor.end.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

lor.lhs.false100.i:                               ; preds = %if.end90.i
  %385 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool102.not.i = icmp eq i32 %386, 0
  br i1 %tobool102.not.i, label %lor.rhs.i, label %lor.lhs.false100.i.lor.end.i_crit_edge

lor.lhs.false100.i.lor.end.i_crit_edge:           ; preds = %lor.lhs.false100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false100.i
  call void @__sanitizer_cov_trace_pc() #12
  %387 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool104.i = icmp ne i32 %388, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false100.i.lor.end.i_crit_edge, %if.end90.i.lor.end.i_crit_edge
  %389 = phi i1 [ true, %lor.lhs.false100.i.lor.end.i_crit_edge ], [ true, %if.end90.i.lor.end.i_crit_edge ], [ %tobool104.i, %lor.rhs.i ]
  %390 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool106.not.i = icmp eq i32 %391, 0
  br i1 %tobool106.not.i, label %lor.rhs107.i, label %lor.end.i.lor.end110.i_crit_edge

lor.end.i.lor.end110.i_crit_edge:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end110.i

lor.rhs107.i:                                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %392 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool109.i = icmp ne i32 %393, 0
  br label %lor.end110.i

lor.end110.i:                                     ; preds = %lor.rhs107.i, %lor.end.i.lor.end110.i_crit_edge
  %394 = phi i1 [ true, %lor.end.i.lor.end110.i_crit_edge ], [ %tobool109.i, %lor.rhs107.i ]
  %call111.i = tail call i32 @vivid_create_controls(ptr noundef nonnull %call1.i.i.i.i, i1 noundef zeroext %cmp93.i, i1 noundef zeroext %cmp95.i, i1 noundef zeroext %tobool97.i, i1 noundef zeroext %389, i1 noundef zeroext %394) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %lor.end110.i.unreg_dev.i_crit_edge

lor.end110.i.unreg_dev.i_crit_edge:               ; preds = %lor.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

if.end114.i:                                      ; preds = %lor.end110.i
  %395 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %num_outputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %tobool115.not.i = icmp eq i32 %396, 0
  br i1 %tobool115.not.i, label %if.end114.i.if.end122.i_crit_edge, label %land.lhs.true.i

if.end114.i.if.end122.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

land.lhs.true.i:                                  ; preds = %if.end114.i
  %397 = ptrtoint ptr %output_type.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %output_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %398)
  %cmp119.not.i = icmp eq i8 %398, 3
  br i1 %cmp119.not.i, label %land.lhs.true.i.if.end122.i_crit_edge, label %if.then121.i

land.lhs.true.i.if.end122.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.i

if.then121.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_display_present.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 101
  %399 = ptrtoint ptr %ctrl_display_present.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ctrl_display_present.i, align 16
  tail call void @v4l2_ctrl_activate(ptr noundef %400, i1 noundef zeroext false) #10
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then121.i, %land.lhs.true.i.if.end122.i_crit_edge, %if.end114.i.if.end122.i_crit_edge
  %401 = ptrtoint ptr %num_inputs.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %num_inputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %tobool123.not.i = icmp eq i32 %402, 0
  br i1 %tobool123.not.i, label %if.end122.i.if.end141.i_crit_edge, label %land.lhs.true124.i

if.end122.i.if.end141.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.i

land.lhs.true124.i:                               ; preds = %if.end122.i
  %403 = ptrtoint ptr %input_type.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %input_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %404)
  %cmp128.not.i = icmp eq i8 %404, 3
  br i1 %cmp128.not.i, label %if.then139.i, label %if.then130.i

if.then130.i:                                     ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #12
  %405 = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 100
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %405, align 8
  tail call void @v4l2_ctrl_activate(ptr noundef %407, i1 noundef zeroext false) #10
  %ctrl_dv_timings.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 100, i32 1
  br label %if.end141.sink.split.i

if.then139.i:                                     ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #12
  %408 = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 99
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %408, align 32
  tail call void @v4l2_ctrl_activate(ptr noundef %410, i1 noundef zeroext false) #10
  %ctrl_standard.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 99, i32 1
  br label %if.end141.sink.split.i

if.end141.sink.split.i:                           ; preds = %if.then139.i, %if.then130.i
  %ctrl_standard.sink.i = phi ptr [ %ctrl_standard.i, %if.then139.i ], [ %ctrl_dv_timings.i, %if.then130.i ]
  %411 = ptrtoint ptr %ctrl_standard.sink.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %ctrl_standard.sink.i, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %412, i1 noundef zeroext false) #10
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.end141.sink.split.i, %if.end122.i.if.end141.i_crit_edge
  tail call void @vivid_update_format_cap(ptr noundef nonnull %call1.i.i.i.i, i1 noundef zeroext false) #10
  tail call void @vivid_update_format_out(ptr noundef nonnull %call1.i.i.i.i) #10
  %width.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 237, i32 2
  %413 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %width.i, align 4
  %fmt.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 189, i32 3
  %415 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %414, ptr %fmt.i, align 8
  %height.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 237, i32 3
  %416 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %height.i, align 8
  %height146.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 189, i32 3, i32 1
  %418 = ptrtoint ptr %height146.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %417, ptr %height146.i, align 4
  %419 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %fmt_cap.i, align 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %420, align 4
  %pixelformat.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 189, i32 3, i32 2
  %423 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %422, ptr %pixelformat.i, align 16
  %twopixelsize.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 231, i32 42
  %424 = ptrtoint ptr %twopixelsize.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %twopixelsize.i.i, align 8
  %mul.i = mul i32 %425, %414
  %div509.i = lshr i32 %mul.i, 1
  %bytesperline.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 189, i32 3, i32 4
  %426 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %div509.i, ptr %bytesperline.i, align 8
  %mul162.i = mul i32 %div509.i, %417
  %sizeimage.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 189, i32 3, i32 5
  %427 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %mul162.i, ptr %sizeimage.i, align 4
  %timeperframe_tch_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 275
  %428 = ptrtoint ptr %timeperframe_tch_cap.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 1, ptr %timeperframe_tch_cap.i, align 4
  %denominator.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 275, i32 1
  %429 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 10, ptr %denominator.i, align 8
  %call166.i = tail call i32 @vivid_set_touch(ptr noundef nonnull %call1.i.i.i.i, i32 noundef 0) #10
  %slock.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @vivid_create_instance.__key, i16 noundef signext 3) #10
  %mutex.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @vivid_create_instance.__key.11) #10
  %vid_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 243
  %430 = ptrtoint ptr %vid_cap_active.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store volatile ptr %vid_cap_active.i, ptr %vid_cap_active.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 243, i32 1
  %431 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %vid_cap_active.i, ptr %prev.i.i, align 64
  %vid_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 287
  %432 = ptrtoint ptr %vid_out_active.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store volatile ptr %vid_out_active.i, ptr %vid_out_active.i, align 16
  %prev.i530.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 287, i32 1
  %433 = ptrtoint ptr %prev.i530.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %vid_out_active.i, ptr %prev.i530.i, align 4
  %vbi_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 245
  %434 = ptrtoint ptr %vbi_cap_active.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store volatile ptr %vbi_cap_active.i, ptr %vbi_cap_active.i, align 4
  %prev.i531.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 245, i32 1
  %435 = ptrtoint ptr %prev.i531.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %vbi_cap_active.i, ptr %prev.i531.i, align 8
  %vbi_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 289
  %436 = ptrtoint ptr %vbi_out_active.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store volatile ptr %vbi_out_active.i, ptr %vbi_out_active.i, align 8
  %prev.i532.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 289, i32 1
  %437 = ptrtoint ptr %prev.i532.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %vbi_out_active.i, ptr %prev.i532.i, align 4
  %sdr_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 314
  %438 = ptrtoint ptr %sdr_cap_active.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store volatile ptr %sdr_cap_active.i, ptr %sdr_cap_active.i, align 32
  %prev.i533.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 314, i32 1
  %439 = ptrtoint ptr %prev.i533.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %sdr_cap_active.i, ptr %prev.i533.i, align 4
  %meta_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 247
  %440 = ptrtoint ptr %meta_cap_active.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store volatile ptr %meta_cap_active.i, ptr %meta_cap_active.i, align 4
  %prev.i534.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 247, i32 1
  %441 = ptrtoint ptr %prev.i534.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %meta_cap_active.i, ptr %prev.i534.i, align 16
  %meta_out_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 291
  %442 = ptrtoint ptr %meta_out_active.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store volatile ptr %meta_out_active.i, ptr %meta_out_active.i, align 512
  %prev.i535.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 291, i32 1
  %443 = ptrtoint ptr %prev.i535.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %meta_out_active.i, ptr %prev.i535.i, align 4
  %touch_cap_active.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 249
  %444 = ptrtoint ptr %touch_cap_active.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store volatile ptr %touch_cap_active.i, ptr %touch_cap_active.i, align 4
  %prev.i536.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 249, i32 1
  %445 = ptrtoint ptr %prev.i536.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %touch_cap_active.i, ptr %prev.i536.i, align 8
  %cec_xfers_slock.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 358
  tail call void @__raw_spin_lock_init(ptr noundef %cec_xfers_slock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @vivid_create_instance.__key.13, i16 noundef signext 3) #10
  %arrayidx175.i = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %i.0118
  %446 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx175.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %447)
  %cmp176.i = icmp eq i32 %447, 1
  br i1 %cmp176.i, label %if.then178.i, label %if.end141.i.if.end181.i_crit_edge

if.end141.i.if.end181.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181.i

if.then178.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dma_coerce_mask_and_coherent(ptr noundef %dev10.i) #10
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then178.i, %if.end141.i.if.end181.i_crit_edge
  %call182.i = tail call fastcc i32 @vivid_create_queues(ptr noundef nonnull %call1.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %tobool183.not.i = icmp eq i32 %call182.i, 0
  br i1 %tobool183.not.i, label %if.end185.i, label %if.end181.i.unreg_dev.i_crit_edge

if.end181.i.unreg_dev.i_crit_edge:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

if.end185.i:                                      ; preds = %if.end181.i
  %448 = ptrtoint ptr %has_vid_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %has_vid_cap.i.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool186.not.i = icmp eq i8 %449, 0
  %brmerge.i = select i1 %tobool186.not.i, i1 true, i1 %tobool106.not.i
  br i1 %brmerge.i, label %if.end185.i.if.end198.i_crit_edge, label %if.then191.i

if.end185.i.if.end198.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198.i

if.then191.i:                                     ; preds = %if.end185.i
  %call192.i = tail call ptr @vivid_cec_alloc_adap(ptr noundef nonnull %call1.i.i.i.i, i32 noundef 0, i1 noundef zeroext false) #10
  %cmp.i.i.i = icmp ugt ptr %call192.i, inttoptr (i32 -4096 to ptr)
  %450 = ptrtoint ptr %call192.i to i32
  %cmp194572.i = icmp slt ptr %call192.i, null
  %cmp194.i = and i1 %cmp.i.i.i, %cmp194572.i
  br i1 %cmp194.i, label %if.then191.i.unreg_dev.i_crit_edge, label %cleanup.thread.i

if.then191.i.unreg_dev.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

cleanup.thread.i:                                 ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  %cec_rx_adap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 352
  %451 = ptrtoint ptr %cec_rx_adap.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call192.i, ptr %cec_rx_adap.i, align 32
  br label %if.end198.i

if.end198.i:                                      ; preds = %cleanup.thread.i, %if.end185.i.if.end198.i_crit_edge
  %452 = ptrtoint ptr %has_vid_out.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %has_vid_out.i.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool199.not.i = icmp eq i8 %453, 0
  br i1 %tobool199.not.i, label %if.end198.i.if.end240.i_crit_edge, label %for.cond201.preheader.i

if.end198.i.if.end240.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240.i

for.cond201.preheader.i:                          ; preds = %if.end198.i
  %454 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %num_outputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %cmp203575.not.i = icmp eq i32 %455, 0
  br i1 %cmp203575.not.i, label %for.cond201.preheader.i.if.end240.i_crit_edge, label %for.cond201.preheader.i.for.body205.i_crit_edge

for.cond201.preheader.i.for.body205.i_crit_edge:  ; preds = %for.cond201.preheader.i
  br label %for.body205.i

for.cond201.preheader.i.if.end240.i_crit_edge:    ; preds = %for.cond201.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240.i

for.body205.i:                                    ; preds = %for.inc237.i.for.body205.i_crit_edge, %for.cond201.preheader.i.for.body205.i_crit_edge
  %i.1577.i = phi i32 [ %inc238.i, %for.inc237.i.for.body205.i_crit_edge ], [ 0, %for.cond201.preheader.i.for.body205.i_crit_edge ]
  %cec_tx_bus_cnt.0576.i = phi i32 [ %cec_tx_bus_cnt.1.ph.i, %for.inc237.i.for.body205.i_crit_edge ], [ 0, %for.cond201.preheader.i.for.body205.i_crit_edge ]
  %arrayidx208.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 57, i32 %i.1577.i
  %456 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx208.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %457)
  %cmp210.not.i = icmp eq i8 %457, 3
  br i1 %cmp210.not.i, label %if.end213.i, label %for.body205.i.for.inc237.i_crit_edge

for.body205.i.for.inc237.i_crit_edge:             ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc237.i

if.end213.i:                                      ; preds = %for.body205.i
  %conv214.i = trunc i32 %cec_tx_bus_cnt.0576.i to i8
  %arrayidx215.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 354, i32 %i.1577.i
  %458 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %conv214.i, ptr %arrayidx215.i, align 1
  %call216.i = tail call ptr @vivid_cec_alloc_adap(ptr noundef nonnull %call1.i.i.i.i, i32 noundef %cec_tx_bus_cnt.0576.i, i1 noundef zeroext true) #10
  %cmp.i.i537.i = icmp ugt ptr %call216.i, inttoptr (i32 -4096 to ptr)
  %459 = ptrtoint ptr %call216.i to i32
  %spec.select.i538.i = select i1 %cmp.i.i537.i, i32 %459, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i538.i)
  %cmp218.i = icmp slt i32 %spec.select.i538.i, 0
  br i1 %cmp218.i, label %for.cond221.preheader.i, label %if.end230.i

for.cond221.preheader.i:                          ; preds = %if.end213.i
  %460 = ptrtoint ptr %call216.i to i32
  %461 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %num_outputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %cmp223578.not.i = icmp eq i32 %462, 0
  br i1 %cmp223578.not.i, label %for.cond221.preheader.i.unreg_dev.i_crit_edge, label %for.cond221.preheader.i.for.body225.i_crit_edge

for.cond221.preheader.i.for.body225.i_crit_edge:  ; preds = %for.cond221.preheader.i
  br label %for.body225.i

for.cond221.preheader.i.unreg_dev.i_crit_edge:    ; preds = %for.cond221.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

for.body225.i:                                    ; preds = %for.body225.i.for.body225.i_crit_edge, %for.cond221.preheader.i.for.body225.i_crit_edge
  %i.2579.i = phi i32 [ %inc228.i, %for.body225.i.for.body225.i_crit_edge ], [ 0, %for.cond221.preheader.i.for.body225.i_crit_edge ]
  %arrayidx226.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 %i.2579.i
  %463 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %arrayidx226.i, align 4
  tail call void @cec_delete_adapter(ptr noundef %464) #10
  %inc228.i = add nuw i32 %i.2579.i, 1
  %465 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %num_outputs.i.i, align 4
  %cmp223.i = icmp ult i32 %inc228.i, %466
  br i1 %cmp223.i, label %for.body225.i.for.body225.i_crit_edge, label %for.body225.i.unreg_dev.i_crit_edge

for.body225.i.unreg_dev.i_crit_edge:              ; preds = %for.body225.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

for.body225.i.for.body225.i_crit_edge:            ; preds = %for.body225.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body225.i

if.end230.i:                                      ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx232.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 %cec_tx_bus_cnt.0576.i
  %467 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %call216.i, ptr %arrayidx232.i, align 4
  %inc233.i = add i32 %cec_tx_bus_cnt.0576.i, 1
  br label %for.inc237.i

for.inc237.i:                                     ; preds = %if.end230.i, %for.body205.i.for.inc237.i_crit_edge
  %cec_tx_bus_cnt.1.ph.i = phi i32 [ %cec_tx_bus_cnt.0576.i, %for.body205.i.for.inc237.i_crit_edge ], [ %inc233.i, %if.end230.i ]
  %inc238.i = add nuw i32 %i.1577.i, 1
  %468 = ptrtoint ptr %num_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %num_outputs.i.i, align 4
  %cmp203.i = icmp ult i32 %inc238.i, %469
  br i1 %cmp203.i, label %for.inc237.i.for.body205.i_crit_edge, label %for.inc237.i.if.end240.i_crit_edge

for.inc237.i.if.end240.i_crit_edge:               ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240.i

for.inc237.i.for.body205.i_crit_edge:             ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body205.i

if.end240.i:                                      ; preds = %for.inc237.i.if.end240.i_crit_edge, %for.cond201.preheader.i.if.end240.i_crit_edge, %if.end198.i.if.end240.i_crit_edge
  %cec_tx_bus_cnt.2.i = phi i32 [ 0, %if.end198.i.if.end240.i_crit_edge ], [ 0, %for.cond201.preheader.i.if.end240.i_crit_edge ], [ %cec_tx_bus_cnt.1.ph.i, %for.inc237.i.if.end240.i_crit_edge ]
  %cec_rx_adap241.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 352
  %470 = ptrtoint ptr %cec_rx_adap241.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %cec_rx_adap241.i, align 32
  %tobool242.not.i = icmp eq ptr %471, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cec_tx_bus_cnt.2.i)
  %tobool244.not.i = icmp eq i32 %cec_tx_bus_cnt.2.i, 0
  %or.cond.i = select i1 %tobool242.not.i, i1 %tobool244.not.i, i1 false
  br i1 %or.cond.i, label %if.end240.i.if.end272.i_crit_edge, label %do.body246.i

if.end240.i.if.end272.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272.i

do.body246.i:                                     ; preds = %if.end240.i
  %kthread_waitq_cec.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 356
  tail call void @__init_waitqueue_head(ptr noundef %kthread_waitq_cec.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @vivid_create_instance.__key.15) #10
  %call252.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_cec_bus_thread, ptr noundef nonnull %call1.i.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.17, ptr noundef %name.i) #10
  %cmp.i539.i = icmp ugt ptr %call252.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i539.i, label %if.then259.i, label %if.end256.i

if.end256.i:                                      ; preds = %do.body246.i
  call void @__sanitizer_cov_trace_pc() #12
  %call255.i = tail call i32 @wake_up_process(ptr noundef %call252.i) #10
  %kthread_cec.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 355
  %472 = ptrtoint ptr %kthread_cec.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %call252.i, ptr %kthread_cec.i, align 4
  br label %if.end272.i

if.then259.i:                                     ; preds = %do.body246.i
  call void @__sanitizer_cov_trace_pc() #12
  %kthread_cec566.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 355
  %473 = ptrtoint ptr %call252.i to i32
  %474 = ptrtoint ptr %kthread_cec566.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr null, ptr %kthread_cec566.i, align 4
  %call270.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i) #13
  br label %unreg_dev.i

if.end272.i:                                      ; preds = %if.end256.i, %if.end240.i.if.end272.i_crit_edge
  %ctrl_hdl_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 19
  %call273.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_vid_cap.i) #10
  %ctrl_hdl_vid_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 21
  %call274.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_vid_out.i) #10
  %ctrl_hdl_vbi_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 23
  %call275.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_vbi_cap.i) #10
  %ctrl_hdl_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 25
  %call276.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_vbi_out.i) #10
  %ctrl_hdl_radio_rx.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 27
  %call277.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_radio_rx.i) #10
  %ctrl_hdl_radio_tx.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 29
  %call278.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_radio_tx.i) #10
  %ctrl_hdl_sdr_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 31
  %call279.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_sdr_cap.i) #10
  %ctrl_hdl_meta_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 33
  %call280.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_meta_cap.i) #10
  %ctrl_hdl_meta_out.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 35
  %call281.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_meta_out.i) #10
  %ctrl_hdl_touch_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 37
  %call282.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl_touch_cap.i) #10
  %call285.i = call fastcc i32 @vivid_create_devnodes(ptr noundef %pdev, ptr noundef nonnull %call1.i.i.i.i, i32 noundef %i.0118, i32 noundef %cec_tx_bus_cnt.2.i, i64 noundef %spec.select510.i, i64 noundef %spec.select.i, ptr noundef nonnull %in_type_counter.i, ptr noundef nonnull %out_type_counter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285.i)
  %tobool286.not.i = icmp eq i32 %call285.i, 0
  br i1 %tobool286.not.i, label %vivid_create_instance.exit.thread62, label %if.end272.i.unreg_dev.i_crit_edge

if.end272.i.unreg_dev.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreg_dev.i

vivid_create_instance.exit.thread62:              ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx289.i = getelementptr [64 x ptr], ptr @vivid_devs, i32 0, i32 %i.0118
  %475 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %call1.i.i.i.i, ptr %arrayidx289.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_type_counter.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_type_counter.i) #10
  br label %for.inc

unreg_dev.i:                                      ; preds = %if.end272.i.unreg_dev.i_crit_edge, %if.then259.i, %for.body225.i.unreg_dev.i_crit_edge, %for.cond221.preheader.i.unreg_dev.i_crit_edge, %if.then191.i.unreg_dev.i_crit_edge, %if.end181.i.unreg_dev.i_crit_edge, %lor.end110.i.unreg_dev.i_crit_edge
  %ret.3.i = phi i32 [ %call111.i, %lor.end110.i.unreg_dev.i_crit_edge ], [ %call182.i, %if.end181.i.unreg_dev.i_crit_edge ], [ %473, %if.then259.i ], [ %call285.i, %if.end272.i.unreg_dev.i_crit_edge ], [ %450, %if.then191.i.unreg_dev.i_crit_edge ], [ %460, %for.cond221.preheader.i.unreg_dev.i_crit_edge ], [ %spec.select.i538.i, %for.body225.i.unreg_dev.i_crit_edge ]
  %touch_cap_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 36
  tail call void @vb2_video_unregister_device(ptr noundef %touch_cap_dev.i) #10
  %meta_out_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 34
  tail call void @vb2_video_unregister_device(ptr noundef %meta_out_dev.i) #10
  %meta_cap_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 32
  tail call void @vb2_video_unregister_device(ptr noundef %meta_cap_dev.i) #10
  %radio_tx_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 28
  tail call void @video_unregister_device(ptr noundef %radio_tx_dev.i) #10
  %radio_rx_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 26
  tail call void @video_unregister_device(ptr noundef %radio_rx_dev.i) #10
  %sdr_cap_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 30
  tail call void @vb2_video_unregister_device(ptr noundef %sdr_cap_dev.i) #10
  %vbi_out_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 24
  tail call void @vb2_video_unregister_device(ptr noundef %vbi_out_dev.i) #10
  %vbi_cap_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 22
  tail call void @vb2_video_unregister_device(ptr noundef %vbi_cap_dev.i) #10
  %vid_out_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 20
  tail call void @vb2_video_unregister_device(ptr noundef %vid_out_dev.i) #10
  %vid_cap_dev.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 18
  tail call void @vb2_video_unregister_device(ptr noundef %vid_cap_dev.i) #10
  %cec_rx_adap290.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 352
  %476 = ptrtoint ptr %cec_rx_adap290.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %cec_rx_adap290.i, align 32
  tail call void @cec_unregister_adapter(ptr noundef %477) #10
  %arrayidx296.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 0
  %478 = ptrtoint ptr %arrayidx296.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %arrayidx296.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %479) #10
  %arrayidx296.1.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 1
  %480 = ptrtoint ptr %arrayidx296.1.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %arrayidx296.1.i, align 8
  tail call void @cec_unregister_adapter(ptr noundef %481) #10
  %arrayidx296.2.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 2
  %482 = ptrtoint ptr %arrayidx296.2.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %arrayidx296.2.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %483) #10
  %arrayidx296.3.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 3
  %484 = ptrtoint ptr %arrayidx296.3.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %arrayidx296.3.i, align 16
  tail call void @cec_unregister_adapter(ptr noundef %485) #10
  %arrayidx296.4.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 4
  %486 = ptrtoint ptr %arrayidx296.4.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx296.4.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %487) #10
  %arrayidx296.5.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 5
  %488 = ptrtoint ptr %arrayidx296.5.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx296.5.i, align 8
  tail call void @cec_unregister_adapter(ptr noundef %489) #10
  %arrayidx296.6.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 6
  %490 = ptrtoint ptr %arrayidx296.6.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %arrayidx296.6.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %491) #10
  %arrayidx296.7.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 7
  %492 = ptrtoint ptr %arrayidx296.7.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %arrayidx296.7.i, align 64
  tail call void @cec_unregister_adapter(ptr noundef %493) #10
  %arrayidx296.8.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 8
  %494 = ptrtoint ptr %arrayidx296.8.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %arrayidx296.8.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %495) #10
  %arrayidx296.9.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 9
  %496 = ptrtoint ptr %arrayidx296.9.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %arrayidx296.9.i, align 8
  tail call void @cec_unregister_adapter(ptr noundef %497) #10
  %arrayidx296.10.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 10
  %498 = ptrtoint ptr %arrayidx296.10.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %arrayidx296.10.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %499) #10
  %arrayidx296.11.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 11
  %500 = ptrtoint ptr %arrayidx296.11.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx296.11.i, align 16
  tail call void @cec_unregister_adapter(ptr noundef %501) #10
  %arrayidx296.12.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 12
  %502 = ptrtoint ptr %arrayidx296.12.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx296.12.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %503) #10
  %arrayidx296.13.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 13
  %504 = ptrtoint ptr %arrayidx296.13.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %arrayidx296.13.i, align 8
  tail call void @cec_unregister_adapter(ptr noundef %505) #10
  %arrayidx296.14.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 14
  %506 = ptrtoint ptr %arrayidx296.14.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx296.14.i, align 4
  tail call void @cec_unregister_adapter(ptr noundef %507) #10
  %arrayidx296.15.i = getelementptr %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 353, i32 15
  %508 = ptrtoint ptr %arrayidx296.15.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %arrayidx296.15.i, align 32
  tail call void @cec_unregister_adapter(ptr noundef %509) #10
  %kthread_cec300.i = getelementptr inbounds %struct.vivid_dev, ptr %call1.i.i.i.i, i32 0, i32 355
  %510 = ptrtoint ptr %kthread_cec300.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %kthread_cec300.i, align 4
  %tobool301.not.i = icmp eq ptr %511, null
  br i1 %tobool301.not.i, label %unreg_dev.i.vivid_create_instance.exit_crit_edge, label %if.then302.i

unreg_dev.i.vivid_create_instance.exit_crit_edge: ; preds = %unreg_dev.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_create_instance.exit

if.then302.i:                                     ; preds = %unreg_dev.i
  call void @__sanitizer_cov_trace_pc() #12
  %call304.i = tail call i32 @kthread_stop(ptr noundef nonnull %511) #10
  br label %vivid_create_instance.exit

vivid_create_instance.exit.thread:                ; preds = %if.then22.i, %for.body.vivid_create_instance.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call20.i, %if.then22.i ], [ -12, %for.body.vivid_create_instance.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_type_counter.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_type_counter.i) #10
  br label %if.then12

vivid_create_instance.exit.thread66:              ; preds = %if.end7.i88.i.vivid_create_instance.exit.thread66_crit_edge, %kmalloc_array.exit90.thread.i, %if.end48.i.vivid_create_instance.exit.thread66_crit_edge, %if.end42.i.vivid_create_instance.exit.thread66_crit_edge, %if.end36.i.vivid_create_instance.exit.thread66_crit_edge, %vivid_set_capabilities.exit.i.vivid_create_instance.exit.thread66_crit_edge, %do.end211.i.i, %do.end193.i.i, %do.end147.i.i, %do.end123.i.i
  %ret.4.i.ph = phi i32 [ -22, %do.end123.i.i ], [ -22, %do.end147.i.i ], [ -22, %do.end193.i.i ], [ -22, %do.end211.i.i ], [ -12, %kmalloc_array.exit90.thread.i ], [ -12, %if.end7.i88.i.vivid_create_instance.exit.thread66_crit_edge ], [ -12, %if.end36.i.vivid_create_instance.exit.thread66_crit_edge ], [ -12, %if.end42.i.vivid_create_instance.exit.thread66_crit_edge ], [ -12, %if.end48.i.vivid_create_instance.exit.thread66_crit_edge ], [ -12, %vivid_set_capabilities.exit.i.vivid_create_instance.exit.thread66_crit_edge ]
  %call307.i68 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_type_counter.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_type_counter.i) #10
  br label %if.then12

vivid_create_instance.exit:                       ; preds = %if.then302.i, %unreg_dev.i.vivid_create_instance.exit_crit_edge
  %call307.i = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_type_counter.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in_type_counter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool.not, label %vivid_create_instance.exit.for.inc_crit_edge, label %vivid_create_instance.exit.if.then12_crit_edge

vivid_create_instance.exit.if.then12_crit_edge:   ; preds = %vivid_create_instance.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

vivid_create_instance.exit.for.inc_crit_edge:     ; preds = %vivid_create_instance.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %vivid_create_instance.exit.if.then12_crit_edge, %vivid_create_instance.exit.thread66, %vivid_create_instance.exit.thread
  %retval.0.i61 = phi i32 [ %retval.0.i.ph, %vivid_create_instance.exit.thread ], [ %ret.4.i.ph, %vivid_create_instance.exit.thread66 ], [ %ret.3.i, %vivid_create_instance.exit.if.then12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0118)
  %tobool13.not = icmp eq i32 %i.0118, 0
  br i1 %tobool13.not, label %for.end, label %if.then12.if.end24_crit_edge

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.inc:                                          ; preds = %vivid_create_instance.exit.for.inc_crit_edge, %vivid_create_instance.exit.thread62
  %inc = add nuw i32 %i.0118, 1
  %512 = load i32, ptr @n_devs, align 4
  %cmp10 = icmp ult i32 %inc, %512
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.if.end24_crit_edge

for.inc.if.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i61)
  %cmp17 = icmp slt i32 %retval.0.i61, 0
  br i1 %cmp17, label %do.end21, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %retval.0.i61) #13
  br label %cleanup

if.end24:                                         ; preds = %for.end.if.end24_crit_edge, %for.inc.if.end24_crit_edge, %if.then12.if.end24_crit_edge
  %i.085 = phi i32 [ 0, %for.end.if.end24_crit_edge ], [ %i.0118, %if.then12.if.end24_crit_edge ], [ %inc, %for.inc.if.end24_crit_edge ]
  %ret.172 = phi i32 [ %retval.0.i61, %for.end.if.end24_crit_edge ], [ 0, %if.then12.if.end24_crit_edge ], [ 0, %for.inc.if.end24_crit_edge ]
  store i32 %i.085, ptr @n_devs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end21, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval.0.i61, %do.end21 ], [ %ret.172, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp267.not = icmp eq i32 %0, 0
  br i1 %cmp267.not, label %entry.for.end152_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

for.body:                                         ; preds = %for.inc150.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0268 = phi i32 [ %inc151, %for.inc150.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x ptr], ptr @vivid_devs, i32 0, i32 %i.0268
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc150_crit_edge, label %if.end

for.body.for.inc150_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc150

if.end:                                           ; preds = %for.body
  %disconnect_error = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 152
  %3 = ptrtoint ptr %disconnect_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disconnect_error, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vivid_reconnect(ptr noundef nonnull %2)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %mdev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev) #10
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 61
  %5 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_vid_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %do.end

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.end3
  %name = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %vid_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 18
  %init_name.i.i = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 18, i32 5, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 18, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %do.end.video_device_node_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name, ptr noundef %retval.0.i.i) #13
  tail call void @vb2_video_unregister_device(ptr noundef %vid_cap_dev) #10
  br label %if.end8

if.end8:                                          ; preds = %video_device_node_name.exit, %if.end3.if.end8_crit_edge
  %has_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 62
  %11 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_vid_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end8.if.end21_crit_edge, label %do.end13

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end13:                                         ; preds = %if.end8
  %name16 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %vid_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 20
  %init_name.i.i212 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 20, i32 5, i32 3
  %13 = ptrtoint ptr %init_name.i.i212 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i212, align 8
  %tobool.not.i.i213 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i213, label %if.end.i.i215, label %do.end13.video_device_node_name.exit217_crit_edge

do.end13.video_device_node_name.exit217_crit_edge: ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit217

if.end.i.i215:                                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i214 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 20, i32 5
  %15 = ptrtoint ptr %dev.i214 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i214, align 4
  br label %video_device_node_name.exit217

video_device_node_name.exit217:                   ; preds = %if.end.i.i215, %do.end13.video_device_node_name.exit217_crit_edge
  %retval.0.i.i216 = phi ptr [ %16, %if.end.i.i215 ], [ %14, %do.end13.video_device_node_name.exit217_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name16, ptr noundef %retval.0.i.i216) #13
  tail call void @vb2_video_unregister_device(ptr noundef %vid_out_dev) #10
  br label %if.end21

if.end21:                                         ; preds = %video_device_node_name.exit217, %if.end8.if.end21_crit_edge
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 63
  %17 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_vbi_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not = icmp eq i8 %18, 0
  br i1 %tobool22.not, label %if.end21.if.end34_crit_edge, label %do.end26

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end26:                                         ; preds = %if.end21
  %name29 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %vbi_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 22
  %init_name.i.i218 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 22, i32 5, i32 3
  %19 = ptrtoint ptr %init_name.i.i218 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i218, align 8
  %tobool.not.i.i219 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i219, label %if.end.i.i221, label %do.end26.video_device_node_name.exit223_crit_edge

do.end26.video_device_node_name.exit223_crit_edge: ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit223

if.end.i.i221:                                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i220 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 22, i32 5
  %21 = ptrtoint ptr %dev.i220 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i220, align 4
  br label %video_device_node_name.exit223

video_device_node_name.exit223:                   ; preds = %if.end.i.i221, %do.end26.video_device_node_name.exit223_crit_edge
  %retval.0.i.i222 = phi ptr [ %22, %if.end.i.i221 ], [ %20, %do.end26.video_device_node_name.exit223_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name29, ptr noundef %retval.0.i.i222) #13
  tail call void @vb2_video_unregister_device(ptr noundef %vbi_cap_dev) #10
  br label %if.end34

if.end34:                                         ; preds = %video_device_node_name.exit223, %if.end21.if.end34_crit_edge
  %has_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 66
  %23 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_vbi_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool35.not = icmp eq i8 %24, 0
  br i1 %tobool35.not, label %if.end34.if.end47_crit_edge, label %do.end39

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end39:                                         ; preds = %if.end34
  %name42 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %vbi_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 24
  %init_name.i.i224 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 24, i32 5, i32 3
  %25 = ptrtoint ptr %init_name.i.i224 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i224, align 8
  %tobool.not.i.i225 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i225, label %if.end.i.i227, label %do.end39.video_device_node_name.exit229_crit_edge

do.end39.video_device_node_name.exit229_crit_edge: ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit229

if.end.i.i227:                                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i226 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 24, i32 5
  %27 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i226, align 4
  br label %video_device_node_name.exit229

video_device_node_name.exit229:                   ; preds = %if.end.i.i227, %do.end39.video_device_node_name.exit229_crit_edge
  %retval.0.i.i228 = phi ptr [ %28, %if.end.i.i227 ], [ %26, %do.end39.video_device_node_name.exit229_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name42, ptr noundef %retval.0.i.i228) #13
  tail call void @vb2_video_unregister_device(ptr noundef %vbi_out_dev) #10
  br label %if.end47

if.end47:                                         ; preds = %video_device_node_name.exit229, %if.end34.if.end47_crit_edge
  %has_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 71
  %29 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_sdr_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp eq i8 %30, 0
  br i1 %tobool48.not, label %if.end47.if.end60_crit_edge, label %do.end52

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end52:                                         ; preds = %if.end47
  %name55 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %sdr_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 30
  %init_name.i.i230 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 30, i32 5, i32 3
  %31 = ptrtoint ptr %init_name.i.i230 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i230, align 8
  %tobool.not.i.i231 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i231, label %if.end.i.i233, label %do.end52.video_device_node_name.exit235_crit_edge

do.end52.video_device_node_name.exit235_crit_edge: ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit235

if.end.i.i233:                                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i232 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 30, i32 5
  %33 = ptrtoint ptr %dev.i232 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i232, align 4
  br label %video_device_node_name.exit235

video_device_node_name.exit235:                   ; preds = %if.end.i.i233, %do.end52.video_device_node_name.exit235_crit_edge
  %retval.0.i.i234 = phi ptr [ %34, %if.end.i.i233 ], [ %32, %do.end52.video_device_node_name.exit235_crit_edge ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name55, ptr noundef %retval.0.i.i234) #13
  tail call void @vb2_video_unregister_device(ptr noundef %sdr_cap_dev) #10
  br label %if.end60

if.end60:                                         ; preds = %video_device_node_name.exit235, %if.end47.if.end60_crit_edge
  %has_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 69
  %35 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_radio_rx, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool61.not = icmp eq i8 %36, 0
  br i1 %tobool61.not, label %if.end60.if.end73_crit_edge, label %do.end65

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end65:                                         ; preds = %if.end60
  %name68 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %radio_rx_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 26
  %init_name.i.i236 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 26, i32 5, i32 3
  %37 = ptrtoint ptr %init_name.i.i236 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i236, align 8
  %tobool.not.i.i237 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i237, label %if.end.i.i239, label %do.end65.video_device_node_name.exit241_crit_edge

do.end65.video_device_node_name.exit241_crit_edge: ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit241

if.end.i.i239:                                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i238 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 26, i32 5
  %39 = ptrtoint ptr %dev.i238 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i238, align 4
  br label %video_device_node_name.exit241

video_device_node_name.exit241:                   ; preds = %if.end.i.i239, %do.end65.video_device_node_name.exit241_crit_edge
  %retval.0.i.i240 = phi ptr [ %40, %if.end.i.i239 ], [ %38, %do.end65.video_device_node_name.exit241_crit_edge ]
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name68, ptr noundef %retval.0.i.i240) #13
  tail call void @video_unregister_device(ptr noundef %radio_rx_dev) #10
  br label %if.end73

if.end73:                                         ; preds = %video_device_node_name.exit241, %if.end60.if.end73_crit_edge
  %has_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 70
  %41 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_radio_tx, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool74.not = icmp eq i8 %42, 0
  br i1 %tobool74.not, label %if.end73.if.end86_crit_edge, label %do.end78

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end78:                                         ; preds = %if.end73
  %name81 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %radio_tx_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 28
  %init_name.i.i242 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 28, i32 5, i32 3
  %43 = ptrtoint ptr %init_name.i.i242 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i242, align 8
  %tobool.not.i.i243 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i243, label %if.end.i.i245, label %do.end78.video_device_node_name.exit247_crit_edge

do.end78.video_device_node_name.exit247_crit_edge: ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit247

if.end.i.i245:                                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i244 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 28, i32 5
  %45 = ptrtoint ptr %dev.i244 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i244, align 4
  br label %video_device_node_name.exit247

video_device_node_name.exit247:                   ; preds = %if.end.i.i245, %do.end78.video_device_node_name.exit247_crit_edge
  %retval.0.i.i246 = phi ptr [ %46, %if.end.i.i245 ], [ %44, %do.end78.video_device_node_name.exit247_crit_edge ]
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name81, ptr noundef %retval.0.i.i246) #13
  tail call void @video_unregister_device(ptr noundef %radio_tx_dev) #10
  br label %if.end86

if.end86:                                         ; preds = %video_device_node_name.exit247, %if.end73.if.end86_crit_edge
  %has_fb = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 72
  %47 = ptrtoint ptr %has_fb to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %has_fb, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool87.not = icmp eq i8 %48, 0
  br i1 %tobool87.not, label %if.end86.if.end98_crit_edge, label %do.end91

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %name94 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %fb_info = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 149
  %node = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 149, i32 1
  %49 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %node, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name94, i32 noundef %50) #13
  tail call void @unregister_framebuffer(ptr noundef %fb_info) #10
  tail call void @vivid_fb_release_buffers(ptr noundef nonnull %2) #10
  br label %if.end98

if.end98:                                         ; preds = %do.end91, %if.end86.if.end98_crit_edge
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 73
  %51 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_meta_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool99.not = icmp eq i8 %52, 0
  br i1 %tobool99.not, label %if.end98.if.end111_crit_edge, label %do.end103

if.end98.if.end111_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end103:                                        ; preds = %if.end98
  %name106 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %meta_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 32
  %init_name.i.i248 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 32, i32 5, i32 3
  %53 = ptrtoint ptr %init_name.i.i248 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i248, align 8
  %tobool.not.i.i249 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i249, label %if.end.i.i251, label %do.end103.video_device_node_name.exit253_crit_edge

do.end103.video_device_node_name.exit253_crit_edge: ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit253

if.end.i.i251:                                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i250 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 32, i32 5
  %55 = ptrtoint ptr %dev.i250 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i250, align 4
  br label %video_device_node_name.exit253

video_device_node_name.exit253:                   ; preds = %if.end.i.i251, %do.end103.video_device_node_name.exit253_crit_edge
  %retval.0.i.i252 = phi ptr [ %56, %if.end.i.i251 ], [ %54, %do.end103.video_device_node_name.exit253_crit_edge ]
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name106, ptr noundef %retval.0.i.i252) #13
  tail call void @vb2_video_unregister_device(ptr noundef %meta_cap_dev) #10
  br label %if.end111

if.end111:                                        ; preds = %video_device_node_name.exit253, %if.end98.if.end111_crit_edge
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 74
  %57 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_meta_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool112.not = icmp eq i8 %58, 0
  br i1 %tobool112.not, label %if.end111.if.end124_crit_edge, label %do.end116

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.end116:                                        ; preds = %if.end111
  %name119 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %meta_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 34
  %init_name.i.i254 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 34, i32 5, i32 3
  %59 = ptrtoint ptr %init_name.i.i254 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i254, align 8
  %tobool.not.i.i255 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i255, label %if.end.i.i257, label %do.end116.video_device_node_name.exit259_crit_edge

do.end116.video_device_node_name.exit259_crit_edge: ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit259

if.end.i.i257:                                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i256 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 34, i32 5
  %61 = ptrtoint ptr %dev.i256 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i256, align 4
  br label %video_device_node_name.exit259

video_device_node_name.exit259:                   ; preds = %if.end.i.i257, %do.end116.video_device_node_name.exit259_crit_edge
  %retval.0.i.i258 = phi ptr [ %62, %if.end.i.i257 ], [ %60, %do.end116.video_device_node_name.exit259_crit_edge ]
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name119, ptr noundef %retval.0.i.i258) #13
  tail call void @vb2_video_unregister_device(ptr noundef %meta_out_dev) #10
  br label %if.end124

if.end124:                                        ; preds = %video_device_node_name.exit259, %if.end111.if.end124_crit_edge
  %has_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 76
  %63 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %has_touch_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool125.not = icmp eq i8 %64, 0
  br i1 %tobool125.not, label %if.end124.if.end137_crit_edge, label %do.end129

if.end124.if.end137_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

do.end129:                                        ; preds = %if.end124
  %name132 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %touch_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 36
  %init_name.i.i260 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 36, i32 5, i32 3
  %65 = ptrtoint ptr %init_name.i.i260 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i260, align 8
  %tobool.not.i.i261 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i261, label %if.end.i.i263, label %do.end129.video_device_node_name.exit265_crit_edge

do.end129.video_device_node_name.exit265_crit_edge: ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit265

if.end.i.i263:                                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i262 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 36, i32 5
  %67 = ptrtoint ptr %dev.i262 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i262, align 4
  br label %video_device_node_name.exit265

video_device_node_name.exit265:                   ; preds = %if.end.i.i263, %do.end129.video_device_node_name.exit265_crit_edge
  %retval.0.i.i264 = phi ptr [ %68, %if.end.i.i263 ], [ %66, %do.end129.video_device_node_name.exit265_crit_edge ]
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name132, ptr noundef %retval.0.i.i264) #13
  tail call void @vb2_video_unregister_device(ptr noundef %touch_cap_dev) #10
  br label %if.end137

if.end137:                                        ; preds = %video_device_node_name.exit265, %if.end124.if.end137_crit_edge
  %cec_rx_adap = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 352
  %69 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cec_rx_adap, align 8
  tail call void @cec_unregister_adapter(ptr noundef %70) #10
  %arrayidx141 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 0
  %71 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx141, align 4
  tail call void @cec_unregister_adapter(ptr noundef %72) #10
  %arrayidx141.1 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 1
  %73 = ptrtoint ptr %arrayidx141.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx141.1, align 4
  tail call void @cec_unregister_adapter(ptr noundef %74) #10
  %arrayidx141.2 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 2
  %75 = ptrtoint ptr %arrayidx141.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx141.2, align 4
  tail call void @cec_unregister_adapter(ptr noundef %76) #10
  %arrayidx141.3 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 3
  %77 = ptrtoint ptr %arrayidx141.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx141.3, align 4
  tail call void @cec_unregister_adapter(ptr noundef %78) #10
  %arrayidx141.4 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 4
  %79 = ptrtoint ptr %arrayidx141.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx141.4, align 4
  tail call void @cec_unregister_adapter(ptr noundef %80) #10
  %arrayidx141.5 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 5
  %81 = ptrtoint ptr %arrayidx141.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx141.5, align 4
  tail call void @cec_unregister_adapter(ptr noundef %82) #10
  %arrayidx141.6 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 6
  %83 = ptrtoint ptr %arrayidx141.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx141.6, align 4
  tail call void @cec_unregister_adapter(ptr noundef %84) #10
  %arrayidx141.7 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 7
  %85 = ptrtoint ptr %arrayidx141.7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx141.7, align 4
  tail call void @cec_unregister_adapter(ptr noundef %86) #10
  %arrayidx141.8 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 8
  %87 = ptrtoint ptr %arrayidx141.8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx141.8, align 4
  tail call void @cec_unregister_adapter(ptr noundef %88) #10
  %arrayidx141.9 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 9
  %89 = ptrtoint ptr %arrayidx141.9 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx141.9, align 4
  tail call void @cec_unregister_adapter(ptr noundef %90) #10
  %arrayidx141.10 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 10
  %91 = ptrtoint ptr %arrayidx141.10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx141.10, align 4
  tail call void @cec_unregister_adapter(ptr noundef %92) #10
  %arrayidx141.11 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 11
  %93 = ptrtoint ptr %arrayidx141.11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx141.11, align 4
  tail call void @cec_unregister_adapter(ptr noundef %94) #10
  %arrayidx141.12 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 12
  %95 = ptrtoint ptr %arrayidx141.12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx141.12, align 4
  tail call void @cec_unregister_adapter(ptr noundef %96) #10
  %arrayidx141.13 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 13
  %97 = ptrtoint ptr %arrayidx141.13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx141.13, align 4
  tail call void @cec_unregister_adapter(ptr noundef %98) #10
  %arrayidx141.14 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 14
  %99 = ptrtoint ptr %arrayidx141.14 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx141.14, align 4
  tail call void @cec_unregister_adapter(ptr noundef %100) #10
  %arrayidx141.15 = getelementptr %struct.vivid_dev, ptr %2, i32 0, i32 353, i32 15
  %101 = ptrtoint ptr %arrayidx141.15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx141.15, align 4
  tail call void @cec_unregister_adapter(ptr noundef %102) #10
  %kthread_cec = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 355
  %103 = ptrtoint ptr %kthread_cec to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %kthread_cec, align 4
  %tobool142.not = icmp eq ptr %104, null
  br i1 %tobool142.not, label %if.end137.if.end146_crit_edge, label %if.then143

if.end137.if.end146_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %call145 = tail call i32 @kthread_stop(ptr noundef nonnull %104) #10
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end137.if.end146_crit_edge
  %v4l2_dev147 = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1
  %call148 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev147) #10
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc150

for.inc150:                                       ; preds = %if.end146, %for.body.for.inc150_crit_edge
  %inc151 = add nuw i32 %i.0268, 1
  %106 = load i32, ptr @n_devs, align 4
  %cmp = icmp ult i32 %inc151, %106
  br i1 %cmp, label %for.inc150.for.body_crit_edge, label %for.inc150.for.end152_crit_edge

for.inc150.for.end152_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end152

for.inc150.for.body_crit_edge:                    ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end152:                                       ; preds = %for.inc150.for.end152_crit_edge, %entry.for.end152_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_set_font(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vivid_dev_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -4
  tail call void @vivid_free_controls(ptr noundef %add.ptr) #10
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %mdev = getelementptr i8, ptr %v4l2_dev, i32 132
  tail call void @media_device_cleanup(ptr noundef %mdev) #10
  %scaled_line = getelementptr i8, ptr %v4l2_dev, i32 25096
  %0 = ptrtoint ptr %scaled_line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scaled_line, align 4
  tail call void @vfree(ptr noundef %1) #10
  %blended_line = getelementptr i8, ptr %v4l2_dev, i32 25100
  %2 = ptrtoint ptr %blended_line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blended_line, align 8
  tail call void @vfree(ptr noundef %3) #10
  %edid = getelementptr i8, ptr %v4l2_dev, i32 24144
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 4
  tail call void @vfree(ptr noundef %5) #10
  %bitmap_cap = getelementptr i8, ptr %v4l2_dev, i32 24248
  %6 = ptrtoint ptr %bitmap_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap_cap, align 4
  tail call void @vfree(ptr noundef %7) #10
  %bitmap_out = getelementptr i8, ptr %v4l2_dev, i32 25140
  %8 = ptrtoint ptr %bitmap_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap_out, align 8
  tail call void @vfree(ptr noundef %9) #10
  %tpg = getelementptr i8, ptr %v4l2_dev, i32 25800
  tail call void @tpg_free(ptr noundef %tpg) #10
  %query_dv_timings_qmenu = getelementptr i8, ptr %v4l2_dev, i32 20012
  %10 = ptrtoint ptr %query_dv_timings_qmenu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %query_dv_timings_qmenu, align 8
  tail call void @kfree(ptr noundef %11) #10
  %query_dv_timings_qmenu_strings = getelementptr i8, ptr %v4l2_dev, i32 20016
  %12 = ptrtoint ptr %query_dv_timings_qmenu_strings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query_dv_timings_qmenu_strings, align 4
  tail call void @kfree(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpg_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tpg_s_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_create_controls(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_cap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_out(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_set_touch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_coerce_mask_and_coherent(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.dma_set_mask_and_coherent.exit_crit_edge

entry.dma_set_mask_and_coherent.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %entry.dma_set_mask_and_coherent.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_queues(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 61
  %0 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vid_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %vb_vid_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 242
  %call = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_vid_cap_q, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @vivid_vid_cap_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %has_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 62
  %2 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_vid_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %vb_vid_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 286
  %call6 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_vid_out_q, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @vivid_vid_out_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %4 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_vbi_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %vb_vbi_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 244
  %call13 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_vbi_cap_q, i32 noundef 4, i32 noundef 2, ptr noundef nonnull @vivid_vbi_cap_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %has_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 66
  %6 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_vbi_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool18.not = icmp eq i8 %7, 0
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %vb_vbi_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 288
  %call20 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_vbi_out_q, i32 noundef 5, i32 noundef 2, ptr noundef nonnull @vivid_vbi_out_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %has_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 71
  %8 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_sdr_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool25.not = icmp eq i8 %9, 0
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %vb_sdr_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 313
  %call27 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_sdr_cap_q, i32 noundef 11, i32 noundef 8, ptr noundef nonnull @vivid_sdr_cap_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 73
  %10 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_meta_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  br i1 %tobool32.not, label %if.end31.if.end38_crit_edge, label %if.then33

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  %vb_meta_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 246
  %call34 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_meta_cap_q, i32 noundef 13, i32 noundef 2, ptr noundef nonnull @vivid_meta_cap_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 74
  %12 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_meta_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool39.not = icmp eq i8 %13, 0
  br i1 %tobool39.not, label %if.end38.if.end45_crit_edge, label %if.then40

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then40:                                        ; preds = %if.end38
  %vb_meta_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 290
  %call41 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_meta_out_q, i32 noundef 14, i32 noundef 1, ptr noundef nonnull @vivid_meta_out_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end45_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  %has_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 76
  %14 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_touch_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool46.not = icmp eq i8 %15, 0
  br i1 %tobool46.not, label %if.end45.if.end52_crit_edge, label %if.then47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then47:                                        ; preds = %if.end45
  %vb_touch_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 248
  %call48 = tail call fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %vb_touch_cap_q, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @vivid_touch_cap_qops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %has_fb = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 72
  %16 = ptrtoint ptr %has_fb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_fb, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @vivid_fb_init(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.end, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %node = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 1
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %19) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then54.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ], [ %call27, %if.then26.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ %call41, %if.then40.cleanup_crit_edge ], [ %call48, %if.then47.cleanup_crit_edge ], [ %call55, %if.then54.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vivid_cec_alloc_adap(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_cec_bus_thread(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_devnodes(ptr noundef %pdev, ptr noundef %dev, i32 noundef %inst, i32 noundef %cec_tx_bus_cnt, i64 noundef %tvnorms_cap, i64 noundef %tvnorms_out, ptr nocapture noundef readonly %in_type_counter, ptr nocapture noundef readonly %out_type_counter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 61
  %0 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vid_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then:                                          ; preds = %entry
  %vid_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18
  %name = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %inst)
  %fops = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vivid_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 24
  %3 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops, align 4
  %vid_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 40
  %4 = ptrtoint ptr %vid_cap_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vid_cap_caps, align 8
  %device_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %device_caps, align 8
  %release = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 23
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @video_device_release_empty, ptr %release, align 8
  %v4l2_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev1 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 7
  %8 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v4l2_dev, ptr %v4l2_dev1, align 4
  %vb_vid_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 242
  %queue = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 10
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vb_vid_cap_q, ptr %queue, align 8
  %tvnorms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 22
  %10 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %tvnorms_cap, ptr %tvnorms, align 8
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 26
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mutex, ptr %lock, align 8
  %driver_data.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %vid_cap_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 3
  %flags = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flags, align 4
  %call3 = tail call i32 @media_entity_pads_init(ptr noundef %vid_cap_dev, i16 noundef zeroext 1, ptr noundef %vid_cap_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup432_crit_edge

if.then.cleanup432_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr i32, ptr %in_type_counter, i32 3
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %if.end.if.end22_crit_edge, label %if.then7

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then7:                                         ; preds = %if.end
  %cec_rx_adap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 352
  %16 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cec_rx_adap, align 8
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call9 = tail call i32 @cec_register_adapter(ptr noundef %17, ptr noundef %dev8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  %18 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cec_rx_adap, align 8
  br i1 %cmp, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cec_delete_adapter(ptr noundef %19) #10
  %20 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cec_rx_adap, align 8
  br label %cleanup432

if.end13:                                         ; preds = %if.then7
  tail call void @cec_s_phys_addr(ptr noundef %19, i16 noundef zeroext 0, i1 noundef zeroext false) #10
  %name16 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %cec_rx_adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_rx_adap, align 8
  %init_name.i = getelementptr inbounds %struct.cec_adapter, ptr %22, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %devnode = getelementptr inbounds %struct.cec_adapter, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devnode, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end13.dev_name.exit_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name16, ptr noundef %retval.0.i) #13
  br label %if.end22

if.end22:                                         ; preds = %dev_name.exit, %if.end.if.end22_crit_edge
  %arrayidx23 = getelementptr [64 x i32], ptr @vid_cap_nr, i32 0, i32 %inst
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  %29 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vid_cap_dev, i32 noundef 0, i32 noundef %28, i32 noundef 1, ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.end22.cleanup432_crit_edge, label %do.end30

if.end22.cleanup432_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end30:                                         ; preds = %if.end22
  %name33 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 5, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end30.video_device_node_name.exit_crit_edge

do.end30.video_device_node_name.exit_crit_edge:   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 5
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end30.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %do.end30.video_device_node_name.exit_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name33, ptr noundef %retval.0.i.i) #13
  br label %if.end37

if.end37:                                         ; preds = %video_device_node_name.exit, %entry.if.end37_crit_edge
  %has_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 62
  %37 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_vid_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool38.not = icmp eq i8 %38, 0
  br i1 %tobool38.not, label %if.end37.if.end113_crit_edge, label %if.then39

if.end37.if.end113_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then39:                                        ; preds = %if.end37
  %vid_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20
  %name40 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 12
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name40, i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %inst)
  %vfl_dir = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 14
  %39 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %vfl_dir, align 4
  %fops43 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 3
  %40 = ptrtoint ptr %fops43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vivid_fops, ptr %fops43, align 4
  %ioctl_ops44 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 24
  %41 = ptrtoint ptr %ioctl_ops44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops44, align 4
  %vid_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 41
  %42 = ptrtoint ptr %vid_out_caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vid_out_caps, align 4
  %device_caps45 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 4
  %44 = ptrtoint ptr %device_caps45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %device_caps45, align 8
  %release46 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 23
  %45 = ptrtoint ptr %release46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @video_device_release_empty, ptr %release46, align 8
  %v4l2_dev47 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev48 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 7
  %46 = ptrtoint ptr %v4l2_dev48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %v4l2_dev47, ptr %v4l2_dev48, align 4
  %vb_vid_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 286
  %queue49 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 10
  %47 = ptrtoint ptr %queue49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vb_vid_out_q, ptr %queue49, align 8
  %tvnorms50 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 22
  %48 = ptrtoint ptr %tvnorms50 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %tvnorms_out, ptr %tvnorms50, align 8
  %mutex51 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock52 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 26
  %49 = ptrtoint ptr %lock52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mutex51, ptr %lock52, align 8
  %driver_data.i.i755 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 5, i32 8
  %50 = ptrtoint ptr %driver_data.i.i755 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %driver_data.i.i755, align 4
  %vid_out_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 4
  %flags53 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 4, i32 4
  %51 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %flags53, align 4
  %call56 = tail call i32 @media_entity_pads_init(ptr noundef %vid_out_dev, i16 noundef zeroext 1, ptr noundef %vid_out_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.cond.preheader, label %if.then39.cleanup432_crit_edge

if.then39.cleanup432_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

for.cond.preheader:                               ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cec_tx_bus_cnt)
  %cmp60844.not = icmp eq i32 %cec_tx_bus_cnt, 0
  br i1 %cmp60844.not, label %for.cond.preheader.for.end97_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end97_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %name79 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %arrayidx87 = getelementptr i32, ptr %out_type_counter, i32 3
  br label %for.body

for.body:                                         ; preds = %dev_name.exit760.for.body_crit_edge, %for.body.lr.ph
  %i.0845 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %dev_name.exit760.for.body_crit_edge ]
  %arrayidx61 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 353, i32 %i.0845
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx61, align 4
  %call63 = tail call i32 @cec_register_adapter(ptr noundef %53, ptr noundef %dev62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %for.cond66.preheader, label %do.end76

for.cond66.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0845, i32 %cec_tx_bus_cnt)
  %cmp67847 = icmp ult i32 %i.0845, %cec_tx_bus_cnt
  br i1 %cmp67847, label %for.cond66.preheader.for.body68_crit_edge, label %for.cond66.preheader.cleanup432_crit_edge

for.cond66.preheader.cleanup432_crit_edge:        ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

for.cond66.preheader.for.body68_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body68

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.cond66.preheader.for.body68_crit_edge
  %i.1848 = phi i32 [ %inc, %for.body68.for.body68_crit_edge ], [ %i.0845, %for.cond66.preheader.for.body68_crit_edge ]
  %arrayidx70 = getelementptr %struct.vivid_dev, ptr %dev, i32 0, i32 353, i32 %i.1848
  %54 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx70, align 4
  tail call void @cec_delete_adapter(ptr noundef %55) #10
  %56 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx70, align 4
  %inc = add i32 %i.1848, 1
  %exitcond851.not = icmp eq i32 %inc, %cec_tx_bus_cnt
  br i1 %exitcond851.not, label %for.body68.cleanup432_crit_edge, label %for.body68.for.body68_crit_edge

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body68

for.body68.cleanup432_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end76:                                         ; preds = %for.body
  %57 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx61, align 4
  %init_name.i756 = getelementptr inbounds %struct.cec_adapter, ptr %58, i32 0, i32 2, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i756 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i756, align 8
  %tobool.not.i757 = icmp eq ptr %60, null
  br i1 %tobool.not.i757, label %if.end.i758, label %do.end76.dev_name.exit760_crit_edge

do.end76.dev_name.exit760_crit_edge:              ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit760

if.end.i758:                                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  %devnode83 = getelementptr inbounds %struct.cec_adapter, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %devnode83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %devnode83, align 4
  br label %dev_name.exit760

dev_name.exit760:                                 ; preds = %if.end.i758, %do.end76.dev_name.exit760_crit_edge
  %retval.0.i759 = phi ptr [ %62, %if.end.i758 ], [ %60, %do.end76.dev_name.exit760_crit_edge ]
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name79, ptr noundef %retval.0.i759, i32 noundef %i.0845) #13
  %63 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0845, i32 %64)
  %cmp88 = icmp ult i32 %i.0845, %64
  %65 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx61, align 4
  %i.0.tr = trunc i32 %i.0845 to i16
  %67 = shl i16 %i.0.tr, 12
  %conv = add i16 %67, 4096
  %conv.sink = select i1 %cmp88, i16 %conv, i16 4096
  tail call void @cec_s_phys_addr(ptr noundef %66, i16 noundef zeroext %conv.sink, i1 noundef zeroext false) #10
  %inc96 = add nuw i32 %i.0845, 1
  %exitcond.not = icmp eq i32 %inc96, %cec_tx_bus_cnt
  br i1 %exitcond.not, label %dev_name.exit760.for.end97_crit_edge, label %dev_name.exit760.for.body_crit_edge

dev_name.exit760.for.body_crit_edge:              ; preds = %dev_name.exit760
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

dev_name.exit760.for.end97_crit_edge:             ; preds = %dev_name.exit760
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

for.end97:                                        ; preds = %dev_name.exit760.for.end97_crit_edge, %for.cond.preheader.for.end97_crit_edge
  %arrayidx98 = getelementptr [64 x i32], ptr @vid_out_nr, i32 0, i32 %inst
  %68 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx98, align 4
  %70 = ptrtoint ptr %fops43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fops43, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call.i762 = tail call i32 @__video_register_device(ptr noundef %vid_out_dev, i32 noundef 0, i32 noundef %69, i32 noundef 1, ptr noundef %73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i762)
  %cmp100 = icmp slt i32 %call.i762, 0
  br i1 %cmp100, label %for.end97.cleanup432_crit_edge, label %do.end106

for.end97.cleanup432_crit_edge:                   ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end106:                                        ; preds = %for.end97
  %name109 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i763 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 5, i32 3
  %74 = ptrtoint ptr %init_name.i.i763 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i763, align 8
  %tobool.not.i.i764 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i764, label %if.end.i.i766, label %do.end106.cleanup_crit_edge

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i766:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i765 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 5
  %76 = ptrtoint ptr %dev.i765 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i765, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i766, %do.end106.cleanup_crit_edge
  %retval.0.i.i767 = phi ptr [ %77, %if.end.i.i766 ], [ %75, %do.end106.cleanup_crit_edge ]
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name109, ptr noundef %retval.0.i.i767) #13
  br label %if.end113

if.end113:                                        ; preds = %cleanup, %if.end37.if.end113_crit_edge
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %78 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %has_vbi_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool114.not = icmp eq i8 %79, 0
  br i1 %tobool114.not, label %if.end113.if.end159_crit_edge, label %if.then115

if.end113.if.end159_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then115:                                       ; preds = %if.end113
  %vbi_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22
  %name116 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 12
  %call118 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name116, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %inst)
  %fops119 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 3
  %80 = ptrtoint ptr %fops119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @vivid_fops, ptr %fops119, align 4
  %ioctl_ops120 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 24
  %81 = ptrtoint ptr %ioctl_ops120 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops120, align 4
  %vbi_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 42
  %82 = ptrtoint ptr %vbi_cap_caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vbi_cap_caps, align 8
  %device_caps121 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 4
  %84 = ptrtoint ptr %device_caps121 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %device_caps121, align 8
  %release122 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 23
  %85 = ptrtoint ptr %release122 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @video_device_release_empty, ptr %release122, align 8
  %v4l2_dev123 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev124 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 7
  %86 = ptrtoint ptr %v4l2_dev124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %v4l2_dev123, ptr %v4l2_dev124, align 4
  %vb_vbi_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 244
  %queue125 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 10
  %87 = ptrtoint ptr %queue125 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %vb_vbi_cap_q, ptr %queue125, align 8
  %mutex126 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock127 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 26
  %88 = ptrtoint ptr %lock127 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %mutex126, ptr %lock127, align 8
  %tvnorms128 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 22
  %89 = ptrtoint ptr %tvnorms128 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %tvnorms_cap, ptr %tvnorms128, align 8
  %driver_data.i.i769 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 5, i32 8
  %90 = ptrtoint ptr %driver_data.i.i769 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dev, ptr %driver_data.i.i769, align 4
  %vbi_cap_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 5
  %flags129 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 5, i32 4
  %91 = ptrtoint ptr %flags129 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %flags129, align 4
  %call132 = tail call i32 @media_entity_pads_init(ptr noundef %vbi_cap_dev, i16 noundef zeroext 1, ptr noundef %vbi_cap_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.then115.cleanup432_crit_edge

if.then115.cleanup432_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end135:                                        ; preds = %if.then115
  %arrayidx136 = getelementptr [64 x i32], ptr @vbi_cap_nr, i32 0, i32 %inst
  %92 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx136, align 4
  %94 = ptrtoint ptr %fops119 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fops119, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call.i771 = tail call i32 @__video_register_device(ptr noundef %vbi_cap_dev, i32 noundef 1, i32 noundef %93, i32 noundef 1, ptr noundef %97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i771)
  %cmp138 = icmp slt i32 %call.i771, 0
  br i1 %cmp138, label %if.end135.cleanup432_crit_edge, label %do.end144

if.end135.cleanup432_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end144:                                        ; preds = %if.end135
  %name147 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i772 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 5, i32 3
  %98 = ptrtoint ptr %init_name.i.i772 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i.i772, align 8
  %tobool.not.i.i773 = icmp eq ptr %99, null
  br i1 %tobool.not.i.i773, label %if.end.i.i775, label %do.end144.video_device_node_name.exit777_crit_edge

do.end144.video_device_node_name.exit777_crit_edge: ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit777

if.end.i.i775:                                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i774 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 5
  %100 = ptrtoint ptr %dev.i774 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i774, align 4
  br label %video_device_node_name.exit777

video_device_node_name.exit777:                   ; preds = %if.end.i.i775, %do.end144.video_device_node_name.exit777_crit_edge
  %retval.0.i.i776 = phi ptr [ %101, %if.end.i.i775 ], [ %99, %do.end144.video_device_node_name.exit777_crit_edge ]
  %has_raw_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 64
  %102 = ptrtoint ptr %has_raw_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %has_raw_vbi_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool150.not = icmp eq i8 %103, 0
  br i1 %tobool150.not, label %video_device_node_name.exit777.cond.false_crit_edge, label %land.lhs.true

video_device_node_name.exit777.cond.false_crit_edge: ; preds = %video_device_node_name.exit777
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %video_device_node_name.exit777
  %has_sliced_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 65
  %104 = ptrtoint ptr %has_sliced_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_sliced_vbi_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool152.not = icmp eq i8 %105, 0
  br i1 %tobool152.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %video_device_node_name.exit777.cond.false_crit_edge
  %cond = phi ptr [ @.str.65, %land.lhs.true.cond.false_crit_edge ], [ @.str.66, %video_device_node_name.exit777.cond.false_crit_edge ]
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond157 = phi ptr [ %cond, %cond.false ], [ @.str.64, %land.lhs.true.cond.end_crit_edge ]
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name147, ptr noundef %retval.0.i.i776, ptr noundef nonnull %cond157) #13
  br label %if.end159

if.end159:                                        ; preds = %cond.end, %if.end113.if.end159_crit_edge
  %has_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 66
  %106 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %has_vbi_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool160.not = icmp eq i8 %107, 0
  br i1 %tobool160.not, label %if.end159.if.end211_crit_edge, label %if.then161

if.end159.if.end211_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then161:                                       ; preds = %if.end159
  %vbi_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24
  %name162 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 12
  %call164 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name162, i32 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %inst)
  %vfl_dir165 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 14
  %108 = ptrtoint ptr %vfl_dir165 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %vfl_dir165, align 4
  %fops166 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 3
  %109 = ptrtoint ptr %fops166 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @vivid_fops, ptr %fops166, align 4
  %ioctl_ops167 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 24
  %110 = ptrtoint ptr %ioctl_ops167 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops167, align 4
  %vbi_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 43
  %111 = ptrtoint ptr %vbi_out_caps to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vbi_out_caps, align 4
  %device_caps168 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 4
  %113 = ptrtoint ptr %device_caps168 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %device_caps168, align 8
  %release169 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 23
  %114 = ptrtoint ptr %release169 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @video_device_release_empty, ptr %release169, align 8
  %v4l2_dev170 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev171 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 7
  %115 = ptrtoint ptr %v4l2_dev171 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %v4l2_dev170, ptr %v4l2_dev171, align 4
  %vb_vbi_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 288
  %queue172 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 10
  %116 = ptrtoint ptr %queue172 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %vb_vbi_out_q, ptr %queue172, align 8
  %mutex173 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock174 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 26
  %117 = ptrtoint ptr %lock174 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %mutex173, ptr %lock174, align 8
  %tvnorms175 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 22
  %118 = ptrtoint ptr %tvnorms175 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %tvnorms_out, ptr %tvnorms175, align 8
  %driver_data.i.i778 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 5, i32 8
  %119 = ptrtoint ptr %driver_data.i.i778 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %dev, ptr %driver_data.i.i778, align 4
  %vbi_out_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 6
  %flags176 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 6, i32 4
  %120 = ptrtoint ptr %flags176 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %flags176, align 4
  %call179 = tail call i32 @media_entity_pads_init(ptr noundef %vbi_out_dev, i16 noundef zeroext 1, ptr noundef %vbi_out_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %if.then161.cleanup432_crit_edge

if.then161.cleanup432_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end182:                                        ; preds = %if.then161
  %arrayidx183 = getelementptr [64 x i32], ptr @vbi_out_nr, i32 0, i32 %inst
  %121 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx183, align 4
  %123 = ptrtoint ptr %fops166 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fops166, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %call.i780 = tail call i32 @__video_register_device(ptr noundef %vbi_out_dev, i32 noundef 1, i32 noundef %122, i32 noundef 1, ptr noundef %126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i780)
  %cmp185 = icmp slt i32 %call.i780, 0
  br i1 %cmp185, label %if.end182.cleanup432_crit_edge, label %do.end191

if.end182.cleanup432_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end191:                                        ; preds = %if.end182
  %name194 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i781 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 5, i32 3
  %127 = ptrtoint ptr %init_name.i.i781 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %init_name.i.i781, align 8
  %tobool.not.i.i782 = icmp eq ptr %128, null
  br i1 %tobool.not.i.i782, label %if.end.i.i784, label %do.end191.video_device_node_name.exit786_crit_edge

do.end191.video_device_node_name.exit786_crit_edge: ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit786

if.end.i.i784:                                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i783 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 5
  %129 = ptrtoint ptr %dev.i783 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i783, align 4
  br label %video_device_node_name.exit786

video_device_node_name.exit786:                   ; preds = %if.end.i.i784, %do.end191.video_device_node_name.exit786_crit_edge
  %retval.0.i.i785 = phi ptr [ %130, %if.end.i.i784 ], [ %128, %do.end191.video_device_node_name.exit786_crit_edge ]
  %has_raw_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 67
  %131 = ptrtoint ptr %has_raw_vbi_out to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %has_raw_vbi_out, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool197.not = icmp eq i8 %132, 0
  br i1 %tobool197.not, label %video_device_node_name.exit786.cond.false203_crit_edge, label %land.lhs.true199

video_device_node_name.exit786.cond.false203_crit_edge: ; preds = %video_device_node_name.exit786
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false203

land.lhs.true199:                                 ; preds = %video_device_node_name.exit786
  %has_sliced_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 68
  %133 = ptrtoint ptr %has_sliced_vbi_out to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %has_sliced_vbi_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool200.not = icmp eq i8 %134, 0
  br i1 %tobool200.not, label %land.lhs.true199.cond.false203_crit_edge, label %land.lhs.true199.cond.end208_crit_edge

land.lhs.true199.cond.end208_crit_edge:           ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end208

land.lhs.true199.cond.false203_crit_edge:         ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false203

cond.false203:                                    ; preds = %land.lhs.true199.cond.false203_crit_edge, %video_device_node_name.exit786.cond.false203_crit_edge
  %cond207 = phi ptr [ @.str.65, %land.lhs.true199.cond.false203_crit_edge ], [ @.str.66, %video_device_node_name.exit786.cond.false203_crit_edge ]
  br label %cond.end208

cond.end208:                                      ; preds = %cond.false203, %land.lhs.true199.cond.end208_crit_edge
  %cond209 = phi ptr [ %cond207, %cond.false203 ], [ @.str.64, %land.lhs.true199.cond.end208_crit_edge ]
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name194, ptr noundef %retval.0.i.i785, ptr noundef nonnull %cond209) #13
  br label %if.end211

if.end211:                                        ; preds = %cond.end208, %if.end159.if.end211_crit_edge
  %has_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 71
  %135 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %has_sdr_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool212.not = icmp eq i8 %136, 0
  br i1 %tobool212.not, label %if.end211.if.end248_crit_edge, label %if.then213

if.end211.if.end248_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.then213:                                       ; preds = %if.end211
  %sdr_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30
  %name214 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 12
  %call216 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name214, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %inst)
  %fops217 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 3
  %137 = ptrtoint ptr %fops217 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @vivid_fops, ptr %fops217, align 4
  %ioctl_ops218 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 24
  %138 = ptrtoint ptr %ioctl_ops218 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops218, align 4
  %sdr_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 44
  %139 = ptrtoint ptr %sdr_cap_caps to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sdr_cap_caps, align 8
  %device_caps219 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 4
  %141 = ptrtoint ptr %device_caps219 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %device_caps219, align 8
  %release220 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 23
  %142 = ptrtoint ptr %release220 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @video_device_release_empty, ptr %release220, align 8
  %v4l2_dev221 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev222 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 7
  %143 = ptrtoint ptr %v4l2_dev222 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %v4l2_dev221, ptr %v4l2_dev222, align 4
  %vb_sdr_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 313
  %queue223 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 10
  %144 = ptrtoint ptr %queue223 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %vb_sdr_cap_q, ptr %queue223, align 8
  %mutex224 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock225 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 26
  %145 = ptrtoint ptr %lock225 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %mutex224, ptr %lock225, align 8
  %driver_data.i.i787 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 5, i32 8
  %146 = ptrtoint ptr %driver_data.i.i787 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %dev, ptr %driver_data.i.i787, align 4
  %sdr_cap_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 7
  %flags226 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 7, i32 4
  %147 = ptrtoint ptr %flags226 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %flags226, align 4
  %call229 = tail call i32 @media_entity_pads_init(ptr noundef %sdr_cap_dev, i16 noundef zeroext 1, ptr noundef %sdr_cap_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.then213.cleanup432_crit_edge

if.then213.cleanup432_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end232:                                        ; preds = %if.then213
  %arrayidx233 = getelementptr [64 x i32], ptr @sdr_cap_nr, i32 0, i32 %inst
  %148 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx233, align 4
  %150 = ptrtoint ptr %fops217 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %fops217, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %call.i789 = tail call i32 @__video_register_device(ptr noundef %sdr_cap_dev, i32 noundef 4, i32 noundef %149, i32 noundef 1, ptr noundef %153) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i789)
  %cmp235 = icmp slt i32 %call.i789, 0
  br i1 %cmp235, label %if.end232.cleanup432_crit_edge, label %do.end241

if.end232.cleanup432_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end241:                                        ; preds = %if.end232
  %name244 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i790 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 5, i32 3
  %154 = ptrtoint ptr %init_name.i.i790 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %init_name.i.i790, align 8
  %tobool.not.i.i791 = icmp eq ptr %155, null
  br i1 %tobool.not.i.i791, label %if.end.i.i793, label %do.end241.video_device_node_name.exit795_crit_edge

do.end241.video_device_node_name.exit795_crit_edge: ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit795

if.end.i.i793:                                    ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i792 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 5
  %156 = ptrtoint ptr %dev.i792 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i792, align 4
  br label %video_device_node_name.exit795

video_device_node_name.exit795:                   ; preds = %if.end.i.i793, %do.end241.video_device_node_name.exit795_crit_edge
  %retval.0.i.i794 = phi ptr [ %157, %if.end.i.i793 ], [ %155, %do.end241.video_device_node_name.exit795_crit_edge ]
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name244, ptr noundef %retval.0.i.i794) #13
  br label %if.end248

if.end248:                                        ; preds = %video_device_node_name.exit795, %if.end211.if.end248_crit_edge
  %has_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 69
  %158 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %has_radio_rx, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool249.not = icmp eq i8 %159, 0
  br i1 %tobool249.not, label %if.end248.if.end277_crit_edge, label %if.then250

if.end248.if.end277_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.then250:                                       ; preds = %if.end248
  %radio_rx_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26
  %name251 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 12
  %call253 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name251, i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef %inst)
  %fops254 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 3
  %160 = ptrtoint ptr %fops254 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @vivid_radio_fops, ptr %fops254, align 4
  %ioctl_ops255 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 24
  %161 = ptrtoint ptr %ioctl_ops255 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops255, align 4
  %radio_rx_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 45
  %162 = ptrtoint ptr %radio_rx_caps to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %radio_rx_caps, align 4
  %device_caps256 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 4
  %164 = ptrtoint ptr %device_caps256 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %device_caps256, align 8
  %release257 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 23
  %165 = ptrtoint ptr %release257 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @video_device_release_empty, ptr %release257, align 8
  %v4l2_dev258 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev259 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 7
  %166 = ptrtoint ptr %v4l2_dev259 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %v4l2_dev258, ptr %v4l2_dev259, align 4
  %mutex260 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock261 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 26
  %167 = ptrtoint ptr %lock261 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %mutex260, ptr %lock261, align 8
  %driver_data.i.i796 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 5, i32 8
  %168 = ptrtoint ptr %driver_data.i.i796 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %dev, ptr %driver_data.i.i796, align 4
  %arrayidx262 = getelementptr [64 x i32], ptr @radio_rx_nr, i32 0, i32 %inst
  %169 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx262, align 4
  %call.i798 = tail call i32 @__video_register_device(ptr noundef %radio_rx_dev, i32 noundef 2, i32 noundef %170, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i798)
  %cmp264 = icmp slt i32 %call.i798, 0
  br i1 %cmp264, label %if.then250.cleanup432_crit_edge, label %do.end270

if.then250.cleanup432_crit_edge:                  ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end270:                                        ; preds = %if.then250
  %name273 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i799 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 5, i32 3
  %171 = ptrtoint ptr %init_name.i.i799 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %init_name.i.i799, align 8
  %tobool.not.i.i800 = icmp eq ptr %172, null
  br i1 %tobool.not.i.i800, label %if.end.i.i802, label %do.end270.video_device_node_name.exit804_crit_edge

do.end270.video_device_node_name.exit804_crit_edge: ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit804

if.end.i.i802:                                    ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i801 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 5
  %173 = ptrtoint ptr %dev.i801 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i801, align 4
  br label %video_device_node_name.exit804

video_device_node_name.exit804:                   ; preds = %if.end.i.i802, %do.end270.video_device_node_name.exit804_crit_edge
  %retval.0.i.i803 = phi ptr [ %174, %if.end.i.i802 ], [ %172, %do.end270.video_device_node_name.exit804_crit_edge ]
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name273, ptr noundef %retval.0.i.i803) #13
  br label %if.end277

if.end277:                                        ; preds = %video_device_node_name.exit804, %if.end248.if.end277_crit_edge
  %has_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 70
  %175 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %has_radio_tx, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool278.not = icmp eq i8 %176, 0
  br i1 %tobool278.not, label %if.end277.if.end307_crit_edge, label %if.then279

if.end277.if.end307_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307

if.then279:                                       ; preds = %if.end277
  %radio_tx_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28
  %name280 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 12
  %call282 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name280, i32 noundef 32, ptr noundef nonnull @.str.78, i32 noundef %inst)
  %vfl_dir283 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 14
  %177 = ptrtoint ptr %vfl_dir283 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %vfl_dir283, align 4
  %fops284 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 3
  %178 = ptrtoint ptr %fops284 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @vivid_radio_fops, ptr %fops284, align 4
  %ioctl_ops285 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 24
  %179 = ptrtoint ptr %ioctl_ops285 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops285, align 4
  %radio_tx_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 46
  %180 = ptrtoint ptr %radio_tx_caps to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %radio_tx_caps, align 8
  %device_caps286 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 4
  %182 = ptrtoint ptr %device_caps286 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %device_caps286, align 8
  %release287 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 23
  %183 = ptrtoint ptr %release287 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @video_device_release_empty, ptr %release287, align 8
  %v4l2_dev288 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev289 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 7
  %184 = ptrtoint ptr %v4l2_dev289 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %v4l2_dev288, ptr %v4l2_dev289, align 4
  %mutex290 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock291 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 26
  %185 = ptrtoint ptr %lock291 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %mutex290, ptr %lock291, align 8
  %driver_data.i.i805 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 5, i32 8
  %186 = ptrtoint ptr %driver_data.i.i805 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %dev, ptr %driver_data.i.i805, align 4
  %arrayidx292 = getelementptr [64 x i32], ptr @radio_tx_nr, i32 0, i32 %inst
  %187 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx292, align 4
  %call.i807 = tail call i32 @__video_register_device(ptr noundef %radio_tx_dev, i32 noundef 2, i32 noundef %188, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i807)
  %cmp294 = icmp slt i32 %call.i807, 0
  br i1 %cmp294, label %if.then279.cleanup432_crit_edge, label %do.end300

if.then279.cleanup432_crit_edge:                  ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end300:                                        ; preds = %if.then279
  %name303 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i808 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 5, i32 3
  %189 = ptrtoint ptr %init_name.i.i808 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %init_name.i.i808, align 8
  %tobool.not.i.i809 = icmp eq ptr %190, null
  br i1 %tobool.not.i.i809, label %if.end.i.i811, label %do.end300.video_device_node_name.exit813_crit_edge

do.end300.video_device_node_name.exit813_crit_edge: ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit813

if.end.i.i811:                                    ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i810 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 5
  %191 = ptrtoint ptr %dev.i810 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i810, align 4
  br label %video_device_node_name.exit813

video_device_node_name.exit813:                   ; preds = %if.end.i.i811, %do.end300.video_device_node_name.exit813_crit_edge
  %retval.0.i.i812 = phi ptr [ %192, %if.end.i.i811 ], [ %190, %do.end300.video_device_node_name.exit813_crit_edge ]
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name303, ptr noundef %retval.0.i.i812) #13
  br label %if.end307

if.end307:                                        ; preds = %video_device_node_name.exit813, %if.end277.if.end307_crit_edge
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 73
  %193 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %has_meta_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool308.not = icmp eq i8 %194, 0
  br i1 %tobool308.not, label %if.end307.if.end345_crit_edge, label %if.then309

if.end307.if.end345_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end345

if.then309:                                       ; preds = %if.end307
  %meta_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32
  %name310 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 12
  %call312 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name310, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %inst)
  %fops313 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 3
  %195 = ptrtoint ptr %fops313 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @vivid_fops, ptr %fops313, align 4
  %ioctl_ops314 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 24
  %196 = ptrtoint ptr %ioctl_ops314 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops314, align 4
  %meta_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 47
  %197 = ptrtoint ptr %meta_cap_caps to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %meta_cap_caps, align 4
  %device_caps315 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 4
  %199 = ptrtoint ptr %device_caps315 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %device_caps315, align 8
  %release316 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 23
  %200 = ptrtoint ptr %release316 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @video_device_release_empty, ptr %release316, align 8
  %v4l2_dev317 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev318 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 7
  %201 = ptrtoint ptr %v4l2_dev318 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %v4l2_dev317, ptr %v4l2_dev318, align 4
  %vb_meta_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 246
  %queue319 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 10
  %202 = ptrtoint ptr %queue319 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %vb_meta_cap_q, ptr %queue319, align 8
  %mutex320 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock321 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 26
  %203 = ptrtoint ptr %lock321 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %mutex320, ptr %lock321, align 8
  %tvnorms322 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 22
  %204 = ptrtoint ptr %tvnorms322 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %tvnorms_cap, ptr %tvnorms322, align 8
  %driver_data.i.i814 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 5, i32 8
  %205 = ptrtoint ptr %driver_data.i.i814 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %dev, ptr %driver_data.i.i814, align 4
  %meta_cap_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 8
  %flags323 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 8, i32 4
  %206 = ptrtoint ptr %flags323 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %flags323, align 4
  %call326 = tail call i32 @media_entity_pads_init(ptr noundef %meta_cap_dev, i16 noundef zeroext 1, ptr noundef %meta_cap_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end329, label %if.then309.cleanup432_crit_edge

if.then309.cleanup432_crit_edge:                  ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end329:                                        ; preds = %if.then309
  %arrayidx330 = getelementptr [64 x i32], ptr @meta_cap_nr, i32 0, i32 %inst
  %207 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx330, align 4
  %209 = ptrtoint ptr %fops313 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fops313, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %call.i816 = tail call i32 @__video_register_device(ptr noundef %meta_cap_dev, i32 noundef 0, i32 noundef %208, i32 noundef 1, ptr noundef %212) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i816)
  %cmp332 = icmp slt i32 %call.i816, 0
  br i1 %cmp332, label %if.end329.cleanup432_crit_edge, label %do.end338

if.end329.cleanup432_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end338:                                        ; preds = %if.end329
  %name341 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i817 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 5, i32 3
  %213 = ptrtoint ptr %init_name.i.i817 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %init_name.i.i817, align 8
  %tobool.not.i.i818 = icmp eq ptr %214, null
  br i1 %tobool.not.i.i818, label %if.end.i.i820, label %do.end338.video_device_node_name.exit822_crit_edge

do.end338.video_device_node_name.exit822_crit_edge: ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit822

if.end.i.i820:                                    ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i819 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 5
  %215 = ptrtoint ptr %dev.i819 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i819, align 4
  br label %video_device_node_name.exit822

video_device_node_name.exit822:                   ; preds = %if.end.i.i820, %do.end338.video_device_node_name.exit822_crit_edge
  %retval.0.i.i821 = phi ptr [ %216, %if.end.i.i820 ], [ %214, %do.end338.video_device_node_name.exit822_crit_edge ]
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name341, ptr noundef %retval.0.i.i821) #13
  br label %if.end345

if.end345:                                        ; preds = %video_device_node_name.exit822, %if.end307.if.end345_crit_edge
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 74
  %217 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %has_meta_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool346.not = icmp eq i8 %218, 0
  br i1 %tobool346.not, label %if.end345.if.end384_crit_edge, label %if.then347

if.end345.if.end384_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end384

if.then347:                                       ; preds = %if.end345
  %meta_out_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34
  %name348 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 12
  %call350 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name348, i32 noundef 32, ptr noundef nonnull @.str.86, i32 noundef %inst)
  %vfl_dir351 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 14
  %219 = ptrtoint ptr %vfl_dir351 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1, ptr %vfl_dir351, align 4
  %fops352 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 3
  %220 = ptrtoint ptr %fops352 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @vivid_fops, ptr %fops352, align 4
  %ioctl_ops353 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 24
  %221 = ptrtoint ptr %ioctl_ops353 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops353, align 4
  %meta_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 48
  %222 = ptrtoint ptr %meta_out_caps to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %meta_out_caps, align 8
  %device_caps354 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 4
  %224 = ptrtoint ptr %device_caps354 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %device_caps354, align 8
  %release355 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 23
  %225 = ptrtoint ptr %release355 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @video_device_release_empty, ptr %release355, align 8
  %v4l2_dev356 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev357 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 7
  %226 = ptrtoint ptr %v4l2_dev357 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %v4l2_dev356, ptr %v4l2_dev357, align 4
  %vb_meta_out_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 290
  %queue358 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 10
  %227 = ptrtoint ptr %queue358 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %vb_meta_out_q, ptr %queue358, align 8
  %mutex359 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock360 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 26
  %228 = ptrtoint ptr %lock360 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %mutex359, ptr %lock360, align 8
  %tvnorms361 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 22
  %229 = ptrtoint ptr %tvnorms361 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %tvnorms_out, ptr %tvnorms361, align 8
  %driver_data.i.i823 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 5, i32 8
  %230 = ptrtoint ptr %driver_data.i.i823 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %dev, ptr %driver_data.i.i823, align 4
  %meta_out_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 9
  %flags362 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 9, i32 4
  %231 = ptrtoint ptr %flags362 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 2, ptr %flags362, align 4
  %call365 = tail call i32 @media_entity_pads_init(ptr noundef %meta_out_dev, i16 noundef zeroext 1, ptr noundef %meta_out_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %if.end368, label %if.then347.cleanup432_crit_edge

if.then347.cleanup432_crit_edge:                  ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end368:                                        ; preds = %if.then347
  %arrayidx369 = getelementptr [64 x i32], ptr @meta_out_nr, i32 0, i32 %inst
  %232 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx369, align 4
  %234 = ptrtoint ptr %fops352 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fops352, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %call.i825 = tail call i32 @__video_register_device(ptr noundef %meta_out_dev, i32 noundef 0, i32 noundef %233, i32 noundef 1, ptr noundef %237) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i825)
  %cmp371 = icmp slt i32 %call.i825, 0
  br i1 %cmp371, label %if.end368.cleanup432_crit_edge, label %do.end377

if.end368.cleanup432_crit_edge:                   ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end377:                                        ; preds = %if.end368
  %name380 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i826 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 5, i32 3
  %238 = ptrtoint ptr %init_name.i.i826 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %init_name.i.i826, align 8
  %tobool.not.i.i827 = icmp eq ptr %239, null
  br i1 %tobool.not.i.i827, label %if.end.i.i829, label %do.end377.video_device_node_name.exit831_crit_edge

do.end377.video_device_node_name.exit831_crit_edge: ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit831

if.end.i.i829:                                    ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i828 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 5
  %240 = ptrtoint ptr %dev.i828 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev.i828, align 4
  br label %video_device_node_name.exit831

video_device_node_name.exit831:                   ; preds = %if.end.i.i829, %do.end377.video_device_node_name.exit831_crit_edge
  %retval.0.i.i830 = phi ptr [ %241, %if.end.i.i829 ], [ %239, %do.end377.video_device_node_name.exit831_crit_edge ]
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name380, ptr noundef %retval.0.i.i830) #13
  br label %if.end384

if.end384:                                        ; preds = %video_device_node_name.exit831, %if.end345.if.end384_crit_edge
  %has_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 76
  %242 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %has_touch_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool385.not = icmp eq i8 %243, 0
  br i1 %tobool385.not, label %if.end384.if.end422_crit_edge, label %if.then386

if.end384.if.end422_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end422

if.then386:                                       ; preds = %if.end384
  %touch_cap_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36
  %name387 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 12
  %call389 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name387, i32 noundef 32, ptr noundef nonnull @.str.90, i32 noundef %inst)
  %fops390 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 3
  %244 = ptrtoint ptr %fops390 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @vivid_fops, ptr %fops390, align 4
  %ioctl_ops391 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 24
  %245 = ptrtoint ptr %ioctl_ops391 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @vivid_ioctl_ops, ptr %ioctl_ops391, align 4
  %touch_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 49
  %246 = ptrtoint ptr %touch_cap_caps to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %touch_cap_caps, align 4
  %device_caps392 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 4
  %248 = ptrtoint ptr %device_caps392 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %device_caps392, align 8
  %release393 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 23
  %249 = ptrtoint ptr %release393 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @video_device_release_empty, ptr %release393, align 8
  %v4l2_dev394 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev395 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 7
  %250 = ptrtoint ptr %v4l2_dev395 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %v4l2_dev394, ptr %v4l2_dev395, align 4
  %vb_touch_cap_q = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 248
  %queue396 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 10
  %251 = ptrtoint ptr %queue396 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %vb_touch_cap_q, ptr %queue396, align 8
  %tvnorms397 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 22
  %252 = ptrtoint ptr %tvnorms397 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %tvnorms_cap, ptr %tvnorms397, align 8
  %mutex398 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock399 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 26
  %253 = ptrtoint ptr %lock399 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %mutex398, ptr %lock399, align 8
  %driver_data.i.i832 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 5, i32 8
  %254 = ptrtoint ptr %driver_data.i.i832 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %dev, ptr %driver_data.i.i832, align 4
  %touch_cap_pad = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 10
  %flags400 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 10, i32 4
  %255 = ptrtoint ptr %flags400 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1, ptr %flags400, align 4
  %call403 = tail call i32 @media_entity_pads_init(ptr noundef %touch_cap_dev, i16 noundef zeroext 1, ptr noundef %touch_cap_pad) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %tobool404.not = icmp eq i32 %call403, 0
  br i1 %tobool404.not, label %if.end406, label %if.then386.cleanup432_crit_edge

if.then386.cleanup432_crit_edge:                  ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

if.end406:                                        ; preds = %if.then386
  %arrayidx407 = getelementptr [64 x i32], ptr @touch_cap_nr, i32 0, i32 %inst
  %256 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx407, align 4
  %258 = ptrtoint ptr %fops390 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %fops390, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %call.i834 = tail call i32 @__video_register_device(ptr noundef %touch_cap_dev, i32 noundef 5, i32 noundef %257, i32 noundef 1, ptr noundef %261) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i834)
  %cmp409 = icmp slt i32 %call.i834, 0
  br i1 %cmp409, label %if.end406.cleanup432_crit_edge, label %do.end415

if.end406.cleanup432_crit_edge:                   ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end415:                                        ; preds = %if.end406
  %name418 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %init_name.i.i835 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 5, i32 3
  %262 = ptrtoint ptr %init_name.i.i835 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %init_name.i.i835, align 8
  %tobool.not.i.i836 = icmp eq ptr %263, null
  br i1 %tobool.not.i.i836, label %if.end.i.i838, label %do.end415.video_device_node_name.exit840_crit_edge

do.end415.video_device_node_name.exit840_crit_edge: ; preds = %do.end415
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit840

if.end.i.i838:                                    ; preds = %do.end415
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i837 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 5
  %264 = ptrtoint ptr %dev.i837 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev.i837, align 4
  br label %video_device_node_name.exit840

video_device_node_name.exit840:                   ; preds = %if.end.i.i838, %do.end415.video_device_node_name.exit840_crit_edge
  %retval.0.i.i839 = phi ptr [ %265, %if.end.i.i838 ], [ %263, %do.end415.video_device_node_name.exit840_crit_edge ]
  %call421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name418, ptr noundef %retval.0.i.i839) #13
  br label %if.end422

if.end422:                                        ; preds = %video_device_node_name.exit840, %if.end384.if.end422_crit_edge
  %mdev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 2
  %call423 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call423)
  %tobool424.not = icmp eq i32 %call423, 0
  br i1 %tobool424.not, label %if.end422.cleanup432_crit_edge, label %do.end428

if.end422.cleanup432_crit_edge:                   ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup432

do.end428:                                        ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #12
  %266 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.95, i32 noundef %call423) #13
  br label %cleanup432

cleanup432:                                       ; preds = %do.end428, %if.end422.cleanup432_crit_edge, %if.end406.cleanup432_crit_edge, %if.then386.cleanup432_crit_edge, %if.end368.cleanup432_crit_edge, %if.then347.cleanup432_crit_edge, %if.end329.cleanup432_crit_edge, %if.then309.cleanup432_crit_edge, %if.then279.cleanup432_crit_edge, %if.then250.cleanup432_crit_edge, %if.end232.cleanup432_crit_edge, %if.then213.cleanup432_crit_edge, %if.end182.cleanup432_crit_edge, %if.then161.cleanup432_crit_edge, %if.end135.cleanup432_crit_edge, %if.then115.cleanup432_crit_edge, %for.end97.cleanup432_crit_edge, %for.body68.cleanup432_crit_edge, %for.cond66.preheader.cleanup432_crit_edge, %if.then39.cleanup432_crit_edge, %if.end22.cleanup432_crit_edge, %if.then10, %if.then.cleanup432_crit_edge
  %retval.1 = phi i32 [ %call9, %if.then10 ], [ %call423, %do.end428 ], [ %call3, %if.then.cleanup432_crit_edge ], [ %call.i, %if.end22.cleanup432_crit_edge ], [ %call132, %if.then115.cleanup432_crit_edge ], [ %call.i771, %if.end135.cleanup432_crit_edge ], [ %call179, %if.then161.cleanup432_crit_edge ], [ %call.i780, %if.end182.cleanup432_crit_edge ], [ %call229, %if.then213.cleanup432_crit_edge ], [ %call.i789, %if.end232.cleanup432_crit_edge ], [ %call.i798, %if.then250.cleanup432_crit_edge ], [ %call.i807, %if.then279.cleanup432_crit_edge ], [ %call326, %if.then309.cleanup432_crit_edge ], [ %call.i816, %if.end329.cleanup432_crit_edge ], [ %call365, %if.then347.cleanup432_crit_edge ], [ %call.i825, %if.end368.cleanup432_crit_edge ], [ %call403, %if.then386.cleanup432_crit_edge ], [ %call.i834, %if.end406.cleanup432_crit_edge ], [ 0, %if.end422.cleanup432_crit_edge ], [ %call.i762, %for.end97.cleanup432_crit_edge ], [ %call56, %if.then39.cleanup432_crit_edge ], [ %call63, %for.cond66.preheader.cleanup432_crit_edge ], [ %call63, %for.body68.cleanup432_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_req_validate(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %req_validate_error = getelementptr i8, ptr %1, i32 19477
  %2 = ptrtoint ptr %req_validate_error to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_validate_error, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req_validate_error to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %req_validate_error, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @vb2_request_validate(ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_request_queue(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_free_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_queue(ptr noundef %dev, ptr noundef %q, i32 noundef %buf_type, i32 noundef %min_buffers_needed, ptr noundef %ops) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %buf_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %buf_type, label %if.end18 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true2
    i32 4, label %land.lhs.true8
    i32 5, label %land.lhs.true13
  ]

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %multiplanar = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 50
  %1 = ptrtoint ptr %multiplanar to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %multiplanar, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 9
  br label %if.end18.thread

land.lhs.true2:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %multiplanar3 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 50
  %3 = ptrtoint ptr %multiplanar3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %multiplanar3, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %spec.select121 = select i1 %tobool4.not, i32 2, i32 10
  br label %if.end18.thread118

land.lhs.true8:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_raw_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 64
  %5 = ptrtoint ptr %has_raw_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_raw_vbi_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  %spec.select122 = select i1 %tobool9.not, i32 6, i32 4
  br label %if.end18.thread

land.lhs.true13:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %has_raw_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 67
  %7 = ptrtoint ptr %has_raw_vbi_out to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_raw_vbi_out, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  %spec.select123 = select i1 %tobool14.not, i32 7, i32 5
  br label %if.end18.thread118

if.end18.thread:                                  ; preds = %land.lhs.true8, %land.lhs.true
  %buf_type.addr.0.ph = phi i32 [ %spec.select, %land.lhs.true ], [ %spec.select122, %land.lhs.true8 ]
  %9 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buf_type.addr.0.ph, ptr %q, align 4
  %io_modes112 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 1
  %10 = ptrtoint ptr %io_modes112 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17, ptr %io_modes112, align 4
  br label %lor.rhs

if.end18.thread118:                               ; preds = %land.lhs.true13, %land.lhs.true2
  %buf_type.addr.0.ph117 = phi i32 [ %spec.select121, %land.lhs.true2 ], [ %spec.select123, %land.lhs.true13 ]
  %11 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %buf_type.addr.0.ph117, ptr %q, align 4
  %io_modes120 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 1
  %12 = ptrtoint ptr %io_modes120 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 17, ptr %io_modes120, align 4
  br label %lor.end

if.end18:                                         ; preds = %entry
  %13 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %buf_type, ptr %q, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 1
  %14 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17, ptr %io_modes, align 4
  %15 = zext i32 %buf_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %buf_type, label %if.end18.lor.rhs_crit_edge [
    i32 12, label %if.end18.lor.end_crit_edge
    i32 10, label %if.end18.lor.end_crit_edge124
    i32 3, label %if.end18.lor.end_crit_edge125
    i32 8, label %if.end18.lor.end_crit_edge126
    i32 7, label %if.end18.lor.end_crit_edge127
  ]

if.end18.lor.end_crit_edge127:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end18.lor.end_crit_edge126:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end18.lor.end_crit_edge125:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end18.lor.end_crit_edge124:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end18.lor.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end18.lor.rhs_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end18.lor.rhs_crit_edge, %if.end18.thread
  %io_modes115 = phi ptr [ %io_modes112, %if.end18.thread ], [ %io_modes, %if.end18.lor.rhs_crit_edge ]
  %buf_type.addr.0113 = phi i32 [ %buf_type.addr.0.ph, %if.end18.thread ], [ %buf_type, %if.end18.lor.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %buf_type.addr.0113)
  %cmp31 = icmp eq i32 %buf_type.addr.0113, 14
  %phi.bo = select i1 %cmp31, i32 25, i32 21
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end18.lor.end_crit_edge, %if.end18.lor.end_crit_edge124, %if.end18.lor.end_crit_edge125, %if.end18.lor.end_crit_edge126, %if.end18.lor.end_crit_edge127, %if.end18.thread118
  %io_modes114 = phi ptr [ %io_modes115, %lor.rhs ], [ %io_modes, %if.end18.lor.end_crit_edge ], [ %io_modes, %if.end18.lor.end_crit_edge124 ], [ %io_modes, %if.end18.lor.end_crit_edge125 ], [ %io_modes, %if.end18.lor.end_crit_edge126 ], [ %io_modes, %if.end18.lor.end_crit_edge127 ], [ %io_modes120, %if.end18.thread118 ]
  %16 = phi i32 [ %phi.bo, %lor.rhs ], [ 25, %if.end18.lor.end_crit_edge ], [ 25, %if.end18.lor.end_crit_edge124 ], [ 25, %if.end18.lor.end_crit_edge125 ], [ 25, %if.end18.lor.end_crit_edge126 ], [ 25, %if.end18.lor.end_crit_edge127 ], [ 25, %if.end18.thread118 ]
  %17 = ptrtoint ptr %io_modes114 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %io_modes114, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev, align 8
  %arrayidx = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp33.not = icmp eq i32 %21, 1
  br i1 %cmp33.not, label %lor.end.if.end37_crit_edge, label %if.then34

lor.end.if.end37_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %or36 = or i32 %16, 2
  %22 = ptrtoint ptr %io_modes114 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or36, ptr %io_modes114, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %lor.end.if.end37_crit_edge
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 12
  %24 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 744, ptr %buf_struct_size, align 4
  %ops38 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 7
  %25 = ptrtoint ptr %ops38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ops, ptr %ops38, align 4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev, align 8
  %arrayidx40 = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp41 = icmp eq i32 %29, 1
  %cond42 = select i1 %cmp41, ptr @vb2_dma_contig_memops, ptr @vb2_vmalloc_memops
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 8
  %30 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cond42, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 13
  %31 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8192, ptr %timestamp_flags, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev, align 8
  %arrayidx44 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  %spec.select110 = select i1 %tobool45.not, i32 %min_buffers_needed, i32 0
  %min_buffers_needed47 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 15
  %36 = ptrtoint ptr %min_buffers_needed47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select110, ptr %min_buffers_needed47, align 4
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 39
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 5
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mutex, ptr %lock, align 4
  %v4l2_dev = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1
  %38 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %v4l2_dev, align 4
  %dev49 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 2
  %40 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %dev49, align 4
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev, align 8
  %arrayidx51 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx51, align 4
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 4
  %45 = trunc i32 %44 to i16
  %46 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.value = shl i16 %45, 10
  %bf.shl = and i16 %bf.value, 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %supports_requests, align 4
  %47 = load i32, ptr %dev, align 8
  %arrayidx53 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp54 = icmp ugt i32 %49, 1
  %bf.shl57 = select i1 %cmp54, i16 512, i16 0
  %bf.clear58 = and i16 %bf.set, -513
  %bf.set59 = or i16 %bf.shl57, %bf.clear58
  %50 = ptrtoint ptr %supports_requests to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %bf.set59, ptr %supports_requests, align 4
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev, align 8
  %arrayidx62 = getelementptr [64 x i32], ptr @cache_hints, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp63 = icmp eq i32 %54, 1
  %bf.shl67 = select i1 %cmp63, i16 64, i16 0
  %bf.clear68 = and i16 %bf.set59, -65
  %bf.set69 = or i16 %bf.shl67, %bf.clear68
  %55 = ptrtoint ptr %supports_requests to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %bf.set69, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %q) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_fb_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fop_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %mutex = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %2 = load i8, ptr @no_error_inj, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %call.i53 = tail call i32 @v4l2_fh_is_singular(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool3.not = icmp eq i32 %call.i53, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %disconnect_error = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 152
  %5 = ptrtoint ptr %disconnect_error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disconnect_error, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true6

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %flags.i = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 17
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %has_vid_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 61
  %9 = ptrtoint ptr %has_vid_cap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_vid_cap.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true9.vivid_is_in_use.exit.i_crit_edge, label %do.body1.i.i

land.lhs.true9.vivid_is_in_use.exit.i_crit_edge:  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit.i

do.body1.i.i:                                     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 18, i32 19
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i.i) #10
  %fh_list.i.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 18, i32 20
  %11 = ptrtoint ptr %fh_list.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fh_list.i.i, align 4
  %cmp.i.i.i = icmp ne ptr %12, %fh_list.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i.i, i32 noundef %call2.i.i) #10
  %phi.cast.i = zext i1 %cmp.i.i.i to i32
  br label %vivid_is_in_use.exit.i

vivid_is_in_use.exit.i:                           ; preds = %do.body1.i.i, %land.lhs.true9.vivid_is_in_use.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %do.body1.i.i ], [ 0, %land.lhs.true9.vivid_is_in_use.exit.i_crit_edge ]
  %has_vid_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 62
  %13 = ptrtoint ptr %has_vid_out.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_vid_out.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %vivid_is_in_use.exit.i.vivid_is_in_use.exit62.i_crit_edge, label %do.body1.i60.i

vivid_is_in_use.exit.i.vivid_is_in_use.exit62.i_crit_edge: ; preds = %vivid_is_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit62.i

do.body1.i60.i:                                   ; preds = %vivid_is_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i56.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 20, i32 19
  %call2.i57.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i56.i) #10
  %fh_list.i58.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 20, i32 20
  %15 = ptrtoint ptr %fh_list.i58.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %fh_list.i58.i, align 4
  %cmp.i.i59.i = icmp ne ptr %16, %fh_list.i58.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i56.i, i32 noundef %call2.i57.i) #10
  %phi.cast119.i = zext i1 %cmp.i.i59.i to i32
  br label %vivid_is_in_use.exit62.i

vivid_is_in_use.exit62.i:                         ; preds = %do.body1.i60.i, %vivid_is_in_use.exit.i.vivid_is_in_use.exit62.i_crit_edge
  %retval.0.i61.i = phi i32 [ %phi.cast119.i, %do.body1.i60.i ], [ 0, %vivid_is_in_use.exit.i.vivid_is_in_use.exit62.i_crit_edge ]
  %has_vbi_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 63
  %17 = ptrtoint ptr %has_vbi_cap.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_vbi_cap.i, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %vivid_is_in_use.exit62.i.vivid_is_in_use.exit69.i_crit_edge, label %do.body1.i67.i

vivid_is_in_use.exit62.i.vivid_is_in_use.exit69.i_crit_edge: ; preds = %vivid_is_in_use.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit69.i

do.body1.i67.i:                                   ; preds = %vivid_is_in_use.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i63.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 22, i32 19
  %call2.i64.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i63.i) #10
  %fh_list.i65.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 22, i32 20
  %19 = ptrtoint ptr %fh_list.i65.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %fh_list.i65.i, align 4
  %cmp.i.i66.i = icmp ne ptr %20, %fh_list.i65.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i63.i, i32 noundef %call2.i64.i) #10
  %phi.cast120.i = zext i1 %cmp.i.i66.i to i32
  br label %vivid_is_in_use.exit69.i

vivid_is_in_use.exit69.i:                         ; preds = %do.body1.i67.i, %vivid_is_in_use.exit62.i.vivid_is_in_use.exit69.i_crit_edge
  %retval.0.i68.i = phi i32 [ %phi.cast120.i, %do.body1.i67.i ], [ 0, %vivid_is_in_use.exit62.i.vivid_is_in_use.exit69.i_crit_edge ]
  %has_vbi_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 66
  %21 = ptrtoint ptr %has_vbi_out.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_vbi_out.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %vivid_is_in_use.exit69.i.vivid_is_in_use.exit76.i_crit_edge, label %do.body1.i74.i

vivid_is_in_use.exit69.i.vivid_is_in_use.exit76.i_crit_edge: ; preds = %vivid_is_in_use.exit69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit76.i

do.body1.i74.i:                                   ; preds = %vivid_is_in_use.exit69.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i70.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 24, i32 19
  %call2.i71.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i70.i) #10
  %fh_list.i72.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 24, i32 20
  %23 = ptrtoint ptr %fh_list.i72.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %fh_list.i72.i, align 4
  %cmp.i.i73.i = icmp ne ptr %24, %fh_list.i72.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i70.i, i32 noundef %call2.i71.i) #10
  %phi.cast121.i = zext i1 %cmp.i.i73.i to i32
  br label %vivid_is_in_use.exit76.i

vivid_is_in_use.exit76.i:                         ; preds = %do.body1.i74.i, %vivid_is_in_use.exit69.i.vivid_is_in_use.exit76.i_crit_edge
  %retval.0.i75.i = phi i32 [ %phi.cast121.i, %do.body1.i74.i ], [ 0, %vivid_is_in_use.exit69.i.vivid_is_in_use.exit76.i_crit_edge ]
  %has_radio_rx.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 69
  %25 = ptrtoint ptr %has_radio_rx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_radio_rx.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not.i = icmp eq i8 %26, 0
  br i1 %tobool12.not.i, label %vivid_is_in_use.exit76.i.vivid_is_in_use.exit83.i_crit_edge, label %do.body1.i81.i

vivid_is_in_use.exit76.i.vivid_is_in_use.exit83.i_crit_edge: ; preds = %vivid_is_in_use.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit83.i

do.body1.i81.i:                                   ; preds = %vivid_is_in_use.exit76.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i77.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 26, i32 19
  %call2.i78.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i77.i) #10
  %fh_list.i79.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 26, i32 20
  %27 = ptrtoint ptr %fh_list.i79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %fh_list.i79.i, align 4
  %cmp.i.i80.i = icmp ne ptr %28, %fh_list.i79.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i77.i, i32 noundef %call2.i78.i) #10
  %phi.cast122.i = zext i1 %cmp.i.i80.i to i32
  br label %vivid_is_in_use.exit83.i

vivid_is_in_use.exit83.i:                         ; preds = %do.body1.i81.i, %vivid_is_in_use.exit76.i.vivid_is_in_use.exit83.i_crit_edge
  %retval.0.i82.i = phi i32 [ %phi.cast122.i, %do.body1.i81.i ], [ 0, %vivid_is_in_use.exit76.i.vivid_is_in_use.exit83.i_crit_edge ]
  %has_radio_tx.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 70
  %29 = ptrtoint ptr %has_radio_tx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_radio_tx.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not.i = icmp eq i8 %30, 0
  br i1 %tobool16.not.i, label %vivid_is_in_use.exit83.i.vivid_is_in_use.exit90.i_crit_edge, label %do.body1.i88.i

vivid_is_in_use.exit83.i.vivid_is_in_use.exit90.i_crit_edge: ; preds = %vivid_is_in_use.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit90.i

do.body1.i88.i:                                   ; preds = %vivid_is_in_use.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i84.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 28, i32 19
  %call2.i85.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i84.i) #10
  %fh_list.i86.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 28, i32 20
  %31 = ptrtoint ptr %fh_list.i86.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %fh_list.i86.i, align 4
  %cmp.i.i87.i = icmp ne ptr %32, %fh_list.i86.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i84.i, i32 noundef %call2.i85.i) #10
  %phi.cast123.i = zext i1 %cmp.i.i87.i to i32
  br label %vivid_is_in_use.exit90.i

vivid_is_in_use.exit90.i:                         ; preds = %do.body1.i88.i, %vivid_is_in_use.exit83.i.vivid_is_in_use.exit90.i_crit_edge
  %retval.0.i89.i = phi i32 [ %phi.cast123.i, %do.body1.i88.i ], [ 0, %vivid_is_in_use.exit83.i.vivid_is_in_use.exit90.i_crit_edge ]
  %has_sdr_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 71
  %33 = ptrtoint ptr %has_sdr_cap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_sdr_cap.i, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool20.not.i = icmp eq i8 %34, 0
  br i1 %tobool20.not.i, label %vivid_is_in_use.exit90.i.vivid_is_in_use.exit97.i_crit_edge, label %do.body1.i95.i

vivid_is_in_use.exit90.i.vivid_is_in_use.exit97.i_crit_edge: ; preds = %vivid_is_in_use.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit97.i

do.body1.i95.i:                                   ; preds = %vivid_is_in_use.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i91.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 30, i32 19
  %call2.i92.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i91.i) #10
  %fh_list.i93.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 30, i32 20
  %35 = ptrtoint ptr %fh_list.i93.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %fh_list.i93.i, align 4
  %cmp.i.i94.i = icmp ne ptr %36, %fh_list.i93.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i91.i, i32 noundef %call2.i92.i) #10
  %phi.cast124.i = zext i1 %cmp.i.i94.i to i32
  br label %vivid_is_in_use.exit97.i

vivid_is_in_use.exit97.i:                         ; preds = %do.body1.i95.i, %vivid_is_in_use.exit90.i.vivid_is_in_use.exit97.i_crit_edge
  %retval.0.i96.i = phi i32 [ %phi.cast124.i, %do.body1.i95.i ], [ 0, %vivid_is_in_use.exit90.i.vivid_is_in_use.exit97.i_crit_edge ]
  %has_meta_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 73
  %37 = ptrtoint ptr %has_meta_cap.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_meta_cap.i, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool24.not.i = icmp eq i8 %38, 0
  br i1 %tobool24.not.i, label %vivid_is_in_use.exit97.i.vivid_is_in_use.exit104.i_crit_edge, label %do.body1.i102.i

vivid_is_in_use.exit97.i.vivid_is_in_use.exit104.i_crit_edge: ; preds = %vivid_is_in_use.exit97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit104.i

do.body1.i102.i:                                  ; preds = %vivid_is_in_use.exit97.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i98.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 32, i32 19
  %call2.i99.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i98.i) #10
  %fh_list.i100.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 32, i32 20
  %39 = ptrtoint ptr %fh_list.i100.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %fh_list.i100.i, align 4
  %cmp.i.i101.i = icmp ne ptr %40, %fh_list.i100.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i98.i, i32 noundef %call2.i99.i) #10
  %phi.cast125.i = zext i1 %cmp.i.i101.i to i32
  br label %vivid_is_in_use.exit104.i

vivid_is_in_use.exit104.i:                        ; preds = %do.body1.i102.i, %vivid_is_in_use.exit97.i.vivid_is_in_use.exit104.i_crit_edge
  %retval.0.i103.i = phi i32 [ %phi.cast125.i, %do.body1.i102.i ], [ 0, %vivid_is_in_use.exit97.i.vivid_is_in_use.exit104.i_crit_edge ]
  %has_meta_out.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 74
  %41 = ptrtoint ptr %has_meta_out.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_meta_out.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool28.not.i = icmp eq i8 %42, 0
  br i1 %tobool28.not.i, label %vivid_is_in_use.exit104.i.vivid_is_in_use.exit111.i_crit_edge, label %do.body1.i109.i

vivid_is_in_use.exit104.i.vivid_is_in_use.exit111.i_crit_edge: ; preds = %vivid_is_in_use.exit104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_in_use.exit111.i

do.body1.i109.i:                                  ; preds = %vivid_is_in_use.exit104.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i105.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 34, i32 19
  %call2.i106.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i105.i) #10
  %fh_list.i107.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 34, i32 20
  %43 = ptrtoint ptr %fh_list.i107.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %fh_list.i107.i, align 4
  %cmp.i.i108.i = icmp ne ptr %44, %fh_list.i107.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i105.i, i32 noundef %call2.i106.i) #10
  %phi.cast126.i = zext i1 %cmp.i.i108.i to i32
  br label %vivid_is_in_use.exit111.i

vivid_is_in_use.exit111.i:                        ; preds = %do.body1.i109.i, %vivid_is_in_use.exit104.i.vivid_is_in_use.exit111.i_crit_edge
  %retval.0.i110.i = phi i32 [ %phi.cast126.i, %do.body1.i109.i ], [ 0, %vivid_is_in_use.exit104.i.vivid_is_in_use.exit111.i_crit_edge ]
  %has_touch_cap.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 76
  %45 = ptrtoint ptr %has_touch_cap.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_touch_cap.i, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool32.not.i = icmp eq i8 %46, 0
  br i1 %tobool32.not.i, label %vivid_is_in_use.exit111.i.vivid_is_last_user.exit_crit_edge, label %do.body1.i116.i

vivid_is_in_use.exit111.i.vivid_is_last_user.exit_crit_edge: ; preds = %vivid_is_in_use.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vivid_is_last_user.exit

do.body1.i116.i:                                  ; preds = %vivid_is_in_use.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  %fh_lock.i112.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 36, i32 19
  %call2.i113.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fh_lock.i112.i) #10
  %fh_list.i114.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 36, i32 20
  %47 = ptrtoint ptr %fh_list.i114.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %fh_list.i114.i, align 4
  %cmp.i.i115.i = icmp ne ptr %48, %fh_list.i114.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fh_lock.i112.i, i32 noundef %call2.i113.i) #10
  %phi.cast127.i = zext i1 %cmp.i.i115.i to i32
  br label %vivid_is_last_user.exit

vivid_is_last_user.exit:                          ; preds = %do.body1.i116.i, %vivid_is_in_use.exit111.i.vivid_is_last_user.exit_crit_edge
  %retval.0.i117.i = phi i32 [ %phi.cast127.i, %do.body1.i116.i ], [ 0, %vivid_is_in_use.exit111.i.vivid_is_last_user.exit_crit_edge ]
  %add.i = add nuw nsw i32 %retval.0.i61.i, %retval.0.i.i
  %add7.i = add nuw nsw i32 %add.i, %retval.0.i68.i
  %add11.i = add nuw nsw i32 %add7.i, %retval.0.i75.i
  %add15.i = add nuw nsw i32 %add11.i, %retval.0.i82.i
  %add19.i = add nuw nsw i32 %add15.i, %retval.0.i89.i
  %add23.i = add nuw nsw i32 %add19.i, %retval.0.i96.i
  %add27.i = add nuw nsw i32 %add23.i, %retval.0.i103.i
  %add31.i = add nuw nsw i32 %add27.i, %retval.0.i110.i
  %add35.i = add nuw nsw i32 %add31.i, %retval.0.i117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add35.i)
  %cmp.i = icmp eq i32 %add35.i, 1
  br i1 %cmp.i, label %do.end, label %vivid_is_last_user.exit.if.end_crit_edge

vivid_is_last_user.exit.if.end_crit_edge:         ; preds = %vivid_is_last_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %vivid_is_last_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name) #13
  tail call fastcc void @vivid_reconnect(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %do.end, %vivid_is_last_user.exit.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %49 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data, align 4
  %overlay_cap_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 190
  %51 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %overlay_cap_owner, align 8
  %cmp = icmp eq ptr %50, %52
  br i1 %cmp, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %overlay_cap_owner to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %overlay_cap_owner, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %54 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private_data, align 4
  %radio_rx_rds_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 344
  %56 = ptrtoint ptr %radio_rx_rds_owner to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %radio_rx_rds_owner, align 4
  %cmp17 = icmp eq ptr %55, %57
  br i1 %cmp17, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %radio_rx_rds_last_block = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 343
  %58 = ptrtoint ptr %radio_rx_rds_last_block to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %radio_rx_rds_last_block, align 8
  %59 = ptrtoint ptr %radio_rx_rds_owner to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %radio_rx_rds_owner, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %60 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private_data, align 4
  %radio_tx_rds_owner = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 349
  %62 = ptrtoint ptr %radio_tx_rds_owner to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %radio_tx_rds_owner, align 8
  %cmp22 = icmp eq ptr %61, %63
  br i1 %cmp22, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %radio_tx_rds_last_block = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 348
  %64 = ptrtoint ptr %radio_tx_rds_last_block to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %radio_tx_rds_last_block, align 4
  %65 = ptrtoint ptr %radio_tx_rds_owner to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %radio_tx_rds_owner, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %queue = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 10
  %66 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue, align 8
  %tobool26.not = icmp eq ptr %67, null
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @vb2_fop_release(ptr noundef %file) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 @v4l2_fh_release(ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then27
  %retval.0 = phi i32 [ %call28, %if.then27 ], [ %call30, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_reconnect(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %has_vid_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 61
  %0 = ptrtoint ptr %has_vid_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vid_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 18, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_vid_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 62
  %2 = ptrtoint ptr %has_vid_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_vid_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags3 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 20, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags3) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %has_vbi_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 63
  %4 = ptrtoint ptr %has_vbi_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_vbi_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %flags7 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 22, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags7) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %has_vbi_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 66
  %6 = ptrtoint ptr %has_vbi_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_vbi_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %flags11 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 24, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags11) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %has_radio_rx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 69
  %8 = ptrtoint ptr %has_radio_rx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_radio_rx, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %flags15 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 26, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags15) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %has_radio_tx = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 70
  %10 = ptrtoint ptr %has_radio_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_radio_tx, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %flags19 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 28, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags19) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %has_sdr_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 71
  %12 = ptrtoint ptr %has_sdr_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sdr_cap, align 8, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %flags23 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 30, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags23) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %has_meta_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 73
  %14 = ptrtoint ptr %has_meta_cap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_meta_cap, align 2, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %flags27 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 32, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags27) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %has_meta_out = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 74
  %16 = ptrtoint ptr %has_meta_out to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_meta_out, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %flags31 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 34, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags31) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %has_touch_cap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 76
  %18 = ptrtoint ptr %has_touch_cap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_touch_cap, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %flags35 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 36, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags35) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %disconnect_error = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 152
  %20 = ptrtoint ptr %disconnect_error to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %disconnect_error, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.101, ptr noundef %name)
  %vid_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %vid_cap_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid_cap_caps, align 8
  %vid_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %vid_out_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vid_out_caps, align 4
  %vbi_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %vbi_cap_caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbi_cap_caps, align 8
  %vbi_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %vbi_out_caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbi_out_caps, align 4
  %radio_rx_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %radio_rx_caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %radio_rx_caps, align 4
  %radio_tx_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %radio_tx_caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %radio_tx_caps, align 8
  %sdr_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 44
  %14 = ptrtoint ptr %sdr_cap_caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdr_cap_caps, align 8
  %meta_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 47
  %16 = ptrtoint ptr %meta_cap_caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %meta_cap_caps, align 4
  %meta_out_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 48
  %18 = ptrtoint ptr %meta_out_caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %meta_out_caps, align 8
  %touch_cap_caps = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 49
  %20 = ptrtoint ptr %touch_cap_caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %touch_cap_caps, align 4
  %or = or i32 %3, %5
  %or7 = or i32 %or, %7
  %or8 = or i32 %or7, %9
  %or9 = or i32 %or8, %11
  %or10 = or i32 %or9, %13
  %or11 = or i32 %or10, %15
  %or12 = or i32 %or11, %17
  %or13 = or i32 %or12, %19
  %or14 = or i32 %or13, %21
  %or15 = or i32 %or14, -2147483648
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or15, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_enum_fmt_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_enum_fmt_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_enum_fmt_vid(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_fmt_vid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_meta_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_meta_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_g_fmt_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vbi_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_g_fmt_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_meta_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_meta_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_s_fmt_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vbi_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_s_fmt_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_try_fmt_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_try_fmt_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %1, label %entry.if.end6_crit_edge [
    i32 6, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge14
  ]

entry.if.then_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge14
  %queue = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 8
  %call4 = tail call i32 @vb2_queue_change_type(ptr noundef %4, i32 noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %p) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_create_bufs(ptr noundef %file, ptr noundef %priv, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %format = getelementptr inbounds %struct.v4l2_create_buffers, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %1, label %entry.if.end8_crit_edge [
    i32 6, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge16
  ]

entry.if.then_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge16
  %queue = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 8
  %call6 = tail call i32 @vb2_queue_change_type(ptr noundef %4, i32 noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @vb2_ioctl_create_bufs(ptr noundef %file, ptr noundef %priv, ptr noundef %p) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call6, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_overlay(ptr noundef %file, ptr noundef %fh, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_overlay(ptr noundef %file, ptr noundef %fh, i32 noundef %i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_overlay(ptr noundef %file, ptr noundef %fh, i32 noundef %i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_g_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_g_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_s_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_s_fbuf(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_std(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr noundef %fh, i64 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_s_std(ptr noundef %file, ptr noundef %fh, i64 noundef %id) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_s_std(ptr noundef %file, ptr noundef %fh, i64 noundef %id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_querystd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_enum_input(ptr noundef %file, ptr noundef %priv, ptr noundef %inp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_enum_input_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %inp) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_enum_input(ptr noundef %file, ptr noundef %priv, ptr noundef %inp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_g_input(ptr noundef %file, ptr noundef %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_input_tch(ptr noundef %file, ptr noundef %priv, ptr noundef %i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_g_input(ptr noundef %file, ptr noundef %priv, ptr noundef %i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_s_input(ptr noundef %file, ptr noundef %priv, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_s_input_tch(ptr noundef %file, ptr noundef %priv, i32 noundef %i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vidioc_s_input(ptr noundef %file, ptr noundef %priv, i32 noundef %i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_output(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_output(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_output(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enumaudio(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_audio(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_audio(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enumaudout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_audout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_audout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_modulator(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_modulator(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %file, ptr noundef %fh, i32 noundef %type, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_g_pixelaspect(ptr noundef %file, ptr noundef %fh, i32 noundef %type, ptr noundef %f) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_g_pixelaspect(ptr noundef %file, ptr noundef %fh, i32 noundef %type, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_g_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_g_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_s_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_s_selection(ptr noundef %file, ptr noundef %fh, ptr noundef %sel) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_g_parm_tch(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @vivid_vid_cap_g_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @vivid_vid_out_g_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.then3 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_s_parm(ptr noundef %file, ptr noundef %fh, ptr noundef %parm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %1, label %if.end6 [
    i32 2, label %if.then
    i32 4, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_g_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @vivid_sdr_g_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @vivid_video_g_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %1, label %if.end6 [
    i32 2, label %if.then
    i32 4, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_s_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @vivid_sdr_s_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @vivid_video_s_tuner(ptr noundef %file, ptr noundef %fh, ptr noundef %vt) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %2 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %if.end8 [
    i32 2, label %if.then
    i32 4, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %5 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %radio_rx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %radio_tx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 345
  %cond = select i1 %cmp2, ptr %radio_rx_freq, ptr %radio_tx_freq
  %call3 = tail call i32 @vivid_radio_g_frequency(ptr noundef %file, ptr noundef %cond, ptr noundef %vf) #10
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @vivid_sdr_g_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @vivid_video_g_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call7, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %2 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %if.end8 [
    i32 2, label %if.then
    i32 4, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %5 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %radio_rx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %radio_tx_freq = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 345
  %cond = select i1 %cmp2, ptr %radio_rx_freq, ptr %radio_tx_freq
  %call3 = tail call i32 @vivid_radio_s_frequency(ptr noundef %file, ptr noundef %cond, ptr noundef %vf) #10
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @vivid_sdr_s_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @vivid_video_s_frequency(ptr noundef %file, ptr noundef %fh, ptr noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call7, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_freq_bands(ptr noundef %file, ptr noundef %fh, ptr noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %if.then
    i32 4, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_enum_freq_bands(ptr noundef %file, ptr noundef %fh, ptr noundef %band) #10
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @vivid_sdr_enum_freq_bands(ptr noundef %file, ptr noundef %fh, ptr noundef %band) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr noundef %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %call2 = tail call i32 @v4l2_ctrl_log_status(ptr noundef %file, ptr noundef %fh) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %4 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %tpg = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 231
  tail call void @tpg_log_status(ptr noundef %tpg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_hw_freq_seek(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef %file, ptr noundef %fh, ptr noundef %a) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_framesizes(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_frameintervals(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_dv_timings(ptr noundef %file, ptr noundef %fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_vid_cap_s_dv_timings(ptr noundef %file, ptr noundef %fh, ptr noundef %timings) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_vid_out_s_dv_timings(ptr noundef %file, ptr noundef %fh, ptr noundef %timings) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_dv_timings(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_query_dv_timings(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_dv_timings(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_edid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_edid(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_fmt_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_fmt_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_fmt_tch_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_change_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_overlay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_overlay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_std(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_std(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_input_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_input_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_s_input_tch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_input(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_pixelaspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_pixelaspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_parm_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_enum_freq_bands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_enum_freq_bands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_log_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_dv_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_dv_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_radio_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_read(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_radio_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_tx_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_radio_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @vivid_radio_rx_poll(ptr noundef %file, ptr noundef %wait) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @vivid_radio_tx_poll(ptr noundef %file, ptr noundef %wait) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_tx_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_tx_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_fb_release_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vivid_pdev_release(ptr nocapture noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !87, !89, !90, !92, !94, !95, !97, !99, !100, !102, !104, !105, !107, !109, !110, !112, !114, !115, !117, !119, !120, !122, !124, !125, !127, !129, !131, !133, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !230, !232, !234, !236, !237, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !266, !267, !268, !269, !271, !273, !274, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !306, !308, !310, !312, !313, !314, !315, !317, !319, !320, !321, !322, !324, !325, !326, !328, !330, !331, !332, !334, !335, !336, !338, !340, !341, !342, !343, !344, !345, !347, !349, !350, !351, !353, !355, !356, !358, !360, !361, !362, !364, !366, !367, !368, !370, !372, !373, !374, !376, !378, !379, !380, !382, !384, !385, !386, !388, !389, !390, !391, !392, !394, !396, !397, !398, !399, !401, !403, !405, !407, !409, !410, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !433, !434, !436, !437, !439, !440, !442, !443}
!llvm.module.flags = !{!445, !446, !447, !448, !449, !450, !451, !452}
!llvm.ident = !{!453}

!0 = !{ptr @__UNIQUE_ID_description315, !1, !"__UNIQUE_ID_description315", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_author316, !3, !"__UNIQUE_ID_author316", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file317, !5, !"__UNIQUE_ID_file317", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license318, !5, !"__UNIQUE_ID_license318", i1 false, i1 false}
!7 = !{ptr @__param_n_devs, !8, !"__param_n_devs", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 54, i32 1}
!9 = !{ptr @__UNIQUE_ID_n_devstype319, !8, !"__UNIQUE_ID_n_devstype319", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_n_devs320, !11, !"__UNIQUE_ID_n_devs320", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 55, i32 1}
!12 = !{ptr @__param_vid_cap_nr, !13, !"__param_vid_cap_nr", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_vid_cap_nrtype321, !13, !"__UNIQUE_ID_vid_cap_nrtype321", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_vid_cap_nr322, !16, !"__UNIQUE_ID_vid_cap_nr322", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 59, i32 1}
!17 = !{ptr @__param_vid_out_nr, !18, !"__param_vid_out_nr", i1 false, i1 false}
!18 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 62, i32 1}
!19 = !{ptr @__UNIQUE_ID_vid_out_nrtype323, !18, !"__UNIQUE_ID_vid_out_nrtype323", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_vid_out_nr324, !21, !"__UNIQUE_ID_vid_out_nr324", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 63, i32 1}
!22 = !{ptr @__param_vbi_cap_nr, !23, !"__param_vbi_cap_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 66, i32 1}
!24 = !{ptr @__UNIQUE_ID_vbi_cap_nrtype325, !23, !"__UNIQUE_ID_vbi_cap_nrtype325", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_vbi_cap_nr326, !26, !"__UNIQUE_ID_vbi_cap_nr326", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 67, i32 1}
!27 = !{ptr @__param_vbi_out_nr, !28, !"__param_vbi_out_nr", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 70, i32 1}
!29 = !{ptr @__UNIQUE_ID_vbi_out_nrtype327, !28, !"__UNIQUE_ID_vbi_out_nrtype327", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_vbi_out_nr328, !31, !"__UNIQUE_ID_vbi_out_nr328", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 71, i32 1}
!32 = !{ptr @__param_sdr_cap_nr, !33, !"__param_sdr_cap_nr", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 74, i32 1}
!34 = !{ptr @__UNIQUE_ID_sdr_cap_nrtype329, !33, !"__UNIQUE_ID_sdr_cap_nrtype329", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_sdr_cap_nr330, !36, !"__UNIQUE_ID_sdr_cap_nr330", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 75, i32 1}
!37 = !{ptr @__param_radio_rx_nr, !38, !"__param_radio_rx_nr", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 78, i32 1}
!39 = !{ptr @__UNIQUE_ID_radio_rx_nrtype331, !38, !"__UNIQUE_ID_radio_rx_nrtype331", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_radio_rx_nr332, !41, !"__UNIQUE_ID_radio_rx_nr332", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 79, i32 1}
!42 = !{ptr @__param_radio_tx_nr, !43, !"__param_radio_tx_nr", i1 false, i1 false}
!43 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 82, i32 1}
!44 = !{ptr @__UNIQUE_ID_radio_tx_nrtype333, !43, !"__UNIQUE_ID_radio_tx_nrtype333", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_radio_tx_nr334, !46, !"__UNIQUE_ID_radio_tx_nr334", i1 false, i1 false}
!46 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 83, i32 1}
!47 = !{ptr @__param_meta_cap_nr, !48, !"__param_meta_cap_nr", i1 false, i1 false}
!48 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 86, i32 1}
!49 = !{ptr @__UNIQUE_ID_meta_cap_nrtype335, !48, !"__UNIQUE_ID_meta_cap_nrtype335", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_meta_cap_nr336, !51, !"__UNIQUE_ID_meta_cap_nr336", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 87, i32 1}
!52 = !{ptr @__param_meta_out_nr, !53, !"__param_meta_out_nr", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 90, i32 1}
!54 = !{ptr @__UNIQUE_ID_meta_out_nrtype337, !53, !"__UNIQUE_ID_meta_out_nrtype337", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_meta_out_nr338, !56, !"__UNIQUE_ID_meta_out_nr338", i1 false, i1 false}
!56 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 91, i32 1}
!57 = !{ptr @__param_touch_cap_nr, !58, !"__param_touch_cap_nr", i1 false, i1 false}
!58 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 94, i32 1}
!59 = !{ptr @__UNIQUE_ID_touch_cap_nrtype339, !58, !"__UNIQUE_ID_touch_cap_nrtype339", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_touch_cap_nr340, !61, !"__UNIQUE_ID_touch_cap_nr340", i1 false, i1 false}
!61 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 95, i32 1}
!62 = !{ptr @__param_ccs_cap_mode, !63, !"__param_ccs_cap_mode", i1 false, i1 false}
!63 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 98, i32 1}
!64 = !{ptr @__UNIQUE_ID_ccs_cap_modetype341, !63, !"__UNIQUE_ID_ccs_cap_modetype341", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_ccs_cap_mode342, !66, !"__UNIQUE_ID_ccs_cap_mode342", i1 false, i1 false}
!66 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 99, i32 1}
!67 = !{ptr @__param_ccs_out_mode, !68, !"__param_ccs_out_mode", i1 false, i1 false}
!68 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 104, i32 1}
!69 = !{ptr @__UNIQUE_ID_ccs_out_modetype343, !68, !"__UNIQUE_ID_ccs_out_modetype343", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_ccs_out_mode344, !71, !"__UNIQUE_ID_ccs_out_mode344", i1 false, i1 false}
!71 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 105, i32 1}
!72 = !{ptr @__param_multiplanar, !73, !"__param_multiplanar", i1 false, i1 false}
!73 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 110, i32 1}
!74 = !{ptr @__UNIQUE_ID_multiplanartype345, !73, !"__UNIQUE_ID_multiplanartype345", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_multiplanar346, !76, !"__UNIQUE_ID_multiplanar346", i1 false, i1 false}
!76 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 111, i32 1}
!77 = !{ptr @__param_node_types, !78, !"__param_node_types", i1 false, i1 false}
!78 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 120, i32 1}
!79 = !{ptr @__UNIQUE_ID_node_typestype347, !78, !"__UNIQUE_ID_node_typestype347", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_node_types348, !81, !"__UNIQUE_ID_node_types348", i1 false, i1 false}
!81 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 121, i32 1}
!82 = !{ptr @__param_num_inputs, !83, !"__param_num_inputs", i1 false, i1 false}
!83 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 136, i32 1}
!84 = !{ptr @__UNIQUE_ID_num_inputstype349, !83, !"__UNIQUE_ID_num_inputstype349", i1 false, i1 false}
!85 = !{ptr @__UNIQUE_ID_num_inputs350, !86, !"__UNIQUE_ID_num_inputs350", i1 false, i1 false}
!86 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 137, i32 1}
!87 = !{ptr @__param_input_types, !88, !"__param_input_types", i1 false, i1 false}
!88 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 141, i32 1}
!89 = !{ptr @__UNIQUE_ID_input_typestype351, !88, !"__UNIQUE_ID_input_typestype351", i1 false, i1 false}
!90 = !{ptr @__UNIQUE_ID_input_types352, !91, !"__UNIQUE_ID_input_types352", i1 false, i1 false}
!91 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 142, i32 1}
!92 = !{ptr @__param_num_outputs, !93, !"__param_num_outputs", i1 false, i1 false}
!93 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 148, i32 1}
!94 = !{ptr @__UNIQUE_ID_num_outputstype353, !93, !"__UNIQUE_ID_num_outputstype353", i1 false, i1 false}
!95 = !{ptr @__UNIQUE_ID_num_outputs354, !96, !"__UNIQUE_ID_num_outputs354", i1 false, i1 false}
!96 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 149, i32 1}
!97 = !{ptr @__param_output_types, !98, !"__param_output_types", i1 false, i1 false}
!98 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 153, i32 1}
!99 = !{ptr @__UNIQUE_ID_output_typestype355, !98, !"__UNIQUE_ID_output_typestype355", i1 false, i1 false}
!100 = !{ptr @__UNIQUE_ID_output_types356, !101, !"__UNIQUE_ID_output_types356", i1 false, i1 false}
!101 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 154, i32 1}
!102 = !{ptr @__param_vivid_debug, !103, !"__param_vivid_debug", i1 false, i1 false}
!103 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 159, i32 1}
!104 = !{ptr @__UNIQUE_ID_vivid_debugtype357, !103, !"__UNIQUE_ID_vivid_debugtype357", i1 false, i1 false}
!105 = !{ptr @__UNIQUE_ID_vivid_debug358, !106, !"__UNIQUE_ID_vivid_debug358", i1 false, i1 false}
!106 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 160, i32 1}
!107 = !{ptr @__param_no_error_inj, !108, !"__param_no_error_inj", i1 false, i1 false}
!108 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 163, i32 1}
!109 = !{ptr @__UNIQUE_ID_no_error_injtype359, !108, !"__UNIQUE_ID_no_error_injtype359", i1 false, i1 false}
!110 = !{ptr @__UNIQUE_ID_no_error_inj360, !111, !"__UNIQUE_ID_no_error_inj360", i1 false, i1 false}
!111 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 164, i32 1}
!112 = !{ptr @__param_allocators, !113, !"__param_allocators", i1 false, i1 false}
!113 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 167, i32 1}
!114 = !{ptr @__UNIQUE_ID_allocatorstype361, !113, !"__UNIQUE_ID_allocatorstype361", i1 false, i1 false}
!115 = !{ptr @__UNIQUE_ID_allocators362, !116, !"__UNIQUE_ID_allocators362", i1 false, i1 false}
!116 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 168, i32 1}
!117 = !{ptr @__param_cache_hints, !118, !"__param_cache_hints", i1 false, i1 false}
!118 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 175, i32 1}
!119 = !{ptr @__UNIQUE_ID_cache_hintstype363, !118, !"__UNIQUE_ID_cache_hintstype363", i1 false, i1 false}
!120 = !{ptr @__UNIQUE_ID_cache_hints364, !121, !"__UNIQUE_ID_cache_hints364", i1 false, i1 false}
!121 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 176, i32 1}
!122 = !{ptr @__param_supports_requests, !123, !"__param_supports_requests", i1 false, i1 false}
!123 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 183, i32 1}
!124 = !{ptr @__UNIQUE_ID_supports_requeststype365, !123, !"__UNIQUE_ID_supports_requeststype365", i1 false, i1 false}
!125 = !{ptr @__UNIQUE_ID_supports_requests366, !126, !"__UNIQUE_ID_supports_requests366", i1 false, i1 false}
!126 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 184, i32 1}
!127 = !{ptr @vivid_min_rect, !128, !"vivid_min_rect", i1 false, i1 false}
!128 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 191, i32 24}
!129 = !{ptr @vivid_max_rect, !130, !"vivid_max_rect", i1 false, i1 false}
!130 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 195, i32 24}
!131 = !{ptr @__initcall__kmod_vivid__371_2152_vivid_init6, !132, !"__initcall__kmod_vivid__371_2152_vivid_init6", i1 false, i1 false}
!132 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2152, i32 1}
!133 = !{ptr @__exitcall_vivid_exit, !134, !"__exitcall_vivid_exit", i1 false, i1 false}
!134 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2153, i32 1}
!135 = !{ptr @vivid_debug, !136, !"vivid_debug", i1 false, i1 false}
!136 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 158, i32 10}
!137 = !{ptr @no_error_inj, !138, !"no_error_inj", i1 false, i1 false}
!138 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 162, i32 13}
!139 = !{ptr @__param_str_n_devs, !8, !"__param_str_n_devs", i1 false, i1 false}
!140 = !{ptr @n_devs, !141, !"n_devs", i1 false, i1 false}
!141 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 53, i32 17}
!142 = !{ptr @__param_str_vid_cap_nr, !13, !"__param_str_vid_cap_nr", i1 false, i1 false}
!143 = !{ptr @__param_arr_vid_cap_nr, !13, !"__param_arr_vid_cap_nr", i1 false, i1 false}
!144 = !{ptr @vid_cap_nr, !145, !"vid_cap_nr", i1 false, i1 false}
!145 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 57, i32 12}
!146 = !{ptr @__param_str_vid_out_nr, !18, !"__param_str_vid_out_nr", i1 false, i1 false}
!147 = !{ptr @__param_arr_vid_out_nr, !18, !"__param_arr_vid_out_nr", i1 false, i1 false}
!148 = !{ptr @vid_out_nr, !149, !"vid_out_nr", i1 false, i1 false}
!149 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 61, i32 12}
!150 = !{ptr @__param_str_vbi_cap_nr, !23, !"__param_str_vbi_cap_nr", i1 false, i1 false}
!151 = !{ptr @__param_arr_vbi_cap_nr, !23, !"__param_arr_vbi_cap_nr", i1 false, i1 false}
!152 = !{ptr @vbi_cap_nr, !153, !"vbi_cap_nr", i1 false, i1 false}
!153 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 65, i32 12}
!154 = !{ptr @__param_str_vbi_out_nr, !28, !"__param_str_vbi_out_nr", i1 false, i1 false}
!155 = !{ptr @__param_arr_vbi_out_nr, !28, !"__param_arr_vbi_out_nr", i1 false, i1 false}
!156 = !{ptr @vbi_out_nr, !157, !"vbi_out_nr", i1 false, i1 false}
!157 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 69, i32 12}
!158 = !{ptr @__param_str_sdr_cap_nr, !33, !"__param_str_sdr_cap_nr", i1 false, i1 false}
!159 = !{ptr @__param_arr_sdr_cap_nr, !33, !"__param_arr_sdr_cap_nr", i1 false, i1 false}
!160 = !{ptr @sdr_cap_nr, !161, !"sdr_cap_nr", i1 false, i1 false}
!161 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 73, i32 12}
!162 = !{ptr @__param_str_radio_rx_nr, !38, !"__param_str_radio_rx_nr", i1 false, i1 false}
!163 = !{ptr @__param_arr_radio_rx_nr, !38, !"__param_arr_radio_rx_nr", i1 false, i1 false}
!164 = !{ptr @radio_rx_nr, !165, !"radio_rx_nr", i1 false, i1 false}
!165 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 77, i32 12}
!166 = !{ptr @__param_str_radio_tx_nr, !43, !"__param_str_radio_tx_nr", i1 false, i1 false}
!167 = !{ptr @__param_arr_radio_tx_nr, !43, !"__param_arr_radio_tx_nr", i1 false, i1 false}
!168 = !{ptr @radio_tx_nr, !169, !"radio_tx_nr", i1 false, i1 false}
!169 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 81, i32 12}
!170 = !{ptr @__param_str_meta_cap_nr, !48, !"__param_str_meta_cap_nr", i1 false, i1 false}
!171 = !{ptr @__param_arr_meta_cap_nr, !48, !"__param_arr_meta_cap_nr", i1 false, i1 false}
!172 = !{ptr @meta_cap_nr, !173, !"meta_cap_nr", i1 false, i1 false}
!173 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 85, i32 12}
!174 = !{ptr @__param_str_meta_out_nr, !53, !"__param_str_meta_out_nr", i1 false, i1 false}
!175 = !{ptr @__param_arr_meta_out_nr, !53, !"__param_arr_meta_out_nr", i1 false, i1 false}
!176 = !{ptr @meta_out_nr, !177, !"meta_out_nr", i1 false, i1 false}
!177 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 89, i32 12}
!178 = !{ptr @__param_str_touch_cap_nr, !58, !"__param_str_touch_cap_nr", i1 false, i1 false}
!179 = !{ptr @__param_arr_touch_cap_nr, !58, !"__param_arr_touch_cap_nr", i1 false, i1 false}
!180 = !{ptr @touch_cap_nr, !181, !"touch_cap_nr", i1 false, i1 false}
!181 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 93, i32 12}
!182 = !{ptr @__param_str_ccs_cap_mode, !63, !"__param_str_ccs_cap_mode", i1 false, i1 false}
!183 = !{ptr @__param_arr_ccs_cap_mode, !63, !"__param_arr_ccs_cap_mode", i1 false, i1 false}
!184 = !{ptr @ccs_cap_mode, !185, !"ccs_cap_mode", i1 false, i1 false}
!185 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 97, i32 12}
!186 = !{ptr @__param_str_ccs_out_mode, !68, !"__param_str_ccs_out_mode", i1 false, i1 false}
!187 = !{ptr @__param_arr_ccs_out_mode, !68, !"__param_arr_ccs_out_mode", i1 false, i1 false}
!188 = !{ptr @ccs_out_mode, !189, !"ccs_out_mode", i1 false, i1 false}
!189 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 103, i32 12}
!190 = !{ptr @__param_str_multiplanar, !73, !"__param_str_multiplanar", i1 false, i1 false}
!191 = !{ptr @__param_arr_multiplanar, !73, !"__param_arr_multiplanar", i1 false, i1 false}
!192 = !{ptr @multiplanar, !193, !"multiplanar", i1 false, i1 false}
!193 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 109, i32 17}
!194 = !{ptr @__param_str_node_types, !78, !"__param_str_node_types", i1 false, i1 false}
!195 = !{ptr @__param_arr_node_types, !78, !"__param_arr_node_types", i1 false, i1 false}
!196 = !{ptr @node_types, !197, !"node_types", i1 false, i1 false}
!197 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 117, i32 21}
!198 = !{ptr @__param_str_num_inputs, !83, !"__param_str_num_inputs", i1 false, i1 false}
!199 = !{ptr @__param_arr_num_inputs, !83, !"__param_arr_num_inputs", i1 false, i1 false}
!200 = !{ptr @num_inputs, !201, !"num_inputs", i1 false, i1 false}
!201 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 135, i32 17}
!202 = !{ptr @__param_str_input_types, !88, !"__param_str_input_types", i1 false, i1 false}
!203 = !{ptr @__param_arr_input_types, !88, !"__param_arr_input_types", i1 false, i1 false}
!204 = !{ptr @input_types, !205, !"input_types", i1 false, i1 false}
!205 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 140, i32 17}
!206 = !{ptr @__param_str_num_outputs, !93, !"__param_str_num_outputs", i1 false, i1 false}
!207 = !{ptr @__param_arr_num_outputs, !93, !"__param_arr_num_outputs", i1 false, i1 false}
!208 = !{ptr @num_outputs, !209, !"num_outputs", i1 false, i1 false}
!209 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 147, i32 17}
!210 = !{ptr @__param_str_output_types, !98, !"__param_str_output_types", i1 false, i1 false}
!211 = !{ptr @__param_arr_output_types, !98, !"__param_arr_output_types", i1 false, i1 false}
!212 = !{ptr @output_types, !213, !"output_types", i1 false, i1 false}
!213 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 152, i32 17}
!214 = !{ptr @__param_str_vivid_debug, !103, !"__param_str_vivid_debug", i1 false, i1 false}
!215 = !{ptr @__param_str_no_error_inj, !108, !"__param_str_no_error_inj", i1 false, i1 false}
!216 = !{ptr @__param_str_allocators, !113, !"__param_str_allocators", i1 false, i1 false}
!217 = !{ptr @__param_arr_allocators, !113, !"__param_arr_allocators", i1 false, i1 false}
!218 = !{ptr @allocators, !219, !"allocators", i1 false, i1 false}
!219 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 166, i32 21}
!220 = !{ptr @__param_str_cache_hints, !118, !"__param_str_cache_hints", i1 false, i1 false}
!221 = !{ptr @__param_arr_cache_hints, !118, !"__param_arr_cache_hints", i1 false, i1 false}
!222 = !{ptr @cache_hints, !223, !"cache_hints", i1 false, i1 false}
!223 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 172, i32 21}
!224 = !{ptr @__param_str_supports_requests, !123, !"__param_str_supports_requests", i1 false, i1 false}
!225 = !{ptr @__param_arr_supports_requests, !123, !"__param_arr_supports_requests", i1 false, i1 false}
!226 = !{ptr @supports_requests, !227, !"supports_requests", i1 false, i1 false}
!227 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 180, i32 21}
!228 = !{ptr @.str, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2127, i32 11}
!230 = !{ptr @vivid_pdrv, !231, !"vivid_pdrv", i1 false, i1 false}
!231 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2123, i32 31}
!232 = !{ptr @.str.1, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1998, i32 43}
!234 = !{ptr @.str.2, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2002, i32 3}
!236 = !{ptr @.str.3, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.4, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @vivid_probe._entry, !235, !"_entry", i1 false, i1 false}
!239 = !{ptr @vivid_probe._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.6, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2021, i32 3}
!242 = !{ptr @vivid_probe._entry.5, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @vivid_probe._entry_ptr.7, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @vivid_create_instance.def_dv_timings, !245, !"def_dv_timings", i1 false, i1 false}
!245 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1724, i32 38}
!246 = !{ptr @.str.8, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1752, i32 4}
!248 = !{ptr @.str.9, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1760, i32 4}
!250 = !{ptr @vivid_create_instance.__key, !251, !"__key", i1 false, i1 false}
!251 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1878, i32 2}
!252 = !{ptr @.str.10, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @vivid_create_instance.__key.11, !254, !"__key", i1 false, i1 false}
!254 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1879, i32 2}
!255 = !{ptr @.str.12, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @vivid_create_instance.__key.13, !257, !"__key", i1 false, i1 false}
!257 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1891, i32 2}
!258 = !{ptr @.str.14, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @vivid_create_instance.__key.15, !260, !"__key", i1 false, i1 false}
!260 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1933, i32 3}
!261 = !{ptr @.str.16, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.17, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1934, i32 22}
!264 = !{ptr @.str.18, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1939, i32 4}
!266 = !{ptr @.str.19, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @vivid_create_instance._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @vivid_create_instance._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @vivid_media_ops, !270, !"vivid_media_ops", i1 false, i1 false}
!270 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 863, i32 38}
!271 = !{ptr @.str.20, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 918, i32 2}
!273 = !{ptr @.str.21, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @vivid_detect_feature_set._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @vivid_detect_feature_set._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.22, !272, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.23, !272, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.25, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 978, i32 3}
!280 = !{ptr @vivid_detect_feature_set._entry.24, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @vivid_detect_feature_set._entry_ptr.26, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.28, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 984, i32 3}
!284 = !{ptr @vivid_detect_feature_set._entry.27, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @vivid_detect_feature_set._entry_ptr.29, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.31, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1005, i32 3}
!288 = !{ptr @vivid_detect_feature_set._entry.30, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @vivid_detect_feature_set._entry_ptr.32, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.34, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1010, i32 3}
!292 = !{ptr @vivid_detect_feature_set._entry.33, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @vivid_detect_feature_set._entry_ptr.35, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.37, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1047, i32 3}
!296 = !{ptr @vivid_detect_feature_set._entry.36, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @vivid_detect_feature_set._entry_ptr.38, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.40, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1062, i32 3}
!300 = !{ptr @vivid_detect_feature_set._entry.39, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @vivid_detect_feature_set._entry_ptr.41, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.42, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1283, i32 19}
!304 = !{ptr @.str.43, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1284, i32 44}
!306 = !{ptr @.str.44, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1284, i32 50}
!308 = !{ptr @vivid_hdmi_edid, !309, !"vivid_hdmi_edid", i1 false, i1 false}
!309 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 199, i32 17}
!310 = !{ptr @.str.45, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1373, i32 3}
!312 = !{ptr @.str.46, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @vivid_create_queues._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @vivid_create_queues._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.47, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1393, i32 5}
!317 = !{ptr @.str.48, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1425, i32 4}
!319 = !{ptr @.str.49, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @vivid_create_devnodes._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @vivid_create_devnodes._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.51, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1433, i32 3}
!324 = !{ptr @vivid_create_devnodes._entry.50, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @vivid_create_devnodes._entry_ptr.52, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.53, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1443, i32 5}
!328 = !{ptr @.str.55, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1477, i32 4}
!330 = !{ptr @vivid_create_devnodes._entry.54, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @vivid_create_devnodes._entry_ptr.56, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.58, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1489, i32 3}
!334 = !{ptr @vivid_create_devnodes._entry.57, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @vivid_create_devnodes._entry_ptr.59, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.60, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1496, i32 5}
!338 = !{ptr @.str.62, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1517, i32 3}
!340 = !{ptr @vivid_create_devnodes._entry.61, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @vivid_create_devnodes._entry_ptr.63, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.64, !339, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.65, !339, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.66, !339, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.67, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1527, i32 5}
!347 = !{ptr @.str.69, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1549, i32 3}
!349 = !{ptr @vivid_create_devnodes._entry.68, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @vivid_create_devnodes._entry_ptr.70, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.71, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1559, i32 5}
!353 = !{ptr @vivid_create_devnodes._entry.72, !354, !"_entry", i1 false, i1 false}
!354 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1579, i32 3}
!355 = !{ptr @vivid_create_devnodes._entry_ptr.73, !354, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.74, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1586, i32 5}
!358 = !{ptr @.str.76, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1598, i32 3}
!360 = !{ptr @vivid_create_devnodes._entry.75, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @vivid_create_devnodes._entry_ptr.77, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.78, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1605, i32 5}
!364 = !{ptr @.str.80, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1618, i32 3}
!366 = !{ptr @vivid_create_devnodes._entry.79, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @vivid_create_devnodes._entry_ptr.81, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.82, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1625, i32 5}
!370 = !{ptr @.str.84, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1646, i32 3}
!372 = !{ptr @vivid_create_devnodes._entry.83, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @vivid_create_devnodes._entry_ptr.85, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.86, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1654, i32 5}
!376 = !{ptr @.str.88, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1676, i32 3}
!378 = !{ptr @vivid_create_devnodes._entry.87, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @vivid_create_devnodes._entry_ptr.89, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.90, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1684, i32 5}
!382 = !{ptr @.str.92, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1705, i32 3}
!384 = !{ptr @vivid_create_devnodes._entry.91, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @vivid_create_devnodes._entry_ptr.93, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.95, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 1714, i32 3}
!388 = !{ptr @.str.96, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.97, !387, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @vivid_create_devnodes._entry.94, !387, !"_entry", i1 false, i1 false}
!391 = !{ptr @vivid_create_devnodes._entry_ptr.98, !387, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @vivid_fops, !393, !"vivid_fops", i1 false, i1 false}
!393 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 647, i32 42}
!394 = !{ptr @.str.99, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 628, i32 3}
!396 = !{ptr @.str.100, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @vivid_fop_release._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @vivid_fop_release._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @vivid_ioctl_ops, !400, !"vivid_ioctl_ops", i1 false, i1 false}
!400 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 708, i32 36}
!401 = !{ptr @.str.101, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 243, i32 4}
!403 = !{ptr @vivid_radio_fops, !404, !"vivid_radio_fops", i1 false, i1 false}
!404 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 658, i32 42}
!405 = !{ptr @vivid_devs, !406, !"vivid_devs", i1 false, i1 false}
!406 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 189, i32 26}
!407 = !{ptr @.str.102, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2048, i32 4}
!409 = !{ptr @.str.103, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @vivid_remove._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @vivid_remove._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @vivid_remove._entry.104, !413, !"_entry", i1 false, i1 false}
!413 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2053, i32 4}
!414 = !{ptr @vivid_remove._entry_ptr.105, !413, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @vivid_remove._entry.106, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2058, i32 4}
!417 = !{ptr @vivid_remove._entry_ptr.107, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @vivid_remove._entry.108, !419, !"_entry", i1 false, i1 false}
!419 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2063, i32 4}
!420 = !{ptr @vivid_remove._entry_ptr.109, !419, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @vivid_remove._entry.110, !422, !"_entry", i1 false, i1 false}
!422 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2068, i32 4}
!423 = !{ptr @vivid_remove._entry_ptr.111, !422, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @vivid_remove._entry.112, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2073, i32 4}
!426 = !{ptr @vivid_remove._entry_ptr.113, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @vivid_remove._entry.114, !428, !"_entry", i1 false, i1 false}
!428 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2078, i32 4}
!429 = !{ptr @vivid_remove._entry_ptr.115, !428, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.117, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2083, i32 4}
!432 = !{ptr @vivid_remove._entry.116, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @vivid_remove._entry_ptr.118, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @vivid_remove._entry.119, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2089, i32 4}
!436 = !{ptr @vivid_remove._entry_ptr.120, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @vivid_remove._entry.121, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2094, i32 4}
!439 = !{ptr @vivid_remove._entry_ptr.122, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @vivid_remove._entry.123, !441, !"_entry", i1 false, i1 false}
!441 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2099, i32 4}
!442 = !{ptr @vivid_remove._entry_ptr.124, !441, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @vivid_pdev, !444, !"vivid_pdev", i1 false, i1 false}
!444 = !{!"../drivers/media/test-drivers/vivid/vivid-core.c", i32 2118, i32 31}
!445 = !{i32 1, !"wchar_size", i32 2}
!446 = !{i32 1, !"min_enum_size", i32 4}
!447 = !{i32 8, !"branch-target-enforcement", i32 0}
!448 = !{i32 8, !"sign-return-address", i32 0}
!449 = !{i32 8, !"sign-return-address-all", i32 0}
!450 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!451 = !{i32 7, !"uwtable", i32 1}
!452 = !{i32 7, !"frame-pointer", i32 2}
!453 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!454 = !{i8 0, i8 2}
!455 = !{!"branch_weights", i32 1, i32 2000}
