; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-video.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx231xx_fmt = type { ptr, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.anon.121 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.anon.123 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.cx231xx_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.list_head, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_dbg_match = type { i32, %union.anon.90 }
%union.anon.90 = type { i32, [28 x i8] }
%struct.v4l2_dbg_chip_info = type { %struct.v4l2_dbg_match, [32 x i8], i32, [32 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.118, i16, i16, i16, [10 x i16] }
%union.anon.118 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__param_str_isoc_debug = internal constant [19 x i8] c"cx231xx.isoc_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@isoc_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_isoc_debug = internal constant %struct.kernel_param { ptr @__param_str_isoc_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @isoc_debug } }, section "__param", align 4
@__UNIQUE_ID_isoc_debugtype303 = internal constant [32 x i8] c"cx231xx.parmtype=isoc_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_debug304 = internal constant [63 x i8] c"cx231xx.parm=isoc_debug:enable debug messages [isoc transfers]\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [62 x i8] c"cx231xx.author=Srinivasa Deevi <srinivasa.deevi@conexant.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [67 x i8] c"cx231xx.description=Conexant cx231xx based USB video device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [47 x i8] c"cx231xx.file=drivers/media/usb/cx231xx/cx231xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [20 x i8] c"cx231xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version309 = internal constant [22 x i8] c"cx231xx.version=0.0.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx231xx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_card = internal constant [13 x i8] c"cx231xx.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype310 = internal constant [35 x i8] c"cx231xx.parmtype=card:array of int\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [17 x i8] c"cx231xx.video_nr\00", align 1
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype311 = internal constant [39 x i8] c"cx231xx.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__param_str_vbi_nr = internal constant [15 x i8] c"cx231xx.vbi_nr\00", align 1
@__param_arr_vbi_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_nr }, align 4
@__param_vbi_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vbi_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_nrtype312 = internal constant [37 x i8] c"cx231xx.parmtype=vbi_nr:array of int\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [17 x i8] c"cx231xx.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype313 = internal constant [39 x i8] c"cx231xx.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card314 = internal constant [28 x i8] c"cx231xx.parm=card:card type\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr315 = internal constant [43 x i8] c"cx231xx.parm=video_nr:video device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_nr316 = internal constant [39 x i8] c"cx231xx.parm=vbi_nr:vbi device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr317 = internal constant [43 x i8] c"cx231xx.parm=radio_nr:radio device numbers\00", section ".modinfo", align 1
@__param_str_video_debug = internal constant [20 x i8] c"cx231xx.video_debug\00", align 1
@video_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_video_debug = internal constant %struct.kernel_param { ptr @__param_str_video_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @video_debug } }, section "__param", align 4
@__UNIQUE_ID_video_debugtype318 = internal constant [33 x i8] c"cx231xx.parmtype=video_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_debug319 = internal constant [55 x i8] c"cx231xx.parm=video_debug:enable debug messages [video]\00", section ".modinfo", align 1
@cx231xx_boards = external dso_local local_unnamed_addr global [0 x %struct.cx231xx_board], align 8
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@video_mux.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/cx231xx/cx231xx-video.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"video_mux : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@iname = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null, ptr @.str.72], [36 x i8] zeroinitializer }, align 32
@cx231xx_v4l2_create_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to initialize input pad[%d]!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx231xx_v4l2_create_entities\00", [35 x i8] zeroinitializer }, align 32
@cx231xx_v4l2_create_entities._entry_ptr = internal global ptr @cx231xx_v4l2_create_entities._entry, section ".printk_index", align 4
@cx231xx_v4l2_create_entities._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to register input entity %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@cx231xx_v4l2_create_entities._entry_ptr.10 = internal global ptr @cx231xx_v4l2_create_entities._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Tuner\00", [26 x i8] zeroinitializer }, align 32
@cx231xx_s_frequency.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx231xx_s_frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_s_frequency.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s() %u  :  %u\0A\00", [16 x i8] zeroinitializer }, align 32
@cx231xx_s_frequency.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"if_frequency is set to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cx231xx_s_frequency.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.16, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set New FREQUENCY to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AFE (byte)\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Video (byte)\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S (byte)\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AFE (dword)\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Video (dword)\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S (dword)\00", [20 x i8] zeroinitializer }, align 32
@cx231xx_release_analog_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1559, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"V4L2 device %s deregistered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cx231xx_release_analog_resources\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_release_analog_resources._entry_ptr = internal global ptr @cx231xx_release_analog_resources._entry, section ".printk_index", align 4
@cx231xx_release_analog_resources._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1564, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_release_analog_resources._entry_ptr.28 = internal global ptr @cx231xx_release_analog_resources._entry.27, section ".printk_index", align 4
@cx231xx_register_analog_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1760, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"v4l2 driver version %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx231xx_register_analog_devices\00", [32 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr = internal global ptr @cx231xx_register_analog_devices._entry, section ".printk_index", align 4
@format = internal global { [1 x %struct.cx231xx_fmt], [16 x i8] } { [1 x %struct.cx231xx_fmt] [%struct.cx231xx_fmt { ptr null, i32 1448695129, i32 16, i32 0 }], [16 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cx231xx_video:1776:(&dev->ctrl_handler)->_lock\00", [49 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cx231xx_video:1777:(&dev->radio_ctrl_handler)->_lock\00", [43 x i8] zeroinitializer }, align 32
@cx231xx_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @cx231xx_v4l_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.4, i32 1801, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initialize video media entity!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.38 = internal global ptr @cx231xx_register_analog_devices._entry.35, section ".printk_index", align 4
@cx231xx_video_qops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@video_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.4, i32 1842, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to register video device (error=%i).\0A\00", [51 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.41 = internal global ptr @cx231xx_register_analog_devices._entry.39, section ".printk_index", align 4
@cx231xx_register_analog_devices._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.30, ptr @.str.4, i32 1847, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Registered video device %s [v4l2]\0A\00", [61 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.44 = internal global ptr @cx231xx_register_analog_devices._entry.42, section ".printk_index", align 4
@cx231xx_vbi_template = internal global { %struct.video_device, [344 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx231xx-vbi\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbi\00", [28 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.4, i32 1861, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to initialize vbi media entity!\0A\00", [56 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.49 = internal global ptr @cx231xx_register_analog_devices._entry.47, section ".printk_index", align 4
@cx231xx_vbi_qops = external dso_local global %struct.vb2_ops, align 4
@vbi_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.30, ptr @.str.4, i32 1898, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register vbi device\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.52 = internal global ptr @cx231xx_register_analog_devices._entry.50, section ".printk_index", align 4
@cx231xx_register_analog_devices._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.30, ptr @.str.4, i32 1903, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Registered VBI device %s\0A\00", [38 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.55 = internal global ptr @cx231xx_register_analog_devices._entry.53, section ".printk_index", align 4
@cx231xx_radio_template = internal global { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @radio_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx231xx-radio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr null, ptr @radio_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.30, ptr @.str.4, i32 1914, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't register radio device\0A\00", [35 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.59 = internal global ptr @cx231xx_register_analog_devices._entry.57, section ".printk_index", align 4
@cx231xx_register_analog_devices._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.30, ptr @.str.4, i32 1918, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Registered radio device as %s\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_register_analog_devices._entry_ptr.62 = internal global ptr @cx231xx_register_analog_devices._entry.60, section ".printk_index", align 4
@card = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@buffer_filled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s %s :[%p/%d] wakeup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"buffer_filled\00", [18 x i8] zeroinitializer }, align 32
@buffer_filled._entry_ptr = internal global ptr @buffer_filled._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@get_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %s :No active queue to serve\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_next_buf\00", [19 x i8] zeroinitializer }, align 32
@get_next_buf._entry_ptr = internal global ptr @get_next_buf._entry, section ".printk_index", align 4
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Composite1\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cable TV\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVB\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@cx231xx_v4l_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @cx231xx_v4l2_open, ptr @cx231xx_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cx231xx_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @cx231xx_enum_input, ptr @cx231xx_g_input, ptr @cx231xx_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx231xx_g_tuner, ptr @cx231xx_s_tuner, ptr @cx231xx_g_frequency, ptr @cx231xx_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @cx231xx_g_register, ptr @cx231xx_s_register, ptr @cx231xx_g_chip_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@cx231xx_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %s :video_open: setting radio device\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx231xx_v4l2_open\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_v4l2_open._entry_ptr = internal global ptr @cx231xx_v4l2_open._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 903, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: queue busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %s :Fourcc format (%08x) invalid.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@cx231xx_enable_analog_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 145, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Couldn't change link %s->%s to %s. Error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cx231xx_enable_analog_tuner\00", [36 x i8] zeroinitializer }, align 32
@cx231xx_enable_analog_tuner._entry_ptr = internal global ptr @cx231xx_enable_analog_tuner._entry, section ".printk_index", align 4
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@cx231xx_enable_analog_tuner.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.4, ptr @.str.85, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link %s->%s was %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@cx231xx_isoc_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %s :packet bigger than packet size\00", [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx231xx_isoc_copy\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_isoc_copy._entry_ptr = internal global ptr @cx231xx_isoc_copy._entry, section ".printk_index", align 4
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %s :URB status %d [%s].\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s %s :URB packet %d, status %d [%s].\0A\00", [55 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.102 = internal global ptr @print_err_status._entry.100, section ".printk_index", align 4
@radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @cx231xx_v4l2_open, ptr @cx231xx_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@radio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cx231xx_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radio_g_tuner, ptr @radio_s_tuner, ptr @cx231xx_g_frequency, ptr @cx231xx_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @cx231xx_g_register, ptr @cx231xx_s_register, ptr @cx231xx_g_chip_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.107 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.110 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.111 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.115 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.116 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 21, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.125 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.129 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"isoc_debug\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 44, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 59, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"video_debug\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 76, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 819, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 962, i32 20 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1007, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1011, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1096, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1135, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1163, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1184, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1191, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1205, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1208, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1211, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1214, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1217, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1220, i32 23 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1558, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1563, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1760, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 81, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1776, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1777, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [23 x i8] c"cx231xx_video_template\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1686, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1796, i32 62 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1801, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [19 x i8] c"cx231xx_video_qops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 797, i32 23 }
@___asan_gen_.272 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 62, i32 21 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1840, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1846, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"cx231xx_vbi_template\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1684, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1851, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1855, i32 63 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1861, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"vbi_nr\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 63, i32 21 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1898, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1902, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [23 x i8] c"cx231xx_radio_template\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1716, i32 28 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1907, i32 30 }
@___asan_gen_.323 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 64, i32 21 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1913, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1917, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 61, i32 21 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 169, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1163, i32 7 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 235, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 963, i32 30 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 964, i32 30 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 965, i32 30 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 966, i32 30 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 967, i32 30 }
@___asan_gen_.378 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 912, i32 31 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1734, i32 41 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"cx231xx_v4l_fops\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1639, i32 42 }
@___asan_gen_.386 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1649, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1530, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 903, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 869, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 141, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 148, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 297, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 186, i32 17 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 190, i32 12 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 193, i32 12 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 196, i32 12 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 199, i32 12 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 202, i32 12 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 205, i32 12 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 208, i32 12 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 211, i32 12 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 215, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 217, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [11 x i8] c"radio_fops\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1693, i32 42 }
@___asan_gen_.491 = private unnamed_addr constant [16 x i8] c"radio_ioctl_ops\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1701, i32 36 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [45 x i8] c"../drivers/media/usb/cx231xx/cx231xx-video.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1473, i32 19 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_card314, ptr @__UNIQUE_ID_cardtype310, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_isoc_debug304, ptr @__UNIQUE_ID_isoc_debugtype303, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_radio_nr317, ptr @__UNIQUE_ID_radio_nrtype313, ptr @__UNIQUE_ID_vbi_nr316, ptr @__UNIQUE_ID_vbi_nrtype312, ptr @__UNIQUE_ID_version309, ptr @__UNIQUE_ID_video_debug319, ptr @__UNIQUE_ID_video_debugtype318, ptr @__UNIQUE_ID_video_nr315, ptr @__UNIQUE_ID_video_nrtype311, ptr @__modver_attr, ptr @__param_card, ptr @__param_isoc_debug, ptr @__param_radio_nr, ptr @__param_vbi_nr, ptr @__param_video_debug, ptr @__param_video_nr, ptr @buffer_filled._entry, ptr @buffer_filled._entry_ptr, ptr @cx231xx_enable_analog_tuner._entry, ptr @cx231xx_enable_analog_tuner._entry_ptr, ptr @cx231xx_isoc_copy._entry, ptr @cx231xx_isoc_copy._entry_ptr, ptr @cx231xx_register_analog_devices._entry, ptr @cx231xx_register_analog_devices._entry.35, ptr @cx231xx_register_analog_devices._entry.39, ptr @cx231xx_register_analog_devices._entry.42, ptr @cx231xx_register_analog_devices._entry.47, ptr @cx231xx_register_analog_devices._entry.50, ptr @cx231xx_register_analog_devices._entry.53, ptr @cx231xx_register_analog_devices._entry.57, ptr @cx231xx_register_analog_devices._entry.60, ptr @cx231xx_register_analog_devices._entry_ptr, ptr @cx231xx_register_analog_devices._entry_ptr.38, ptr @cx231xx_register_analog_devices._entry_ptr.41, ptr @cx231xx_register_analog_devices._entry_ptr.44, ptr @cx231xx_register_analog_devices._entry_ptr.49, ptr @cx231xx_register_analog_devices._entry_ptr.52, ptr @cx231xx_register_analog_devices._entry_ptr.55, ptr @cx231xx_register_analog_devices._entry_ptr.59, ptr @cx231xx_register_analog_devices._entry_ptr.62, ptr @cx231xx_release_analog_resources._entry, ptr @cx231xx_release_analog_resources._entry.27, ptr @cx231xx_release_analog_resources._entry_ptr, ptr @cx231xx_release_analog_resources._entry_ptr.28, ptr @cx231xx_v4l2_create_entities._entry, ptr @cx231xx_v4l2_create_entities._entry.8, ptr @cx231xx_v4l2_create_entities._entry_ptr, ptr @cx231xx_v4l2_create_entities._entry_ptr.10, ptr @cx231xx_v4l2_open._entry, ptr @cx231xx_v4l2_open._entry_ptr, ptr @get_next_buf._entry, ptr @get_next_buf._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.100, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.102, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @isoc_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @iname, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @format, ptr @cx231xx_register_analog_devices._key, ptr @.str.31, ptr @cx231xx_register_analog_devices._key.32, ptr @.str.33, ptr @cx231xx_video_template, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @cx231xx_video_qops, ptr @video_nr, ptr @.str.40, ptr @.str.43, ptr @cx231xx_vbi_template, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @vbi_nr, ptr @.str.51, ptr @.str.54, ptr @cx231xx_radio_template, ptr @.str.56, ptr @radio_nr, ptr @.str.58, ptr @.str.61, ptr @card, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @cx231xx_v4l_fops, ptr @video_ioctl_ops, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @radio_fops, ptr @radio_ioctl_ops, ptr @.str.103], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isoc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iname to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_v4l2_create_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_v4l2_create_entities._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_release_analog_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_release_analog_resources._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_vbi_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_radio_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_register_analog_devices._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_filled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_v4l_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_enable_analog_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_isoc_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cx231xx_find_boundary_SAV_EAV(ptr nocapture noundef readonly %p_buffer, ptr nocapture noundef readonly %partial_buf, ptr nocapture noundef writeonly %p_bytes_used) local_unnamed_addr #1 align 64 {
entry:
  %boundary_bytes = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %boundary_bytes) #11
  %0 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %boundary_bytes, i32 0, i32 6
  %6 = ptrtoint ptr %p_bytes_used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %p_bytes_used, align 4
  %7 = ptrtoint ptr %partial_buf to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %partial_buf, align 1
  %9 = ptrtoint ptr %boundary_bytes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %boundary_bytes, align 4
  %10 = ptrtoint ptr %p_buffer to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %p_buffer, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %8)
  %cmp2.i = icmp ugt i32 %8, -16777217
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp6.i = icmp eq i8 %14, 0
  %or.cond = select i1 %cmp2.i, i1 %cmp6.i, i1 false
  br i1 %or.cond, label %land.lhs.true8.i, label %for.inc.i

land.lhs.true8.i:                                 ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp12.i = icmp eq i8 %16, 0
  br i1 %cmp12.i, label %land.lhs.true8.i.cx231xx_find_next_SAV_EAV.exit_crit_edge, label %land.lhs.true8.i.for.inc.i.1_crit_edge

land.lhs.true8.i.for.inc.i.1_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

land.lhs.true8.i.cx231xx_find_next_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp2.i.1 = icmp eq i8 %14, -1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp6.i.1 = icmp eq i8 %18, 0
  %or.cond17 = select i1 %cmp2.i.1, i1 %cmp6.i.1, i1 false
  br i1 %or.cond17, label %land.lhs.true8.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

land.lhs.true8.i.1:                               ; preds = %for.inc.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp12.i.1 = icmp eq i8 %20, 0
  br i1 %cmp12.i.1, label %land.lhs.true8.i.1.cx231xx_find_next_SAV_EAV.exit_crit_edge, label %land.lhs.true8.i.1.for.inc.i.2_crit_edge

land.lhs.true8.i.1.for.inc.i.2_crit_edge:         ; preds = %land.lhs.true8.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2

land.lhs.true8.i.1.cx231xx_find_next_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit

for.inc.i.1:                                      ; preds = %for.inc.i.for.inc.i.1_crit_edge, %land.lhs.true8.i.for.inc.i.1_crit_edge
  %21 = phi i8 [ %16, %land.lhs.true8.i.for.inc.i.1_crit_edge ], [ %18, %for.inc.i.for.inc.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp2.i.2 = icmp eq i8 %21, -1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp6.i.2 = icmp eq i8 %23, 0
  %or.cond18 = select i1 %cmp2.i.2, i1 %cmp6.i.2, i1 false
  br i1 %or.cond18, label %land.lhs.true8.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2

land.lhs.true8.i.2:                               ; preds = %for.inc.i.1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp12.i.2 = icmp eq i8 %25, 0
  br i1 %cmp12.i.2, label %land.lhs.true8.i.2.cx231xx_find_next_SAV_EAV.exit_crit_edge, label %land.lhs.true8.i.2.for.inc.i.3_crit_edge

land.lhs.true8.i.2.for.inc.i.3_crit_edge:         ; preds = %land.lhs.true8.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3

land.lhs.true8.i.2.cx231xx_find_next_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit

for.inc.i.2:                                      ; preds = %for.inc.i.1.for.inc.i.2_crit_edge, %land.lhs.true8.i.1.for.inc.i.2_crit_edge
  %26 = phi i8 [ %20, %land.lhs.true8.i.1.for.inc.i.2_crit_edge ], [ %23, %for.inc.i.1.for.inc.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp2.i.3 = icmp eq i8 %26, -1
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp6.i.3 = icmp eq i8 %28, 0
  %or.cond19 = select i1 %cmp2.i.3, i1 %cmp6.i.3, i1 false
  br i1 %or.cond19, label %land.lhs.true8.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3

land.lhs.true8.i.3:                               ; preds = %for.inc.i.2
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp12.i.3 = icmp eq i8 %30, 0
  br i1 %cmp12.i.3, label %land.lhs.true8.i.3.cx231xx_find_next_SAV_EAV.exit_crit_edge, label %land.lhs.true8.i.3.if.end_crit_edge

land.lhs.true8.i.3.if.end_crit_edge:              ; preds = %land.lhs.true8.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true8.i.3.cx231xx_find_next_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit

for.inc.i.3:                                      ; preds = %for.inc.i.2.for.inc.i.3_crit_edge, %land.lhs.true8.i.2.for.inc.i.3_crit_edge
  %31 = phi i8 [ %25, %land.lhs.true8.i.2.for.inc.i.3_crit_edge ], [ %28, %for.inc.i.2.for.inc.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp2.i.4 = icmp eq i8 %31, -1
  br i1 %cmp2.i.4, label %land.lhs.true.i.4, label %for.inc.i.3.if.end_crit_edge

for.inc.i.3.if.end_crit_edge:                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.4:                                ; preds = %for.inc.i.3
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp6.i.4 = icmp eq i8 %33, 0
  br i1 %cmp6.i.4, label %land.lhs.true8.i.4, label %land.lhs.true.i.4.if.end_crit_edge

land.lhs.true.i.4.if.end_crit_edge:               ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true8.i.4:                               ; preds = %land.lhs.true.i.4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp12.i.4 = icmp eq i8 %35, 0
  br i1 %cmp12.i.4, label %land.lhs.true8.i.4.cx231xx_find_next_SAV_EAV.exit_crit_edge, label %land.lhs.true8.i.4.if.end_crit_edge

land.lhs.true8.i.4.if.end_crit_edge:              ; preds = %land.lhs.true8.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true8.i.4.cx231xx_find_next_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit

cx231xx_find_next_SAV_EAV.exit:                   ; preds = %land.lhs.true8.i.4.cx231xx_find_next_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.3.cx231xx_find_next_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.2.cx231xx_find_next_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.1.cx231xx_find_next_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.cx231xx_find_next_SAV_EAV.exit_crit_edge
  %i.036.i.lcssa = phi i32 [ 0, %land.lhs.true8.i.cx231xx_find_next_SAV_EAV.exit_crit_edge ], [ 1, %land.lhs.true8.i.1.cx231xx_find_next_SAV_EAV.exit_crit_edge ], [ 2, %land.lhs.true8.i.2.cx231xx_find_next_SAV_EAV.exit_crit_edge ], [ 3, %land.lhs.true8.i.3.cx231xx_find_next_SAV_EAV.exit_crit_edge ], [ 4, %land.lhs.true8.i.4.cx231xx_find_next_SAV_EAV.exit_crit_edge ]
  %add16.i = add nuw nsw i32 %i.036.i.lcssa, 3
  %arrayidx17.i = getelementptr i8, ptr %boundary_bytes, i32 %add16.i
  %36 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %cx231xx_find_next_SAV_EAV.exit.if.end_crit_edge, label %if.then

cx231xx_find_next_SAV_EAV.exit.if.end_crit_edge:  ; preds = %cx231xx_find_next_SAV_EAV.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cx231xx_find_next_SAV_EAV.exit
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %p_bytes_used to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.036.i.lcssa, ptr %p_bytes_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cx231xx_find_next_SAV_EAV.exit.if.end_crit_edge, %land.lhs.true8.i.4.if.end_crit_edge, %land.lhs.true.i.4.if.end_crit_edge, %for.inc.i.3.if.end_crit_edge, %land.lhs.true8.i.3.if.end_crit_edge
  %retval.0.i7 = phi i8 [ %37, %if.then ], [ 0, %cx231xx_find_next_SAV_EAV.exit.if.end_crit_edge ], [ 0, %land.lhs.true8.i.4.if.end_crit_edge ], [ 0, %land.lhs.true.i.4.if.end_crit_edge ], [ 0, %for.inc.i.3.if.end_crit_edge ], [ 0, %land.lhs.true8.i.3.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %boundary_bytes) #11
  ret i8 %retval.0.i7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cx231xx_find_next_SAV_EAV(ptr nocapture noundef readonly %p_buffer, i32 noundef %buffer_size, ptr nocapture noundef writeonly %p_bytes_used) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buffer_size)
  %cmp = icmp ult i32 %buffer_size, 4
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %buffer_size, -4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %p_bytes_used to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %buffer_size, ptr %p_bytes_used, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.036 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %p_buffer, i32 %i.036
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp2 = icmp eq i8 %3, -1
  %add = add nuw i32 %i.036, 1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx4 = getelementptr i8, ptr %p_buffer, i32 %add
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true
  %add9 = add i32 %i.036, 2
  %arrayidx10 = getelementptr i8, ptr %p_buffer, i32 %add9
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp eq i8 %7, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %add15 = add i32 %i.036, 4
  %8 = ptrtoint ptr %p_bytes_used to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add15, ptr %p_bytes_used, align 4
  %add16 = add i32 %i.036, 3
  %arrayidx17 = getelementptr i8, ptr %p_buffer, i32 %add16
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 1
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true8.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %i.036, %0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %p_bytes_used to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %buffer_size, ptr %p_bytes_used, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %10, %if.then14 ], [ 0, %for.end ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_get_video_line(ptr noundef %dev, ptr noundef %dma_q, i8 noundef zeroext %sav_eav, ptr nocapture noundef readonly %p_buffer, i32 noundef %buffer_size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %sav_eav to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %sav_eav, label %entry.sw.epilog_crit_edge [
    i8 -128, label %sw.bb
    i8 -64, label %sw.bb34
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_size)
  %cmp = icmp ugt i32 %buffer_size, 3
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %1 = ptrtoint ptr %p_buffer to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p_buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp3 = icmp eq i8 %2, -1
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr i8, ptr %p_buffer, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp8 = icmp eq i8 %4, 0
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true5.sw.epilog_crit_edge

land.lhs.true5.sw.epilog_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %arrayidx11 = getelementptr i8, ptr %p_buffer, i32 2
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp13 = icmp eq i8 %6, 0
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true10.sw.epilog_crit_edge

land.lhs.true10.sw.epilog_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %arrayidx16 = getelementptr i8, ptr %p_buffer, i32 3
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  %9 = add i8 %8, 112
  %10 = tail call i8 @llvm.fshl.i8(i8 %9, i8 %9, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %switch = icmp ult i8 %10, 4
  br i1 %switch, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.sw.epilog_crit_edge

land.lhs.true15.sw.epilog_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buffer_size)
  %cmp35 = icmp ugt i32 %buffer_size, 3
  br i1 %cmp35, label %land.lhs.true37, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true37:                                  ; preds = %sw.bb34
  %11 = ptrtoint ptr %p_buffer to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p_buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp40 = icmp eq i8 %12, -1
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true37.sw.epilog_crit_edge

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %arrayidx43 = getelementptr i8, ptr %p_buffer, i32 1
  %13 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp45 = icmp eq i8 %14, 0
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true42.sw.epilog_crit_edge

land.lhs.true42.sw.epilog_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %arrayidx48 = getelementptr i8, ptr %p_buffer, i32 2
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp50 = icmp eq i8 %16, 0
  br i1 %cmp50, label %land.lhs.true52, label %land.lhs.true47.sw.epilog_crit_edge

land.lhs.true47.sw.epilog_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %arrayidx53 = getelementptr i8, ptr %p_buffer, i32 3
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %19 = add i8 %18, 112
  %20 = tail call i8 @llvm.fshl.i8(i8 %19, i8 %19, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %switch95 = icmp ult i8 %20, 4
  br i1 %switch95, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.sw.epilog_crit_edge

land.lhs.true52.sw.epilog_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true52.sw.epilog_crit_edge, %land.lhs.true47.sw.epilog_crit_edge, %land.lhs.true42.sw.epilog_crit_edge, %land.lhs.true37.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %land.lhs.true15.sw.epilog_crit_edge, %land.lhs.true10.sw.epilog_crit_edge, %land.lhs.true5.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %current_field.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ 1, %land.lhs.true15.sw.epilog_crit_edge ], [ 1, %land.lhs.true10.sw.epilog_crit_edge ], [ 1, %land.lhs.true5.sw.epilog_crit_edge ], [ 1, %land.lhs.true.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 2, %land.lhs.true52.sw.epilog_crit_edge ], [ 2, %land.lhs.true47.sw.epilog_crit_edge ], [ 2, %land.lhs.true42.sw.epilog_crit_edge ], [ 2, %land.lhs.true37.sw.epilog_crit_edge ], [ 2, %sw.bb34.sw.epilog_crit_edge ]
  %last_sav = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 5
  %21 = ptrtoint ptr %last_sav to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sav_eav, ptr %last_sav, align 1
  %call = tail call i32 @cx231xx_copy_video_line(ptr noundef %dev, ptr noundef %dma_q, ptr noundef %p_buffer, i32 noundef %buffer_size, i32 noundef %current_field.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true52.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_copy_video_line(ptr noundef %dev, ptr noundef %dma_q, ptr nocapture noundef readonly %p_line, i32 noundef %length, i32 noundef %field_number) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %mul = shl i32 %1, 1
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %2 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %field_number)
  %cmp.not = icmp eq i32 %3, %field_number
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_reset_video_buffer(ptr noundef %dev, ptr noundef %dma_q)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 85
  %4 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %buf2 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 1, i32 11
  %buf4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 2, i32 11
  %buf.0.in = select i1 %tobool.not, ptr %buf4, ptr %buf2
  %6 = ptrtoint ptr %buf.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %buf.0 = load ptr, ptr %buf.0.in, align 4
  %7 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %field_number, ptr %current_field, align 4
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %8 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %length)
  %cmp7 = icmp ugt i32 %9, %length
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %length)
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %11 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lines_completed, align 4
  %lines_per_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 10
  %13 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lines_per_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.not = icmp ult i32 %12, %14
  br i1 %cmp10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %9, %10
  %15 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %bytes_left_in_line, align 4
  %conv = zext i1 %cmp7 to i8
  %is_partial_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 3
  %16 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %is_partial_line, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %is_partial_line16 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 3
  %17 = ptrtoint ptr %is_partial_line16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_partial_line16, align 4
  %tobool17.not = icmp eq ptr %buf.0, null
  br i1 %tobool17.not, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %sub20 = sub i32 %9, %10
  %18 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub20, ptr %bytes_left_in_line, align 4
  %conv25 = zext i1 %cmp7 to i8
  %19 = ptrtoint ptr %is_partial_line16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv25, ptr %is_partial_line16, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %buf.0.in.i = select i1 %tobool.not.i, ptr %buf4, ptr %buf2
  %22 = ptrtoint ptr %buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %buf.0.i = load ptr, ptr %buf.0.in.i, align 4
  %cmp.i = icmp eq ptr %buf.0.i, null
  br i1 %cmp.i, label %if.end27.cx231xx_do_copy.exit_crit_edge, label %if.end5.i

if.end27.cx231xx_do_copy.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_do_copy.exit

if.end5.i:                                        ; preds = %if.end27
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width, align 8
  %shl.i = shl i32 %24, 1
  %call.i = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %buf.0.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes_left_in_line, align 4
  %sub.i = sub i32 %shl.i, %26
  %27 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp6.i = icmp eq i32 %28, 1
  %spec.select.i = select i1 %cmp6.i, i32 0, i32 %shl.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %spec.select.i
  %29 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lines_completed, align 4
  %mul.i = shl i32 %24, 2
  %mul7.i = mul i32 %mul.i, %30
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 %mul7.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %sub.i
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 %10) #11
  %add.ptr17.i = getelementptr i8, ptr %add.ptr9.i, i32 %31
  %size.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 34
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %call.i, i32 %33
  %cmp19.i = icmp ugt ptr %add.ptr17.i, %add.ptr18.i
  %34 = and i32 %31, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %switch.i.i = icmp eq i32 %34, 0
  %or.cond.i = or i1 %switch.i.i, %cmp19.i
  br i1 %or.cond.i, label %if.end5.i.cx231xx_do_copy.exit_crit_edge, label %for.body.preheader.i.i

if.end5.i.cx231xx_do_copy.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_do_copy.exit

for.body.preheader.i.i:                           ; preds = %if.end5.i
  %35 = lshr i32 %31, 1
  %wide.trip.count.i.i = and i32 %35, 32767
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %p_line, i32 %indvars.iv.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i.i, align 2
  %or.i.i = tail call i16 @llvm.bswap.i16(i16 %37) #11
  %arrayidx12.i.i = getelementptr i16, ptr %add.ptr9.i, i32 %indvars.iv.i.i
  %38 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or.i.i, ptr %arrayidx12.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.cx231xx_do_copy.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.cx231xx_do_copy.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_do_copy.exit

cx231xx_do_copy.exit:                             ; preds = %for.body.i.i.cx231xx_do_copy.exit_crit_edge, %if.end5.i.cx231xx_do_copy.exit_crit_edge, %if.end27.cx231xx_do_copy.exit_crit_edge
  %pos = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 2
  %39 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos, align 4
  %add = add i32 %40, %10
  store i32 %add, ptr %pos, align 4
  %41 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_left_in_line, align 4
  %sub29 = sub i32 %42, %10
  store i32 %sub29, ptr %bytes_left_in_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %10)
  %cmp31 = icmp eq i32 %42, %10
  br i1 %cmp31, label %if.then33, label %cx231xx_do_copy.exit.cleanup_crit_edge

cx231xx_do_copy.exit.cleanup_crit_edge:           ; preds = %cx231xx_do_copy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %cx231xx_do_copy.exit
  %43 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %bytes_left_in_line, align 4
  %44 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lines_completed, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %lines_completed, align 4
  %46 = ptrtoint ptr %is_partial_line16 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %is_partial_line16, align 4
  %47 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i90 = icmp eq i32 %48, 2
  br i1 %cmp.i90, label %land.lhs.true.i, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then33
  %49 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lines_per_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %50)
  %cmp1.not.i = icmp ult i32 %inc, %50
  br i1 %cmp1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %cx231xx_is_buffer_done.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cx231xx_is_buffer_done.exit:                      ; preds = %land.lhs.true.i
  %field1_done.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 9
  %51 = ptrtoint ptr %field1_done.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %field1_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.i.not = icmp eq i8 %52, 0
  br i1 %tobool.i.not, label %cx231xx_is_buffer_done.exit.cleanup_crit_edge, label %if.then41

cx231xx_is_buffer_done.exit.cleanup_crit_edge:    ; preds = %cx231xx_is_buffer_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %cx231xx_is_buffer_done.exit
  %53 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i92 = icmp eq i32 %53, 0
  br i1 %tobool.not.i92, label %if.then41.do.end2.i_crit_edge, label %do.end.i

if.then41.do.end2.i_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2.i

do.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0, i32 0, i32 1
  %54 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index.i, align 4
  %call.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull %buf.0, i32 noundef %55) #14
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.then41.do.end2.i_crit_edge
  %sequence.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 11
  %56 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence4.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.0, i32 0, i32 4
  %58 = ptrtoint ptr %sequence4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sequence4.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.0, i32 0, i32 2
  %59 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #11
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0, i32 0, i32 5
  %60 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0, i32 0, i32 4
  %61 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.not.i.i = icmp eq i32 %62, 0
  br i1 %cmp.not.i.i, label %do.end2.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

do.end2.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %do.end2.i
  %size.i94 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 34
  %63 = ptrtoint ptr %size.i94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i94, align 4
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0, i32 0, i32 10, i32 0, i32 4
  %65 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp1.i.i = icmp ult i32 %66, %64
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !284

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %67 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %68, %if.then38.i.i ], [ %64, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0, i32 0, i32 10, i32 0, i32 3
  %69 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %do.end2.i.vb2_set_plane_payload.exit.i_crit_edge
  %70 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool11.not.i = icmp eq i8 %71, 0
  %buf15.sink.i = select i1 %tobool11.not.i, ptr %buf4, ptr %buf2
  %72 = ptrtoint ptr %buf15.sink.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %buf15.sink.i, align 4
  %list.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %buf.0, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %vb2_set_plane_payload.exit.i.buffer_filled.exit_crit_edge

vb2_set_plane_payload.exit.i.buffer_filled.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %buffer_filled.exit

if.end.i.i.i:                                     ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %buf.0, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %buffer_filled.exit

buffer_filled.exit:                               ; preds = %if.end.i.i.i, %vb2_set_plane_payload.exit.i.buffer_filled.exit_crit_edge
  %79 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %buf.0, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %buf.0, i32 noundef 5) #11
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %pos, align 4
  %82 = ptrtoint ptr %lines_completed to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %lines_completed, align 4
  br label %cleanup

cleanup:                                          ; preds = %buffer_filled.exit, %cx231xx_is_buffer_done.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %cx231xx_do_copy.exit.cleanup_crit_edge, %if.then18, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %10, %if.then18 ], [ %10, %cx231xx_is_buffer_done.exit.cleanup_crit_edge ], [ %10, %buffer_filled.exit ], [ %10, %cx231xx_do_copy.exit.cleanup_crit_edge ], [ %10, %land.lhs.true.i.cleanup_crit_edge ], [ %10, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_reset_video_buffer(ptr nocapture noundef readonly %dev, ptr noundef %dma_q) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %0 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %2 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines_completed, align 4
  %lines_per_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 10
  %4 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lines_per_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not = icmp uge i32 %3, %5
  %field1_done3 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 9
  %. = zext i1 %cmp1.not to i8
  %6 = ptrtoint ptr %field1_done3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %field1_done3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 85
  %7 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %buf9 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 2, i32 11
  %buf6 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 1, i32 11
  %storemerge.in = select i1 %tobool.not, ptr %buf9, ptr %buf6
  %9 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %cmp11 = icmp eq ptr %storemerge, null
  br i1 %cmp11, label %if.then12, label %if.end4.if.end15_crit_edge

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end4
  %add.ptr3.i = getelementptr i8, ptr %dma_q, i32 -11972
  %10 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not.i = icmp eq ptr %11, %dma_q
  br i1 %cmp.i.not.i, label %do.body.i, label %if.end17.i

do.body.i:                                        ; preds = %if.then12
  %12 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end10.i_crit_edge, label %do.end.i

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %add.ptr3.i, ptr noundef nonnull @.str.67) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  %USE_ISO.i = getelementptr i8, ptr %dma_q, i32 1473
  %13 = ptrtoint ptr %USE_ISO.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %USE_ISO.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not.i = icmp eq i8 %14, 0
  %buf15.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 2, i32 11
  %buf13.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 1, i32 11
  %buf15.sink.i = select i1 %tobool11.not.i, ptr %buf15.i, ptr %buf13.i
  %15 = ptrtoint ptr %buf15.sink.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %buf15.sink.i, align 4
  br label %get_next_buf.exit

if.end17.i:                                       ; preds = %if.then12
  %add.ptr21.i = getelementptr i8, ptr %11, i32 -736
  %call22.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr21.i, i32 noundef 0) #11
  %size.i = getelementptr i8, ptr %dma_q, i32 -5096
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %18 = call ptr @memset(ptr %call22.i, i32 0, i32 %17)
  %USE_ISO23.i = getelementptr i8, ptr %dma_q, i32 1473
  %19 = ptrtoint ptr %USE_ISO23.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %USE_ISO23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not.i = icmp eq i8 %20, 0
  br i1 %tobool24.not.i, label %if.else29.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf28.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 1, i32 11
  %21 = ptrtoint ptr %buf28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr21.i, ptr %buf28.i, align 4
  br label %get_next_buf.exit

if.else29.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf32.i = getelementptr inbounds %struct.cx231xx_video_mode, ptr %dma_q, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %buf32.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr21.i, ptr %buf32.i, align 4
  br label %get_next_buf.exit

get_next_buf.exit:                                ; preds = %if.else29.i, %if.then25.i, %do.end10.i
  %pos = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 2
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pos, align 4
  %field1_done13 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 9
  %24 = ptrtoint ptr %field1_done13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %field1_done13, align 4
  %25 = ptrtoint ptr %current_field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %current_field, align 4
  br label %if.end15

if.end15:                                         ; preds = %get_next_buf.exit, %if.end4.if.end15_crit_edge
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width, align 8
  %shl = shl i32 %27, 1
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %28 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl, ptr %bytes_left_in_line, align 4
  %lines_completed16 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %29 = ptrtoint ptr %lines_completed16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lines_completed16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_do_copy(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dma_q, ptr nocapture noundef readonly %p_buffer, i32 noundef %bytes_to_copy) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 85
  %0 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %buf1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 1, i32 11
  %buf3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 2, i32 11
  %buf.0.in = select i1 %tobool.not, ptr %buf3, ptr %buf1
  %2 = ptrtoint ptr %buf.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %buf.0 = load ptr, ptr %buf.0.in, align 4
  %cmp = icmp eq ptr %buf.0, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 8
  %shl = shl i32 %4, 1
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %buf.0, i32 noundef 0) #11
  %bytes_left_in_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 7
  %5 = ptrtoint ptr %bytes_left_in_line to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes_left_in_line, align 4
  %sub = sub i32 %shl, %6
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %7 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp eq i32 %8, 1
  %spec.select = select i1 %cmp6, i32 0, i32 %shl
  %add.ptr = getelementptr i8, ptr %call, i32 %spec.select
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %9 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lines_completed, align 4
  %mul = shl i32 %4, 2
  %mul7 = mul i32 %mul, %10
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %mul7
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 %sub
  %11 = tail call i32 @llvm.umin.i32(i32 %6, i32 %bytes_to_copy)
  %add.ptr17 = getelementptr i8, ptr %add.ptr9, i32 %11
  %size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 34
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %add.ptr18 = getelementptr i8, ptr %call, i32 %13
  %cmp19 = icmp ugt ptr %add.ptr17, %add.ptr18
  %14 = and i32 %11, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %switch.i = icmp eq i32 %14, 0
  %or.cond = or i1 %switch.i, %cmp19
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %for.body.preheader.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end5
  %15 = lshr i32 %11, 1
  %wide.trip.count.i = and i32 %15, 32767
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %p_buffer, i32 %indvars.iv.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %or.i = tail call i16 @llvm.bswap.i16(i16 %17) #11
  %arrayidx12.i = getelementptr i16, ptr %add.ptr9, i32 %indvars.iv.i
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or.i, ptr %arrayidx12.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cx231xx_is_buffer_done(ptr nocapture readnone %dev, ptr nocapture noundef readonly %dma_q) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 6
  %0 = ptrtoint ptr %current_field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %lines_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 8
  %2 = ptrtoint ptr %lines_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lines_completed, align 4
  %lines_per_field = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 10
  %4 = ptrtoint ptr %lines_per_field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lines_per_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not = icmp ult i32 %3, %5
  br i1 %cmp1.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %field1_done = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 9
  %6 = ptrtoint ptr %field1_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %field1_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %conv2 = zext i1 %8 to i8
  ret i8 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_swab(ptr nocapture noundef readonly %from, ptr nocapture noundef writeonly %to, i16 noundef zeroext %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %len)
  %switch = icmp ult i16 %len, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = lshr i16 %len, 1
  %wide.trip.count = zext i16 %0 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %from, i32 %indvars.iv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %or = tail call i16 @llvm.bswap.i16(i16 %2)
  %arrayidx12 = getelementptr i16, ptr %to, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %or, ptr %arrayidx12, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @video_mux(ptr noundef %dev, i32 noundef %index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %video_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %video_input, align 4
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %model, align 8
  %amux = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %2, i32 26, i32 %index, i32 2
  %3 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %amux, align 4
  %ctl_ainput = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ctl_ainput, align 4
  %conv = trunc i32 %index to i8
  %call = tail call i32 @cx231xx_set_video_input_mux(ptr noundef %dev, i8 noundef zeroext %conv) #11
  %sd_cx25840 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_cx25840, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.else

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.else.if.end30_crit_edge, label %land.lhs.true

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %land.lhs.true.if.end30_crit_edge, label %if.else7

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.else7.if.else19_crit_edge, label %land.lhs.true9

if.else7.if.else19_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

land.lhs.true9:                                   ; preds = %if.else7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else19_crit_edge, label %land.lhs.true9.if.end30.sink.split_crit_edge

land.lhs.true9.if.end30.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.sink.split

land.lhs.true9.if.else19_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true9.if.else19_crit_edge, %if.else7.if.else19_crit_edge
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else19, %land.lhs.true9.if.end30.sink.split_crit_edge
  %.sink67 = phi ptr [ %13, %if.else19 ], [ %16, %land.lhs.true9.if.end30.sink.split_crit_edge ]
  %17 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %model, align 8
  %vmux27 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %18, i32 26, i32 %index, i32 1
  %19 = ptrtoint ptr %vmux27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vmux27, align 8
  %call28 = tail call i32 %.sink67(ptr noundef nonnull %7, i32 noundef %20, i32 noundef 0, i32 noundef 0) #11
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %land.lhs.true.if.end30_crit_edge, %if.else.if.end30_crit_edge, %entry.if.end30_crit_edge
  %21 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctl_ainput, align 4
  %conv32 = trunc i32 %22 to i8
  %call33 = tail call i32 @cx231xx_set_audio_input(ptr noundef %dev, i8 noundef zeroext %conv32) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @video_mux.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@video_mux, %if.then39)) #11
          to label %do.end [label %if.then39], !srcloc !285

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %dev40 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %23 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @video_mux.__UNIQUE_ID_ddebug321, ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef %index) #11
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.end30
  %call42 = tail call i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_video_input_mux(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_audio_input(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_v4l2_create_entities(ptr noundef %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %media_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 50, i32 %i.064
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %arrayidx2 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1, i32 26, i32 %i.064
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx8 = getelementptr [7 x ptr], ptr @iname, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %name = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 50, i32 %i.064, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name, align 4
  %flags = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 50, i32 %i.064, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %flags, align 4
  %arrayidx9 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 51, i32 %i.064
  %flags10 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 51, i32 %i.064, i32 4
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags10, align 4
  %9 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model, align 8
  %arrayidx14 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %10, i32 26, i32 %i.064
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx14, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %12, label %if.end.sw.default_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb16
    i32 3, label %if.end.sw.bb18_crit_edge
    i32 4, label %if.end.sw.bb18_crit_edge68
    i32 6, label %if.end.sw.bb18_crit_edge69
  ]

if.end.sw.bb18_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end.sw.bb18_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %if.end.sw.bb18_crit_edge68, %if.end.sw.bb18_crit_edge69
  %14 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp19 = icmp eq i32 %15, 4
  br i1 %cmp19, label %sw.bb18.for.inc_crit_edge, label %sw.bb18.sw.default_crit_edge

sw.bb18.sw.default_crit_edge:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb18.for.inc_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.default:                                       ; preds = %sw.bb18.sw.default_crit_edge, %if.end.sw.default_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 196609, %sw.default ], [ 196610, %sw.bb16 ], [ 196611, %if.end.sw.epilog_crit_edge ]
  %function22 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 50, i32 %i.064, i32 3
  %16 = ptrtoint ptr %function22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %function22, align 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %arrayidx, i16 noundef zeroext 1, ptr noundef %arrayidx9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %do.end, label %sw.epilog.if.end28_crit_edge

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.064) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end, %sw.epilog.if.end28_crit_edge
  %17 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %media_dev, align 8
  %call29 = tail call i32 @media_device_register_entity(ptr noundef %18, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %i.064) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end34, %if.end28.for.inc_crit_edge, %sw.bb18.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_enum_input(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %i) #4 align 64 {
entry:
  %gen_stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_stat) #11
  %2 = ptrtoint ptr %gen_stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gen_stat, align 4, !annotation !286
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model, align 8
  %arrayidx1 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %6, i32 26, i32 %4
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type6 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %9 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %type6, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %10 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %model, align 8
  %arrayidx10 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %11, i32 26, i32 %4
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [7 x ptr], ptr @iname, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %15, i32 noundef 32) #11
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 8
  %arrayidx17 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %17, i32 26, i32 %4
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %.off = add i32 %19, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then26, label %if.end4.if.end28_crit_edge

if.end4.if.end28_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type6, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end4.if.end28_crit_edge
  %tvnorms = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 27, i32 22
  %21 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %23 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %std, align 8
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 80
  %24 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %video_input, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %25)
  %cmp29 = icmp eq i32 %4, %25
  br i1 %cmp29, label %if.then30, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext -120, i16 noundef zeroext 1036, i8 noundef zeroext 2, ptr noundef nonnull %gen_stat, i8 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %if.then30
  %26 = ptrtoint ptr %gen_stat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gen_stat, align 4
  %and = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp34 = icmp eq i32 %and, 0
  br i1 %cmp34, label %if.then35, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 8
  %or = or i32 %29, 2
  store i32 %or, ptr %status, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then33.if.end36_crit_edge
  %and37 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %status40 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %30 = ptrtoint ptr %status40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status40, align 8
  %or41 = or i32 %31, 256
  store i32 %or41, ptr %status40, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end36.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_stat) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_i2c_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_g_input(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef writeonly %i) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 80
  %2 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_s_input(ptr noundef %file, ptr nocapture readnone %priv, i32 noundef %i) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mode_tv = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %mode_tv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mode_tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %model, align 8
  %arrayidx1 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %4, i32 26, i32 %i
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @video_mux(ptr noundef %1, i32 noundef %i)
  %7 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %model, align 8
  %arrayidx8 = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %8, i32 26, i32 %i
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %.off = add i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then17, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn65 = load ptr, ptr %subdevs, align 4
  %cmp21.not67 = icmp eq ptr %.pn65, %subdevs
  br i1 %cmp21.not67, label %if.then17.cleanup_crit_edge, label %for.body.lr.ph

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then17
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn69 = phi ptr [ %.pn65, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.068 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.070 = getelementptr i8, ptr %.pn69, i32 -80
  %ops = getelementptr i8, ptr %.pn69, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body.if.end30_crit_edge, label %land.lhs.true

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_std, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %land.lhs.true.if.end30_crit_edge, label %if.then25

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %norm, align 8
  %call29 = tail call i32 %17(ptr noundef %__sd.070, i64 noundef %19) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %__err.1 = phi i32 [ %call29, %if.then25 ], [ %__err.068, %land.lhs.true.if.end30_crit_edge ], [ %__err.068, %for.body.if.end30_crit_edge ]
  %20 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %__err.1, label %if.end30.cleanup_crit_edge [
    i32 0, label %if.end30.for.inc_crit_edge
    i32 -515, label %if.end30.for.inc_crit_edge71
  ]

if.end30.for.inc_crit_edge71:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %if.end30.for.inc_crit_edge71
  %21 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp21.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp21.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_g_tuner(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef 32) #11
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %capability, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %6 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rangehigh, align 4
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 8
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %signal, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn43 = load ptr, ptr %subdevs, align 4
  %cmp5.not45 = icmp eq ptr %.pn43, %subdevs
  br i1 %cmp5.not45, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %if.end.for.body_crit_edge ]
  %__err.046 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.048 = getelementptr i8, ptr %.pn47, i32 -80
  %ops = getelementptr i8, ptr %.pn47, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 %14(ptr noundef %__sd.048, ptr noundef %t) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then9 ], [ %__err.046, %land.lhs.true.if.end14_crit_edge ], [ %__err.046, %for.body.if.end14_crit_edge ]
  %15 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %__err.1, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.for.inc_crit_edge
    i32 -515, label %if.end14.for.inc_crit_edge49
  ]

if.end14.for.inc_crit_edge49:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.for.inc_crit_edge49
  %16 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cx231xx_s_tuner(ptr nocapture readnone %file, ptr nocapture readnone %priv, ptr nocapture noundef readonly %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_g_frequency(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctl_freq = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %ctl_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_s_frequency(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %f) #4 align 64 {
entry:
  %new_freq = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %new_freq) #11
  %2 = call ptr @memcpy(ptr %new_freq, ptr %f, i32 44)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_s_frequency, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !285

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev4, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_s_frequency.__UNIQUE_ID_ddebug322, ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %6, i32 noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call i32 @cx231xx_tuner_pre_channel_change(ptr noundef %1) #11
  %model = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %model, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %12, label %sw.default [
    i32 20, label %if.end6.sw.bb_crit_edge
    i32 26, label %if.end6.sw.bb_crit_edge275
    i32 21, label %if.end6.sw.bb_crit_edge276
    i32 27, label %if.end6.sw.bb_crit_edge277
    i32 23, label %if.end6.sw.bb_crit_edge278
  ]

if.end6.sw.bb_crit_edge278:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge277:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge276:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge275:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge275, %if.end6.sw.bb_crit_edge276, %if.end6.sw.bb_crit_edge277, %if.end6.sw.bb_crit_edge278
  %cx231xx_set_analog_freq = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 67
  %14 = ptrtoint ptr %cx231xx_set_analog_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cx231xx_set_analog_freq, align 8
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %sw.bb.do.body95_crit_edge, label %if.then9

sw.bb.do.body95_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %frequency11 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %16 = ptrtoint ptr %frequency11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frequency11, align 4
  %call12 = tail call i32 %15(ptr noundef %1, i32 noundef %17) #11
  br label %do.body95

sw.default:                                       ; preds = %if.end6
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn263 = load ptr, ptr %subdevs, align 4
  %cmp19.not265 = icmp eq ptr %.pn263, %subdevs
  br i1 %cmp19.not265, label %sw.default.for.end_crit_edge, label %sw.default.for.body_crit_edge

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

sw.default.for.end_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.default.for.body_crit_edge
  %.pn267 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn263, %sw.default.for.body_crit_edge ]
  %__err.0266 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %sw.default.for.body_crit_edge ]
  %__sd.0268 = getelementptr i8, ptr %.pn267, i32 -80
  %ops = getelementptr i8, ptr %.pn267, i32 24
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %tuner22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %tuner22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tuner22, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %for.body.if.end32_crit_edge, label %land.lhs.true

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_frequency, align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %land.lhs.true.if.end32_crit_edge, label %if.then27

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 %24(ptr noundef %__sd.0268, ptr noundef %f) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %__err.1 = phi i32 [ %call31, %if.then27 ], [ %__err.0266, %land.lhs.true.if.end32_crit_edge ], [ %__err.0266, %for.body.if.end32_crit_edge ]
  %25 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %__err.1, label %if.end32.for.end_crit_edge [
    i32 0, label %if.end32.for.inc_crit_edge
    i32 -515, label %if.end32.for.inc_crit_edge279
  ]

if.end32.for.inc_crit_edge279:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %if.end32.for.inc_crit_edge279
  %26 = ptrtoint ptr %.pn267 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn267, align 4
  %cmp19.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge, %sw.default.for.end_crit_edge
  %27 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn249269 = load ptr, ptr %subdevs, align 4
  %cmp58.not271 = icmp eq ptr %.pn249269, %subdevs
  br i1 %cmp58.not271, label %for.end.do.body95_crit_edge, label %for.end.for.body61_crit_edge

for.end.for.body61_crit_edge:                     ; preds = %for.end
  br label %for.body61

for.end.do.body95_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

for.body61:                                       ; preds = %for.inc80.for.body61_crit_edge, %for.end.for.body61_crit_edge
  %.pn249273 = phi ptr [ %.pn249, %for.inc80.for.body61_crit_edge ], [ %.pn249269, %for.end.for.body61_crit_edge ]
  %__err47.0272 = phi i32 [ %__err47.1, %for.inc80.for.body61_crit_edge ], [ 0, %for.end.for.body61_crit_edge ]
  %__sd45.0274 = getelementptr i8, ptr %.pn249273, i32 -80
  %ops62 = getelementptr i8, ptr %.pn249273, i32 24
  %28 = ptrtoint ptr %ops62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops62, align 4
  %tuner63 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tuner63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner63, align 4
  %tobool64.not = icmp eq ptr %31, null
  br i1 %tobool64.not, label %for.body61.if.end74_crit_edge, label %land.lhs.true65

for.body61.if.end74_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true65:                                  ; preds = %for.body61
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %g_frequency, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %land.lhs.true65.if.end74_crit_edge, label %if.then69

land.lhs.true65.if.end74_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call i32 %33(ptr noundef %__sd45.0274, ptr noundef nonnull %new_freq) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %land.lhs.true65.if.end74_crit_edge, %for.body61.if.end74_crit_edge
  %__err47.1 = phi i32 [ %call73, %if.then69 ], [ %__err47.0272, %land.lhs.true65.if.end74_crit_edge ], [ %__err47.0272, %for.body61.if.end74_crit_edge ]
  %34 = zext i32 %__err47.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %__err47.1, label %if.end74.do.body95_crit_edge [
    i32 0, label %if.end74.for.inc80_crit_edge
    i32 -515, label %if.end74.for.inc80_crit_edge280
  ]

if.end74.for.inc80_crit_edge280:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.end74.for.inc80_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.end74.do.body95_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

for.inc80:                                        ; preds = %if.end74.for.inc80_crit_edge, %if.end74.for.inc80_crit_edge280
  %35 = ptrtoint ptr %.pn249273 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn249 = load ptr, ptr %.pn249273, align 4
  %cmp58.not = icmp eq ptr %.pn249, %subdevs
  br i1 %cmp58.not, label %for.inc80.do.body95_crit_edge, label %for.inc80.for.body61_crit_edge

for.inc80.for.body61_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

for.inc80.do.body95_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

do.body95:                                        ; preds = %for.inc80.do.body95_crit_edge, %if.end74.do.body95_crit_edge, %for.end.do.body95_crit_edge, %if.then9, %sw.bb.do.body95_crit_edge
  %f.sink = phi ptr [ %f, %if.then9 ], [ %f, %sw.bb.do.body95_crit_edge ], [ %new_freq, %for.end.do.body95_crit_edge ], [ %new_freq, %for.inc80.do.body95_crit_edge ], [ %new_freq, %if.end74.do.body95_crit_edge ]
  %tobool114.not = phi i1 [ false, %if.then9 ], [ false, %sw.bb.do.body95_crit_edge ], [ true, %for.end.do.body95_crit_edge ], [ true, %for.inc80.do.body95_crit_edge ], [ true, %if.end74.do.body95_crit_edge ]
  %frequency14 = getelementptr inbounds %struct.v4l2_frequency, ptr %f.sink, i32 0, i32 2
  %36 = ptrtoint ptr %frequency14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frequency14, align 4
  %ctl_freq = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 29
  %38 = ptrtoint ptr %ctl_freq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ctl_freq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_s_frequency, %if.then107)) #11
          to label %do.end112 [label %if.then107], !srcloc !285

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  %frequency108 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %39 = ptrtoint ptr %frequency108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frequency108, align 4
  %ctl_freq109 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 29
  %41 = ptrtoint ptr %ctl_freq109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctl_freq109, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cx231xx_s_frequency.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %40, i32 noundef %42) #11
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %do.body95
  %call113 = call i32 @cx231xx_tuner_post_channel_change(ptr noundef %1) #11
  br i1 %tobool114.not, label %lor.lhs.false, label %do.end112.if.then116_crit_edge

do.end112.if.then116_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

lor.lhs.false:                                    ; preds = %do.end112
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 18
  %43 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %44)
  %cmp115 = icmp eq i32 %44, 83
  br i1 %cmp115, label %lor.lhs.false.if.then116_crit_edge, label %lor.lhs.false.do.body173_crit_edge

lor.lhs.false.do.body173_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body173

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %do.end112.if.then116_crit_edge
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %45 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %norm, align 8
  %and = and i64 %46, 63232
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool117.not = icmp eq i64 %and, 0
  br i1 %tobool117.not, label %if.else, label %if.then116.do.body155_crit_edge

if.then116.do.body155_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else:                                          ; preds = %if.then116
  %and120 = and i64 %46, 65539
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120)
  %tobool121.not = icmp eq i64 %and120, 0
  br i1 %tobool121.not, label %if.else123, label %if.else.do.body155_crit_edge

if.else.do.body155_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else123:                                       ; preds = %if.else
  %and125 = and i64 %46, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and125)
  %tobool126.not = icmp eq i64 %and125, 0
  br i1 %tobool126.not, label %if.else128, label %if.else123.do.body155_crit_edge

if.else123.do.body155_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else128:                                       ; preds = %if.else123
  %and130 = and i64 %46, 786444
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and130)
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %if.else133, label %if.else128.do.body155_crit_edge

if.else128.do.body155_crit_edge:                  ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else133:                                       ; preds = %if.else128
  %and135 = and i64 %46, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and135)
  %tobool136.not = icmp eq i64 %and135, 0
  br i1 %tobool136.not, label %if.else138, label %if.else133.do.body155_crit_edge

if.else133.do.body155_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else138:                                       ; preds = %if.else133
  %and140 = and i64 %46, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and140)
  %tobool141.not = icmp eq i64 %and140, 0
  br i1 %tobool141.not, label %if.else143, label %if.else138.do.body155_crit_edge

if.else138.do.body155_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

if.else143:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #13
  %and145 = and i64 %46, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and145)
  %tobool146.not = icmp eq i64 %and145, 0
  %spec.select = select i1 %tobool146.not, i32 5400000, i32 1250000
  br label %do.body155

do.body155:                                       ; preds = %if.else143, %if.else138.do.body155_crit_edge, %if.else133.do.body155_crit_edge, %if.else128.do.body155_crit_edge, %if.else123.do.body155_crit_edge, %if.else.do.body155_crit_edge, %if.then116.do.body155_crit_edge
  %if_frequency.0 = phi i32 [ 5400000, %if.then116.do.body155_crit_edge ], [ 6000000, %if.else.do.body155_crit_edge ], [ 6900000, %if.else123.do.body155_crit_edge ], [ 7100000, %if.else128.do.body155_crit_edge ], [ 7250000, %if.else133.do.body155_crit_edge ], [ 6900000, %if.else138.do.body155_crit_edge ], [ %spec.select, %if.else143 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_s_frequency, %if.then167)) #11
          to label %do.end171 [label %if.then167], !srcloc !285

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  %dev168 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev168, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_s_frequency.__UNIQUE_ID_ddebug324, ptr noundef %48, ptr noundef nonnull @.str.15, i32 noundef %if_frequency.0) #11
  br label %do.end171

do.end171:                                        ; preds = %if.then167, %do.body155
  call void @cx231xx_set_Colibri_For_LowIF(ptr noundef %1, i32 noundef %if_frequency.0, i8 noundef zeroext 1, i32 noundef 1) #11
  call void @update_HH_register_after_set_DIF(ptr noundef %1) #11
  br label %do.body173

do.body173:                                       ; preds = %do.end171, %lor.lhs.false.do.body173_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_s_frequency, %if.then185)) #11
          to label %cleanup [label %if.then185], !srcloc !285

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #13
  %dev186 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev186, align 8
  %frequency187 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %51 = ptrtoint ptr %frequency187 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %frequency187, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_s_frequency.__UNIQUE_ID_ddebug325, ptr noundef %50, ptr noundef nonnull @.str.16, i32 noundef %52) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %do.body173, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call113, %if.then185 ], [ %call113, %do.body173 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %new_freq) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_tuner_pre_channel_change(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_tuner_post_channel_change(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_set_Colibri_For_LowIF(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_HH_register_after_set_DIF(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_g_chip_info(ptr nocapture readnone %file, ptr nocapture readnone %fh, ptr noundef %chip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %2, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
    i32 4, label %sw.bb10
    i32 5, label %sw.bb14
    i32 6, label %sw.bb18
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef 32) #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name3 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call5 = tail call i32 @strscpy(ptr noundef %name3, ptr noundef nonnull @.str.18, i32 noundef 32) #11
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name7 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call9 = tail call i32 @strscpy(ptr noundef %name7, ptr noundef nonnull @.str.19, i32 noundef 32) #11
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name11 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call13 = tail call i32 @strscpy(ptr noundef %name11, ptr noundef nonnull @.str.20, i32 noundef 32) #11
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name15 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call17 = tail call i32 @strscpy(ptr noundef %name15, ptr noundef nonnull @.str.21, i32 noundef 32) #11
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name19 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call21 = tail call i32 @strscpy(ptr noundef %name19, ptr noundef nonnull @.str.22, i32 noundef 32) #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 0, %sw.bb18 ], [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ %2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_g_register(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %reg) #4 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %4 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb22
    i32 3, label %sw.bb29
    i32 4, label %sw.bb36
    i32 5, label %sw.bb43
    i32 6, label %sw.bb50
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %9 to i16
  %call2 = call i32 @cx231xx_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 13, i16 noundef zeroext %conv, ptr noundef nonnull %value, i32 noundef 4) #11
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %value, align 4
  %conv3 = zext i8 %11 to i32
  %arrayidx4 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv3
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6, align 2
  %conv7 = zext i8 %15 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %arrayidx10 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %shl12 = shl nuw i32 %conv11, 24
  %or13 = or i32 %or9, %shl12
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg16 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %18 = ptrtoint ptr %reg16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %reg16, align 1
  %conv17 = trunc i64 %19 to i16
  %call18 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext 96, i16 noundef zeroext %conv17, i8 noundef zeroext 2, ptr noundef nonnull %data, i8 noundef zeroext 1) #11
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg23 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %22 = ptrtoint ptr %reg23 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %reg23, align 1
  %conv24 = trunc i64 %23 to i16
  %call25 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext -120, i16 noundef zeroext %conv24, i8 noundef zeroext 2, ptr noundef nonnull %data, i8 noundef zeroext 1) #11
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg30 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %26 = ptrtoint ptr %reg30 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %reg30, align 1
  %conv31 = trunc i64 %27 to i16
  %call32 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext -104, i16 noundef zeroext %conv31, i8 noundef zeroext 1, ptr noundef nonnull %data, i8 noundef zeroext 1) #11
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg37 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %30 = ptrtoint ptr %reg37 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %reg37, align 1
  %conv38 = trunc i64 %31 to i16
  %call39 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext 96, i16 noundef zeroext %conv38, i8 noundef zeroext 2, ptr noundef nonnull %data, i8 noundef zeroext 4) #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg44 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %34 = ptrtoint ptr %reg44 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %reg44, align 1
  %conv45 = trunc i64 %35 to i16
  %call46 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext -120, i16 noundef zeroext %conv45, i8 noundef zeroext 2, ptr noundef nonnull %data, i8 noundef zeroext 4) #11
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg51 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %38 = ptrtoint ptr %reg51 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %reg51, align 1
  %conv52 = trunc i64 %39 to i16
  %call53 = call i32 @cx231xx_read_i2c_data(ptr noundef %1, i8 noundef zeroext -104, i16 noundef zeroext %conv52, i8 noundef zeroext 1, ptr noundef nonnull %data, i8 noundef zeroext 4) #11
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb43, %sw.bb36, %sw.bb29, %sw.bb22, %sw.bb15, %sw.bb
  %.sink89 = phi i32 [ %41, %sw.bb50 ], [ %37, %sw.bb43 ], [ %33, %sw.bb36 ], [ %29, %sw.bb29 ], [ %25, %sw.bb22 ], [ %21, %sw.bb15 ], [ %or13, %sw.bb ]
  %.sink = phi i32 [ 4, %sw.bb50 ], [ 4, %sw.bb43 ], [ 4, %sw.bb36 ], [ 1, %sw.bb29 ], [ 1, %sw.bb22 ], [ 1, %sw.bb15 ], [ 4, %sw.bb ]
  %ret.0 = phi i32 [ %call53, %sw.bb50 ], [ %call46, %sw.bb43 ], [ %call39, %sw.bb36 ], [ %call32, %sw.bb29 ], [ %call25, %sw.bb22 ], [ %call18, %sw.bb15 ], [ %call2, %sw.bb ]
  %conv54 = zext i32 %.sink89 to i64
  %val55 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %42 = ptrtoint ptr %val55 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %conv54, ptr %val55, align 1
  %size56 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %43 = ptrtoint ptr %size56 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %.sink, ptr %size56, align 1
  %44 = call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_s_register(ptr noundef %file, ptr nocapture readnone %priv, ptr nocapture noundef readonly %reg) #4 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %2 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb21
    i32 3, label %sw.bb27
    i32 4, label %sw.bb33
    i32 5, label %sw.bb39
    i32 6, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %val, align 1
  %conv = trunc i64 %7 to i8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %data, align 4
  %shr = lshr i64 %7, 8
  %conv2 = trunc i64 %shr to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %arrayidx3, align 1
  %shr5 = lshr i64 %7, 16
  %conv6 = trunc i64 %shr5 to i8
  %arrayidx7 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %arrayidx7, align 2
  %shr9 = lshr i64 %7, 24
  %conv10 = trunc i64 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %arrayidx11, align 1
  %reg12 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %12 = ptrtoint ptr %reg12 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %reg12, align 1
  %conv13 = trunc i64 %13 to i16
  %call14 = call i32 @cx231xx_write_ctrl_reg(ptr noundef %1, i8 noundef zeroext 12, i16 noundef zeroext %conv13, ptr noundef nonnull %data, i32 noundef 4) #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg16 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %14 = ptrtoint ptr %reg16 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %reg16, align 1
  %conv17 = trunc i64 %15 to i16
  %val18 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %16 = ptrtoint ptr %val18 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %val18, align 1
  %conv19 = trunc i64 %17 to i32
  %call20 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext 96, i16 noundef zeroext %conv17, i8 noundef zeroext 2, i32 noundef %conv19, i8 noundef zeroext 1) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg22 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %18 = ptrtoint ptr %reg22 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %reg22, align 1
  %conv23 = trunc i64 %19 to i16
  %val24 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %20 = ptrtoint ptr %val24 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %val24, align 1
  %conv25 = trunc i64 %21 to i32
  %call26 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext -120, i16 noundef zeroext %conv23, i8 noundef zeroext 2, i32 noundef %conv25, i8 noundef zeroext 1) #11
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg28 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %22 = ptrtoint ptr %reg28 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %reg28, align 1
  %conv29 = trunc i64 %23 to i16
  %val30 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %24 = ptrtoint ptr %val30 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %val30, align 1
  %conv31 = trunc i64 %25 to i32
  %call32 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext -104, i16 noundef zeroext %conv29, i8 noundef zeroext 1, i32 noundef %conv31, i8 noundef zeroext 1) #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg34 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %26 = ptrtoint ptr %reg34 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %reg34, align 1
  %conv35 = trunc i64 %27 to i16
  %val36 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %28 = ptrtoint ptr %val36 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %val36, align 1
  %conv37 = trunc i64 %29 to i32
  %call38 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext 96, i16 noundef zeroext %conv35, i8 noundef zeroext 2, i32 noundef %conv37, i8 noundef zeroext 4) #11
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg40 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %30 = ptrtoint ptr %reg40 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %reg40, align 1
  %conv41 = trunc i64 %31 to i16
  %val42 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %32 = ptrtoint ptr %val42 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %val42, align 1
  %conv43 = trunc i64 %33 to i32
  %call44 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext -120, i16 noundef zeroext %conv41, i8 noundef zeroext 2, i32 noundef %conv43, i8 noundef zeroext 4) #11
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg46 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %34 = ptrtoint ptr %reg46 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %reg46, align 1
  %conv47 = trunc i64 %35 to i16
  %val48 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %36 = ptrtoint ptr %val48 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %val48, align 1
  %conv49 = trunc i64 %37 to i32
  %call50 = tail call i32 @cx231xx_write_i2c_data(ptr noundef %1, i8 noundef zeroext -104, i16 noundef zeroext %conv47, i8 noundef zeroext 1, i32 noundef %conv49, i8 noundef zeroext 4) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb39, %sw.bb33, %sw.bb27, %sw.bb21, %sw.bb15, %sw.bb
  %ret.0 = phi i32 [ %call50, %sw.bb45 ], [ %call44, %sw.bb39 ], [ %call38, %sw.bb33 ], [ %call32, %sw.bb27 ], [ %call26, %sw.bb21 ], [ %call20, %sw.bb15 ], [ %call14, %sw.bb ]
  %38 = call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_write_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_write_i2c_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_querycap(ptr noundef %file, ptr nocapture readnone %priv, ptr noundef %cap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %model = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 8
  %arrayidx = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %5, i32 noundef 32) #11
  %udev = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 60
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 1
  %call.i25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.73, ptr noundef %11, ptr noundef %devpath.i) #11
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2063597551, ptr %capabilities, align 4
  %flags.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 46, i32 17
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2063335407, ptr %capabilities, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %17, label %sw.default [
    i32 20, label %if.end.sw.epilog.sink.split_crit_edge
    i32 26, label %if.end.sw.epilog.sink.split_crit_edge26
    i32 21, label %if.end.sw.epilog.sink.split_crit_edge27
    i32 27, label %if.end.sw.epilog.sink.split_crit_edge28
    i32 23, label %if.end.sw.epilog.sink.split_crit_edge29
  ]

if.end.sw.epilog.sink.split_crit_edge29:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog.sink.split_crit_edge28:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog.sink.split_crit_edge27:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog.sink.split_crit_edge26:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.not = icmp eq i32 %20, 4
  br i1 %cmp.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge26, %if.end.sw.epilog.sink.split_crit_edge27, %if.end.sw.epilog.sink.split_crit_edge28, %if.end.sw.epilog.sink.split_crit_edge29
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capabilities, align 4
  %or13 = or i32 %22, 65536
  store i32 %or13, ptr %capabilities, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_release_analog_resources(ptr noundef %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %radio_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46
  tail call void @video_unregister_device(ptr noundef %radio_dev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbi_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45
  %flags.i36 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 17
  %2 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i36, align 4
  %and1.i.i37 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i37)
  %tobool3.not = icmp eq i32 %and1.i.i37, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end:                                           ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 8
  %init_name.i.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 5, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i) #14
  tail call void @video_unregister_device(ptr noundef %vbi_dev) #11
  br label %if.end9

if.end9:                                          ; preds = %video_device_node_name.exit, %if.end.if.end9_crit_edge
  %vdev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27
  %flags.i38 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 17
  %10 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i38, align 4
  %and1.i.i39 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i39)
  %tobool11.not = icmp eq i32 %and1.i.i39, 0
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %do.end14

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end14:                                         ; preds = %if.end9
  %dev15 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 8
  %init_name.i.i40 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 5, i32 3
  %14 = ptrtoint ptr %init_name.i.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i40, align 8
  %tobool.not.i.i41 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i41, label %if.end.i.i43, label %do.end14.video_device_node_name.exit45_crit_edge

do.end14.video_device_node_name.exit45_crit_edge: ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit45

if.end.i.i43:                                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i42 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 5
  %16 = ptrtoint ptr %dev.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i42, align 4
  br label %video_device_node_name.exit45

video_device_node_name.exit45:                    ; preds = %if.end.i.i43, %do.end14.video_device_node_name.exit45_crit_edge
  %retval.0.i.i44 = phi ptr [ %17, %if.end.i.i43 ], [ %15, %do.end14.video_device_node_name.exit45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i44) #14
  %has_417 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 21
  %18 = ptrtoint ptr %has_417 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %has_417, align 8
  %19 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %video_device_node_name.exit45.if.end20_crit_edge, label %if.then19

video_device_node_name.exit45.if.end20_crit_edge: ; preds = %video_device_node_name.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %video_device_node_name.exit45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_417_unregister(ptr noundef %dev) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %video_device_node_name.exit45.if.end20_crit_edge
  tail call void @video_unregister_device(ptr noundef %vdev) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end9.if.end22_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  %radio_ctrl_handler = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %radio_ctrl_handler) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_417_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_register_analog_devices(ptr noundef %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2) #14
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 255, ptr %norm, align 8
  %max_range_640_480.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 21
  %3 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %max_range_640_480.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool.not.i, i32 720, i32 640
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %..i, ptr %width, align 8
  %spec.select = select i1 %tobool.not.i, i32 576, i32 480
  %height = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %height, align 4
  %interlaced = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 33
  %6 = ptrtoint ptr %interlaced to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %interlaced, align 8
  %format = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @format, ptr %format, align 8
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 80
  %8 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %video_input, align 4
  tail call void @video_mux(ptr noundef %dev, i32 noundef %9)
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn334 = load ptr, ptr %subdevs, align 4
  %cmp.not336 = icmp eq ptr %.pn334, %subdevs
  br i1 %cmp.not336, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn338 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn334, %entry.for.body_crit_edge ]
  %__err.0337 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.0339 = getelementptr i8, ptr %.pn338, i32 -80
  %ops = getelementptr i8, ptr %.pn338, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_std, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %norm, align 8
  %call13 = tail call i32 %16(ptr noundef %__sd.0339, i64 noundef %18) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then ], [ %__err.0337, %land.lhs.true.if.end_crit_edge ], [ %__err.0337, %for.body.if.end_crit_edge ]
  %19 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge340
  ]

if.end.for.inc_crit_edge340:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge340
  %20 = ptrtoint ptr %.pn338 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn338, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 12
  %call27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 10, ptr noundef nonnull @cx231xx_register_analog_devices._key, ptr noundef nonnull @.str.31) #11
  %radio_ctrl_handler = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 13
  %call29 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %radio_ctrl_handler, i32 noundef 5, ptr noundef nonnull @cx231xx_register_analog_devices._key.32, ptr noundef nonnull @.str.33) #11
  %sd_cx25840 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 10
  %21 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_cx25840, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %for.end.if.end40_crit_edge, label %if.then31

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_handler34 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %ctrl_handler34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl_handler34, align 4
  %call35 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_handler, ptr noundef %24, ptr noundef null, i1 noundef zeroext true) #11
  %25 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_cx25840, align 4
  %ctrl_handler38 = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %ctrl_handler38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_handler38, align 4
  %call39 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %radio_ctrl_handler, ptr noundef %28, ptr noundef nonnull @v4l2_ctrl_radio_filter, i1 noundef zeroext true) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %for.end.if.end40_crit_edge
  %error = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 12, i32 9
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool42.not = icmp eq i32 %30, 0
  br i1 %tobool42.not, label %if.end46, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %error48 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 13, i32 9
  %31 = ptrtoint ptr %error48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  br i1 %tobool49.not, label %if.end53, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  %vdev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27
  tail call fastcc void @cx231xx_vdev_init(ptr noundef %dev, ptr noundef %vdev, ptr noundef nonnull @cx231xx_video_template, ptr noundef nonnull @.str.34)
  %video_pad = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 48
  %flags = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 48, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %flags, align 4
  %call56 = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %video_pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end53.if.end63_crit_edge

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.36) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %if.end53.if.end63_crit_edge
  %ctrl_handler66 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 9
  %36 = ptrtoint ptr %ctrl_handler66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ctrl_handler, ptr %ctrl_handler66, align 4
  %vidq = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52
  %37 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %vidq, align 4
  %io_modes = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 1
  %38 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 23, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 10
  %39 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 12
  %40 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 760, ptr %buf_struct_size, align 4
  %ops67 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 7
  %41 = ptrtoint ptr %ops67 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cx231xx_video_qops, ptr %ops67, align 4
  %mem_ops = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 8
  %42 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 13
  %43 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 15
  %44 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %min_buffers_needed, align 4
  %lock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 38
  %lock68 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 52, i32 5
  %45 = ptrtoint ptr %lock68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %lock, ptr %lock68, align 4
  %call69 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  %queue = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 10
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vidq, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 4
  %47 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 83886081, ptr %device_caps, align 8
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %48 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %model, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %49, label %sw.default [
    i32 20, label %if.end72.sw.epilog.sink.split_crit_edge
    i32 26, label %if.end72.sw.epilog.sink.split_crit_edge341
    i32 21, label %if.end72.sw.epilog.sink.split_crit_edge342
    i32 27, label %if.end72.sw.epilog.sink.split_crit_edge343
    i32 23, label %if.end72.sw.epilog.sink.split_crit_edge344
  ]

if.end72.sw.epilog.sink.split_crit_edge344:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end72.sw.epilog.sink.split_crit_edge343:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end72.sw.epilog.sink.split_crit_edge342:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end72.sw.epilog.sink.split_crit_edge341:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end72.sw.epilog.sink.split_crit_edge:          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end72
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %51 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp77.not = icmp eq i32 %52, 4
  br i1 %cmp77.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %if.end72.sw.epilog.sink.split_crit_edge, %if.end72.sw.epilog.sink.split_crit_edge341, %if.end72.sw.epilog.sink.split_crit_edge342, %if.end72.sw.epilog.sink.split_crit_edge343, %if.end72.sw.epilog.sink.split_crit_edge344
  %53 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 83951617, ptr %device_caps, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  %devno = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 2
  %54 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devno, align 4
  %arrayidx = getelementptr [8 x i32], ptr @video_nr, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %fops.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 3
  %58 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fops.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %57, i32 noundef 1, ptr noundef %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool85.not = icmp eq i32 %call.i, 0
  %62 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1, align 8
  br i1 %tobool85.not, label %do.end94, label %do.end89

do.end89:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.40, i32 noundef %call.i) #14
  br label %cleanup

do.end94:                                         ; preds = %sw.epilog
  %init_name.i.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 5, i32 3
  %64 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end94.video_device_node_name.exit_crit_edge

do.end94.video_device_node_name.exit_crit_edge:   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 27, i32 5
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end94.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %67, %if.end.i.i ], [ %65, %do.end94.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i) #14
  %68 = call ptr @memcpy(ptr @cx231xx_vbi_template, ptr @cx231xx_video_template, i32 1352)
  %call98 = tail call i32 @strscpy(ptr noundef getelementptr inbounds (%struct.video_device, ptr @cx231xx_vbi_template, i32 0, i32 12), ptr noundef nonnull @.str.45, i32 noundef 32) #11
  %vbi_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45
  tail call fastcc void @cx231xx_vdev_init(ptr noundef %dev, ptr noundef %vbi_dev, ptr noundef nonnull @cx231xx_vbi_template, ptr noundef nonnull @.str.46)
  %vbi_pad = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 49
  %flags99 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 49, i32 4
  %69 = ptrtoint ptr %flags99 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %flags99, align 4
  %call103 = tail call i32 @media_entity_pads_init(ptr noundef %vbi_dev, i16 noundef zeroext 1, ptr noundef %vbi_pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end108, label %video_device_node_name.exit.if.end110_crit_edge

video_device_node_name.exit.if.end110_crit_edge:  ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

do.end108:                                        ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.48) #14
  br label %if.end110

if.end110:                                        ; preds = %do.end108, %video_device_node_name.exit.if.end110_crit_edge
  %ctrl_handler113 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 9
  %72 = ptrtoint ptr %ctrl_handler113 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ctrl_handler, ptr %ctrl_handler113, align 4
  %vbiq = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53
  %73 = ptrtoint ptr %vbiq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %vbiq, align 4
  %io_modes115 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 1
  %74 = ptrtoint ptr %io_modes115 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 23, ptr %io_modes115, align 4
  %drv_priv116 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 10
  %75 = ptrtoint ptr %drv_priv116 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %drv_priv116, align 4
  %buf_struct_size117 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 12
  %76 = ptrtoint ptr %buf_struct_size117 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 760, ptr %buf_struct_size117, align 4
  %ops118 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 7
  %77 = ptrtoint ptr %ops118 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @cx231xx_vbi_qops, ptr %ops118, align 4
  %mem_ops119 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 8
  %78 = ptrtoint ptr %mem_ops119 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops119, align 4
  %timestamp_flags120 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 13
  %79 = ptrtoint ptr %timestamp_flags120 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8192, ptr %timestamp_flags120, align 4
  %min_buffers_needed121 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 15
  %80 = ptrtoint ptr %min_buffers_needed121 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %min_buffers_needed121, align 4
  %lock123 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 53, i32 5
  %81 = ptrtoint ptr %lock123 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %lock, ptr %lock123, align 4
  %call124 = tail call i32 @vb2_queue_init(ptr noundef %vbiq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end127:                                        ; preds = %if.end110
  %queue129 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 10
  %82 = ptrtoint ptr %queue129 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %vbiq, ptr %queue129, align 8
  %device_caps131 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 4
  %83 = ptrtoint ptr %device_caps131 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 83886096, ptr %device_caps131, align 8
  %84 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %model, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %85, label %sw.default137 [
    i32 20, label %if.end127.sw.epilog145.sink.split_crit_edge
    i32 26, label %if.end127.sw.epilog145.sink.split_crit_edge345
    i32 21, label %if.end127.sw.epilog145.sink.split_crit_edge346
    i32 27, label %if.end127.sw.epilog145.sink.split_crit_edge347
    i32 23, label %if.end127.sw.epilog145.sink.split_crit_edge348
  ]

if.end127.sw.epilog145.sink.split_crit_edge348:   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

if.end127.sw.epilog145.sink.split_crit_edge347:   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

if.end127.sw.epilog145.sink.split_crit_edge346:   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

if.end127.sw.epilog145.sink.split_crit_edge345:   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

if.end127.sw.epilog145.sink.split_crit_edge:      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

sw.default137:                                    ; preds = %if.end127
  %tuner_type138 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %87 = ptrtoint ptr %tuner_type138 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tuner_type138, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp139.not = icmp eq i32 %88, 4
  br i1 %cmp139.not, label %sw.default137.sw.epilog145_crit_edge, label %sw.default137.sw.epilog145.sink.split_crit_edge

sw.default137.sw.epilog145.sink.split_crit_edge:  ; preds = %sw.default137
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145.sink.split

sw.default137.sw.epilog145_crit_edge:             ; preds = %sw.default137
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog145

sw.epilog145.sink.split:                          ; preds = %sw.default137.sw.epilog145.sink.split_crit_edge, %if.end127.sw.epilog145.sink.split_crit_edge, %if.end127.sw.epilog145.sink.split_crit_edge345, %if.end127.sw.epilog145.sink.split_crit_edge346, %if.end127.sw.epilog145.sink.split_crit_edge347, %if.end127.sw.epilog145.sink.split_crit_edge348
  %89 = ptrtoint ptr %device_caps131 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 83951632, ptr %device_caps131, align 8
  br label %sw.epilog145

sw.epilog145:                                     ; preds = %sw.epilog145.sink.split, %sw.default137.sw.epilog145_crit_edge
  %90 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %devno, align 4
  %arrayidx148 = getelementptr [8 x i32], ptr @vbi_nr, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx148, align 4
  %fops.i318 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 3
  %94 = ptrtoint ptr %fops.i318 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fops.i318, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call.i319 = tail call i32 @__video_register_device(ptr noundef %vbi_dev, i32 noundef 1, i32 noundef %93, i32 noundef 1, ptr noundef %97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp150 = icmp slt i32 %call.i319, 0
  %98 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1, align 8
  br i1 %cmp150, label %do.end154, label %do.end159

do.end154:                                        ; preds = %sw.epilog145
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.51) #14
  br label %cleanup

do.end159:                                        ; preds = %sw.epilog145
  %init_name.i.i320 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 5, i32 3
  %100 = ptrtoint ptr %init_name.i.i320 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i.i320, align 8
  %tobool.not.i.i321 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i321, label %if.end.i.i323, label %do.end159.video_device_node_name.exit325_crit_edge

do.end159.video_device_node_name.exit325_crit_edge: ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit325

if.end.i.i323:                                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i322 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 45, i32 5
  %102 = ptrtoint ptr %dev.i322 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i322, align 4
  br label %video_device_node_name.exit325

video_device_node_name.exit325:                   ; preds = %if.end.i.i323, %do.end159.video_device_node_name.exit325_crit_edge
  %retval.0.i.i324 = phi ptr [ %103, %if.end.i.i323 ], [ %101, %do.end159.video_device_node_name.exit325_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i.i324) #14
  %104 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %model, align 8
  %radio = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %105, i32 27
  %106 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %107)
  %cmp166 = icmp eq i32 %107, 5
  br i1 %cmp166, label %if.then167, label %video_device_node_name.exit325.cleanup_crit_edge

video_device_node_name.exit325.cleanup_crit_edge: ; preds = %video_device_node_name.exit325
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then167:                                       ; preds = %video_device_node_name.exit325
  %radio_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46
  tail call fastcc void @cx231xx_vdev_init(ptr noundef %dev, ptr noundef %radio_dev, ptr noundef nonnull @cx231xx_radio_template, ptr noundef nonnull @.str.56)
  %ctrl_handler170 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 9
  %108 = ptrtoint ptr %ctrl_handler170 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %radio_ctrl_handler, ptr %ctrl_handler170, align 4
  %device_caps172 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 4
  %109 = ptrtoint ptr %device_caps172 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 327680, ptr %device_caps172, align 8
  %110 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %devno, align 4
  %arrayidx175 = getelementptr [8 x i32], ptr @radio_nr, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx175, align 4
  %fops.i326 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 3
  %114 = ptrtoint ptr %fops.i326 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fops.i326, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %call.i327 = tail call i32 @__video_register_device(ptr noundef %radio_dev, i32 noundef 2, i32 noundef %113, i32 noundef 1, ptr noundef %117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %cmp177 = icmp slt i32 %call.i327, 0
  %118 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev1, align 8
  br i1 %cmp177, label %do.end181, label %do.end186

do.end181:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.58) #14
  br label %cleanup

do.end186:                                        ; preds = %if.then167
  %init_name.i.i328 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 5, i32 3
  %120 = ptrtoint ptr %init_name.i.i328 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %init_name.i.i328, align 8
  %tobool.not.i.i329 = icmp eq ptr %121, null
  br i1 %tobool.not.i.i329, label %if.end.i.i331, label %do.end186.video_device_node_name.exit333_crit_edge

do.end186.video_device_node_name.exit333_crit_edge: ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit333

if.end.i.i331:                                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i330 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 46, i32 5
  %122 = ptrtoint ptr %dev.i330 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i330, align 4
  br label %video_device_node_name.exit333

video_device_node_name.exit333:                   ; preds = %if.end.i.i331, %do.end186.video_device_node_name.exit333_crit_edge
  %retval.0.i.i332 = phi ptr [ %123, %if.end.i.i331 ], [ %121, %do.end186.video_device_node_name.exit333_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.61, ptr noundef %retval.0.i.i332) #14
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit333, %do.end181, %video_device_node_name.exit325.cleanup_crit_edge, %do.end154, %if.end110.cleanup_crit_edge, %do.end89, %if.end63.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end89 ], [ %call.i319, %do.end154 ], [ %call.i327, %do.end181 ], [ %30, %if.end40.cleanup_crit_edge ], [ %32, %if.end46.cleanup_crit_edge ], [ %call69, %if.end63.cleanup_crit_edge ], [ %call124, %if.end110.cleanup_crit_edge ], [ 0, %video_device_node_name.exit333 ], [ 0, %video_device_node_name.exit325.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_ctrl_radio_filter(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_vdev_init(ptr noundef %dev, ptr noundef %vfd, ptr nocapture noundef readonly %template, ptr noundef %type_name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %vfd, ptr %template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9
  %v4l2_dev1 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 7
  %1 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %v4l2_dev, ptr %v4l2_dev1, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 23
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 38
  %lock2 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 26
  %3 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lock, ptr %lock2, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.74, ptr noundef %dev, ptr noundef %type_name)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %model, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %8, label %sw.default [
    i32 20, label %if.then.if.end_crit_edge
    i32 26, label %if.then.if.end_crit_edge22
    i32 21, label %if.then.if.end_crit_edge23
    i32 27, label %if.then.if.end_crit_edge24
    i32 23, label %if.then.if.end_crit_edge25
  ]

if.then.if.end_crit_edge25:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge24:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge23:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge22:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %valid_ioctls.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i) #11
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i) #11
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i) #11
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i) #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge22, %if.then.if.end_crit_edge23, %if.then.if.end_crit_edge24, %if.then.if.end_crit_edge25, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_v4l2_open(ptr noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %filp) #11
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 38
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %users = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then8, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %external_av = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 4, i32 21
  %4 = ptrtoint ptr %external_av to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %external_av, align 8
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  %. = select i1 %tobool9.not, i32 32, i32 48
  %call12 = tail call i32 @cx231xx_set_power_mode(ptr noundef %1, i32 noundef %.) #11
  %call14 = tail call i32 @cx231xx_set_video_alternate(ptr noundef %1) #11
  tail call void @cx231xx_config_i2c(ptr noundef %1) #11
  %video_input = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 80
  %6 = ptrtoint ptr %video_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_input, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 2)
  %9 = ptrtoint ptr %video_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %video_input, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.end7.if.end18_crit_edge
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp19 = icmp eq i32 %11, 2
  br i1 %cmp19, label %do.body, label %if.end18.if.end59_crit_edge

if.end18.if.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.body:                                          ; preds = %if.end18
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %do.body.do.end27_crit_edge, label %do.end

do.body.do.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %1, ptr noundef nonnull @.str.76) #14
  br label %do.end27

do.end27:                                         ; preds = %do.end, %do.body.do.end27_crit_edge
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn97 = load ptr, ptr %subdevs, align 4
  %cmp32.not99 = icmp eq ptr %.pn97, %subdevs
  br i1 %cmp32.not99, label %do.end27.if.end59thread-pre-split_crit_edge, label %do.end27.for.body_crit_edge

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  br label %for.body

do.end27.if.end59thread-pre-split_crit_edge:      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59thread-pre-split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end27.for.body_crit_edge
  %.pn101 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn97, %do.end27.for.body_crit_edge ]
  %__err.0100 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %do.end27.for.body_crit_edge ]
  %__sd.0102 = getelementptr i8, ptr %.pn101, i32 -80
  %ops = getelementptr i8, ptr %.pn101, i32 24
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %for.body.if.end42_crit_edge, label %land.lhs.true

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true:                                    ; preds = %for.body
  %s_radio = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %s_radio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_radio, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %land.lhs.true.if.end42_crit_edge, label %if.then37

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call41 = tail call i32 %19(ptr noundef %__sd.0102) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %land.lhs.true.if.end42_crit_edge, %for.body.if.end42_crit_edge
  %__err.1 = phi i32 [ %call41, %if.then37 ], [ %__err.0100, %land.lhs.true.if.end42_crit_edge ], [ %__err.0100, %for.body.if.end42_crit_edge ]
  %20 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %__err.1, label %if.end42.if.end59thread-pre-split_crit_edge [
    i32 0, label %if.end42.for.inc_crit_edge
    i32 -515, label %if.end42.for.inc_crit_edge103
  ]

if.end42.for.inc_crit_edge103:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end42.if.end59thread-pre-split_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59thread-pre-split

for.inc:                                          ; preds = %if.end42.for.inc_crit_edge, %if.end42.for.inc_crit_edge103
  %21 = ptrtoint ptr %.pn101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn101, align 4
  %cmp32.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp32.not, label %for.inc.if.end59thread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end59thread-pre-split_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59thread-pre-split

if.end59thread-pre-split:                         ; preds = %for.inc.if.end59thread-pre-split_crit_edge, %if.end42.if.end59thread-pre-split_crit_edge, %do.end27.if.end59thread-pre-split_crit_edge
  %22 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %vfl_type, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end59thread-pre-split, %if.end18.if.end59_crit_edge
  %23 = phi i32 [ %.pr, %if.end59thread-pre-split ], [ %11, %if.end18.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp61 = icmp eq i32 %23, 1
  br i1 %cmp61, label %if.then62, label %if.end59.cleanup.sink.split_crit_edge

if.end59.cleanup.sink.split_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then62, %if.end59.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end59.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_v4l2_close(ptr noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call.i.i = tail call ptr @video_devdata(ptr noundef %filp) #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call1.i = tail call ptr @video_devdata(ptr noundef %filp) #11
  %call2.i = tail call i32 @_vb2_fop_release(ptr noundef %filp, ptr noundef null) #11
  %users.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users.i, align 8
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %users.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end31.i_crit_edge

entry.if.end31.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then.i:                                        ; preds = %entry
  %subdevs.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn1.i = load ptr, ptr %subdevs.i, align 4
  %cmp6.not3.i = icmp eq ptr %.pn1.i, %subdevs.i
  br i1 %cmp6.not3.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.then.i.for.body.i_crit_edge ]
  %__err.04.i = phi i32 [ %__err.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %__sd.06.i = getelementptr i8, ptr %.pn5.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn5.i, i32 24
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool9.not.i = icmp eq ptr %12, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 %12(ptr noundef %__sd.06.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %__err.1.i = phi i32 [ %call14.i, %if.then10.i ], [ %__err.04.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %__err.04.i, %for.body.i.if.end.i_crit_edge ]
  %13 = zext i32 %__err.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %__err.1.i, label %if.end.i.for.end.i_crit_edge [
    i32 0, label %if.end.i.for.inc.i_crit_edge
    i32 -515, label %if.end.i.for.inc.i_crit_edge5
  ]

if.end.i.for.inc.i_crit_edge5:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge5
  %14 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp6.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %USE_ISO.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 85
  %15 = ptrtoint ptr %USE_ISO.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %USE_ISO.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not.i = icmp eq i8 %16, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_uninit_isoc(ptr noundef %3) #11
  br label %if.end29.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_uninit_bulk(ptr noundef %3) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then28.i
  %call30.i = tail call i32 @cx231xx_set_mode(ptr noundef %3, i32 noundef 0) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end29.i, %entry.if.end31.i_crit_edge
  %no_alt_vanc.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 4, i32 21
  %17 = ptrtoint ptr %no_alt_vanc.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %no_alt_vanc.i, align 8
  %18 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool32.not.i = icmp eq i8 %18, 0
  br i1 %tobool32.not.i, label %land.lhs.true33.i, label %if.end31.i.if.end42.i_crit_edge

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.lhs.true33.i:                                ; preds = %if.end31.i
  %vfl_type.i = getelementptr inbounds %struct.video_device, ptr %call1.i, i32 0, i32 13
  %19 = ptrtoint ptr %vfl_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vfl_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp34.i = icmp eq i32 %20, 1
  br i1 %cmp34.i, label %if.then35.i, label %land.lhs.true33.i.if.end42.i_crit_edge

land.lhs.true33.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_uninit_vbi_isoc(ptr noundef %3) #11
  %vbi_or_sliced_cc_mode.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 82
  %21 = ptrtoint ptr %vbi_or_sliced_cc_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vbi_or_sliced_cc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool36.not.i = icmp eq i8 %22, 0
  %..i = select i1 %tobool36.not.i, i8 5, i8 6
  br label %cleanup.sink.split.i

if.end42.i:                                       ; preds = %land.lhs.true33.i.if.end42.i_crit_edge, %if.end31.i.if.end42.i_crit_edge
  %23 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %users.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp44.i = icmp eq i32 %24, 0
  br i1 %cmp44.i, label %if.end42.i.cleanup.sink.split.i_crit_edge, label %if.end42.i.cx231xx_close.exit_crit_edge

if.end42.i.cx231xx_close.exit_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_close.exit

if.end42.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end42.i.cleanup.sink.split.i_crit_edge, %if.then35.i
  %.sink.i = phi i8 [ %..i, %if.then35.i ], [ 4, %if.end42.i.cleanup.sink.split.i_crit_edge ]
  %call46.i = tail call i32 @cx231xx_set_alt_setting(ptr noundef %3, i8 noundef zeroext %.sink.i, i8 noundef zeroext 0) #11
  br label %cx231xx_close.exit

cx231xx_close.exit:                               ; preds = %cleanup.sink.split.i, %if.end42.i.cx231xx_close.exit_crit_edge
  %open48.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 42
  tail call void @__wake_up(ptr noundef %open48.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_video_alternate(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_config_i2c(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_alt_setting(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_isoc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_bulk(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_vbi_isoc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !284

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load i32, ptr getelementptr inbounds ([1 x %struct.cx231xx_fmt], ptr @format, i32 0, i32 0, i32 1), align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %format = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %fourcc = getelementptr inbounds %struct.cx231xx_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  %13 = load i32, ptr %width, align 8
  %14 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.cx231xx_fmt, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %depth, align 4
  %mul = mul i32 %16, %13
  %add = add i32 %mul, 7
  %shr = ashr i32 %add, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %bytesperline, align 4
  %18 = load i32, ptr %height, align 4
  %mul11 = mul i32 %shr, %18
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul11, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1440, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %norm, align 8
  %and = and i64 %7, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 6
  %start = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %start, align 4
  %9 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %norm, align 8
  %and6 = and i64 %10, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %cond8 = select i1 %tobool7.not, i32 12, i32 18
  %count = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond8, ptr %count, align 4
  %12 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %norm, align 8
  %and12 = and i64 %13, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  %cond14 = select i1 %tobool13.not, i32 273, i32 318
  %arrayidx17 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond14, ptr %arrayidx17, align 4
  %arrayidx23 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond8, ptr %arrayidx23, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %reserved, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #11
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %call1 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 52, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  %width6 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width6, align 8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height8, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat, align 4
  %17 = load i32, ptr getelementptr inbounds ([1 x %struct.cx231xx_fmt], ptr @format, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp2.i = icmp eq i32 %17, %16
  %retval.0.i = select i1 %cmp2.i, ptr @format, ptr null
  %format11 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %format11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %format11, align 8
  %format12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt, align 4
  %21 = ptrtoint ptr %format12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %format12, align 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %colorspace4.i, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %conv.i = trunc i32 %33 to i16
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %34, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %37 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %40 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %41 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %code9.i, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn79 = load ptr, ptr %subdevs, align 4
  %cmp.not81 = icmp eq ptr %.pn79, %subdevs
  br i1 %cmp.not81, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn79, %if.end5.for.body_crit_edge ]
  %__err.082 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %__sd.084 = getelementptr i8, ptr %.pn83, i32 -80
  %ops = getelementptr i8, ptr %.pn83, i32 24
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pad, align 4
  %tobool17.not = icmp eq ptr %47, null
  br i1 %tobool17.not, label %for.body.if.end26_crit_edge, label %land.lhs.true

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %for.body
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_fmt, align 4
  %tobool20.not = icmp eq ptr %49, null
  br i1 %tobool20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then21

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call i32 %49(ptr noundef %__sd.084, ptr noundef null, ptr noundef nonnull %format) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %__err.1 = phi i32 [ %call25, %if.then21 ], [ %__err.082, %land.lhs.true.if.end26_crit_edge ], [ %__err.082, %for.body.if.end26_crit_edge ]
  %50 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %__err.1, label %if.end26.for.end_crit_edge [
    i32 0, label %if.end26.for.inc_crit_edge
    i32 -515, label %if.end26.for.inc_crit_edge85
  ]

if.end26.for.inc_crit_edge85:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.end26.for.inc_crit_edge85
  %51 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge, %if.end5.for.end_crit_edge
  %52 = ptrtoint ptr %format12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format12, align 4
  %54 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fmt, align 4
  %55 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height2.i, align 4
  %57 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %height, align 4
  %58 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %field3.i, align 4
  %60 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %field.i, align 4
  %61 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %colorspace4.i, align 4
  %63 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %colorspace.i, align 4
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %34, align 4
  %conv.i72 = zext i16 %65 to i32
  %66 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i72, ptr %31, align 4
  %67 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %quantization6.i, align 2
  %conv5.i74 = zext i16 %68 to i32
  %69 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv5.i74, ptr %quantization.i, align 4
  %70 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i77 = zext i16 %71 to i32
  %72 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv7.i77, ptr %xfer_func.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt.i, align 4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1440, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1497715271, ptr %sample_format.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags.i, align 4
  %norm.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %8, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 10, i32 6
  %start.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %start.i, align 4
  %10 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %norm.i, align 8
  %and7.i = and i64 %11, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp eq i64 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, i32 12, i32 18
  %count.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond9.i, ptr %count.i, align 4
  %13 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %norm.i, align 8
  %and13.i = and i64 %14, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, i32 273, i32 318
  %arrayidx18.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond15.i, ptr %arrayidx18.i, align 4
  %arrayidx24.i = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond9.i, ptr %arrayidx24.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %reserved.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #11
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %width, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %height) #11
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height3, align 4
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height, align 4
  %max_range_640_480.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 4, i32 21
  %8 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %max_range_640_480.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool.not.i, i32 720, i32 640
  br i1 %tobool.not.i, label %if.else.i, label %entry.norm_maxh.exit_crit_edge

entry.norm_maxh.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %norm_maxh.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %norm.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %10, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool1.not.i, i32 480, i32 576
  br label %norm_maxh.exit

norm_maxh.exit:                                   ; preds = %if.else.i, %entry.norm_maxh.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.else.i ], [ 480, %entry.norm_maxh.exit_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  %13 = load i32, ptr getelementptr inbounds ([1 x %struct.cx231xx_fmt], ptr @format, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp2.i = icmp eq i32 %13, %12
  br i1 %cmp2.i, label %if.end17, label %do.body

do.body:                                          ; preds = %norm_maxh.exit
  %14 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %12) #14
  br label %cleanup

if.end17:                                         ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @v4l_bound_align_image(ptr noundef nonnull %width, i32 noundef 48, i32 noundef %..i, i32 noundef 1, ptr noundef nonnull %height, i32 noundef 32, i32 noundef %retval.0.i, i32 noundef 1, i32 noundef 0) #11
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fmt, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height3, align 4
  %21 = load i32, ptr getelementptr inbounds ([1 x %struct.cx231xx_fmt], ptr @format, i32 0, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  %23 = load i32, ptr getelementptr inbounds ([1 x %struct.cx231xx_fmt], ptr @format, i32 0, i32 0, i32 2), align 4
  %mul = mul i32 %23, %16
  %add = add i32 %mul, 7
  %shr = lshr i32 %add, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %bytesperline, align 4
  %mul27 = mul i32 %shr, %19
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul27, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %height) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1440, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %norm, align 8
  %and = and i64 %8, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 6
  %start = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %start, align 4
  %10 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %norm, align 8
  %and7 = and i64 %11, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %cond9 = select i1 %tobool8.not, i32 12, i32 18
  %count = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond9, ptr %count, align 4
  %13 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %norm, align 8
  %and13 = and i64 %14, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 273, i32 318
  %arrayidx18 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond15, ptr %arrayidx18, align 4
  %arrayidx24 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond9, ptr %arrayidx24, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %reserved, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %norm) #4 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #11
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %norm1 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %norm1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %norm)
  %cmp = icmp eq i64 %6, %norm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 52, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %norm1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %norm, ptr %norm1, align 8
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %width, align 8
  %and = and i64 %norm, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %height, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn124 = load ptr, ptr %subdevs, align 4
  %cmp10.not126 = icmp eq ptr %.pn124, %subdevs
  br i1 %cmp10.not126, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn128 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn124, %if.end4.for.body_crit_edge ]
  %__err.0127 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %__sd.0129 = getelementptr i8, ptr %.pn128, i32 -80
  %ops = getelementptr i8, ptr %.pn128, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %for.body.if.end21_crit_edge, label %land.lhs.true

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_std, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true.if.end21_crit_edge, label %if.then15

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %norm1, align 8
  %call20 = tail call i32 %18(ptr noundef %__sd.0129, i64 noundef %20) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %land.lhs.true.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %__err.1 = phi i32 [ %call20, %if.then15 ], [ %__err.0127, %land.lhs.true.if.end21_crit_edge ], [ %__err.0127, %for.body.if.end21_crit_edge ]
  %21 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %__err.1, label %if.end21.for.end_crit_edge [
    i32 0, label %if.end21.for.inc_crit_edge
    i32 -515, label %if.end21.for.inc_crit_edge136
  ]

if.end21.for.inc_crit_edge136:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %if.end21.for.inc_crit_edge136
  %22 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp10.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge, %if.end4.for.end_crit_edge
  %format35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %code, align 4
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 8
  %26 = ptrtoint ptr %format35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %format35, align 4
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %height41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %height41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height41, align 4
  %30 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn123130 = load ptr, ptr %subdevs, align 4
  %cmp55.not132 = icmp eq ptr %.pn123130, %subdevs
  br i1 %cmp55.not132, label %for.end.for.end81_crit_edge, label %for.end.for.body57_crit_edge

for.end.for.body57_crit_edge:                     ; preds = %for.end
  br label %for.body57

for.end.for.end81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.body57:                                       ; preds = %for.inc75.for.body57_crit_edge, %for.end.for.body57_crit_edge
  %.pn123134 = phi ptr [ %.pn123, %for.inc75.for.body57_crit_edge ], [ %.pn123130, %for.end.for.body57_crit_edge ]
  %__err44.0133 = phi i32 [ %__err44.1, %for.inc75.for.body57_crit_edge ], [ 0, %for.end.for.body57_crit_edge ]
  %__sd42.0135 = getelementptr i8, ptr %.pn123134, i32 -80
  %ops58 = getelementptr i8, ptr %.pn123134, i32 24
  %31 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops58, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad, align 4
  %tobool59.not = icmp eq ptr %34, null
  br i1 %tobool59.not, label %for.body57.if.end69_crit_edge, label %land.lhs.true60

for.body57.if.end69_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

land.lhs.true60:                                  ; preds = %for.body57
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_fmt, align 4
  %tobool63.not = icmp eq ptr %36, null
  br i1 %tobool63.not, label %land.lhs.true60.if.end69_crit_edge, label %if.then64

land.lhs.true60.if.end69_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = call i32 %36(ptr noundef %__sd42.0135, ptr noundef null, ptr noundef nonnull %format) #11
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %land.lhs.true60.if.end69_crit_edge, %for.body57.if.end69_crit_edge
  %__err44.1 = phi i32 [ %call68, %if.then64 ], [ %__err44.0133, %land.lhs.true60.if.end69_crit_edge ], [ %__err44.0133, %for.body57.if.end69_crit_edge ]
  %37 = zext i32 %__err44.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %__err44.1, label %if.end69.for.end81_crit_edge [
    i32 0, label %if.end69.for.inc75_crit_edge
    i32 -515, label %if.end69.for.inc75_crit_edge137
  ]

if.end69.for.inc75_crit_edge137:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc75

if.end69.for.inc75_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc75

if.end69.for.end81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.inc75:                                        ; preds = %if.end69.for.inc75_crit_edge, %if.end69.for.inc75_crit_edge137
  %38 = ptrtoint ptr %.pn123134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn123 = load ptr, ptr %.pn123134, align 4
  %cmp55.not = icmp eq ptr %.pn123, %subdevs
  br i1 %cmp55.not, label %for.inc75.for.end81_crit_edge, label %for.inc75.for.body57_crit_edge

for.inc75.for.body57_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.inc75.for.end81_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.end81:                                        ; preds = %for.inc75.for.end81_crit_edge, %if.end69.for.end81_crit_edge, %for.end.for.end81_crit_edge
  %call88 = call i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end81, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end81 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  %and = and i64 %3, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 11, i32 54
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %f, align 4
  %cond3 = select i1 %tobool.not, i32 10, i32 59
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond3, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %s) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %width3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width3, align 4
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %format = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.cx231xx_fmt, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %mul1 = mul i32 %mul, %9
  %add = add i32 %mul1, 7
  %shr = ashr i32 %add, 3
  %size = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %size, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers, align 4
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuffers, align 4
  %add2 = add i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add2)
  %cmp = icmp ult i32 %add2, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 4, %12
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizes, align 4
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp6 = icmp ult i32 %19, %21
  %cond = select i1 %cmp6, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %nplanes, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %25 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 0, i32 11
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %mode_tv = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 84
  %3 = ptrtoint ptr %mode_tv to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mode_tv, align 4
  tail call fastcc void @cx231xx_enable_analog_tuner(ptr noundef %1)
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %4 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %max_pkt_size6 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 5
  %6 = ptrtoint ptr %max_pkt_size6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pkt_size6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @cx231xx_init_isoc(ptr noundef %1, i32 noundef 40, i32 noundef 8, i32 noundef %7, ptr noundef nonnull @cx231xx_isoc_copy) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @cx231xx_init_bulk(ptr noundef %1, i32 noundef 40, i32 noundef 8, i32 noundef %7, ptr noundef nonnull @cx231xx_bulk_copy) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %video_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %8 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %buf10.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 2, i32 11
  %buf8.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 1, i32 11
  %buf10.sink.i = select i1 %tobool.not.i, ptr %buf10.i, ptr %buf8.i
  %10 = ptrtoint ptr %buf10.sink.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buf10.sink.i, align 4
  %11 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video_mode.i, align 4
  %cmp18.not39.i = icmp eq ptr %12, %video_mode.i
  br i1 %cmp18.not39.i, label %if.then9.return_all_buffers.exit_crit_edge, label %if.then9.for.body.i_crit_edge

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

if.then9.return_all_buffers.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %.pn.in40.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %12, %if.then9.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in40.i, i32 -736
  %13 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn.in40.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in40.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in40.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #11
  %cmp18.not.i = icmp eq ptr %.pn.i, %video_mode.i
  br i1 %cmp18.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %if.then9.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4.i) #11
  br label %if.end10

if.end10:                                         ; preds = %return_all_buffers.exit, %if.end.if.end10_crit_edge
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn56 = load ptr, ptr %subdevs, align 4
  %cmp.not58 = icmp eq ptr %.pn56, %subdevs
  br i1 %cmp.not58, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %if.end10.for.body_crit_edge ]
  %__err.059 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %__sd.061 = getelementptr i8, ptr %.pn60, i32 -80
  %ops = getelementptr i8, ptr %.pn60, i32 24
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %for.body.if.end23_crit_edge, label %land.lhs.true

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_stream, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %land.lhs.true.if.end23_crit_edge, label %if.then18

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 %28(ptr noundef %__sd.061, i32 noundef 1) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %__err.1 = phi i32 [ %call22, %if.then18 ], [ %__err.059, %land.lhs.true.if.end23_crit_edge ], [ %__err.059, %for.body.if.end23_crit_edge ]
  %29 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %__err.1, label %if.end23.for.end_crit_edge [
    i32 0, label %if.end23.for.inc_crit_edge
    i32 -515, label %if.end23.for.inc_crit_edge62
  ]

if.end23.for.inc_crit_edge62:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end23.for.inc_crit_edge62
  %30 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge, %if.end10.for.end_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn34 = load ptr, ptr %subdevs, align 4
  %cmp.not36 = icmp eq ptr %.pn34, %subdevs
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %entry.for.body_crit_edge ]
  %__err.037 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.039 = getelementptr i8, ptr %.pn38, i32 -80
  %ops = getelementptr i8, ptr %.pn38, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 %8(ptr noundef %__sd.039, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.037, %land.lhs.true.if.end_crit_edge ], [ %__err.037, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge40
  ]

if.end.for.inc_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge40
  %10 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %video_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %USE_ISO.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %11 = ptrtoint ptr %USE_ISO.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %USE_ISO.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %buf10.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 2, i32 11
  %buf8.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 1, i32 11
  %buf10.sink.i = select i1 %tobool.not.i, ptr %buf10.i, ptr %buf8.i
  %13 = ptrtoint ptr %buf10.sink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %buf10.sink.i, align 4
  %14 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video_mode.i, align 4
  %cmp18.not39.i = icmp eq ptr %15, %video_mode.i
  br i1 %cmp18.not39.i, label %for.end.return_all_buffers.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.return_all_buffers.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn.in40.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %for.end.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in40.i, i32 -736
  %16 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in40.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in40.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in40.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in40.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #11
  %cmp18.not.i = icmp eq ptr %.pn.i, %video_mode.i
  br i1 %cmp18.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %for.end.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %video_mode = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55
  %slock = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %list = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %video_mode) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %video_mode, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_enable_analog_tuner(ptr nocapture noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %media_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup89_crit_edge, label %if.end

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

if.end:                                           ; preds = %entry
  %entities = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %entities, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.cond.cleanup89_crit_edge, label %for.body

for.cond.cleanup89_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

for.body:                                         ; preds = %for.cond
  %function = getelementptr i8, ptr %.pn, i32 16
  %3 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %function, align 4
  %cmp2 = icmp eq i32 %4, 131076
  br i1 %cmp2, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body
  %entity.0.le = getelementptr i8, ptr %.pn, i32 -8
  %tobool11.not = icmp eq ptr %entity.0.le, null
  br i1 %tobool11.not, label %for.end.cleanup89_crit_edge, label %if.end13

for.end.cleanup89_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

if.end13:                                         ; preds = %for.end
  %links = getelementptr i8, ptr %.pn, i32 40
  br label %for.cond18

for.cond18:                                       ; preds = %for.body23.for.cond18_crit_edge, %if.end13
  %.pn1.in = phi ptr [ %links, %if.end13 ], [ %.pn1, %for.body23.for.cond18_crit_edge ]
  %5 = ptrtoint ptr %.pn1.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn1 = load ptr, ptr %.pn1.in, align 4
  %cmp21.not = icmp eq ptr %.pn1, %links
  br i1 %cmp21.not, label %for.cond18.cleanup89_crit_edge, label %for.body23

for.cond18.cleanup89_crit_edge:                   ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

for.body23:                                       ; preds = %for.cond18
  %6 = getelementptr i8, ptr %.pn1, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %entity24 = getelementptr inbounds %struct.media_pad, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %entity24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity24, align 4
  %cmp25 = icmp eq ptr %10, %entity.0.le
  br i1 %cmp25, label %for.end37, label %for.body23.for.cond18_crit_edge

for.body23.for.cond18_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond18

for.end37:                                        ; preds = %for.body23
  %link.0.le = getelementptr i8, ptr %.pn1, i32 -16
  %flags = getelementptr i8, ptr %.pn1, i32 20
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp ne i32 %and, 0
  %tobool39.not = icmp eq ptr %link.0.le, null
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %for.end37.cleanup89_crit_edge, label %if.end41

for.end37.cleanup89_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

if.end41:                                         ; preds = %for.end37
  %13 = getelementptr i8, ptr %.pn1, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %entity42 = getelementptr inbounds %struct.media_pad, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %entity42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity42, align 4
  %links44 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %links44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn218 = load ptr, ptr %links44, align 4
  %cmp51.not19 = icmp eq ptr %.pn218, %links44
  br i1 %cmp51.not19, label %if.end41.cleanup89_crit_edge, label %for.body53.lr.ph

if.end41.cleanup89_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

for.body53.lr.ph:                                 ; preds = %if.end41
  %dev72 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %name73 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 1
  br label %for.body53

for.body53:                                       ; preds = %for.inc82.for.body53_crit_edge, %for.body53.lr.ph
  %.pn220 = phi ptr [ %.pn218, %for.body53.lr.ph ], [ %.pn2, %for.inc82.for.body53_crit_edge ]
  %link.1 = getelementptr i8, ptr %.pn220, i32 -16
  %19 = getelementptr i8, ptr %.pn220, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %entity55 = getelementptr inbounds %struct.media_pad, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %entity55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entity55, align 4
  %cmp56 = icmp eq ptr %23, %entity.0.le
  %spec.select3 = zext i1 %cmp56 to i32
  %call = tail call i32 @media_entity_setup_link(ptr noundef %link.1, i32 noundef %spec.select3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool59.not = icmp eq i32 %call, 0
  br i1 %tobool59.not, label %do.body64, label %do.end

do.end:                                           ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev72, align 8
  %26 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name73, align 4
  %name62 = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name62, align 4
  %cond = select i1 %cmp56, ptr @.str.83, ptr @.str.84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.81, ptr noundef %27, ptr noundef %29, ptr noundef nonnull %cond, i32 noundef %call) #14
  br label %cleanup89

do.body64:                                        ; preds = %for.body53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_enable_analog_tuner.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_enable_analog_tuner, %if.then71)) #11
          to label %for.inc82 [label %if.then71], !srcloc !285

if.then71:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev72, align 8
  %32 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name73, align 4
  %name74 = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %name74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name74, align 4
  %cond76 = select i1 %cmp56, ptr @.str.86, ptr @.str.84
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_enable_analog_tuner.__UNIQUE_ID_ddebug320, ptr noundef %31, ptr noundef nonnull @.str.85, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %cond76) #11
  br label %for.inc82

for.inc82:                                        ; preds = %if.then71, %do.body64
  %36 = ptrtoint ptr %.pn220 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn2 = load ptr, ptr %.pn220, align 4
  %cmp51.not = icmp eq ptr %.pn2, %links44
  br i1 %cmp51.not, label %for.inc82.cleanup89_crit_edge, label %for.inc82.for.body53_crit_edge

for.inc82.for.body53_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53

for.inc82.cleanup89_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

cleanup89:                                        ; preds = %for.inc82.cleanup89_crit_edge, %do.end, %if.end41.cleanup89_crit_edge, %for.end37.cleanup89_crit_edge, %for.cond18.cleanup89_crit_edge, %for.end.cleanup89_crit_edge, %for.cond.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_isoc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_isoc_copy(ptr noundef %dev, ptr nocapture noundef readonly %urb) #9 align 64 {
entry:
  %boundary_bytes.i = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %5, label %if.then4.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.sw.epilog.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.89, %if.then4.sw.epilog.i_crit_edge ], [ @.str.97, %sw.bb7.i ], [ @.str.96, %sw.bb6.i ], [ @.str.95, %sw.bb5.i ], [ @.str.94, %sw.bb4.i ], [ @.str.93, %sw.bb3.i ], [ @.str.92, %sw.bb2.i ], [ @.str.91, %sw.bb1.i ], [ @.str.90, %sw.bb.i ]
  %7 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.epilog.i.print_err_status.exit_crit_edge, label %do.end.i

sw.epilog.i.print_err_status.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_err_status.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %dev, ptr noundef nonnull @.str.99, i32 noundef %5, ptr noundef nonnull %errmsg.0.i) #14
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %do.end.i, %sw.epilog.i.print_err_status.exit_crit_edge
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp7 = icmp eq i32 %9, -2
  br i1 %cmp7, label %print_err_status.exit.cleanup80_crit_edge, label %print_err_status.exit.if.end10_crit_edge

print_err_status.exit.if.end10_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

print_err_status.exit.cleanup80_crit_edge:        ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.end10:                                         ; preds = %print_err_status.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11204 = icmp sgt i32 %11, 0
  br i1 %cmp11204, label %for.body.lr.ph, label %if.end10.cleanup80_crit_edge

if.end10.cleanup80_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

for.body.lr.ph:                                   ; preds = %if.end10
  %max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 5
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %is_partial_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 3
  %last_sav = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  %partial_buf = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 3
  %14 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 4
  %15 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 5
  %16 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0205
  %status13 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0205, i32 3
  %17 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %if.then15, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then15:                                        ; preds = %for.body
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %18, label %if.then15.do.body12.i_crit_edge [
    i32 -2, label %sw.bb.i134
    i32 -104, label %sw.bb1.i135
    i32 -63, label %sw.bb2.i136
    i32 -32, label %sw.bb3.i137
    i32 -75, label %sw.bb4.i138
    i32 -71, label %sw.bb5.i139
    i32 -84, label %sw.bb6.i140
    i32 -62, label %sw.bb7.i141
  ]

if.then15.do.body12.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb.i134:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb1.i135:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb2.i136:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb3.i137:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb4.i138:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb5.i139:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb6.i140:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

sw.bb7.i141:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body12.i:                                      ; preds = %sw.bb7.i141, %sw.bb6.i140, %sw.bb5.i139, %sw.bb4.i138, %sw.bb3.i137, %sw.bb2.i136, %sw.bb1.i135, %sw.bb.i134, %if.then15.do.body12.i_crit_edge
  %errmsg.0.i142 = phi ptr [ @.str.89, %if.then15.do.body12.i_crit_edge ], [ @.str.97, %sw.bb7.i141 ], [ @.str.96, %sw.bb6.i140 ], [ @.str.95, %sw.bb5.i139 ], [ @.str.94, %sw.bb4.i138 ], [ @.str.93, %sw.bb3.i137 ], [ @.str.92, %sw.bb2.i136 ], [ @.str.91, %sw.bb1.i135 ], [ @.str.90, %sw.bb.i134 ]
  %20 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i143 = icmp eq i32 %20, 0
  br i1 %tobool.not.i143, label %do.body12.i.print_err_status.exit147_crit_edge, label %do.end17.i

do.body12.i.print_err_status.exit147_crit_edge:   ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_err_status.exit147

do.end17.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull %dev, ptr noundef nonnull @.str.99, i32 noundef %i.0205, i32 noundef %18, ptr noundef nonnull %errmsg.0.i142) #14
  br label %print_err_status.exit147

print_err_status.exit147:                         ; preds = %do.end17.i, %do.body12.i.print_err_status.exit147_crit_edge
  %21 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %22)
  %cmp19.not = icmp eq i32 %22, -71
  br i1 %cmp19.not, label %print_err_status.exit147.if.end22_crit_edge, label %print_err_status.exit147.cleanup_crit_edge

print_err_status.exit147.cleanup_crit_edge:       ; preds = %print_err_status.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

print_err_status.exit147.if.end22_crit_edge:      ; preds = %print_err_status.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %print_err_status.exit147.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0205, i32 2
  %23 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp eq i32 %24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_pkt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp31 = icmp ugt i32 %24, %26
  br i1 %cmp31, label %do.body, label %if.end39

do.body:                                          ; preds = %if.end27
  %27 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool33.not = icmp eq i32 %27, 0
  br i1 %tobool33.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull %dev, ptr noundef nonnull @.str.88) #14
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %28 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_partial_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool45.not = icmp eq i8 %33, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %last_sav to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_sav, align 1
  br label %if.end49

if.else:                                          ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %boundary_bytes.i) #11
  %36 = ptrtoint ptr %partial_buf to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %partial_buf, align 1
  %38 = ptrtoint ptr %boundary_bytes.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %boundary_bytes.i, align 4
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %add.ptr, align 1
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %37)
  %cmp2.i.i = icmp ugt i32 %37, -16777217
  %42 = lshr i32 %37, 16
  %43 = trunc i32 %42 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp6.i.i = icmp eq i8 %43, 0
  %or.cond.i = select i1 %cmp2.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true8.i.i, label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %if.else
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp12.i.i = icmp eq i8 %45, 0
  br i1 %cmp12.i.i, label %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge

land.lhs.true8.i.i.for.inc.i.1.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.i

land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp2.i.1.i = icmp eq i8 %43, -1
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp6.i.1.i = icmp eq i8 %47, 0
  %or.cond17.i = select i1 %cmp2.i.1.i, i1 %cmp6.i.1.i, i1 false
  br i1 %or.cond17.i, label %land.lhs.true8.i.1.i, label %for.inc.i.i.for.inc.i.1.i_crit_edge

for.inc.i.i.for.inc.i.1.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.i

land.lhs.true8.i.1.i:                             ; preds = %for.inc.i.i
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp12.i.1.i = icmp eq i8 %49, 0
  br i1 %cmp12.i.1.i, label %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge

land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge:     ; preds = %land.lhs.true8.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2.i

land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i.for.inc.i.1.i_crit_edge, %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge
  %50 = phi i8 [ %45, %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge ], [ %47, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp2.i.2.i = icmp eq i8 %50, -1
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp6.i.2.i = icmp eq i8 %52, 0
  %or.cond18.i = select i1 %cmp2.i.2.i, i1 %cmp6.i.2.i, i1 false
  br i1 %or.cond18.i, label %land.lhs.true8.i.2.i, label %for.inc.i.1.i.for.inc.i.2.i_crit_edge

for.inc.i.1.i.for.inc.i.2.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2.i

land.lhs.true8.i.2.i:                             ; preds = %for.inc.i.1.i
  %53 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp12.i.2.i = icmp eq i8 %54, 0
  br i1 %cmp12.i.2.i, label %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge

land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge:     ; preds = %land.lhs.true8.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3.i

land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i.for.inc.i.2.i_crit_edge, %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge
  %55 = phi i8 [ %49, %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge ], [ %52, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp2.i.3.i = icmp eq i8 %55, -1
  %56 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp6.i.3.i = icmp eq i8 %57, 0
  %or.cond19.i = select i1 %cmp2.i.3.i, i1 %cmp6.i.3.i, i1 false
  br i1 %or.cond19.i, label %land.lhs.true8.i.3.i, label %for.inc.i.2.i.for.inc.i.3.i_crit_edge

for.inc.i.2.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3.i

land.lhs.true8.i.3.i:                             ; preds = %for.inc.i.2.i
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp12.i.3.i = icmp eq i8 %59, 0
  br i1 %cmp12.i.3.i, label %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i.for.inc.i.3.i_crit_edge, %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge
  %60 = phi i8 [ %54, %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge ], [ %57, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp2.i.4.i = icmp eq i8 %60, -1
  br i1 %cmp2.i.4.i, label %land.lhs.true.i.4.i, label %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true.i.4.i:                              ; preds = %for.inc.i.3.i
  %61 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp6.i.4.i = icmp eq i8 %62, 0
  br i1 %cmp6.i.4.i, label %land.lhs.true8.i.4.i, label %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.4.i:                             ; preds = %land.lhs.true.i.4.i
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp12.i.4.i = icmp eq i8 %64, 0
  br i1 %cmp12.i.4.i, label %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

cx231xx_find_next_SAV_EAV.exit.i:                 ; preds = %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge
  %i.036.i.lcssa.i = phi i32 [ 0, %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 1, %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 2, %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 3, %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 4, %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ]
  %add16.i.i = add nuw nsw i32 %i.036.i.lcssa.i, 3
  %arrayidx17.i.i = getelementptr i8, ptr %boundary_bytes.i, i32 %add16.i.i
  %65 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i148 = icmp eq i8 %66, 0
  %spec.select = select i1 %tobool.not.i148, i32 0, i32 %i.036.i.lcssa.i
  br label %cx231xx_find_boundary_SAV_EAV.exit

cx231xx_find_boundary_SAV_EAV.exit:               ; preds = %cx231xx_find_next_SAV_EAV.exit.i, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge
  %bytes_parsed.0 = phi i32 [ 0, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ %spec.select, %cx231xx_find_next_SAV_EAV.exit.i ]
  %retval.0.i7.i = phi i8 [ 0, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ %66, %cx231xx_find_next_SAV_EAV.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %boundary_bytes.i) #11
  br label %if.end49

if.end49:                                         ; preds = %cx231xx_find_boundary_SAV_EAV.exit, %if.then46
  %bytes_parsed.1 = phi i32 [ %bytes_parsed.0, %cx231xx_find_boundary_SAV_EAV.exit ], [ 0, %if.then46 ]
  %sav_eav.0 = phi i8 [ %retval.0.i7.i, %cx231xx_find_boundary_SAV_EAV.exit ], [ %35, %if.then46 ]
  %67 = and i8 %sav_eav.0, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool52.not = icmp eq i8 %67, 0
  br i1 %tobool52.not, label %if.end49.if.end56_crit_edge, label %if.then53

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then53:                                        ; preds = %if.end49
  %add.ptr54 = getelementptr i8, ptr %add.ptr, i32 %bytes_parsed.1
  %sub = sub i32 %24, %bytes_parsed.1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %67, label %if.then53.sw.epilog.i152_crit_edge [
    i8 -128, label %sw.bb.i150
    i8 -64, label %sw.bb34.i
  ]

if.then53.sw.epilog.i152_crit_edge:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

sw.bb.i150:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp.i149 = icmp ugt i32 %sub, 3
  br i1 %cmp.i149, label %land.lhs.true.i, label %sw.bb.i150.sw.epilog.i152_crit_edge

sw.bb.i150.sw.epilog.i152_crit_edge:              ; preds = %sw.bb.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true.i:                                  ; preds = %sw.bb.i150
  %69 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp3.i = icmp eq i8 %70, -1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.sw.epilog.i152_crit_edge

land.lhs.true.i.sw.epilog.i152_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr i8, ptr %add.ptr54, i32 1
  %71 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp8.i = icmp eq i8 %72, 0
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.sw.epilog.i152_crit_edge

land.lhs.true5.i.sw.epilog.i152_crit_edge:        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %add.ptr54, i32 2
  %73 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp13.i = icmp eq i8 %74, 0
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true10.i.sw.epilog.i152_crit_edge

land.lhs.true10.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true15.i:                                ; preds = %land.lhs.true10.i
  %arrayidx16.i = getelementptr i8, ptr %add.ptr54, i32 3
  %75 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx16.i, align 1
  %77 = add i8 %76, 112
  %78 = tail call i8 @llvm.fshl.i8(i8 %77, i8 %77, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %switch.i = icmp ult i8 %78, 4
  br i1 %switch.i, label %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge, label %land.lhs.true15.i.sw.epilog.i152_crit_edge

land.lhs.true15.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit

sw.bb34.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp35.i = icmp ugt i32 %sub, 3
  br i1 %cmp35.i, label %land.lhs.true37.i, label %sw.bb34.i.sw.epilog.i152_crit_edge

sw.bb34.i.sw.epilog.i152_crit_edge:               ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true37.i:                                ; preds = %sw.bb34.i
  %79 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %add.ptr54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp40.i = icmp eq i8 %80, -1
  br i1 %cmp40.i, label %land.lhs.true42.i, label %land.lhs.true37.i.sw.epilog.i152_crit_edge

land.lhs.true37.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true42.i:                                ; preds = %land.lhs.true37.i
  %arrayidx43.i = getelementptr i8, ptr %add.ptr54, i32 1
  %81 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp45.i = icmp eq i8 %82, 0
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true42.i.sw.epilog.i152_crit_edge

land.lhs.true42.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true47.i:                                ; preds = %land.lhs.true42.i
  %arrayidx48.i = getelementptr i8, ptr %add.ptr54, i32 2
  %83 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp50.i = icmp eq i8 %84, 0
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true47.i.sw.epilog.i152_crit_edge

land.lhs.true47.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %arrayidx53.i = getelementptr i8, ptr %add.ptr54, i32 3
  %85 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx53.i, align 1
  %87 = add i8 %86, 112
  %88 = tail call i8 @llvm.fshl.i8(i8 %87, i8 %87, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %88)
  %switch95.i = icmp ult i8 %88, 4
  br i1 %switch95.i, label %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge, label %land.lhs.true52.i.sw.epilog.i152_crit_edge

land.lhs.true52.i.sw.epilog.i152_crit_edge:       ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i152

land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit

sw.epilog.i152:                                   ; preds = %land.lhs.true52.i.sw.epilog.i152_crit_edge, %land.lhs.true47.i.sw.epilog.i152_crit_edge, %land.lhs.true42.i.sw.epilog.i152_crit_edge, %land.lhs.true37.i.sw.epilog.i152_crit_edge, %sw.bb34.i.sw.epilog.i152_crit_edge, %land.lhs.true15.i.sw.epilog.i152_crit_edge, %land.lhs.true10.i.sw.epilog.i152_crit_edge, %land.lhs.true5.i.sw.epilog.i152_crit_edge, %land.lhs.true.i.sw.epilog.i152_crit_edge, %sw.bb.i150.sw.epilog.i152_crit_edge, %if.then53.sw.epilog.i152_crit_edge
  %current_field.0.i = phi i32 [ -1, %if.then53.sw.epilog.i152_crit_edge ], [ 1, %land.lhs.true15.i.sw.epilog.i152_crit_edge ], [ 1, %land.lhs.true10.i.sw.epilog.i152_crit_edge ], [ 1, %land.lhs.true5.i.sw.epilog.i152_crit_edge ], [ 1, %land.lhs.true.i.sw.epilog.i152_crit_edge ], [ 1, %sw.bb.i150.sw.epilog.i152_crit_edge ], [ 2, %land.lhs.true52.i.sw.epilog.i152_crit_edge ], [ 2, %land.lhs.true47.i.sw.epilog.i152_crit_edge ], [ 2, %land.lhs.true42.i.sw.epilog.i152_crit_edge ], [ 2, %land.lhs.true37.i.sw.epilog.i152_crit_edge ], [ 2, %sw.bb34.i.sw.epilog.i152_crit_edge ]
  %89 = ptrtoint ptr %last_sav to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %67, ptr %last_sav, align 1
  %call.i151 = tail call i32 @cx231xx_copy_video_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr54, i32 noundef %sub, i32 noundef %current_field.0.i) #11
  br label %cx231xx_get_video_line.exit

cx231xx_get_video_line.exit:                      ; preds = %sw.epilog.i152, %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge, %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i151, %sw.epilog.i152 ], [ 0, %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge ], [ 0, %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge ]
  %add = add i32 %retval.0.i, %bytes_parsed.1
  br label %if.end56

if.end56:                                         ; preds = %cx231xx_get_video_line.exit, %if.end49.if.end56_crit_edge
  %bytes_parsed.2 = phi i32 [ %bytes_parsed.1, %if.end49.if.end56_crit_edge ], [ %add, %cx231xx_get_video_line.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %bytes_parsed.2)
  %cmp57202 = icmp ugt i32 %24, %bytes_parsed.2
  br i1 %cmp57202, label %if.end56.while.body_crit_edge, label %if.end56.while.end_crit_edge

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  br label %while.body

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %if.end56.while.body_crit_edge
  %bytes_parsed.3203 = phi i32 [ %bytes_parsed.4, %if.end75.while.body_crit_edge ], [ %bytes_parsed.2, %if.end56.while.body_crit_edge ]
  %add.ptr59 = getelementptr i8, ptr %add.ptr, i32 %bytes_parsed.3203
  %sub60 = sub i32 %24, %bytes_parsed.3203
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub60)
  %cmp.i153 = icmp ult i32 %sub60, 4
  br i1 %cmp.i153, label %while.body.while.end_crit_edge, label %for.body.i.preheader

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.body.i.preheader:                             ; preds = %while.body
  %90 = add i32 %sub60, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.036.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr59, i32 %i.036.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp2.i = icmp eq i8 %92, -1
  %add.i = add nuw i32 %i.036.i, 1
  br i1 %cmp2.i, label %land.lhs.true.i155, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i155:                               ; preds = %for.body.i
  %arrayidx4.i = getelementptr i8, ptr %add.ptr59, i32 %add.i
  %93 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp6.i = icmp eq i8 %94, 0
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i155.for.inc.i_crit_edge

land.lhs.true.i155.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i155
  %add9.i = add i32 %i.036.i, 2
  %arrayidx10.i = getelementptr i8, ptr %add.ptr59, i32 %add9.i
  %95 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp12.i = icmp eq i8 %96, 0
  br i1 %cmp12.i, label %cx231xx_find_next_SAV_EAV.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i155.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %exitcond.not.i = icmp eq i32 %i.036.i, %90
  br i1 %exitcond.not.i, label %for.inc.i.while.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.while.end_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cx231xx_find_next_SAV_EAV.exit:                   ; preds = %land.lhs.true8.i
  %add16.i = add i32 %i.036.i, 3
  %arrayidx17.i = getelementptr i8, ptr %add.ptr59, i32 %add16.i
  %97 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx17.i, align 1
  %add15.i = add i32 %bytes_parsed.3203, 4
  %add62 = add i32 %add15.i, %i.036.i
  %99 = and i8 %98, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool67.not = icmp ne i8 %99, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add62)
  %cmp68 = icmp ugt i32 %24, %add62
  %or.cond = select i1 %tobool67.not, i1 %cmp68, i1 false
  br i1 %or.cond, label %if.then70, label %cx231xx_find_next_SAV_EAV.exit.if.end75_crit_edge

cx231xx_find_next_SAV_EAV.exit.if.end75_crit_edge: ; preds = %cx231xx_find_next_SAV_EAV.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then70:                                        ; preds = %cx231xx_find_next_SAV_EAV.exit
  %add.ptr71 = getelementptr i8, ptr %add.ptr, i32 %add62
  %sub72 = sub i32 %24, %add62
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %99, label %if.then70.sw.epilog.i186_crit_edge [
    i8 -128, label %sw.bb.i158
    i8 -64, label %sw.bb34.i171
  ]

if.then70.sw.epilog.i186_crit_edge:               ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

sw.bb.i158:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub72)
  %cmp.i157 = icmp ugt i32 %sub72, 3
  br i1 %cmp.i157, label %land.lhs.true.i160, label %sw.bb.i158.sw.epilog.i186_crit_edge

sw.bb.i158.sw.epilog.i186_crit_edge:              ; preds = %sw.bb.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true.i160:                               ; preds = %sw.bb.i158
  %101 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %add.ptr71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %cmp3.i159 = icmp eq i8 %102, -1
  br i1 %cmp3.i159, label %land.lhs.true5.i163, label %land.lhs.true.i160.sw.epilog.i186_crit_edge

land.lhs.true.i160.sw.epilog.i186_crit_edge:      ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true5.i163:                              ; preds = %land.lhs.true.i160
  %arrayidx6.i161 = getelementptr i8, ptr %add.ptr71, i32 1
  %103 = ptrtoint ptr %arrayidx6.i161 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx6.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp8.i162 = icmp eq i8 %104, 0
  br i1 %cmp8.i162, label %land.lhs.true10.i166, label %land.lhs.true5.i163.sw.epilog.i186_crit_edge

land.lhs.true5.i163.sw.epilog.i186_crit_edge:     ; preds = %land.lhs.true5.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true10.i166:                             ; preds = %land.lhs.true5.i163
  %arrayidx11.i164 = getelementptr i8, ptr %add.ptr71, i32 2
  %105 = ptrtoint ptr %arrayidx11.i164 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx11.i164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp13.i165 = icmp eq i8 %106, 0
  br i1 %cmp13.i165, label %land.lhs.true15.i169, label %land.lhs.true10.i166.sw.epilog.i186_crit_edge

land.lhs.true10.i166.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true10.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true15.i169:                             ; preds = %land.lhs.true10.i166
  %arrayidx16.i167 = getelementptr i8, ptr %add.ptr71, i32 3
  %107 = ptrtoint ptr %arrayidx16.i167 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx16.i167, align 1
  %109 = add i8 %108, 112
  %110 = tail call i8 @llvm.fshl.i8(i8 %109, i8 %109, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %110)
  %switch.i168 = icmp ult i8 %110, 4
  br i1 %switch.i168, label %land.lhs.true15.i169.cx231xx_get_video_line.exit188_crit_edge, label %land.lhs.true15.i169.sw.epilog.i186_crit_edge

land.lhs.true15.i169.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true15.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true15.i169.cx231xx_get_video_line.exit188_crit_edge: ; preds = %land.lhs.true15.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit188

sw.bb34.i171:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub72)
  %cmp35.i170 = icmp ugt i32 %sub72, 3
  br i1 %cmp35.i170, label %land.lhs.true37.i173, label %sw.bb34.i171.sw.epilog.i186_crit_edge

sw.bb34.i171.sw.epilog.i186_crit_edge:            ; preds = %sw.bb34.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true37.i173:                             ; preds = %sw.bb34.i171
  %111 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %112)
  %cmp40.i172 = icmp eq i8 %112, -1
  br i1 %cmp40.i172, label %land.lhs.true42.i176, label %land.lhs.true37.i173.sw.epilog.i186_crit_edge

land.lhs.true37.i173.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true37.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true42.i176:                             ; preds = %land.lhs.true37.i173
  %arrayidx43.i174 = getelementptr i8, ptr %add.ptr71, i32 1
  %113 = ptrtoint ptr %arrayidx43.i174 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx43.i174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp45.i175 = icmp eq i8 %114, 0
  br i1 %cmp45.i175, label %land.lhs.true47.i179, label %land.lhs.true42.i176.sw.epilog.i186_crit_edge

land.lhs.true42.i176.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true42.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true47.i179:                             ; preds = %land.lhs.true42.i176
  %arrayidx48.i177 = getelementptr i8, ptr %add.ptr71, i32 2
  %115 = ptrtoint ptr %arrayidx48.i177 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx48.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp50.i178 = icmp eq i8 %116, 0
  br i1 %cmp50.i178, label %land.lhs.true52.i182, label %land.lhs.true47.i179.sw.epilog.i186_crit_edge

land.lhs.true47.i179.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true47.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true52.i182:                             ; preds = %land.lhs.true47.i179
  %arrayidx53.i180 = getelementptr i8, ptr %add.ptr71, i32 3
  %117 = ptrtoint ptr %arrayidx53.i180 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx53.i180, align 1
  %119 = add i8 %118, 112
  %120 = tail call i8 @llvm.fshl.i8(i8 %119, i8 %119, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %120)
  %switch95.i181 = icmp ult i8 %120, 4
  br i1 %switch95.i181, label %land.lhs.true52.i182.cx231xx_get_video_line.exit188_crit_edge, label %land.lhs.true52.i182.sw.epilog.i186_crit_edge

land.lhs.true52.i182.sw.epilog.i186_crit_edge:    ; preds = %land.lhs.true52.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i186

land.lhs.true52.i182.cx231xx_get_video_line.exit188_crit_edge: ; preds = %land.lhs.true52.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit188

sw.epilog.i186:                                   ; preds = %land.lhs.true52.i182.sw.epilog.i186_crit_edge, %land.lhs.true47.i179.sw.epilog.i186_crit_edge, %land.lhs.true42.i176.sw.epilog.i186_crit_edge, %land.lhs.true37.i173.sw.epilog.i186_crit_edge, %sw.bb34.i171.sw.epilog.i186_crit_edge, %land.lhs.true15.i169.sw.epilog.i186_crit_edge, %land.lhs.true10.i166.sw.epilog.i186_crit_edge, %land.lhs.true5.i163.sw.epilog.i186_crit_edge, %land.lhs.true.i160.sw.epilog.i186_crit_edge, %sw.bb.i158.sw.epilog.i186_crit_edge, %if.then70.sw.epilog.i186_crit_edge
  %current_field.0.i183 = phi i32 [ -1, %if.then70.sw.epilog.i186_crit_edge ], [ 1, %land.lhs.true15.i169.sw.epilog.i186_crit_edge ], [ 1, %land.lhs.true10.i166.sw.epilog.i186_crit_edge ], [ 1, %land.lhs.true5.i163.sw.epilog.i186_crit_edge ], [ 1, %land.lhs.true.i160.sw.epilog.i186_crit_edge ], [ 1, %sw.bb.i158.sw.epilog.i186_crit_edge ], [ 2, %land.lhs.true52.i182.sw.epilog.i186_crit_edge ], [ 2, %land.lhs.true47.i179.sw.epilog.i186_crit_edge ], [ 2, %land.lhs.true42.i176.sw.epilog.i186_crit_edge ], [ 2, %land.lhs.true37.i173.sw.epilog.i186_crit_edge ], [ 2, %sw.bb34.i171.sw.epilog.i186_crit_edge ]
  %121 = ptrtoint ptr %last_sav to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %99, ptr %last_sav, align 1
  %call.i185 = tail call i32 @cx231xx_copy_video_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr71, i32 noundef %sub72, i32 noundef %current_field.0.i183) #11
  br label %cx231xx_get_video_line.exit188

cx231xx_get_video_line.exit188:                   ; preds = %sw.epilog.i186, %land.lhs.true52.i182.cx231xx_get_video_line.exit188_crit_edge, %land.lhs.true15.i169.cx231xx_get_video_line.exit188_crit_edge
  %retval.0.i187 = phi i32 [ %call.i185, %sw.epilog.i186 ], [ 0, %land.lhs.true15.i169.cx231xx_get_video_line.exit188_crit_edge ], [ 0, %land.lhs.true52.i182.cx231xx_get_video_line.exit188_crit_edge ]
  %add74 = add i32 %retval.0.i187, %add62
  br label %if.end75

if.end75:                                         ; preds = %cx231xx_get_video_line.exit188, %cx231xx_find_next_SAV_EAV.exit.if.end75_crit_edge
  %bytes_parsed.4 = phi i32 [ %add74, %cx231xx_get_video_line.exit188 ], [ %add62, %cx231xx_find_next_SAV_EAV.exit.if.end75_crit_edge ]
  %cmp57 = icmp ugt i32 %24, %bytes_parsed.4
  br i1 %cmp57, label %if.end75.while.body_crit_edge, label %if.end75.while.end_crit_edge

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end75.while.end_crit_edge, %for.inc.i.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end56.while.end_crit_edge
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 -4
  %add.ptr79 = getelementptr i8, ptr %add.ptr78, i32 %24
  %122 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %add.ptr79, align 1
  %124 = ptrtoint ptr %partial_buf to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %partial_buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %do.body.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %print_err_status.exit147.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0205, 1
  %125 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %number_of_packets, align 4
  %cmp11 = icmp slt i32 %inc, %126
  br i1 %cmp11, label %cleanup.for.body_crit_edge, label %cleanup.cleanup80_crit_edge

cleanup.cleanup80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup80:                                        ; preds = %cleanup.cleanup80_crit_edge, %if.end10.cleanup80_crit_edge, %print_err_status.exit.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup80_crit_edge ], [ 0, %if.end.cleanup80_crit_edge ], [ 0, %print_err_status.exit.cleanup80_crit_edge ], [ 1, %if.end10.cleanup80_crit_edge ], [ 1, %cleanup.cleanup80_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_bulk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_bulk_copy(ptr noundef %dev, ptr nocapture noundef readonly %urb) #9 align 64 {
entry:
  %boundary_bytes.i = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %5, label %if.then4.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.sw.epilog.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.89, %if.then4.sw.epilog.i_crit_edge ], [ @.str.97, %sw.bb7.i ], [ @.str.96, %sw.bb6.i ], [ @.str.95, %sw.bb5.i ], [ @.str.94, %sw.bb4.i ], [ @.str.93, %sw.bb3.i ], [ @.str.92, %sw.bb2.i ], [ @.str.91, %sw.bb1.i ], [ @.str.90, %sw.bb.i ]
  %7 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.epilog.i.print_err_status.exit_crit_edge, label %do.end.i

sw.epilog.i.print_err_status.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_err_status.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %dev, ptr noundef nonnull @.str.99, i32 noundef %5, ptr noundef nonnull %errmsg.0.i) #14
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %do.end.i, %sw.epilog.i.print_err_status.exit_crit_edge
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp7 = icmp eq i32 %9, -2
  br i1 %cmp7, label %print_err_status.exit.cleanup_crit_edge, label %print_err_status.exit.if.end10_crit_edge

print_err_status.exit.if.end10_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

print_err_status.exit.cleanup_crit_edge:          ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %print_err_status.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %is_partial_line = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %is_partial_line to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_partial_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %last_sav = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %last_sav to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %last_sav, align 1
  br label %if.end13

if.else:                                          ; preds = %if.end10
  %partial_buf = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %boundary_bytes.i) #11
  %18 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 2
  %19 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 3
  %20 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 4
  %21 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 5
  %22 = getelementptr inbounds [8 x i8], ptr %boundary_bytes.i, i32 0, i32 6
  %23 = ptrtoint ptr %partial_buf to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %partial_buf, align 1
  %25 = ptrtoint ptr %boundary_bytes.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %boundary_bytes.i, align 4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %11, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %24)
  %cmp2.i.i = icmp ugt i32 %24, -16777217
  %29 = lshr i32 %24, 16
  %30 = trunc i32 %29 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp6.i.i = icmp eq i8 %30, 0
  %or.cond.i = select i1 %cmp2.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true8.i.i, label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %if.else
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp12.i.i = icmp eq i8 %32, 0
  br i1 %cmp12.i.i, label %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge

land.lhs.true8.i.i.for.inc.i.1.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.i

land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp2.i.1.i = icmp eq i8 %30, -1
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp6.i.1.i = icmp eq i8 %34, 0
  %or.cond17.i = select i1 %cmp2.i.1.i, i1 %cmp6.i.1.i, i1 false
  br i1 %or.cond17.i, label %land.lhs.true8.i.1.i, label %for.inc.i.i.for.inc.i.1.i_crit_edge

for.inc.i.i.for.inc.i.1.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1.i

land.lhs.true8.i.1.i:                             ; preds = %for.inc.i.i
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp12.i.1.i = icmp eq i8 %36, 0
  br i1 %cmp12.i.1.i, label %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge

land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge:     ; preds = %land.lhs.true8.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2.i

land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i.for.inc.i.1.i_crit_edge, %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge
  %37 = phi i8 [ %32, %land.lhs.true8.i.i.for.inc.i.1.i_crit_edge ], [ %34, %for.inc.i.i.for.inc.i.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp2.i.2.i = icmp eq i8 %37, -1
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp6.i.2.i = icmp eq i8 %39, 0
  %or.cond18.i = select i1 %cmp2.i.2.i, i1 %cmp6.i.2.i, i1 false
  br i1 %or.cond18.i, label %land.lhs.true8.i.2.i, label %for.inc.i.1.i.for.inc.i.2.i_crit_edge

for.inc.i.1.i.for.inc.i.2.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.2.i

land.lhs.true8.i.2.i:                             ; preds = %for.inc.i.1.i
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp12.i.2.i = icmp eq i8 %41, 0
  br i1 %cmp12.i.2.i, label %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge

land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge:     ; preds = %land.lhs.true8.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3.i

land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i.for.inc.i.2.i_crit_edge, %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge
  %42 = phi i8 [ %36, %land.lhs.true8.i.1.i.for.inc.i.2.i_crit_edge ], [ %39, %for.inc.i.1.i.for.inc.i.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp2.i.3.i = icmp eq i8 %42, -1
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp6.i.3.i = icmp eq i8 %44, 0
  %or.cond19.i = select i1 %cmp2.i.3.i, i1 %cmp6.i.3.i, i1 false
  br i1 %or.cond19.i, label %land.lhs.true8.i.3.i, label %for.inc.i.2.i.for.inc.i.3.i_crit_edge

for.inc.i.2.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.3.i

land.lhs.true8.i.3.i:                             ; preds = %for.inc.i.2.i
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp12.i.3.i = icmp eq i8 %46, 0
  br i1 %cmp12.i.3.i, label %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i.for.inc.i.3.i_crit_edge, %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge
  %47 = phi i8 [ %41, %land.lhs.true8.i.2.i.for.inc.i.3.i_crit_edge ], [ %44, %for.inc.i.2.i.for.inc.i.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp2.i.4.i = icmp eq i8 %47, -1
  br i1 %cmp2.i.4.i, label %land.lhs.true.i.4.i, label %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true.i.4.i:                              ; preds = %for.inc.i.3.i
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp6.i.4.i = icmp eq i8 %49, 0
  br i1 %cmp6.i.4.i, label %land.lhs.true8.i.4.i, label %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.4.i:                             ; preds = %land.lhs.true.i.4.i
  %50 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp12.i.4.i = icmp eq i8 %51, 0
  br i1 %cmp12.i.4.i, label %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, label %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge

land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge: ; preds = %land.lhs.true8.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_boundary_SAV_EAV.exit

land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge: ; preds = %land.lhs.true8.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_find_next_SAV_EAV.exit.i

cx231xx_find_next_SAV_EAV.exit.i:                 ; preds = %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge, %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge
  %i.036.i.lcssa.i = phi i32 [ 0, %land.lhs.true8.i.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 1, %land.lhs.true8.i.1.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 2, %land.lhs.true8.i.2.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 3, %land.lhs.true8.i.3.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ], [ 4, %land.lhs.true8.i.4.i.cx231xx_find_next_SAV_EAV.exit.i_crit_edge ]
  %add16.i.i = add nuw nsw i32 %i.036.i.lcssa.i, 3
  %arrayidx17.i.i = getelementptr i8, ptr %boundary_bytes.i, i32 %add16.i.i
  %52 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i76 = icmp eq i8 %53, 0
  %spec.select = select i1 %tobool.not.i76, i32 0, i32 %i.036.i.lcssa.i
  br label %cx231xx_find_boundary_SAV_EAV.exit

cx231xx_find_boundary_SAV_EAV.exit:               ; preds = %cx231xx_find_next_SAV_EAV.exit.i, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge
  %bytes_parsed.0 = phi i32 [ 0, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ %spec.select, %cx231xx_find_next_SAV_EAV.exit.i ]
  %retval.0.i7.i = phi i8 [ 0, %land.lhs.true8.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true.i.4.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %for.inc.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ 0, %land.lhs.true8.i.3.i.cx231xx_find_boundary_SAV_EAV.exit_crit_edge ], [ %53, %cx231xx_find_next_SAV_EAV.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %boundary_bytes.i) #11
  br label %if.end13

if.end13:                                         ; preds = %cx231xx_find_boundary_SAV_EAV.exit, %if.then12
  %bytes_parsed.1 = phi i32 [ %bytes_parsed.0, %cx231xx_find_boundary_SAV_EAV.exit ], [ 0, %if.then12 ]
  %sav_eav.0 = phi i8 [ %retval.0.i7.i, %cx231xx_find_boundary_SAV_EAV.exit ], [ %17, %if.then12 ]
  %54 = and i8 %sav_eav.0, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool16.not = icmp eq i8 %54, 0
  br i1 %tobool16.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %11, i32 %bytes_parsed.1
  %sub = sub i32 %13, %bytes_parsed.1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %54, label %if.then17.sw.epilog.i79_crit_edge [
    i8 -128, label %sw.bb.i77
    i8 -64, label %sw.bb34.i
  ]

if.then17.sw.epilog.i79_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

sw.bb.i77:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i77.sw.epilog.i79_crit_edge

sw.bb.i77.sw.epilog.i79_crit_edge:                ; preds = %sw.bb.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true.i:                                  ; preds = %sw.bb.i77
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp3.i = icmp eq i8 %57, -1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.sw.epilog.i79_crit_edge

land.lhs.true.i.sw.epilog.i79_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr i8, ptr %add.ptr, i32 1
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp8.i = icmp eq i8 %59, 0
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.sw.epilog.i79_crit_edge

land.lhs.true5.i.sw.epilog.i79_crit_edge:         ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %arrayidx11.i = getelementptr i8, ptr %add.ptr, i32 2
  %60 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp13.i = icmp eq i8 %61, 0
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true10.i.sw.epilog.i79_crit_edge

land.lhs.true10.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true15.i:                                ; preds = %land.lhs.true10.i
  %arrayidx16.i = getelementptr i8, ptr %add.ptr, i32 3
  %62 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx16.i, align 1
  %64 = add i8 %63, 112
  %65 = tail call i8 @llvm.fshl.i8(i8 %64, i8 %64, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %65)
  %switch.i = icmp ult i8 %65, 4
  br i1 %switch.i, label %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge, label %land.lhs.true15.i.sw.epilog.i79_crit_edge

land.lhs.true15.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit

sw.bb34.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp35.i = icmp ugt i32 %sub, 3
  br i1 %cmp35.i, label %land.lhs.true37.i, label %sw.bb34.i.sw.epilog.i79_crit_edge

sw.bb34.i.sw.epilog.i79_crit_edge:                ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true37.i:                                ; preds = %sw.bb34.i
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp40.i = icmp eq i8 %67, -1
  br i1 %cmp40.i, label %land.lhs.true42.i, label %land.lhs.true37.i.sw.epilog.i79_crit_edge

land.lhs.true37.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true42.i:                                ; preds = %land.lhs.true37.i
  %arrayidx43.i = getelementptr i8, ptr %add.ptr, i32 1
  %68 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp45.i = icmp eq i8 %69, 0
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true42.i.sw.epilog.i79_crit_edge

land.lhs.true42.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true47.i:                                ; preds = %land.lhs.true42.i
  %arrayidx48.i = getelementptr i8, ptr %add.ptr, i32 2
  %70 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp50.i = icmp eq i8 %71, 0
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true47.i.sw.epilog.i79_crit_edge

land.lhs.true47.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %arrayidx53.i = getelementptr i8, ptr %add.ptr, i32 3
  %72 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx53.i, align 1
  %74 = add i8 %73, 112
  %75 = tail call i8 @llvm.fshl.i8(i8 %74, i8 %74, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %switch95.i = icmp ult i8 %75, 4
  br i1 %switch95.i, label %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge, label %land.lhs.true52.i.sw.epilog.i79_crit_edge

land.lhs.true52.i.sw.epilog.i79_crit_edge:        ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i79

land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit

sw.epilog.i79:                                    ; preds = %land.lhs.true52.i.sw.epilog.i79_crit_edge, %land.lhs.true47.i.sw.epilog.i79_crit_edge, %land.lhs.true42.i.sw.epilog.i79_crit_edge, %land.lhs.true37.i.sw.epilog.i79_crit_edge, %sw.bb34.i.sw.epilog.i79_crit_edge, %land.lhs.true15.i.sw.epilog.i79_crit_edge, %land.lhs.true10.i.sw.epilog.i79_crit_edge, %land.lhs.true5.i.sw.epilog.i79_crit_edge, %land.lhs.true.i.sw.epilog.i79_crit_edge, %sw.bb.i77.sw.epilog.i79_crit_edge, %if.then17.sw.epilog.i79_crit_edge
  %current_field.0.i = phi i32 [ -1, %if.then17.sw.epilog.i79_crit_edge ], [ 1, %land.lhs.true15.i.sw.epilog.i79_crit_edge ], [ 1, %land.lhs.true10.i.sw.epilog.i79_crit_edge ], [ 1, %land.lhs.true5.i.sw.epilog.i79_crit_edge ], [ 1, %land.lhs.true.i.sw.epilog.i79_crit_edge ], [ 1, %sw.bb.i77.sw.epilog.i79_crit_edge ], [ 2, %land.lhs.true52.i.sw.epilog.i79_crit_edge ], [ 2, %land.lhs.true47.i.sw.epilog.i79_crit_edge ], [ 2, %land.lhs.true42.i.sw.epilog.i79_crit_edge ], [ 2, %land.lhs.true37.i.sw.epilog.i79_crit_edge ], [ 2, %sw.bb34.i.sw.epilog.i79_crit_edge ]
  %last_sav.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %last_sav.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %54, ptr %last_sav.i, align 1
  %call.i78 = tail call i32 @cx231xx_copy_video_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %current_field.0.i) #11
  br label %cx231xx_get_video_line.exit

cx231xx_get_video_line.exit:                      ; preds = %sw.epilog.i79, %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge, %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i78, %sw.epilog.i79 ], [ 0, %land.lhs.true15.i.cx231xx_get_video_line.exit_crit_edge ], [ 0, %land.lhs.true52.i.cx231xx_get_video_line.exit_crit_edge ]
  %add = add i32 %retval.0.i, %bytes_parsed.1
  br label %if.end19

if.end19:                                         ; preds = %cx231xx_get_video_line.exit, %if.end13.if.end19_crit_edge
  %bytes_parsed.2 = phi i32 [ %bytes_parsed.1, %if.end13.if.end19_crit_edge ], [ %add, %cx231xx_get_video_line.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %bytes_parsed.2)
  %cmp20129 = icmp ugt i32 %13, %bytes_parsed.2
  br i1 %cmp20129, label %while.body.lr.ph, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end19
  %last_sav.i111 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %bytes_parsed.3130 = phi i32 [ %bytes_parsed.2, %while.body.lr.ph ], [ %bytes_parsed.4, %if.end38.while.body_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %11, i32 %bytes_parsed.3130
  %sub23 = sub i32 %13, %bytes_parsed.3130
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub23)
  %cmp.i80 = icmp ult i32 %sub23, 4
  br i1 %cmp.i80, label %while.body.while.end_crit_edge, label %for.body.i.preheader

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.body.i.preheader:                             ; preds = %while.body
  %77 = add i32 %sub23, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.036.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr22, i32 %i.036.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp2.i = icmp eq i8 %79, -1
  %add.i = add nuw i32 %i.036.i, 1
  br i1 %cmp2.i, label %land.lhs.true.i82, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i82:                                ; preds = %for.body.i
  %arrayidx4.i = getelementptr i8, ptr %add.ptr22, i32 %add.i
  %80 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp6.i = icmp eq i8 %81, 0
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i82.for.inc.i_crit_edge

land.lhs.true.i82.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i82
  %add9.i = add i32 %i.036.i, 2
  %arrayidx10.i = getelementptr i8, ptr %add.ptr22, i32 %add9.i
  %82 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp12.i = icmp eq i8 %83, 0
  br i1 %cmp12.i, label %cx231xx_find_next_SAV_EAV.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i82.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %exitcond.not.i = icmp eq i32 %i.036.i, %77
  br i1 %exitcond.not.i, label %for.inc.i.while.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.while.end_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cx231xx_find_next_SAV_EAV.exit:                   ; preds = %land.lhs.true8.i
  %add16.i = add i32 %i.036.i, 3
  %arrayidx17.i = getelementptr i8, ptr %add.ptr22, i32 %add16.i
  %84 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx17.i, align 1
  %add15.i = add i32 %bytes_parsed.3130, 4
  %add25 = add i32 %add15.i, %i.036.i
  %86 = and i8 %85, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool30.not = icmp ne i8 %86, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add25)
  %cmp31 = icmp ugt i32 %13, %add25
  %or.cond = select i1 %tobool30.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then33, label %cx231xx_find_next_SAV_EAV.exit.if.end38_crit_edge

cx231xx_find_next_SAV_EAV.exit.if.end38_crit_edge: ; preds = %cx231xx_find_next_SAV_EAV.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %cx231xx_find_next_SAV_EAV.exit
  %add.ptr34 = getelementptr i8, ptr %11, i32 %add25
  %sub35 = sub i32 %13, %add25
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %86, label %if.then33.sw.epilog.i113_crit_edge [
    i8 -128, label %sw.bb.i85
    i8 -64, label %sw.bb34.i98
  ]

if.then33.sw.epilog.i113_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

sw.bb.i85:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub35)
  %cmp.i84 = icmp ugt i32 %sub35, 3
  br i1 %cmp.i84, label %land.lhs.true.i87, label %sw.bb.i85.sw.epilog.i113_crit_edge

sw.bb.i85.sw.epilog.i113_crit_edge:               ; preds = %sw.bb.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true.i87:                                ; preds = %sw.bb.i85
  %88 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp3.i86 = icmp eq i8 %89, -1
  br i1 %cmp3.i86, label %land.lhs.true5.i90, label %land.lhs.true.i87.sw.epilog.i113_crit_edge

land.lhs.true.i87.sw.epilog.i113_crit_edge:       ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true5.i90:                               ; preds = %land.lhs.true.i87
  %arrayidx6.i88 = getelementptr i8, ptr %add.ptr34, i32 1
  %90 = ptrtoint ptr %arrayidx6.i88 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx6.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp8.i89 = icmp eq i8 %91, 0
  br i1 %cmp8.i89, label %land.lhs.true10.i93, label %land.lhs.true5.i90.sw.epilog.i113_crit_edge

land.lhs.true5.i90.sw.epilog.i113_crit_edge:      ; preds = %land.lhs.true5.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true10.i93:                              ; preds = %land.lhs.true5.i90
  %arrayidx11.i91 = getelementptr i8, ptr %add.ptr34, i32 2
  %92 = ptrtoint ptr %arrayidx11.i91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx11.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp13.i92 = icmp eq i8 %93, 0
  br i1 %cmp13.i92, label %land.lhs.true15.i96, label %land.lhs.true10.i93.sw.epilog.i113_crit_edge

land.lhs.true10.i93.sw.epilog.i113_crit_edge:     ; preds = %land.lhs.true10.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true15.i96:                              ; preds = %land.lhs.true10.i93
  %arrayidx16.i94 = getelementptr i8, ptr %add.ptr34, i32 3
  %94 = ptrtoint ptr %arrayidx16.i94 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx16.i94, align 1
  %96 = add i8 %95, 112
  %97 = tail call i8 @llvm.fshl.i8(i8 %96, i8 %96, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %97)
  %switch.i95 = icmp ult i8 %97, 4
  br i1 %switch.i95, label %land.lhs.true15.i96.cx231xx_get_video_line.exit115_crit_edge, label %land.lhs.true15.i96.sw.epilog.i113_crit_edge

land.lhs.true15.i96.sw.epilog.i113_crit_edge:     ; preds = %land.lhs.true15.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true15.i96.cx231xx_get_video_line.exit115_crit_edge: ; preds = %land.lhs.true15.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit115

sw.bb34.i98:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub35)
  %cmp35.i97 = icmp ugt i32 %sub35, 3
  br i1 %cmp35.i97, label %land.lhs.true37.i100, label %sw.bb34.i98.sw.epilog.i113_crit_edge

sw.bb34.i98.sw.epilog.i113_crit_edge:             ; preds = %sw.bb34.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true37.i100:                             ; preds = %sw.bb34.i98
  %98 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp40.i99 = icmp eq i8 %99, -1
  br i1 %cmp40.i99, label %land.lhs.true42.i103, label %land.lhs.true37.i100.sw.epilog.i113_crit_edge

land.lhs.true37.i100.sw.epilog.i113_crit_edge:    ; preds = %land.lhs.true37.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true42.i103:                             ; preds = %land.lhs.true37.i100
  %arrayidx43.i101 = getelementptr i8, ptr %add.ptr34, i32 1
  %100 = ptrtoint ptr %arrayidx43.i101 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx43.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp45.i102 = icmp eq i8 %101, 0
  br i1 %cmp45.i102, label %land.lhs.true47.i106, label %land.lhs.true42.i103.sw.epilog.i113_crit_edge

land.lhs.true42.i103.sw.epilog.i113_crit_edge:    ; preds = %land.lhs.true42.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true47.i106:                             ; preds = %land.lhs.true42.i103
  %arrayidx48.i104 = getelementptr i8, ptr %add.ptr34, i32 2
  %102 = ptrtoint ptr %arrayidx48.i104 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx48.i104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp50.i105 = icmp eq i8 %103, 0
  br i1 %cmp50.i105, label %land.lhs.true52.i109, label %land.lhs.true47.i106.sw.epilog.i113_crit_edge

land.lhs.true47.i106.sw.epilog.i113_crit_edge:    ; preds = %land.lhs.true47.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true52.i109:                             ; preds = %land.lhs.true47.i106
  %arrayidx53.i107 = getelementptr i8, ptr %add.ptr34, i32 3
  %104 = ptrtoint ptr %arrayidx53.i107 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx53.i107, align 1
  %106 = add i8 %105, 112
  %107 = tail call i8 @llvm.fshl.i8(i8 %106, i8 %106, i8 3) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %107)
  %switch95.i108 = icmp ult i8 %107, 4
  br i1 %switch95.i108, label %land.lhs.true52.i109.cx231xx_get_video_line.exit115_crit_edge, label %land.lhs.true52.i109.sw.epilog.i113_crit_edge

land.lhs.true52.i109.sw.epilog.i113_crit_edge:    ; preds = %land.lhs.true52.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i113

land.lhs.true52.i109.cx231xx_get_video_line.exit115_crit_edge: ; preds = %land.lhs.true52.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_get_video_line.exit115

sw.epilog.i113:                                   ; preds = %land.lhs.true52.i109.sw.epilog.i113_crit_edge, %land.lhs.true47.i106.sw.epilog.i113_crit_edge, %land.lhs.true42.i103.sw.epilog.i113_crit_edge, %land.lhs.true37.i100.sw.epilog.i113_crit_edge, %sw.bb34.i98.sw.epilog.i113_crit_edge, %land.lhs.true15.i96.sw.epilog.i113_crit_edge, %land.lhs.true10.i93.sw.epilog.i113_crit_edge, %land.lhs.true5.i90.sw.epilog.i113_crit_edge, %land.lhs.true.i87.sw.epilog.i113_crit_edge, %sw.bb.i85.sw.epilog.i113_crit_edge, %if.then33.sw.epilog.i113_crit_edge
  %current_field.0.i110 = phi i32 [ -1, %if.then33.sw.epilog.i113_crit_edge ], [ 1, %land.lhs.true15.i96.sw.epilog.i113_crit_edge ], [ 1, %land.lhs.true10.i93.sw.epilog.i113_crit_edge ], [ 1, %land.lhs.true5.i90.sw.epilog.i113_crit_edge ], [ 1, %land.lhs.true.i87.sw.epilog.i113_crit_edge ], [ 1, %sw.bb.i85.sw.epilog.i113_crit_edge ], [ 2, %land.lhs.true52.i109.sw.epilog.i113_crit_edge ], [ 2, %land.lhs.true47.i106.sw.epilog.i113_crit_edge ], [ 2, %land.lhs.true42.i103.sw.epilog.i113_crit_edge ], [ 2, %land.lhs.true37.i100.sw.epilog.i113_crit_edge ], [ 2, %sw.bb34.i98.sw.epilog.i113_crit_edge ]
  %108 = ptrtoint ptr %last_sav.i111 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %86, ptr %last_sav.i111, align 1
  %call.i112 = tail call i32 @cx231xx_copy_video_line(ptr noundef nonnull %dev, ptr noundef %1, ptr noundef %add.ptr34, i32 noundef %sub35, i32 noundef %current_field.0.i110) #11
  br label %cx231xx_get_video_line.exit115

cx231xx_get_video_line.exit115:                   ; preds = %sw.epilog.i113, %land.lhs.true52.i109.cx231xx_get_video_line.exit115_crit_edge, %land.lhs.true15.i96.cx231xx_get_video_line.exit115_crit_edge
  %retval.0.i114 = phi i32 [ %call.i112, %sw.epilog.i113 ], [ 0, %land.lhs.true15.i96.cx231xx_get_video_line.exit115_crit_edge ], [ 0, %land.lhs.true52.i109.cx231xx_get_video_line.exit115_crit_edge ]
  %add37 = add i32 %retval.0.i114, %add25
  br label %if.end38

if.end38:                                         ; preds = %cx231xx_get_video_line.exit115, %cx231xx_find_next_SAV_EAV.exit.if.end38_crit_edge
  %bytes_parsed.4 = phi i32 [ %add37, %cx231xx_get_video_line.exit115 ], [ %add25, %cx231xx_find_next_SAV_EAV.exit.if.end38_crit_edge ]
  %cmp20 = icmp ugt i32 %13, %bytes_parsed.4
  br i1 %cmp20, label %if.end38.while.body_crit_edge, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %for.inc.i.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end19.while.end_crit_edge
  %partial_buf39 = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 4
  %add.ptr41 = getelementptr i8, ptr %11, i32 %13
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 -4
  %109 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %add.ptr42, align 1
  %111 = ptrtoint ptr %partial_buf39 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %110, ptr %partial_buf39, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %print_err_status.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %print_err_status.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_setup_link(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.103, i32 noundef 32) #11
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load ptr, ptr %subdevs, align 4
  %cmp.not41 = icmp eq ptr %.pn39, %subdevs
  br i1 %cmp.not41, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %if.end.for.body_crit_edge ]
  %__err.042 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.044 = getelementptr i8, ptr %.pn43, i32 -80
  %ops = getelementptr i8, ptr %.pn43, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 %10(ptr noundef %__sd.044, ptr noundef %t) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then9 ], [ %__err.042, %land.lhs.true.if.end14_crit_edge ], [ %__err.042, %for.body.if.end14_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %__err.1, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.for.inc_crit_edge
    i32 -515, label %if.end14.for.inc_crit_edge45
  ]

if.end14.for.inc_crit_edge45:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.for.inc_crit_edge45
  %12 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp.not39, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %if.end.for.body_crit_edge ]
  %__err.040 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.042 = getelementptr i8, ptr %.pn41, i32 -80
  %ops = getelementptr i8, ptr %.pn41, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.body.if.end13_crit_edge, label %land.lhs.true

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_tuner, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.if.end13_crit_edge, label %if.then8

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 %10(ptr noundef %__sd.042, ptr noundef %t) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %__err.1 = phi i32 [ %call12, %if.then8 ], [ %__err.040, %land.lhs.true.if.end13_crit_edge ], [ %__err.040, %for.body.if.end13_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %__err.1, label %if.end13.cleanup_crit_edge [
    i32 0, label %if.end13.for.inc_crit_edge
    i32 -515, label %if.end13.for.inc_crit_edge43
  ]

if.end13.for.inc_crit_edge43:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.end13.for.inc_crit_edge43
  %12 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !141, !142, !144, !145, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !202, !203, !204, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !220, !221, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !256, !257, !259, !260, !261, !263, !265, !267, !269, !271, !273}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__param_isoc_debug, !1, !"__param_isoc_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_isoc_debugtype303, !1, !"__UNIQUE_ID_isoc_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_isoc_debug304, !4, !"__UNIQUE_ID_isoc_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 46, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 56, i32 1}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 57, i32 1}
!9 = !{ptr @__UNIQUE_ID_file307, !10, !"__UNIQUE_ID_file307", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 58, i32 1}
!11 = !{ptr @__UNIQUE_ID_license308, !10, !"__UNIQUE_ID_license308", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version309, !13, !"__UNIQUE_ID_version309", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 59, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__param_card, !19, !"__param_card", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 66, i32 1}
!20 = !{ptr @__UNIQUE_ID_cardtype310, !19, !"__UNIQUE_ID_cardtype310", i1 false, i1 false}
!21 = !{ptr @__param_video_nr, !22, !"__param_video_nr", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 67, i32 1}
!23 = !{ptr @__UNIQUE_ID_video_nrtype311, !22, !"__UNIQUE_ID_video_nrtype311", i1 false, i1 false}
!24 = !{ptr @__param_vbi_nr, !25, !"__param_vbi_nr", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 68, i32 1}
!26 = !{ptr @__UNIQUE_ID_vbi_nrtype312, !25, !"__UNIQUE_ID_vbi_nrtype312", i1 false, i1 false}
!27 = !{ptr @__param_radio_nr, !28, !"__param_radio_nr", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 69, i32 1}
!29 = !{ptr @__UNIQUE_ID_radio_nrtype313, !28, !"__UNIQUE_ID_radio_nrtype313", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_card314, !31, !"__UNIQUE_ID_card314", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 71, i32 1}
!32 = !{ptr @__UNIQUE_ID_video_nr315, !33, !"__UNIQUE_ID_video_nr315", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 72, i32 1}
!34 = !{ptr @__UNIQUE_ID_vbi_nr316, !35, !"__UNIQUE_ID_vbi_nr316", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 73, i32 1}
!36 = !{ptr @__UNIQUE_ID_radio_nr317, !37, !"__UNIQUE_ID_radio_nr317", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 74, i32 1}
!38 = !{ptr @__param_video_debug, !39, !"__param_video_debug", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 77, i32 1}
!40 = !{ptr @__UNIQUE_ID_video_debugtype318, !39, !"__UNIQUE_ID_video_debugtype318", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_video_debug319, !42, !"__UNIQUE_ID_video_debug319", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 78, i32 1}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 819, i32 2}
!45 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @video_mux.__UNIQUE_ID_ddebug321, !44, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1007, i32 4}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cx231xx_v4l2_create_entities._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cx231xx_v4l2_create_entities._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1011, i32 4}
!55 = !{ptr @cx231xx_v4l2_create_entities._entry.8, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cx231xx_v4l2_create_entities._entry_ptr.10, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1096, i32 19}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1135, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug322, !60, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1163, i32 2}
!65 = !{ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug323, !64, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1184, i32 3}
!68 = !{ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug324, !67, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1191, i32 2}
!71 = !{ptr @cx231xx_s_frequency.__UNIQUE_ID_ddebug325, !70, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1205, i32 23}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1208, i32 23}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1211, i32 23}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1214, i32 23}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1217, i32 23}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1220, i32 23}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1558, i32 3}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cx231xx_release_analog_resources._entry, !85, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx231xx_release_analog_resources._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cx231xx_release_analog_resources._entry.27, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1563, i32 3}
!93 = !{ptr @cx231xx_release_analog_resources._entry_ptr.28, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1760, i32 2}
!96 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cx231xx_register_analog_devices._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cx231xx_register_analog_devices._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @cx231xx_register_analog_devices._key, !100, !"_key", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1776, i32 2}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cx231xx_register_analog_devices._key.32, !103, !"_key", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1777, i32 2}
!104 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1796, i32 62}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1801, i32 3}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cx231xx_register_analog_devices._entry.35, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @cx231xx_register_analog_devices._entry_ptr.38, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1840, i32 3}
!114 = !{ptr @cx231xx_register_analog_devices._entry.39, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cx231xx_register_analog_devices._entry_ptr.41, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1846, i32 2}
!118 = !{ptr @cx231xx_register_analog_devices._entry.42, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cx231xx_register_analog_devices._entry_ptr.44, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1851, i32 37}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1855, i32 63}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1861, i32 3}
!126 = !{ptr @cx231xx_register_analog_devices._entry.47, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cx231xx_register_analog_devices._entry_ptr.49, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1898, i32 3}
!130 = !{ptr @cx231xx_register_analog_devices._entry.50, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cx231xx_register_analog_devices._entry_ptr.52, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1902, i32 2}
!134 = !{ptr @cx231xx_register_analog_devices._entry.53, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cx231xx_register_analog_devices._entry_ptr.55, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1907, i32 30}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1913, i32 4}
!140 = !{ptr @cx231xx_register_analog_devices._entry.57, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cx231xx_register_analog_devices._entry_ptr.59, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1917, i32 3}
!144 = !{ptr @cx231xx_register_analog_devices._entry.60, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @cx231xx_register_analog_devices._entry_ptr.62, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @isoc_debug, !147, !"isoc_debug", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 44, i32 21}
!148 = !{ptr @video_debug, !149, !"video_debug", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 76, i32 21}
!150 = !{ptr @cx231xx_vbi_template, !151, !"cx231xx_vbi_template", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1684, i32 28}
!152 = !{ptr @__param_str_isoc_debug, !1, !"__param_str_isoc_debug", i1 false, i1 false}
!153 = !{ptr @__param_str_card, !19, !"__param_str_card", i1 false, i1 false}
!154 = !{ptr @__param_arr_card, !19, !"__param_arr_card", i1 false, i1 false}
!155 = !{ptr @card, !156, !"card", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 61, i32 21}
!157 = !{ptr @__param_str_video_nr, !22, !"__param_str_video_nr", i1 false, i1 false}
!158 = !{ptr @__param_arr_video_nr, !22, !"__param_arr_video_nr", i1 false, i1 false}
!159 = !{ptr @__param_str_vbi_nr, !25, !"__param_str_vbi_nr", i1 false, i1 false}
!160 = !{ptr @__param_arr_vbi_nr, !25, !"__param_arr_vbi_nr", i1 false, i1 false}
!161 = !{ptr @__param_str_radio_nr, !28, !"__param_str_radio_nr", i1 false, i1 false}
!162 = !{ptr @__param_arr_radio_nr, !28, !"__param_arr_radio_nr", i1 false, i1 false}
!163 = !{ptr @__param_str_video_debug, !39, !"__param_str_video_debug", i1 false, i1 false}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 169, i32 2}
!166 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @buffer_filled._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @buffer_filled._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!171 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 235, i32 3}
!174 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @get_next_buf._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @get_next_buf._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 963, i32 30}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 964, i32 30}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 965, i32 30}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 966, i32 30}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 967, i32 30}
!187 = !{ptr @iname, !188, !"iname", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 962, i32 20}
!189 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/usb.h", i32 912, i32 31}
!191 = !{ptr @format, !192, !"format", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 81, i32 27}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1734, i32 41}
!195 = !{ptr @cx231xx_video_template, !196, !"cx231xx_video_template", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1686, i32 34}
!197 = !{ptr @cx231xx_v4l_fops, !198, !"cx231xx_v4l_fops", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1639, i32 42}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1530, i32 3}
!201 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cx231xx_v4l2_open._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @cx231xx_v4l2_open._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @video_ioctl_ops, !205, !"video_ioctl_ops", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1649, i32 36}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 903, i32 3}
!208 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @vidioc_s_fmt_vid_cap._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.79, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 869, i32 3}
!213 = !{ptr @.str.80, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @vidioc_try_fmt_vid_cap._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @cx231xx_video_qops, !217, !"cx231xx_video_qops", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 797, i32 23}
!218 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 141, i32 4}
!220 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @cx231xx_enable_analog_tuner._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @cx231xx_enable_analog_tuner._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.84, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.85, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 148, i32 4}
!227 = !{ptr @cx231xx_enable_analog_tuner.__UNIQUE_ID_ddebug320, !226, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!228 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.87, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 297, i32 4}
!231 = !{ptr @.str.88, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @cx231xx_isoc_copy._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @cx231xx_isoc_copy._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.89, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 186, i32 17}
!236 = !{ptr @.str.90, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 190, i32 12}
!238 = !{ptr @.str.91, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 193, i32 12}
!240 = !{ptr @.str.92, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 196, i32 12}
!242 = !{ptr @.str.93, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 199, i32 12}
!244 = !{ptr @.str.94, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 202, i32 12}
!246 = !{ptr @.str.95, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 205, i32 12}
!248 = !{ptr @.str.96, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 208, i32 12}
!250 = !{ptr @.str.97, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 211, i32 12}
!252 = !{ptr @.str.98, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 215, i32 3}
!254 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @print_err_status._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @print_err_status._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.101, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 217, i32 3}
!259 = !{ptr @print_err_status._entry.100, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @print_err_status._entry_ptr.102, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @video_nr, !262, !"video_nr", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 62, i32 21}
!263 = !{ptr @vbi_nr, !264, !"vbi_nr", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 63, i32 21}
!265 = !{ptr @cx231xx_radio_template, !266, !"cx231xx_radio_template", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1716, i32 28}
!267 = !{ptr @radio_fops, !268, !"radio_fops", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1693, i32 42}
!269 = !{ptr @radio_ioctl_ops, !270, !"radio_ioctl_ops", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1701, i32 36}
!271 = !{ptr @.str.103, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 1473, i32 19}
!273 = !{ptr @radio_nr, !274, !"radio_nr", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/cx231xx/cx231xx-video.c", i32 64, i32 21}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !{i64 2148836197, i64 2148836202, i64 2148836215, i64 2148836259, i64 2148836293, i64 2148836314}
!286 = !{!"auto-init"}
