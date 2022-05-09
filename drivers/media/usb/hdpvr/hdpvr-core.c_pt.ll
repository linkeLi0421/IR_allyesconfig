; ModuleID = '/llk/IR_all_yes/drivers/media/usb/hdpvr/hdpvr-core.c_pt.bc'
source_filename = "../drivers/media/usb/hdpvr/hdpvr-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdpvr_options = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.hdpvr_device = type { %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_device, %struct.anon.98, i32, i32, i32, i8, i8, %struct.hdpvr_options, i64, %struct.v4l2_dv_timings, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.i2c_adapter, %struct.mutex, [128 x i8], %struct.IR_i2c_init_data, %struct.mutex, ptr, i8 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }

@__param_str_video_nr = internal constant [15 x i8] c"hdpvr.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype297 = internal constant [37 x i8] c"hdpvr.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr298 = internal constant [50 x i8] c"hdpvr.parm=video_nr:video device number (-1=Auto)\00", section ".modinfo", align 1
@__param_str_hdpvr_debug = internal constant [18 x i8] c"hdpvr.hdpvr_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hdpvr_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hdpvr_debug = internal constant %struct.kernel_param { ptr @__param_str_hdpvr_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hdpvr_debug } }, section "__param", align 4
@__UNIQUE_ID_hdpvr_debugtype299 = internal constant [31 x i8] c"hdpvr.parmtype=hdpvr_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hdpvr_debug300 = internal constant [47 x i8] c"hdpvr.parm=hdpvr_debug:enable debugging output\00", section ".modinfo", align 1
@__param_str_default_video_input = internal constant [26 x i8] c"hdpvr.default_video_input\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@default_video_input = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_default_video_input = internal constant %struct.kernel_param { ptr @__param_str_default_video_input, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @default_video_input } }, section "__param", align 4
@__UNIQUE_ID_default_video_inputtype301 = internal constant [40 x i8] c"hdpvr.parmtype=default_video_input:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_video_input302 = internal constant [90 x i8] c"hdpvr.parm=default_video_input:default video input: 0=Component / 1=S-Video / 2=Composite\00", section ".modinfo", align 1
@__param_str_default_audio_input = internal constant [26 x i8] c"hdpvr.default_audio_input\00", align 1
@default_audio_input = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_default_audio_input = internal constant %struct.kernel_param { ptr @__param_str_default_audio_input, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @default_audio_input } }, section "__param", align 4
@__UNIQUE_ID_default_audio_inputtype303 = internal constant [40 x i8] c"hdpvr.parmtype=default_audio_input:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_audio_input304 = internal constant [88 x i8] c"hdpvr.parm=default_audio_input:default audio input: 0=RCA back / 1=RCA front / 2=S/PDIF\00", section ".modinfo", align 1
@__param_str_boost_audio = internal constant [18 x i8] c"hdpvr.boost_audio\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@boost_audio = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_boost_audio = internal constant %struct.kernel_param { ptr @__param_str_boost_audio, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @boost_audio } }, section "__param", align 4
@__UNIQUE_ID_boost_audiotype305 = internal constant [32 x i8] c"hdpvr.parmtype=boost_audio:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_boost_audio306 = internal constant [46 x i8] c"hdpvr.parm=boost_audio:boost the audio signal\00", section ".modinfo", align 1
@__initcall__kmod_hdpvr__307_444_hdpvr_usb_driver_init6 = internal global ptr @hdpvr_usb_driver_init, section ".initcall6.init", align 4
@hdpvr_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @hdpvr_probe, ptr @hdpvr_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdpvr_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_hdpvr_usb_driver_exit = internal global ptr @hdpvr_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file308 = internal constant [41 x i8] c"hdpvr.file=drivers/media/usb/hdpvr/hdpvr\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [18 x i8] c"hdpvr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version310 = internal constant [20 x i8] c"hdpvr.version=0.2.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdpvr\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author311 = internal constant [26 x i8] c"hdpvr.author=Janne Grunau\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [42 x i8] c"hdpvr.description=Hauppauge HD PVR driver\00", section ".modinfo", align 1
@video_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@hdpvr_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8256, i16 18688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 18689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 18690, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 18818, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 18691, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdpvr_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/hdpvr/hdpvr-core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr = internal global ptr @hdpvr_probe._entry, section ".printk_index", align 4
@hdpvr_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 292, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"v4l2_device_register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.10 = internal global ptr @hdpvr_probe._entry.8, section ".printk_index", align 4
@hdpvr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->io_mutex\00", [17 x i8] zeroinitializer }, align 32
@hdpvr_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->i2c_mutex\00", [16 x i8] zeroinitializer }, align 32
@hdpvr_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->usbc_mutex\00", [47 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: Out of memory\0A\00", [43 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.18 = internal global ptr @hdpvr_probe._entry.16, section ".printk_index", align 4
@hdpvr_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->wait_buffer\00", [46 x i8] zeroinitializer }, align 32
@hdpvr_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->wait_data\00", [16 x i8] zeroinitializer }, align 32
@hdpvr_default_options = internal constant { %struct.hdpvr_options, [44 x i8] } { %struct.hdpvr_options { i8 0, i8 0, i8 0, i8 65, i8 90, i8 1, i8 1, i32 3, i8 -122, i8 -128, i8 -128, i8 -128, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Could not find bulk-in endpoint\0A\00", [57 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.25 = internal global ptr @hdpvr_probe._entry.23, section ".printk_index", align 4
@hdpvr_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: device init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.28 = internal global ptr @hdpvr_probe._entry.26, section ".printk_index", align 4
@hdpvr_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: allocating transfer buffers failed\0A\00", [54 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.31 = internal global ptr @hdpvr_probe._entry.29, section ".printk_index", align 4
@hdpvr_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: i2c adapter register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.34 = internal global ptr @hdpvr_probe._entry.32, section ".printk_index", align 4
@hdpvr_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: i2c IR device register failed\0A\00", [59 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.37 = internal global ptr @hdpvr_probe._entry.35, section ".printk_index", align 4
@dev_nr = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: max device number reached, device register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.40 = internal global ptr @hdpvr_probe._entry.38, section ".printk_index", align 4
@hdpvr_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.4, ptr @.str.5, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: registering videodev failed\0A\00", [61 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.43 = internal global ptr @hdpvr_probe._entry.41, section ".printk_index", align 4
@hdpvr_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.5, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: device now attached to %s\0A\00", [63 x i8] zeroinitializer }, align 32
@hdpvr_probe._entry_ptr.46 = internal global ptr @hdpvr_probe._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdpvr_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: control request returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdpvr_device_init\00", [46 x i8] zeroinitializer }, align 32
@hdpvr_device_init._entry_ptr = internal global ptr @hdpvr_device_init._entry, section ".printk_index", align 4
@hdpvr_device_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdpvr_device_init._entry_ptr.50 = internal global ptr @hdpvr_device_init._entry.49, section ".printk_index", align 4
@hdpvr_device_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdpvr_device_init._entry_ptr.52 = internal global ptr @hdpvr_device_init._entry.51, section ".printk_index", align 4
@device_authorization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: unexpected answer of status request, len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device_authorization\00", [43 x i8] zeroinitializer }, align 32
@device_authorization._entry_ptr = internal global ptr @device_authorization._entry, section ".printk_index", align 4
@device_authorization._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.5, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: firmware version 0x%x dated %s\0A\00", [58 x i8] zeroinitializer }, align 32
@device_authorization._entry_ptr.57 = internal global ptr @device_authorization._entry.55, section ".printk_index", align 4
@device_authorization._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.5, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: untested firmware, the driver might not work.\0A\00", [43 x i8] zeroinitializer }, align 32
@device_authorization._entry_ptr.60 = internal global ptr @device_authorization._entry.58, section ".printk_index", align 4
@device_authorization._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: magic request returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@device_authorization._entry_ptr.63 = internal global ptr @device_authorization._entry.61, section ".printk_index", align 4
@hdpvr_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: device %s disconnected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdpvr_disconnect\00", [47 x i8] zeroinitializer }, align 32
@hdpvr_disconnect._entry_ptr = internal global ptr @hdpvr_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 8, i64 13, i64 18, i64 21, i64 30]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"hdpvr_debug\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 34, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"default_video_input\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 38, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"default_audio_input\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 42, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"boost_audio\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 46, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"hdpvr_usb_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 437, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 447, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 27, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"hdpvr_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 52, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 281, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 292, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 296, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 297, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 298, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 301, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 305, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 306, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"hdpvr_default_options\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 246, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 339, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 345, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 352, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 361, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 367, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"dev_nr\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 32, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 375, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 385, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 390, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 218, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 229, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 238, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 126, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 141, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 163, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 188, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [40 x i8] c"../drivers/media/usb/hdpvr/hdpvr-core.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 415, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_boost_audio306, ptr @__UNIQUE_ID_boost_audiotype305, ptr @__UNIQUE_ID_default_audio_input304, ptr @__UNIQUE_ID_default_audio_inputtype303, ptr @__UNIQUE_ID_default_video_input302, ptr @__UNIQUE_ID_default_video_inputtype301, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_hdpvr_debug300, ptr @__UNIQUE_ID_hdpvr_debugtype299, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_version310, ptr @__UNIQUE_ID_video_nr298, ptr @__UNIQUE_ID_video_nrtype297, ptr @__exitcall_hdpvr_usb_driver_exit, ptr @__initcall__kmod_hdpvr__307_444_hdpvr_usb_driver_init6, ptr @__modver_attr, ptr @__param_boost_audio, ptr @__param_default_audio_input, ptr @__param_default_video_input, ptr @__param_hdpvr_debug, ptr @__param_video_nr, ptr @device_authorization._entry, ptr @device_authorization._entry.55, ptr @device_authorization._entry.58, ptr @device_authorization._entry.61, ptr @device_authorization._entry_ptr, ptr @device_authorization._entry_ptr.57, ptr @device_authorization._entry_ptr.60, ptr @device_authorization._entry_ptr.63, ptr @hdpvr_device_init._entry, ptr @hdpvr_device_init._entry.49, ptr @hdpvr_device_init._entry.51, ptr @hdpvr_device_init._entry_ptr, ptr @hdpvr_device_init._entry_ptr.50, ptr @hdpvr_device_init._entry_ptr.52, ptr @hdpvr_disconnect._entry, ptr @hdpvr_disconnect._entry_ptr, ptr @hdpvr_probe._entry, ptr @hdpvr_probe._entry.16, ptr @hdpvr_probe._entry.23, ptr @hdpvr_probe._entry.26, ptr @hdpvr_probe._entry.29, ptr @hdpvr_probe._entry.32, ptr @hdpvr_probe._entry.35, ptr @hdpvr_probe._entry.38, ptr @hdpvr_probe._entry.41, ptr @hdpvr_probe._entry.44, ptr @hdpvr_probe._entry.8, ptr @hdpvr_probe._entry_ptr, ptr @hdpvr_probe._entry_ptr.10, ptr @hdpvr_probe._entry_ptr.18, ptr @hdpvr_probe._entry_ptr.25, ptr @hdpvr_probe._entry_ptr.28, ptr @hdpvr_probe._entry_ptr.31, ptr @hdpvr_probe._entry_ptr.34, ptr @hdpvr_probe._entry_ptr.37, ptr @hdpvr_probe._entry_ptr.40, ptr @hdpvr_probe._entry_ptr.43, ptr @hdpvr_probe._entry_ptr.46, ptr @hdpvr_usb_driver_exit, ptr @hdpvr_debug, ptr @default_video_input, ptr @default_audio_input, ptr @boost_audio, ptr @hdpvr_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_nr, ptr @hdpvr_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @hdpvr_probe.__key, ptr @.str.11, ptr @hdpvr_probe.__key.12, ptr @.str.13, ptr @hdpvr_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @hdpvr_probe.__key.19, ptr @.str.20, ptr @hdpvr_probe.__key.21, ptr @.str.22, ptr @hdpvr_default_options, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @dev_nr, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_video_input to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_audio_input to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_audio to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_default_options to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_device_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_device_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_authorization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_authorization._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_authorization._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_authorization._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdpvr_delete(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hdpvr_free_buffers(ptr noundef %dev) #7
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_usb_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @hdpvr_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdpvr_usb_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @hdpvr_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3848) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %free_buff_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %free_buff_list, ptr %free_buff_list, align 4
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_buff_list, ptr %prev.i, align 8
  %rec_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %rec_buff_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rec_buff_list, ptr %rec_buff_list, align 4
  %prev.i235 = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i235 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rec_buff_list, ptr %prev.i235, align 8
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %v4l2_dev = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3
  %call4 = tail call i32 @v4l2_device_register(ptr noundef %dev3, ptr noundef %v4l2_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9) #11
  br label %error_free_dev

do.body12:                                        ; preds = %if.end
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @hdpvr_probe.__key) #7
  %i2c_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %i2c_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @hdpvr_probe.__key.12) #7
  %usbc_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %usbc_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @hdpvr_probe.__key.14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 64) #10
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 26
  %6 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %usbc_buf, align 4
  %tobool23.not = icmp eq ptr %call7.i, null
  br i1 %tobool23.not, label %do.end27, label %do.body31

do.end27:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #11
  br label %error_v4l2_unregister

do.body31:                                        ; preds = %do.body12
  %wait_buffer = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wait_buffer, ptr noundef nonnull @.str.20, ptr noundef nonnull @hdpvr_probe.__key.19) #7
  %wait_data = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %wait_data, ptr noundef nonnull @.str.22, ptr noundef nonnull @hdpvr_probe.__key.21) #7
  %options = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10
  %7 = call ptr @memcpy(ptr %options, ptr @hdpvr_default_options, i32 20)
  %8 = load i32, ptr @default_video_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ult i32 %8, 3
  br i1 %cmp, label %if.then37, label %do.body31.if.end39_crit_edge

do.body31.if.end39_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %8 to i8
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %video_input to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %video_input, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body31.if.end39_crit_edge
  %10 = load i32, ptr @default_audio_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp40 = icmp ult i32 %10, 3
  br i1 %cmp40, label %if.then42, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then42:                                        ; preds = %if.end39
  %conv43 = trunc i32 %10 to i8
  %audio_input = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %audio_input to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv43, ptr %audio_input, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp45 = icmp eq i32 %10, 2
  br i1 %cmp45, label %if.then47, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %audio_codec = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 7
  %12 = ptrtoint ptr %audio_codec to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %audio_codec, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then42.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 -128
  %call52 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call52, ptr %udev, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp54243.not = icmp eq i8 %19, 0
  br i1 %cmp54243.not, label %if.end50.for.end_crit_edge, label %for.body.lr.ph

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %endpoint56 = getelementptr inbounds %struct.usb_host_interface, ptr %17, i32 0, i32 3
  %bulk_in_endpointAddr = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 8
  %bulk_in_size = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %endpoint56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint56, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %21, i32 %i.0244
  %22 = ptrtoint ptr %bulk_in_endpointAddr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bulk_in_endpointAddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool58.not = icmp eq i8 %23, 0
  br i1 %tobool58.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i.not.i = icmp eq i8 %26, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool60.not = icmp sgt i8 %28, -1
  br i1 %tobool60.not, label %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, label %if.then61

usb_endpoint_is_bulk_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then61:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8192, ptr %bulk_in_size, align 8
  %30 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i, align 1
  %32 = ptrtoint ptr %bulk_in_endpointAddr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bulk_in_endpointAddr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0244, 1
  %33 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNumEndpoints, align 4
  %conv53 = zext i8 %34 to i32
  %cmp54 = icmp ult i32 %inc, %conv53
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end50.for.end_crit_edge
  %bulk_in_endpointAddr64 = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %bulk_in_endpointAddr64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bulk_in_endpointAddr64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool65.not = icmp eq i8 %36, 0
  br i1 %tobool65.not, label %do.end69, label %if.end75

do.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %name72 = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name72) #11
  br label %error_put_usb

if.end75:                                         ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #7
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i.i = shl i32 %40, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %41 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usbc_buf, align 4
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or3.i.i, i8 noundef zeroext -127, i8 noundef zeroext -72, i16 noundef zeroext 1024, i16 noundef zeroext 3, ptr noundef %42, i16 noundef zeroext 46, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %call6.i.i)
  %cmp.not.i.i = icmp eq i32 %call6.i.i, 46
  br i1 %cmp.not.i.i, label %if.end.i.i, label %device_authorization.exit.thread.i

device_authorization.exit.thread.i:               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i.i, i32 noundef %call6.i.i) #11
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #7
  br label %do.end81

if.end.i.i:                                       ; preds = %if.end75
  %43 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usbc_buf, align 4
  %arrayidx.i.i = getelementptr i8, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i, align 1
  %fw_ver.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 27
  %47 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %fw_ver.i.i, align 8
  %arrayidx11.i.i = getelementptr i8, ptr %44, i32 46
  %48 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx11.i.i, align 1
  %name17.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %49 = load i8, ptr %fw_ver.i.i, align 8
  %conv20.i.i = zext i8 %49 to i32
  %50 = load ptr, ptr %usbc_buf, align 4
  %arrayidx22.i.i = getelementptr i8, ptr %50, i32 2
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name17.i.i, i32 noundef %conv20.i.i, ptr noundef %arrayidx22.i.i) #11
  %51 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fw_ver.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %52)
  %cmp26.i.i = icmp ugt i8 %52, 21
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.end.i.i.if.end33.i.i_crit_edge

if.end.i.i.if.end33.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %brightness.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 8
  %53 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %brightness.i.i, align 4
  %contrast.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 9
  %54 = ptrtoint ptr %contrast.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 64, ptr %contrast.i.i, align 1
  %hue.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 10
  %55 = ptrtoint ptr %hue.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 15, ptr %hue.i.i, align 2
  %saturation.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 11
  %56 = ptrtoint ptr %saturation.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 64, ptr %saturation.i.i, align 1
  %sharpness.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 10, i32 12
  %57 = ptrtoint ptr %sharpness.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -128, ptr %sharpness.i.i, align 8
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %if.end.i.i.if.end33.i.i_crit_edge
  %58 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i8 %52, label %do.end41.i.i [
    i8 8, label %sw.bb.i.i
    i8 13, label %if.end33.i.i.sw.bb36.i.i_crit_edge
    i8 18, label %if.end33.i.i.sw.bb36.i.i_crit_edge245
    i8 21, label %if.end33.i.i.sw.bb36.i.i_crit_edge246
    i8 30, label %if.end33.i.i.sw.bb36.i.i_crit_edge247
  ]

if.end33.i.i.sw.bb36.i.i_crit_edge247:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i

if.end33.i.i.sw.bb36.i.i_crit_edge246:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i

if.end33.i.i.sw.bb36.i.i_crit_edge245:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i

if.end33.i.i.sw.bb36.i.i_crit_edge:               ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i

sw.bb.i.i:                                        ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 13
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %60, -2
  store i32 %and.i.i, ptr %flags.i.i, align 4
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %if.end33.i.i.sw.bb36.i.i_crit_edge, %if.end33.i.i.sw.bb36.i.i_crit_edge245, %if.end33.i.i.sw.bb36.i.i_crit_edge246, %if.end33.i.i.sw.bb36.i.i_crit_edge247
  %flags37.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 13
  %61 = ptrtoint ptr %flags37.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags37.i.i, align 4
  %or38.i.i = or i32 %62, 1
  store i32 %or38.i.i, ptr %flags37.i.i, align 4
  br label %sw.epilog.i.i

do.end41.i.i:                                     ; preds = %if.end33.i.i
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name17.i.i) #11
  %63 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fw_ver.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %64)
  %cmp49.i.i = icmp ugt i8 %64, 12
  %flags52.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 13
  %65 = ptrtoint ptr %flags52.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags52.i.i, align 4
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.else.i.i

if.then51.i.i:                                    ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or53.i.i = or i32 %66, 1
  %67 = ptrtoint ptr %flags52.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or53.i.i, ptr %flags52.i.i, align 4
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and55.i.i = and i32 %66, -2
  %68 = ptrtoint ptr %flags52.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and55.i.i, ptr %flags52.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.else.i.i, %if.then51.i.i, %sw.bb36.i.i, %sw.bb.i.i
  %69 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usbc_buf, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 38
  %arrayidx72.i.i.i = getelementptr i8, ptr %70, i32 44
  %arrayidx75.i.i.i = getelementptr i8, ptr %70, i32 39
  %arrayidx37.i.i.i = getelementptr i8, ptr %70, i32 41
  %arrayidx6.i.i.i = getelementptr i8, ptr %70, i32 42
  %arrayidx9.i.i.i = getelementptr i8, ptr %70, i32 43
  %arrayidx12.i.i.i = getelementptr i8, ptr %70, i32 40
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc93.i.i.i.for.body.i.i.i_crit_edge, %sw.epilog.i.i
  %idx.0142.i.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %inc94.i.i.i, %for.inc93.i.i.i.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %idx.0142.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cond.i.i.i = icmp eq i32 %and.i.i.i, 0
  %shr45.i.i.i = lshr i32 %idx.0142.i.i.i, 2
  br i1 %cond.i.i.i, label %sw.bb44.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %and1.i.i.i = and i32 %shr45.i.i.i, 3
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %and1.i.i.i
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr2.i.i.i = lshr i32 %idx.0142.i.i.i, 3
  %add.i.i.i = add nuw nsw i32 %shr2.i.i.i, 3
  %arrayidx3.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i.i
  %73 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx3.i.i.i, align 1
  %74 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and.i.i.i, label %if.end.unreachabledefault.i.i.i [
    i32 3, label %sw.bb.i.i.i
    i32 1, label %sw.bb26.i.i.i
    i32 2, label %for.cond68.preheader.i.i.i
  ]

for.cond68.preheader.i.i.i:                       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx72.i.i.i, align 1
  %add74.i.i.i = add i8 %76, 1
  %77 = ptrtoint ptr %arrayidx75.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %arrayidx75.promoted.i.i.i = load i8, ptr %arrayidx75.i.i.i, align 1
  %mul77.i.i.i = mul i8 %add74.i.i.i, %arrayidx75.promoted.i.i.i
  %mul77.1.i.i.i = mul i8 %mul77.i.i.i, %add74.i.i.i
  %mul77.2.i.i.i = mul i8 %mul77.1.i.i.i, %add74.i.i.i
  store i8 %mul77.2.i.i.i, ptr %arrayidx75.i.i.i, align 1
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr.i.i, align 8
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #7
  %sh_prom.i.i.i = and i64 %79, 15
  %shl.i117.i.i = shl i64 %80, %sh_prom.i.i.i
  %add89.i.i.i = add i64 %shl.i117.i.i, %80
  %81 = lshr i64 %add89.i.i.i, 56
  %sh_prom.1.i.i.i = and i64 %81, 15
  %shl.1.i.i.i = shl i64 %add89.i.i.i, %sh_prom.1.i.i.i
  %add89.1.i.i.i = add i64 %shl.1.i.i.i, %add89.i.i.i
  %82 = lshr i64 %add89.1.i.i.i, 56
  %sh_prom.2.i.i.i = and i64 %82, 15
  %shl.2.i.i.i = shl i64 %add89.1.i.i.i, %sh_prom.2.i.i.i
  %add89.2.i.i.i = add i64 %shl.2.i.i.i, %add89.1.i.i.i
  %83 = tail call i64 @llvm.bswap.i64(i64 %add89.2.i.i.i) #7
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %add.ptr.i.i, align 8
  br label %for.inc93.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx37.i.i.i, align 1
  %mul.i.i.i = shl i8 %86, 2
  %87 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx6.i.i.i, align 1
  %add8.i.i.i = add i8 %mul.i.i.i, %88
  %89 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx9.i.i.i, align 1
  %add11.i.i.i = add i8 %add8.i.i.i, %90
  %91 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx12.i.i.i, align 1
  %add14.i.i.i = add i8 %add11.i.i.i, %92
  store i8 %add14.i.i.i, ptr %arrayidx12.i.i.i, align 1
  %and16.i.i.i = shl nuw nsw i32 %idx.0142.i.i.i, 1
  %mul17.i.i.i = and i32 %and16.i.i.i, 2
  %arrayidx18.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul17.i.i.i
  %93 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx18.i.i.i, align 1
  %mul20.i.i.i = mul i8 %94, 9
  %add21.i.i.i = add i8 %88, 9
  %add24.i.i.i = add i8 %add21.i.i.i, %mul20.i.i.i
  store i8 %add24.i.i.i, ptr %arrayidx6.i.i.i, align 1
  br label %for.inc93.i.i.i

sw.bb26.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr.i.i, align 1
  %mul29.i.i.i = shl i8 %96, 3
  %97 = trunc i32 %idx.0142.i.i.i to i8
  %98 = mul nuw i8 %97, 7
  %99 = add nuw i8 %98, 4
  %conv36.i.i.i = add i8 %99, %mul29.i.i.i
  store i8 %conv36.i.i.i, ptr %add.ptr.i.i, align 1
  %100 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx37.i.i.i, align 1
  %mul39.i.i.i = mul i8 %101, 3
  %102 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx72.i.i.i, align 1
  %add42.i.i.i = add i8 %mul39.i.i.i, %103
  store i8 %add42.i.i.i, ptr %arrayidx72.i.i.i, align 1
  br label %for.inc93.i.i.i

sw.bb44.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx46.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shr45.i.i.i
  %104 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx46.i.i.i, align 1
  %shr47.i.i.i = lshr i32 %idx.0142.i.i.i, 3
  %sub.i.i.i = sub nuw nsw i32 3, %shr47.i.i.i
  %arrayidx48.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i.i
  %106 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx48.i.i.i, align 1
  %107 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx72.i.i.i, align 1
  %mul51.i.i.i = mul i8 %108, 3
  %109 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx9.i.i.i, align 1
  %add54.i.i.i = add i8 %mul51.i.i.i, %110
  store i8 %add54.i.i.i, ptr %arrayidx9.i.i.i, align 1
  %111 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %arrayidx60.promoted.i.i.i = load i8, ptr %arrayidx37.i.i.i, align 1
  %add62.i.i.i = add i8 %arrayidx60.promoted.i.i.i, 1
  %mul65.i.i.i = mul i8 %add62.i.i.i, %arrayidx60.promoted.i.i.i
  %add62.1.i.i.i = add i8 %mul65.i.i.i, 1
  %mul65.1.i.i.i = mul i8 %add62.1.i.i.i, %mul65.i.i.i
  %add62.2.i.i.i = add i8 %mul65.1.i.i.i, 1
  %mul65.2.i.i.i = mul i8 %add62.2.i.i.i, %mul65.1.i.i.i
  store i8 %mul65.2.i.i.i, ptr %arrayidx37.i.i.i, align 1
  br label %for.inc93.i.i.i

if.end.unreachabledefault.i.i.i:                  ; preds = %if.then.i.i.i
  unreachable

for.inc93.i.i.i:                                  ; preds = %sw.bb44.i.i.i, %sw.bb26.i.i.i, %sw.bb.i.i.i, %for.cond68.preheader.i.i.i
  %inc94.i.i.i = add nuw nsw i32 %idx.0142.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc94.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %challenge.exit.i.i, label %for.inc93.i.i.i.for.body.i.i.i_crit_edge

for.inc93.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc93.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

challenge.exit.i.i:                               ; preds = %for.inc93.i.i.i
  tail call void @msleep(i32 noundef 100) #7
  %112 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %udev, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 8
  %shl.i118.i.i = shl i32 %115, 8
  %or61.i.i = or i32 %shl.i118.i.i, -2147483648
  %call65.i.i = tail call i32 @usb_control_msg(ptr noundef %113, i32 noundef %or61.i.i, i8 noundef zeroext -47, i8 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %add.ptr.i.i, i16 noundef zeroext 8, i32 noundef 10000) #7
  %116 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp67.i.i = icmp sgt i32 %116, 0
  br i1 %cmp67.i.i, label %do.end72.i.i, label %challenge.exit.i.i.device_authorization.exit.i_crit_edge

challenge.exit.i.i.device_authorization.exit.i_crit_edge: ; preds = %challenge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_authorization.exit.i

do.end72.i.i:                                     ; preds = %challenge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call77.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name17.i.i, i32 noundef %call65.i.i) #11
  br label %device_authorization.exit.i

device_authorization.exit.i:                      ; preds = %do.end72.i.i, %challenge.exit.i.i.device_authorization.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call65.i.i)
  %cmp81.i.not.i = icmp eq i32 %call65.i.i, 8
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #7
  br i1 %cmp81.i.not.i, label %if.end.i, label %device_authorization.exit.i.do.end81_crit_edge

device_authorization.exit.i.do.end81_crit_edge:   ; preds = %device_authorization.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

if.end.i:                                         ; preds = %device_authorization.exit.i
  %call1.i = tail call i32 @hdpvr_set_options(ptr noundef %call7.i.i) #7
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #7
  %117 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usbc_buf, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %118, align 1
  %arrayidx2.i = getelementptr i8, ptr %118, i32 1
  %120 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 3, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %118, i32 2
  %121 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %118, i32 3
  %122 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %arrayidx4.i, align 1
  %123 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %udev, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i = shl i32 %126, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call7.i236 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 56, i16 noundef zeroext 12544, i16 noundef zeroext 3, ptr noundef %118, i16 noundef zeroext 4, i32 noundef 1000) #7
  %127 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i = icmp sgt i32 %127, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end13.i_crit_edge

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name17.i.i, i32 noundef %call7.i236) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %if.end.i.do.end13.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #7
  tail call void @mutex_lock_nested(ptr noundef %usbc_mutex, i32 noundef 0) #7
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %118, align 1
  %129 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %udev, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i86.i = shl i32 %132, 8
  %or20.i = or i32 %shl.i86.i, -2147483648
  %call21.i = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or20.i, i8 noundef zeroext -44, i8 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %118, i16 noundef zeroext 1, i32 noundef 1000) #7
  %133 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp23.i = icmp sgt i32 %133, 0
  br i1 %cmp23.i, label %do.end27.i, label %do.end13.i.do.end35.i_crit_edge

do.end13.i.do.end35.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i

do.end27.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name17.i.i, i32 noundef %call21.i) #11
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end27.i, %do.end13.i.do.end35.i_crit_edge
  %134 = load i8, ptr @boost_audio, align 1, !range !170
  %135 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %118, align 1
  %136 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %udev, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 8
  %shl.i87.i = shl i32 %139, 8
  %or41.i = or i32 %shl.i87.i, -2147483648
  %call42.i = tail call i32 @usb_control_msg(ptr noundef %137, i32 noundef %or41.i, i8 noundef zeroext -43, i8 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %118, i16 noundef zeroext 1, i32 noundef 1000) #7
  %140 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp44.i = icmp sgt i32 %140, 0
  br i1 %cmp44.i, label %do.end49.i, label %do.end35.i.if.end87_crit_edge

do.end35.i.if.end87_crit_edge:                    ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

do.end49.i:                                       ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name17.i.i, i32 noundef %call42.i) #11
  br label %if.end87

do.end81:                                         ; preds = %device_authorization.exit.i.do.end81_crit_edge, %device_authorization.exit.thread.i
  %name84 = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name84) #11
  br label %error_put_usb

if.end87:                                         ; preds = %do.end49.i, %do.end35.i.if.end87_crit_edge
  tail call void @mutex_unlock(ptr noundef %usbc_mutex) #7
  %status.i = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 9
  %141 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %status.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #7
  %call89 = tail call i32 @hdpvr_alloc_buffers(ptr noundef nonnull %call7.i.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  tail call void @mutex_unlock(ptr noundef %io_mutex) #7
  br i1 %tobool90.not, label %if.end101, label %if.then91

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name17.i.i) #11
  br label %error_put_usb

if.end101:                                        ; preds = %if.end87
  %call103 = tail call i32 @hdpvr_register_i2c_adapter(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end109, label %if.end115

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name17.i.i) #11
  br label %error_free_buffers

if.end115:                                        ; preds = %if.end101
  %call116 = tail call ptr @hdpvr_register_ir_i2c(ptr noundef nonnull %call7.i.i) #7
  %cmp.i237 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %do.end121, label %if.end128

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name17.i.i) #11
  %142 = ptrtoint ptr %call116 to i32
  br label %reg_fail

if.end128:                                        ; preds = %if.end115
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dev_nr, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr nonnull @dev_nr, i32 1, i32 3, i32 1) #7
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dev_nr, ptr nonnull @dev_nr, i32 1, ptr nonnull elementtype(i32) @dev_nr) #7, !srcloc !172
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %143, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %asmresult.i.i.i.i)
  %cmp130 = icmp sgt i32 %asmresult.i.i.i.i, 7
  br i1 %cmp130, label %do.end135, label %if.end141

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name17.i.i) #11
  %call.i.i234 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dev_nr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @dev_nr, i32 1, i32 3, i32 1) #7
  %144 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dev_nr, ptr nonnull @dev_nr, i32 1, ptr nonnull elementtype(i32) @dev_nr) #7, !srcloc !174
  br label %reg_fail

if.end141:                                        ; preds = %if.end128
  %arrayidx143 = getelementptr [8 x i32], ptr @video_nr, i32 0, i32 %asmresult.i.i.i.i
  %145 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx143, align 4
  %call144 = tail call i32 @hdpvr_register_videodev(ptr noundef nonnull %call7.i.i, ptr noundef %dev3, i32 noundef %146) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %do.end150, label %do.end159

do.end150:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name17.i.i) #11
  br label %reg_fail

do.end159:                                        ; preds = %if.end141
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call7.i.i, i32 0, i32 5, i32 3
  %147 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %148, null
  br i1 %tobool.not.i.i, label %if.end.i.i238, label %do.end159.video_device_node_name.exit_crit_edge

do.end159.video_device_node_name.exit_crit_edge:  ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i238:                                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call7.i.i, i32 0, i32 5
  %149 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i238, %do.end159.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %150, %if.end.i.i238 ], [ %148, %do.end159.video_device_node_name.exit_crit_edge ]
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name17.i.i, ptr noundef %retval.0.i.i) #11
  br label %cleanup

reg_fail:                                         ; preds = %do.end150, %do.end135, %do.end121
  %retval1.0 = phi i32 [ %142, %do.end121 ], [ -19, %do.end135 ], [ %call144, %do.end150 ]
  %i2c_adapter = getelementptr inbounds %struct.hdpvr_device, ptr %call7.i.i, i32 0, i32 21
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  br label %error_free_buffers

error_free_buffers:                               ; preds = %reg_fail, %do.end109
  %retval1.1 = phi i32 [ %call103, %do.end109 ], [ %retval1.0, %reg_fail ]
  %call166 = tail call i32 @hdpvr_free_buffers(ptr noundef nonnull %call7.i.i) #7
  br label %error_put_usb

error_put_usb:                                    ; preds = %error_free_buffers, %if.then91, %do.end81, %do.end69
  %retval1.2 = phi i32 [ -12, %do.end81 ], [ -12, %if.then91 ], [ %retval1.1, %error_free_buffers ], [ -12, %do.end69 ]
  %151 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %152) #7
  %153 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %usbc_buf, align 4
  tail call void @kfree(ptr noundef %154) #7
  br label %error_v4l2_unregister

error_v4l2_unregister:                            ; preds = %error_put_usb, %do.end27
  %retval1.3 = phi i32 [ %retval1.2, %error_put_usb ], [ -12, %do.end27 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  br label %error_free_dev

error_free_dev:                                   ; preds = %error_v4l2_unregister, %do.end9
  %retval1.4 = phi i32 [ -12, %do.end9 ], [ %retval1.3, %error_v4l2_unregister ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_free_dev, %video_device_node_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ %retval1.4, %error_free_dev ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdpvr_disconnect(ptr nocapture noundef readonly %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr i8, ptr %1, i32 -1156
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.video_device_node_name.exit_crit_edge

entry.video_device_node_name.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %1, i32 -1300
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %entry.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.video_device_node_name.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1540
  %name = getelementptr i8, ptr %1, i32 60
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name, ptr noundef %retval.0.i.i) #11
  %io_mutex = getelementptr i8, ptr %1, i32 324
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #7
  %status = getelementptr i8, ptr %1, i32 153
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %status, align 1
  %wait_data = getelementptr i8, ptr %1, i32 484
  tail call void @__wake_up(ptr noundef %wait_data, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %wait_buffer = getelementptr i8, ptr %1, i32 432
  tail call void @__wake_up(ptr noundef %wait_buffer, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  tail call void @mutex_unlock(ptr noundef %io_mutex) #7
  tail call void @v4l2_device_disconnect(ptr noundef %1) #7
  tail call void @msleep(i32 noundef 100) #7
  %worker = getelementptr i8, ptr %1, i32 536
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %worker) #7
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #7
  %call8 = tail call i32 @hdpvr_cancel_queue(ptr noundef %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %io_mutex) #7
  %i2c_adapter = getelementptr i8, ptr %1, i32 588
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  tail call void @video_unregister_device(ptr noundef %add.ptr.i) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dev_nr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @dev_nr, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dev_nr, ptr nonnull @dev_nr, i32 1, ptr nonnull elementtype(i32) @dev_nr) #7, !srcloc !174
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_alloc_buffers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_register_i2c_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hdpvr_register_ir_i2c(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_register_videodev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_set_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_cancel_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__param_video_nr, !1, !"__param_video_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_video_nrtype297, !1, !"__UNIQUE_ID_video_nrtype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_video_nr298, !4, !"__UNIQUE_ID_video_nr298", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 29, i32 1}
!5 = !{ptr @__param_hdpvr_debug, !6, !"__param_hdpvr_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_hdpvr_debugtype299, !6, !"__UNIQUE_ID_hdpvr_debugtype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_hdpvr_debug300, !9, !"__UNIQUE_ID_hdpvr_debug300", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 36, i32 1}
!10 = !{ptr @__param_default_video_input, !11, !"__param_default_video_input", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_default_video_inputtype301, !11, !"__UNIQUE_ID_default_video_inputtype301", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_default_video_input302, !14, !"__UNIQUE_ID_default_video_input302", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 40, i32 1}
!15 = !{ptr @__param_default_audio_input, !16, !"__param_default_audio_input", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 43, i32 1}
!17 = !{ptr @__UNIQUE_ID_default_audio_inputtype303, !16, !"__UNIQUE_ID_default_audio_inputtype303", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_default_audio_input304, !19, !"__UNIQUE_ID_default_audio_input304", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 44, i32 1}
!20 = !{ptr @__param_boost_audio, !21, !"__param_boost_audio", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 47, i32 1}
!22 = !{ptr @__UNIQUE_ID_boost_audiotype305, !21, !"__UNIQUE_ID_boost_audiotype305", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_boost_audio306, !24, !"__UNIQUE_ID_boost_audio306", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 48, i32 1}
!25 = !{ptr @__initcall__kmod_hdpvr__307_444_hdpvr_usb_driver_init6, !26, !"__initcall__kmod_hdpvr__307_444_hdpvr_usb_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 444, i32 1}
!27 = !{ptr @__exitcall_hdpvr_usb_driver_exit, !26, !"__exitcall_hdpvr_usb_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_file308, !29, !"__UNIQUE_ID_file308", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 446, i32 1}
!30 = !{ptr @__UNIQUE_ID_license309, !29, !"__UNIQUE_ID_license309", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_version310, !32, !"__UNIQUE_ID_version310", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 447, i32 1}
!33 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__modver_attr, !32, !"__modver_attr", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_author311, !38, !"__UNIQUE_ID_author311", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 448, i32 1}
!39 = !{ptr @__UNIQUE_ID_description312, !40, !"__UNIQUE_ID_description312", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 449, i32 1}
!41 = !{ptr @hdpvr_debug, !42, !"hdpvr_debug", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 34, i32 5}
!43 = !{ptr @boost_audio, !44, !"boost_audio", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 46, i32 13}
!45 = !{ptr @__param_str_video_nr, !1, !"__param_str_video_nr", i1 false, i1 false}
!46 = !{ptr @__param_arr_video_nr, !1, !"__param_arr_video_nr", i1 false, i1 false}
!47 = !{ptr @video_nr, !48, !"video_nr", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 27, i32 12}
!49 = !{ptr @__param_str_hdpvr_debug, !6, !"__param_str_hdpvr_debug", i1 false, i1 false}
!50 = !{ptr @__param_str_default_video_input, !11, !"__param_str_default_video_input", i1 false, i1 false}
!51 = !{ptr @default_video_input, !52, !"default_video_input", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 38, i32 13}
!53 = !{ptr @__param_str_default_audio_input, !16, !"__param_str_default_audio_input", i1 false, i1 false}
!54 = !{ptr @default_audio_input, !55, !"default_audio_input", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 42, i32 13}
!56 = !{ptr @__param_str_boost_audio, !21, !"__param_str_boost_audio", i1 false, i1 false}
!57 = !{ptr @hdpvr_usb_driver, !58, !"hdpvr_usb_driver", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 437, i32 26}
!59 = !{ptr @.str.3, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 281, i32 3}
!61 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hdpvr_probe._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @hdpvr_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 292, i32 3}
!69 = !{ptr @hdpvr_probe._entry.8, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hdpvr_probe._entry_ptr.10, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @hdpvr_probe.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 296, i32 2}
!73 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @hdpvr_probe.__key.12, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 297, i32 2}
!76 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hdpvr_probe.__key.14, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 298, i32 2}
!79 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 301, i32 3}
!82 = !{ptr @hdpvr_probe._entry.16, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hdpvr_probe._entry_ptr.18, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @hdpvr_probe.__key.19, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 305, i32 2}
!86 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hdpvr_probe.__key.21, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 306, i32 2}
!89 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 339, i32 3}
!92 = !{ptr @hdpvr_probe._entry.23, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @hdpvr_probe._entry_ptr.25, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 345, i32 3}
!96 = !{ptr @hdpvr_probe._entry.26, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @hdpvr_probe._entry_ptr.28, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 352, i32 3}
!100 = !{ptr @hdpvr_probe._entry.29, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hdpvr_probe._entry_ptr.31, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 361, i32 3}
!104 = !{ptr @hdpvr_probe._entry.32, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @hdpvr_probe._entry_ptr.34, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 367, i32 3}
!108 = !{ptr @hdpvr_probe._entry.35, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @hdpvr_probe._entry_ptr.37, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 375, i32 3}
!112 = !{ptr @hdpvr_probe._entry.38, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hdpvr_probe._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 385, i32 3}
!116 = !{ptr @hdpvr_probe._entry.41, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @hdpvr_probe._entry_ptr.43, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 390, i32 2}
!120 = !{ptr @hdpvr_probe._entry.44, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @hdpvr_probe._entry_ptr.46, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @hdpvr_default_options, !123, !"hdpvr_default_options", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 246, i32 35}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 218, i32 2}
!126 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @hdpvr_device_init._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @hdpvr_device_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @hdpvr_device_init._entry.49, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 229, i32 2}
!131 = !{ptr @hdpvr_device_init._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @hdpvr_device_init._entry.51, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 238, i32 2}
!134 = !{ptr @hdpvr_device_init._entry_ptr.52, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 126, i32 3}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @device_authorization._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @device_authorization._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 141, i32 2}
!142 = !{ptr @device_authorization._entry.55, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @device_authorization._entry_ptr.57, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 163, i32 3}
!146 = !{ptr @device_authorization._entry.58, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @device_authorization._entry_ptr.60, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 188, i32 2}
!150 = !{ptr @device_authorization._entry.61, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @device_authorization._entry_ptr.63, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @dev_nr, !153, !"dev_nr", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 32, i32 17}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 415, i32 2}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @hdpvr_disconnect._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @hdpvr_disconnect._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @hdpvr_table, !160, !"hdpvr_table", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/hdpvr/hdpvr-core.c", i32 52, i32 35}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i8 0, i8 2}
!171 = !{i64 2148305203}
!172 = !{i64 2148220512, i64 2148220544, i64 2148220573, i64 2148220607, i64 2148220638, i64 2148220661}
!173 = !{i64 2148305432}
!174 = !{i64 2148222257, i64 2148222283, i64 2148222312, i64 2148222346, i64 2148222377, i64 2148222400}
