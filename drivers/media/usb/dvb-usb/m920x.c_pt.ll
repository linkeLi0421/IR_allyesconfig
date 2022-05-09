; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/m920x.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/m920x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.m920x_inits = type { i16, i8 }
%struct.rc_map_table = type { i64, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.132 = type { i32 }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.qt1010_config = type { i8 }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.mt2060_config = type { i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.m920x_state = type { [4 x [8 x i16]], [4 x i32], i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.124], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.124 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.125 }>
%union.anon.125 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [20 x i8] c"dvb_usb_m920x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_m920x_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_m920x_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [33 x i8] c"dvb_usb_m920x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [63 x i8] c"dvb_usb_m920x.parm=debug:set debugging level (1=rc (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [25 x i8] c"dvb_usb_m920x.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [49 x i8] c"dvb_usb_m920x.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [50 x i8] c"dvb_usb_m920x.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_m920x__392_1266_m920x_driver_init6 = internal global ptr @m920x_driver_init, section ".initcall6.init", align 4
@m920x_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @m920x_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m920x_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_m920x_driver_exit = internal global ptr @m920x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [55 x i8] c"dvb_usb_m920x.author=Aapo Tahkola <aet@rasterburn.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [51 x i8] c"dvb_usb_m920x.description=DVB Driver for ULI M920x\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [26 x i8] c"dvb_usb_m920x.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_usb_m920x\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [59 x i8] c"dvb_usb_m920x.file=drivers/media/usb/dvb-usb/dvb-usb-m920x\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [26 x i8] c"dvb_usb_m920x.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@m920x_table = internal global { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3504, i16 21888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 5395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 1300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4349, i16 1299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5272, i16 -28154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5272, i16 -24432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12817, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12825, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@m920x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Probing for m920x device at interface %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"m920x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/dvb-usb/m920x.c\00", [62 x i8] zeroinitializer }, align 32
@m920x_probe._entry_ptr = internal global ptr @m920x_probe._entry, section ".printk_index", align 4
@megasky_rc_init = internal constant { [3 x %struct.m920x_inits], [20 x i8] } { [3 x %struct.m920x_inits] [%struct.m920x_inits { i16 -171, i8 -88 }, %struct.m920x_inits { i16 -172, i8 81 }, %struct.m920x_inits zeroinitializer], [20 x i8] zeroinitializer }, align 32
@tvwalkertwin_rc_init = internal constant { [6 x %struct.m920x_inits], [40 x i8] } { [6 x %struct.m920x_inits] [%struct.m920x_inits { i16 -171, i8 0 }, %struct.m920x_inits { i16 -172, i8 -17 }, %struct.m920x_inits { i16 -216, i8 0 }, %struct.m920x_inits { i16 -221, i8 0 }, %struct.m920x_inits { i16 -223, i8 48 }, %struct.m920x_inits zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pinnacle310e_init = internal constant { [6 x %struct.m920x_inits], [40 x i8] } { [6 x %struct.m920x_inits] [%struct.m920x_inits { i16 -224, i8 -101 }, %struct.m920x_inits { i16 -222, i8 112 }, %struct.m920x_inits { i16 -176, i8 -128 }, %struct.m920x_inits { i16 -172, i8 0 }, %struct.m920x_inits { i16 -171, i8 -1 }, %struct.m920x_inits zeroinitializer], [40 x i8] zeroinitializer }, align 32
@vp7049_rc_init = internal constant { [6 x %struct.m920x_inits], [40 x i8] } { [6 x %struct.m920x_inits] [%struct.m920x_inits { i16 -216, i8 0 }, %struct.m920x_inits { i16 -221, i8 0 }, %struct.m920x_inits { i16 -223, i8 112 }, %struct.m920x_inits { i16 -171, i8 0 }, %struct.m920x_inits { i16 -172, i8 -1 }, %struct.m920x_inits zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-usb-megasky-02.fw\00", [42 x i8] zeroinitializer }, align 32
@rc_map_megasky_table = internal global { [16 x %struct.rc_map_table], [64 x i8] } { [16 x %struct.rc_map_table] [%struct.rc_map_table { i64 18, i32 116 }, %struct.rc_map_table { i64 30, i32 154 }, %struct.rc_map_table { i64 2, i32 402 }, %struct.rc_map_table { i64 5, i32 403 }, %struct.rc_map_table { i64 3, i32 115 }, %struct.rc_map_table { i64 6, i32 114 }, %struct.rc_map_table { i64 4, i32 113 }, %struct.rc_map_table { i64 7, i32 352 }, %struct.rc_map_table { i64 8, i32 128 }, %struct.rc_map_table { i64 9, i32 139 }, %struct.rc_map_table { i64 10, i32 168 }, %struct.rc_map_table { i64 27, i32 119 }, %struct.rc_map_table { i64 31, i32 208 }, %struct.rc_map_table { i64 12, i32 167 }, %struct.rc_map_table { i64 13, i32 212 }, %struct.rc_map_table { i64 14, i32 152 }], [64 x i8] zeroinitializer }, align 32
@m920x_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @m920x_i2c_xfer, ptr null, ptr null, ptr null, ptr @m920x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MSI Mega Sky 580 DVB-T USB2.0\00", [34 x i8] zeroinitializer }, align 32
@megasky_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @m920x_firmware_download, ptr @.str.6, i32 0, i32 84, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_mt352_frontend_attach, ptr @m920x_qt1010_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 129, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_megasky_table, i32 16, ptr @m920x_rc_query, i32 100 }, %struct.dvb_rc zeroinitializer }, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr @m920x_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m920x_firmware_download\00", [40 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry_ptr = internal global ptr @m920x_firmware_download._entry, section ".printk_index", align 4
@m920x_firmware_download._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry_ptr.13 = internal global ptr @m920x_firmware_download._entry.11, section ".printk_index", align 4
@m920x_firmware_download._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.5, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error while uploading fw!\0A\00", [37 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry_ptr.16 = internal global ptr @m920x_firmware_download._entry.14, section ".printk_index", align 4
@m920x_firmware_download._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.5, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad firmware file!\0A\00", [44 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry_ptr.19 = internal global ptr @m920x_firmware_download._entry.17, section ".printk_index", align 4
@m920x_firmware_download._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.5, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware uploaded!\0A\00", [44 x i8] zeroinitializer }, align 32
@m920x_firmware_download._entry_ptr.22 = internal global ptr @m920x_firmware_download._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@m920x_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016m920x_read = error: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m920x_read\00", [21 x i8] zeroinitializer }, align 32
@m920x_read._entry_ptr = internal global ptr @m920x_read._entry, section ".printk_index", align 4
@m920x_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m920x_read = no data\0A\00", [42 x i8] zeroinitializer }, align 32
@m920x_read._entry_ptr.27 = internal global ptr @m920x_read._entry.25, section ".printk_index", align 4
@m920x_mt352_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"m920x_mt352_frontend_attach\00", [36 x i8] zeroinitializer }, align 32
@m920x_mt352_frontend_attach._entry_ptr = internal global ptr @m920x_mt352_frontend_attach._entry, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@m920x_mt352_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 1, ptr @m920x_mt352_demod_init }, [44 x i8] zeroinitializer }, align 32
@m920x_mt352_frontend_attach._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.5, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@m920x_mt352_frontend_attach._entry_ptr.34 = internal global ptr @m920x_mt352_frontend_attach._entry.32, section ".printk_index", align 4
@__const.m920x_mt352_demod_init.agc = private unnamed_addr constant [3 x i8] c"g\1C ", align 1
@__const.m920x_mt352_demod_init.sec_agc = private unnamed_addr constant [9 x i8] c"i\00\FF\FF@\FF\00@@", align 1
@m920x_mt352_demod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Demod init!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"m920x_mt352_demod_init\00", [41 x i8] zeroinitializer }, align 32
@m920x_mt352_demod_init._entry_ptr = internal global ptr @m920x_mt352_demod_init._entry, section ".printk_index", align 4
@m920x_qt1010_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.37, ptr @.str.5, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m920x_qt1010_tuner_attach\00", [38 x i8] zeroinitializer }, align 32
@m920x_qt1010_tuner_attach._entry_ptr = internal global ptr @m920x_qt1010_tuner_attach._entry, section ".printk_index", align 4
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@m920x_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@m920x_qt1010_tuner_attach._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.5, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@m920x_qt1010_tuner_attach._entry_ptr.42 = internal global ptr @m920x_qt1010_tuner_attach._entry.40, section ".printk_index", align 4
@m920x_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown rc key %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m920x_rc_query\00", [17 x i8] zeroinitializer }, align 32
@m920x_rc_query._entry_ptr = internal global ptr @m920x_rc_query._entry, section ".printk_index", align 4
@m920x_parse_rc_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected rc state %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m920x_parse_rc_state\00", [43 x i8] zeroinitializer }, align 32
@m920x_parse_rc_state._entry_ptr = internal global ptr @m920x_parse_rc_state._entry, section ".printk_index", align 4
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-usb-digivox-02.fw\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MSI DIGI VOX mini II DVB-T USB2.0\00", [62 x i8] zeroinitializer }, align 32
@digivox_mini_ii_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @m920x_firmware_download, ptr @.str.47, i32 0, i32 84, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_tda10046_08_frontend_attach, ptr @m920x_tda8275_60_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 129, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 16384 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 zeroinitializer, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.48, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 24), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@m920x_tda10046_08_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.50, ptr @.str.5, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"m920x_tda10046_08_frontend_attach\00", [62 x i8] zeroinitializer }, align 32
@m920x_tda10046_08_frontend_attach._entry_ptr = internal global ptr @m920x_tda10046_08_frontend_attach._entry, section ".printk_index", align 4
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@m920x_tda10046_08_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 0, i8 0, i32 1, i32 1, i32 2, i32 3, i32 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@m920x_tda10046_08_frontend_attach._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.5, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@m920x_tda10046_08_frontend_attach._entry_ptr.55 = internal global ptr @m920x_tda10046_08_frontend_attach._entry.53, section ".printk_index", align 4
@m920x_tda8275_60_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.56, ptr @.str.5, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m920x_tda8275_60_tuner_attach\00", [34 x i8] zeroinitializer }, align 32
@m920x_tda8275_60_tuner_attach._entry_ptr = internal global ptr @m920x_tda8275_60_tuner_attach._entry, section ".printk_index", align 4
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda827x_attach\00", [42 x i8] zeroinitializer }, align 32
@m920x_tda8275_60_tuner_attach._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.5, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@m920x_tda8275_60_tuner_attach._entry_ptr.61 = internal global ptr @m920x_tda8275_60_tuner_attach._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-tvwalkert.fw\00", [43 x i8] zeroinitializer }, align 32
@rc_map_tvwalkertwin_table = internal global { [17 x %struct.rc_map_table], [80 x i8] } { [17 x %struct.rc_map_table] [%struct.rc_map_table { i64 1, i32 372 }, %struct.rc_map_table { i64 2, i32 212 }, %struct.rc_map_table { i64 3, i32 113 }, %struct.rc_map_table { i64 4, i32 168 }, %struct.rc_map_table { i64 5, i32 164 }, %struct.rc_map_table { i64 6, i32 208 }, %struct.rc_map_table { i64 7, i32 167 }, %struct.rc_map_table { i64 8, i32 128 }, %struct.rc_map_table { i64 9, i32 359 }, %struct.rc_map_table { i64 12, i32 152 }, %struct.rc_map_table { i64 14, i32 402 }, %struct.rc_map_table { i64 18, i32 116 }, %struct.rc_map_table { i64 21, i32 139 }, %struct.rc_map_table { i64 24, i32 154 }, %struct.rc_map_table { i64 26, i32 403 }, %struct.rc_map_table { i64 27, i32 114 }, %struct.rc_map_table { i64 30, i32 115 }], [80 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LifeView TV Walker Twin DVB-T USB2.0\00", [59 x i8] zeroinitializer }, align 32
@tvwalkertwin_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @m920x_firmware_download, ptr @.str.62, i32 0, i32 84, ptr null, ptr null, i32 2, [2 x { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }] [{ i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_tda10046_08_frontend_attach, ptr @m920x_tda8275_60_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 129, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_tda10046_0b_frontend_attach, ptr @m920x_tda8275_61_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }], ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_tvwalkertwin_table, i32 17, ptr @m920x_rc_query, i32 100 }, %struct.dvb_rc zeroinitializer }, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.63, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 48), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 72), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@m920x_tda10046_0b_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.65, ptr @.str.5, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"m920x_tda10046_0b_frontend_attach\00", [62 x i8] zeroinitializer }, align 32
@m920x_tda10046_0b_frontend_attach._entry_ptr = internal global ptr @m920x_tda10046_0b_frontend_attach._entry, section ".printk_index", align 4
@m920x_tda10046_0b_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 11, i8 0, i8 0, i32 1, i32 1, i32 2, i32 3, i32 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@m920x_tda10046_0b_frontend_attach._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.65, ptr @.str.5, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@m920x_tda10046_0b_frontend_attach._entry_ptr.67 = internal global ptr @m920x_tda10046_0b_frontend_attach._entry.66, section ".printk_index", align 4
@m920x_tda8275_61_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.68, ptr @.str.5, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m920x_tda8275_61_tuner_attach\00", [34 x i8] zeroinitializer }, align 32
@m920x_tda8275_61_tuner_attach._entry_ptr = internal global ptr @m920x_tda8275_61_tuner_attach._entry, section ".printk_index", align 4
@m920x_tda8275_61_tuner_attach._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.68, ptr @.str.5, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@m920x_tda8275_61_tuner_attach._entry_ptr.70 = internal global ptr @m920x_tda8275_61_tuner_attach._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb-usb-dposh-01.fw\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dposh DVB-T USB2.0\00", [45 x i8] zeroinitializer }, align 32
@dposh_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @m920x_firmware_download, ptr @.str.71, i32 0, i32 84, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @m920x_mt352_frontend_attach, ptr @m920x_qt1010_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 129, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 zeroinitializer, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.72, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 96), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 120), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@rc_map_pinnacle310e_table = internal global { [51 x %struct.rc_map_table], [208 x i8] } { [51 x %struct.rc_map_table] [%struct.rc_map_table { i64 22, i32 116 }, %struct.rc_map_table { i64 23, i32 364 }, %struct.rc_map_table { i64 15, i32 388 }, %struct.rc_map_table { i64 72, i32 362 }, %struct.rc_map_table { i64 28, i32 365 }, %struct.rc_map_table { i64 4, i32 395 }, %struct.rc_map_table { i64 3, i32 2 }, %struct.rc_map_table { i64 1, i32 3 }, %struct.rc_map_table { i64 6, i32 4 }, %struct.rc_map_table { i64 9, i32 5 }, %struct.rc_map_table { i64 29, i32 6 }, %struct.rc_map_table { i64 31, i32 7 }, %struct.rc_map_table { i64 13, i32 8 }, %struct.rc_map_table { i64 25, i32 9 }, %struct.rc_map_table { i64 27, i32 10 }, %struct.rc_map_table { i64 21, i32 11 }, %struct.rc_map_table { i64 12, i32 223 }, %struct.rc_map_table { i64 74, i32 355 }, %struct.rc_map_table { i64 19, i32 158 }, %struct.rc_map_table { i64 0, i32 15 }, %struct.rc_map_table { i64 75, i32 103 }, %struct.rc_map_table { i64 78, i32 105 }, %struct.rc_map_table { i64 82, i32 106 }, %struct.rc_map_table { i64 81, i32 108 }, %struct.rc_map_table { i64 79, i32 28 }, %struct.rc_map_table { i64 30, i32 115 }, %struct.rc_map_table { i64 10, i32 114 }, %struct.rc_map_table { i64 5, i32 402 }, %struct.rc_map_table { i64 2, i32 403 }, %struct.rc_map_table { i64 17, i32 167 }, %struct.rc_map_table { i64 20, i32 207 }, %struct.rc_map_table { i64 76, i32 119 }, %struct.rc_map_table { i64 26, i32 128 }, %struct.rc_map_table { i64 64, i32 168 }, %struct.rc_map_table { i64 18, i32 208 }, %struct.rc_map_table { i64 65, i32 165 }, %struct.rc_map_table { i64 66, i32 163 }, %struct.rc_map_table { i64 84, i32 212 }, %struct.rc_map_table { i64 71, i32 154 }, %struct.rc_map_table { i64 77, i32 375 }, %struct.rc_map_table { i64 8, i32 370 }, %struct.rc_map_table { i64 14, i32 113 }, %struct.rc_map_table { i64 7, i32 142 }, %struct.rc_map_table { i64 8, i32 393 }, %struct.rc_map_table { i64 14, i32 139 }, %struct.rc_map_table { i64 69, i32 418 }, %struct.rc_map_table { i64 70, i32 419 }, %struct.rc_map_table { i64 24, i32 398 }, %struct.rc_map_table { i64 83, i32 399 }, %struct.rc_map_table { i64 94, i32 400 }, %struct.rc_map_table { i64 95, i32 401 }], [208 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pinnacle PCTV 310e\00", [45 x i8] zeroinitializer }, align 32
@pinnacle_pctv310e_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 84, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_mt352_frontend_attach, ptr @m920x_fmd1216me_tuner_attach, %struct.usb_data_stream_properties { i32 2, i32 5, i32 132, %union.anon.131 { %struct.anon.133 { i32 128, i32 564, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_pinnacle310e_table, i32 51, ptr @m920x_rc_query, i32 100 }, %struct.dvb_rc zeroinitializer }, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.74, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 144), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@m920x_fmd1216me_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"m920x_fmd1216me_tuner_attach\00", [35 x i8] zeroinitializer }, align 32
@m920x_fmd1216me_tuner_attach._entry_ptr = internal global ptr @m920x_fmd1216me_tuner_attach._entry, section ".printk_index", align 4
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-vp7049-0.95.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-twinhan1027\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DTV-DVB UDTT7049\00", [47 x i8] zeroinitializer }, align 32
@vp7049_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @m920x_firmware_download, ptr @.str.80, i32 0, i32 84, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 8, ptr null, ptr @m920x_pid_filter_ctrl, ptr @m920x_pid_filter, ptr @m920x_mt352_frontend_attach_vp7049, ptr @m920x_mt2060_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 129, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @m920x_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.81, i64 0, i64 1, i32 0, ptr null, ptr null, ptr @m920x_rc_core_query, i32 150, i8 0, i32 0 } }, ptr @m920x_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.82, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @m920x_table, i64 168), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@__const.m920x_mt352_frontend_attach_vp7049.vp7049_fe_init_seq = private unnamed_addr constant [12 x { i16, i8, [1 x i8] }] [{ i16, i8, [1 x i8] } { i16 -216, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -221, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -216, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -221, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -223, i8 32, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -223, i8 96, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -216, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -222, i8 0, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -224, i8 48, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -224, i8 32, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } { i16 -224, i8 48, [1 x i8] zeroinitializer }, { i16, i8, [1 x i8] } zeroinitializer], align 2
@m920x_mt352_frontend_attach_vp7049._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.84, ptr @.str.5, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"m920x_mt352_frontend_attach_vp7049\00", [61 x i8] zeroinitializer }, align 32
@m920x_mt352_frontend_attach_vp7049._entry_ptr = internal global ptr @m920x_mt352_frontend_attach_vp7049._entry, section ".printk_index", align 4
@m920x_mt352_frontend_attach_vp7049._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Initialization of vp7049 frontend failed.\00", [54 x i8] zeroinitializer }, align 32
@m920x_mt352_frontend_attach_vp7049._entry_ptr.87 = internal global ptr @m920x_mt352_frontend_attach_vp7049._entry.85, section ".printk_index", align 4
@m920x_mt2060_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.88, ptr @.str.5, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m920x_mt2060_tuner_attach\00", [38 x i8] zeroinitializer }, align 32
@m920x_mt2060_tuner_attach._entry_ptr = internal global ptr @m920x_mt2060_tuner_attach._entry, section ".printk_index", align 4
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@m920x_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@m920x_mt2060_tuner_attach._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.88, ptr @.str.5, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@m920x_mt2060_tuner_attach._entry_ptr.93 = internal global ptr @m920x_mt2060_tuner_attach._entry.91, section ".printk_index", align 4
@m920x_rc_core_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.5, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"state=0x%02x keycode=0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m920x_rc_core_query\00", [44 x i8] zeroinitializer }, align 32
@m920x_rc_core_query._entry_ptr = internal global ptr @m920x_rc_core_query._entry, section ".printk_index", align 4
@m920x_init_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No alt found!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m920x_init_ep\00", [18 x i8] zeroinitializer }, align 32
@m920x_init_ep._entry_ptr = internal global ptr @m920x_init_ep._entry, section ".printk_index", align 4
@m920x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Initialising remote control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m920x_init\00", [21 x i8] zeroinitializer }, align 32
@m920x_init._entry_ptr = internal global ptr @m920x_init._entry, section ".printk_index", align 4
@m920x_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.5, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Initialising remote control failed\0A\00", [60 x i8] zeroinitializer }, align 32
@m920x_init._entry_ptr.102 = internal global ptr @m920x_init._entry.100, section ".printk_index", align 4
@m920x_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.5, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Initialising remote control success\0A\00", [59 x i8] zeroinitializer }, align 32
@m920x_init._entry_ptr.105 = internal global ptr @m920x_init._entry.103, section ".printk_index", align 4
@m920x_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.5, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016m920x: Unexpected adapter endpoint!\0A\00", [57 x i8] zeroinitializer }, align 32
@m920x_init._entry_ptr.108 = internal global ptr @m920x_init._entry.106, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 128, i64 129, i64 130, i64 131, i64 136, i64 145, i64 146, i64 147, i64 153, i64 192, i64 216]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"dvb_usb_m920x_debug\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 23, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"m920x_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1259, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1270, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 27, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"m920x_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 900, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 830, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"megasky_rc_init\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 682, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"tvwalkertwin_rc_init\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 688, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"pinnacle310e_init\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 697, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"vp7049_rc_init\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 709, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 920, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"rc_map_megasky_table\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 719, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"m920x_i2c_algo\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 321, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 964, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"megasky_properties\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 916, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 416, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 420, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 442, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 451, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 461, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 40, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 45, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 563, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"m920x_mt352_config\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 519, i32 28 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 565, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 497, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 633, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"m920x_qt1010_config\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 550, i32 29 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 635, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 207, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 173, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 975, i32 14 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1012, i32 7 }
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"digivox_mini_ii_properties\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 971, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 607, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"m920x_tda10046_08_config\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 525, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 609, i32 24 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 643, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 645, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1031, i32 14 }
@___asan_gen_.341 = private unnamed_addr constant [26 x i8] c"rc_map_tvwalkertwin_table\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 738, i32 28 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1099, i32 15 }
@___asan_gen_.347 = private unnamed_addr constant [24 x i8] c"tvwalkertwin_properties\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1027, i32 41 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 620, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [25 x i8] c"m920x_tda10046_0b_config\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 537, i32 31 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 622, i32 24 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 653, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 655, i32 6 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1110, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1141, i32 16 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"dposh_properties\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1106, i32 41 }
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"rc_map_pinnacle310e_table\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 758, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1197, i32 7 }
@___asan_gen_.386 = private unnamed_addr constant [29 x i8] c"pinnacle_pctv310e_properties\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1148, i32 41 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 663, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1208, i32 14 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1213, i32 21 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1252, i32 7 }
@___asan_gen_.413 = private unnamed_addr constant [18 x i8] c"vp7049_properties\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1204, i32 41 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 594, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 598, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 671, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c"m920x_mt2060_config\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 554, i32 29 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 673, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 232, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 129, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 82, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 85, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 89, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.492 = private constant [37 x i8] c"../drivers/media/usb/dvb-usb/m920x.c\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 101, i32 5 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_m920x_driver_exit, ptr @__initcall__kmod_dvb_usb_m920x__392_1266_m920x_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @m920x_driver_exit, ptr @m920x_firmware_download._entry, ptr @m920x_firmware_download._entry.11, ptr @m920x_firmware_download._entry.14, ptr @m920x_firmware_download._entry.17, ptr @m920x_firmware_download._entry.20, ptr @m920x_firmware_download._entry_ptr, ptr @m920x_firmware_download._entry_ptr.13, ptr @m920x_firmware_download._entry_ptr.16, ptr @m920x_firmware_download._entry_ptr.19, ptr @m920x_firmware_download._entry_ptr.22, ptr @m920x_fmd1216me_tuner_attach._entry, ptr @m920x_fmd1216me_tuner_attach._entry_ptr, ptr @m920x_init._entry, ptr @m920x_init._entry.100, ptr @m920x_init._entry.103, ptr @m920x_init._entry.106, ptr @m920x_init._entry_ptr, ptr @m920x_init._entry_ptr.102, ptr @m920x_init._entry_ptr.105, ptr @m920x_init._entry_ptr.108, ptr @m920x_init_ep._entry, ptr @m920x_init_ep._entry_ptr, ptr @m920x_mt2060_tuner_attach._entry, ptr @m920x_mt2060_tuner_attach._entry.91, ptr @m920x_mt2060_tuner_attach._entry_ptr, ptr @m920x_mt2060_tuner_attach._entry_ptr.93, ptr @m920x_mt352_demod_init._entry, ptr @m920x_mt352_demod_init._entry_ptr, ptr @m920x_mt352_frontend_attach._entry, ptr @m920x_mt352_frontend_attach._entry.32, ptr @m920x_mt352_frontend_attach._entry_ptr, ptr @m920x_mt352_frontend_attach._entry_ptr.34, ptr @m920x_mt352_frontend_attach_vp7049._entry, ptr @m920x_mt352_frontend_attach_vp7049._entry.85, ptr @m920x_mt352_frontend_attach_vp7049._entry_ptr, ptr @m920x_mt352_frontend_attach_vp7049._entry_ptr.87, ptr @m920x_parse_rc_state._entry, ptr @m920x_parse_rc_state._entry_ptr, ptr @m920x_probe._entry, ptr @m920x_probe._entry_ptr, ptr @m920x_qt1010_tuner_attach._entry, ptr @m920x_qt1010_tuner_attach._entry.40, ptr @m920x_qt1010_tuner_attach._entry_ptr, ptr @m920x_qt1010_tuner_attach._entry_ptr.42, ptr @m920x_rc_core_query._entry, ptr @m920x_rc_core_query._entry_ptr, ptr @m920x_rc_query._entry, ptr @m920x_rc_query._entry_ptr, ptr @m920x_read._entry, ptr @m920x_read._entry.25, ptr @m920x_read._entry_ptr, ptr @m920x_read._entry_ptr.27, ptr @m920x_tda10046_08_frontend_attach._entry, ptr @m920x_tda10046_08_frontend_attach._entry.53, ptr @m920x_tda10046_08_frontend_attach._entry_ptr, ptr @m920x_tda10046_08_frontend_attach._entry_ptr.55, ptr @m920x_tda10046_0b_frontend_attach._entry, ptr @m920x_tda10046_0b_frontend_attach._entry.66, ptr @m920x_tda10046_0b_frontend_attach._entry_ptr, ptr @m920x_tda10046_0b_frontend_attach._entry_ptr.67, ptr @m920x_tda8275_60_tuner_attach._entry, ptr @m920x_tda8275_60_tuner_attach._entry.59, ptr @m920x_tda8275_60_tuner_attach._entry_ptr, ptr @m920x_tda8275_60_tuner_attach._entry_ptr.61, ptr @m920x_tda8275_61_tuner_attach._entry, ptr @m920x_tda8275_61_tuner_attach._entry.69, ptr @m920x_tda8275_61_tuner_attach._entry_ptr, ptr @m920x_tda8275_61_tuner_attach._entry_ptr.70, ptr @dvb_usb_m920x_debug, ptr @m920x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @m920x_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @megasky_rc_init, ptr @tvwalkertwin_rc_init, ptr @pinnacle310e_init, ptr @vp7049_rc_init, ptr @.str.6, ptr @rc_map_megasky_table, ptr @m920x_i2c_algo, ptr @.str.7, ptr @megasky_properties, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @m920x_mt352_config, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @m920x_qt1010_config, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @digivox_mini_ii_properties, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @m920x_tda10046_08_config, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @rc_map_tvwalkertwin_table, ptr @.str.63, ptr @tvwalkertwin_properties, ptr @.str.65, ptr @m920x_tda10046_0b_config, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @dposh_properties, ptr @rc_map_pinnacle310e_table, ptr @.str.74, ptr @pinnacle_pctv310e_properties, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @vp7049_properties, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @m920x_mt2060_config, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_m920x_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megasky_rc_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvwalkertwin_rc_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle310e_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7049_rc_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_megasky_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megasky_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_firmware_download._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_firmware_download._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_firmware_download._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_firmware_download._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_frontend_attach._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_demod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_qt1010_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_qt1010_tuner_attach._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_parse_rc_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digivox_mini_ii_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_08_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_08_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_08_frontend_attach._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda8275_60_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda8275_60_tuner_attach._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_tvwalkertwin_table to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvwalkertwin_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_0b_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_0b_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda10046_0b_frontend_attach._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda8275_61_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_tda8275_61_tuner_attach._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dposh_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_pinnacle310e_table to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_pctv310e_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_fmd1216me_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7049_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_frontend_attach_vp7049._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt352_frontend_attach_vp7049._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt2060_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_mt2060_tuner_attach._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_rc_core_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_init_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m920x_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @m920x_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m920x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @m920x_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %adap_enabled.i = alloca [4 x i32], align 4
  %d = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #10
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %d, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %1 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber1 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bInterfaceNumber1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bInterfaceNumber1, align 2
  %5 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then6, label %do.end4.found_crit_edge

do.end4.found_crit_edge:                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.then6:                                         ; preds = %do.end4
  %call7 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @megasky_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then6.found_crit_edge, label %if.end11

if.then6.found_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end11:                                         ; preds = %if.then6
  %call12 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @digivox_mini_ii_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end11.found_crit_edge, label %if.end16

if.end11.found_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @tvwalkertwin_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end16.found_crit_edge, label %if.end21

if.end16.found_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dposh_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end21.found_crit_edge, label %if.end26

if.end21.found_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @pinnacle_pctv310e_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end26.found_crit_edge, label %if.end31

if.end26.found_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @vp7049_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.end31.found_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.found_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

found:                                            ; preds = %if.end31.found_crit_edge, %if.end26.found_crit_edge, %if.end21.found_crit_edge, %if.end16.found_crit_edge, %if.end11.found_crit_edge, %if.then6.found_crit_edge, %do.end4.found_crit_edge
  %rc_init_seq.0 = phi ptr [ null, %if.end11.found_crit_edge ], [ null, %if.end21.found_crit_edge ], [ null, %do.end4.found_crit_edge ], [ @megasky_rc_init, %if.then6.found_crit_edge ], [ @tvwalkertwin_rc_init, %if.end16.found_crit_edge ], [ @pinnacle310e_init, %if.end26.found_crit_edge ], [ @vp7049_rc_init, %if.end31.found_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %call1.i = call ptr @usb_altnum_to_altsetting(ptr noundef %intf, i32 noundef 1) #10
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %do.body.i, label %m920x_init_ep.exit

do.body.i:                                        ; preds = %found
  %8 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  br label %cleanup

m920x_init_ep.exit:                               ; preds = %found
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -128
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call1.i, i32 0, i32 2
  %9 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %10 to i32
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call1.i, i32 0, i32 3
  %11 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bAlternateSetting.i, align 1
  %conv9.i = zext i8 %12 to i32
  %call10.i = call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, i32 noundef %conv9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp39 = icmp slt i32 %call10.i, 0
  br i1 %cmp39, label %m920x_init_ep.exit.cleanup_crit_edge, label %if.end42

m920x_init_ep.exit.cleanup_crit_edge:             ; preds = %m920x_init_ep.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %m920x_init_ep.exit
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 4
  %tobool43.not = icmp eq ptr %14, null
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %land.lhs.true

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adap_enabled.i) #10
  %15 = call ptr @memset(ptr %adap_enabled.i, i32 0, i32 16)
  %rc_query.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %14, i32 0, i32 13, i32 1, i32 2
  %16 = ptrtoint ptr %rc_query.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_query.i, align 4
  %tobool.not.i69 = icmp eq ptr %17, null
  br i1 %tobool.not.i69, label %lor.lhs.false.i, label %land.lhs.true.do.body.i71_crit_edge

land.lhs.true.do.body.i71_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i71

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %rc_query3.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %14, i32 0, i32 13, i32 2, i32 6
  %18 = ptrtoint ptr %rc_query3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc_query3.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end37.i_crit_edge, label %lor.lhs.false.i.do.body.i71_crit_edge

lor.lhs.false.i.do.body.i71_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i71

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

do.body.i71:                                      ; preds = %lor.lhs.false.i.do.body.i71_crit_edge, %land.lhs.true.do.body.i71_crit_edge
  %20 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i70 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool5.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool5.not.i, label %do.body.i71.do.end9.i_crit_edge, label %do.end.i72

do.body.i71.do.end9.i_crit_edge:                  ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i72:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i72, %do.body.i71.do.end9.i_crit_edge
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.end9.i
  %seq.addr.0.i.i = phi ptr [ %rc_init_seq.0, %do.end9.i ], [ %incdec.ptr.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.m920x_inits, ptr %seq.addr.0.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i.i, align 2
  %conv.i.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %seq.addr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %seq.addr.0.i.i, align 2
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 8
  %shl.i.i.i.i = shl i32 %28, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call1.i.i.i = call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i.i, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %26, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.body12.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.m920x_inits, ptr %seq.addr.0.i.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %incdec.ptr.i.i, align 2
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %do.body25.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body12.i:                                      ; preds = %do.body.i.i
  %31 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and13.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.m920x_init.exit.thread_crit_edge, label %do.body12.i.cleanup.sink.split.i_crit_edge

do.body12.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body12.i.m920x_init.exit.thread_crit_edge:     ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit.thread

do.body25.i:                                      ; preds = %if.end.i.i
  %32 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and26.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.if.end37.i_crit_edge, label %do.end31.i

do.body25.i.if.end37.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #13
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end31.i, %do.body25.i.if.end37.i_crit_edge, %lor.lhs.false.i.if.end37.i_crit_edge
  %num_adapters.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %14, i32 0, i32 8
  %33 = ptrtoint ptr %num_adapters.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_adapters.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp39140.i = icmp sgt i32 %34, 0
  br i1 %cmp39140.i, label %if.end37.i.for.body.i_crit_edge, label %if.end37.i.m920x_init.exit_crit_edge

if.end37.i.m920x_init.exit_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end37.i.for.body.i_crit_edge
  %i.0142.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end37.i.for.body.i_crit_edge ]
  %flags.0141.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end37.i.for.body.i_crit_edge ]
  %fe.i = getelementptr %struct.dvb_usb_device, ptr %14, i32 0, i32 10, i32 %i.0142.i, i32 1, i32 3
  %35 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fe.i, align 4
  %or.i = or i32 %36, %flags.0141.i
  %inc.i = add nuw nsw i32 %i.0142.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %phi.bo.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i = icmp eq i32 %phi.bo.i, 0
  br i1 %phi.cmp.i, label %for.end.i.m920x_init.exit_crit_edge, label %for.end.i.for.body49.i_crit_edge

for.end.i.for.body49.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body49.i

for.end.i.m920x_init.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit

for.cond69.preheader.i:                           ; preds = %if.end64.i
  %udev.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 2
  br label %for.body71.i

for.body49.i:                                     ; preds = %if.end64.i.for.body49.i_crit_edge, %for.end.i.for.body49.i_crit_edge
  %i.1145.i = phi i32 [ %inc67.i, %if.end64.i.for.body49.i_crit_edge ], [ 0, %for.end.i.for.body49.i_crit_edge ]
  %endpoint.i = getelementptr %struct.dvb_usb_device, ptr %14, i32 0, i32 10, i32 %i.1145.i, i32 1, i32 3, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %endpoint.i, align 4
  %sub.i = add i32 %38, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %39 = icmp ugt i32 %sub.i, 3
  br i1 %39, label %for.body49.i.cleanup.sink.split.i_crit_edge, label %if.end64.i

for.body49.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end64.i:                                       ; preds = %for.body49.i
  %arrayidx65.i = getelementptr [4 x i32], ptr %adap_enabled.i, i32 0, i32 %sub.i
  %40 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx65.i, align 4
  %inc67.i = add nuw nsw i32 %i.1145.i, 1
  %exitcond149.not.i = icmp eq i32 %inc67.i, %34
  br i1 %exitcond149.not.i, label %for.cond69.preheader.i, label %if.end64.i.for.body49.i_crit_edge

if.end64.i.for.body49.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49.i

for.body71.i:                                     ; preds = %for.inc85.i.for.body71.i_crit_edge, %for.cond69.preheader.i
  %i.2146.i = phi i32 [ 0, %for.cond69.preheader.i ], [ %inc86.i, %for.inc85.i.for.body71.i_crit_edge ]
  %arrayidx72.i = getelementptr [4 x i32], ptr %adap_enabled.i, i32 0, i32 %i.2146.i
  %41 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool73.not.i = icmp eq i32 %42, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %for.body71.i.for.inc85.i_crit_edge

for.body71.i.for.inc85.i_crit_edge:               ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

if.end75.i:                                       ; preds = %for.body71.i
  %43 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev.i.i, align 4
  %i.2.tr.i = trunc i32 %i.2146.i to i16
  %45 = shl i16 %i.2.tr.i, 8
  %conv2.i.i = add i16 %45, -32512
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %44, align 8
  %shl.i.i.i117.i = shl i32 %47, 8
  %or.i.i118.i = or i32 %shl.i.i.i117.i, -2147483648
  %call1.i.i119.i = call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i.i118.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext -32768, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i119.i)
  %cmp3.not.i.i = icmp eq i32 %call1.i.i119.i, 0
  br i1 %cmp3.not.i.i, label %m920x_set_filter.exit.i, label %if.end75.i.m920x_init.exit.thread_crit_edge

if.end75.i.m920x_init.exit.thread_crit_edge:      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit.thread

m920x_set_filter.exit.i:                          ; preds = %if.end75.i
  %48 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i24.i.i = shl i32 %51, 8
  %or.i25.i.i = or i32 %shl.i.i24.i.i, -2147483648
  %call1.i26.i.i = call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i25.i.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i.i)
  %cmp77.not.i = icmp eq i32 %call1.i26.i.i, 0
  br i1 %cmp77.not.i, label %if.end79.i, label %m920x_set_filter.exit.i.m920x_init.exit.thread_crit_edge

m920x_set_filter.exit.i.m920x_init.exit.thread_crit_edge: ; preds = %m920x_set_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit.thread

if.end79.i:                                       ; preds = %m920x_set_filter.exit.i
  %52 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i124.i = shl i32 %55, 8
  %or.i.i125.i = or i32 %shl.i.i.i124.i, -2147483648
  %call1.i.i126.i = call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i125.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext -32011, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i126.i)
  %cmp3.not.i127.i = icmp eq i32 %call1.i.i126.i, 0
  br i1 %cmp3.not.i127.i, label %m920x_set_filter.exit134.i, label %if.end79.i.m920x_init.exit.thread_crit_edge

if.end79.i.m920x_init.exit.thread_crit_edge:      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit.thread

m920x_set_filter.exit134.i:                       ; preds = %if.end79.i
  %56 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i24.i129.i = shl i32 %59, 8
  %or.i25.i130.i = or i32 %shl.i.i24.i129.i, -2147483648
  %call1.i26.i131.i = call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i25.i130.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i131.i)
  %cmp82.not.i = icmp eq i32 %call1.i26.i131.i, 0
  br i1 %cmp82.not.i, label %m920x_set_filter.exit134.i.for.inc85.i_crit_edge, label %m920x_set_filter.exit134.i.m920x_init.exit.thread_crit_edge

m920x_set_filter.exit134.i.m920x_init.exit.thread_crit_edge: ; preds = %m920x_set_filter.exit134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit.thread

m920x_set_filter.exit134.i.for.inc85.i_crit_edge: ; preds = %m920x_set_filter.exit134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i

for.inc85.i:                                      ; preds = %m920x_set_filter.exit134.i.for.inc85.i_crit_edge, %for.body71.i.for.inc85.i_crit_edge
  %inc86.i = add nuw nsw i32 %i.2146.i, 1
  %exitcond150.not.i = icmp eq i32 %inc86.i, 4
  br i1 %exitcond150.not.i, label %for.inc85.i.m920x_init.exit_crit_edge, label %for.inc85.i.for.body71.i_crit_edge

for.inc85.i.for.body71.i_crit_edge:               ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71.i

for.inc85.i.m920x_init.exit_crit_edge:            ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m920x_init.exit

cleanup.sink.split.i:                             ; preds = %for.body49.i.cleanup.sink.split.i_crit_edge, %do.body12.i.cleanup.sink.split.i_crit_edge
  %.str.101.sink.i = phi ptr [ @.str.101, %do.body12.i.cleanup.sink.split.i_crit_edge ], [ @.str.107, %for.body49.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i.i.i, %do.body12.i.cleanup.sink.split.i_crit_edge ], [ -22, %for.body49.i.cleanup.sink.split.i_crit_edge ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.101.sink.i) #13
  br label %m920x_init.exit.thread

m920x_init.exit.thread:                           ; preds = %cleanup.sink.split.i, %m920x_set_filter.exit134.i.m920x_init.exit.thread_crit_edge, %if.end79.i.m920x_init.exit.thread_crit_edge, %m920x_set_filter.exit.i.m920x_init.exit.thread_crit_edge, %if.end75.i.m920x_init.exit.thread_crit_edge, %do.body12.i.m920x_init.exit.thread_crit_edge
  %retval.0.i73.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call1.i.i.i, %do.body12.i.m920x_init.exit.thread_crit_edge ], [ %call1.i.i126.i, %if.end79.i.m920x_init.exit.thread_crit_edge ], [ %call1.i.i119.i, %if.end75.i.m920x_init.exit.thread_crit_edge ], [ %call1.i26.i131.i, %m920x_set_filter.exit134.i.m920x_init.exit.thread_crit_edge ], [ %call1.i26.i.i, %m920x_set_filter.exit.i.m920x_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adap_enabled.i) #10
  br label %cleanup

m920x_init.exit:                                  ; preds = %for.inc85.i.m920x_init.exit_crit_edge, %for.end.i.m920x_init.exit_crit_edge, %if.end37.i.m920x_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adap_enabled.i) #10
  br label %cleanup

cleanup:                                          ; preds = %m920x_init.exit, %m920x_init.exit.thread, %if.end42.cleanup_crit_edge, %m920x_init_ep.exit.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end31.cleanup_crit_edge ], [ %call10.i, %m920x_init_ep.exit.cleanup_crit_edge ], [ %retval.0.i73.ph, %m920x_init.exit.thread ], [ 0, %m920x_init.exit ], [ %call10.i, %if.end42.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_firmware_download(ptr noundef %udev, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #14
  %cmp = icmp eq ptr %call1.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %udev, align 8
  %shl.i.i = shl i32 %2, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1.i, i8 noundef zeroext 37, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i) #13
  br label %done

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 4
  %3 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %cmp5.not.i, label %do.body, label %do.body8.i

do.body8.i:                                       ; preds = %if.end.i
  br i1 %tobool8.not, label %do.body8.i.done_crit_edge, label %do.end12.i

do.body8.i.done_crit_edge:                        ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %done

do.body:                                          ; preds = %if.end.i
  br i1 %tobool8.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef nonnull %call7.i) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %udev, align 8
  %shl.i.i147 = shl i32 %5, 8
  %or1.i148 = or i32 %shl.i.i147, -2147483520
  %call2.i149 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1.i148, i8 noundef zeroext 48, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i149)
  %cmp.i150 = icmp slt i32 %call2.i149, 0
  br i1 %cmp.i150, label %do.end.i152, label %if.end.i154

do.end.i152:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i149) #13
  br label %done

if.end.i154:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i149)
  %cmp5.not.i153 = icmp eq i32 %call2.i149, 1
  %6 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and20 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %cmp5.not.i153, label %do.body19, label %do.body8.i157

do.body8.i157:                                    ; preds = %if.end.i154
  br i1 %tobool21.not, label %do.body8.i157.done_crit_edge, label %do.end12.i159

do.body8.i157.done_crit_edge:                     ; preds = %do.body8.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.end12.i159:                                    ; preds = %do.body8.i157
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %done

do.body19:                                        ; preds = %if.end.i154
  br i1 %tobool21.not, label %do.body19.do.end30_crit_edge, label %do.end25

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %8 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body19.do.end30_crit_edge
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp35172 = icmp ugt i32 %10, 6
  br i1 %cmp35172, label %for.body37.lr.ph, label %do.end30.for.end_crit_edge

do.end30.for.end_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.end
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp35172.1 = icmp ugt i32 %12, 6
  br i1 %cmp35172.1, label %for.cond.if.then50.1_crit_edge, label %for.cond.for.end.1_crit_edge

for.cond.for.end.1_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.1

for.cond.if.then50.1_crit_edge:                   ; preds = %for.cond
  br label %if.then50.1

if.then50.1:                                      ; preds = %if.end73.1.if.then50.1_crit_edge, %for.cond.if.then50.1_crit_edge
  %add175.1 = phi i32 [ %add.1, %if.end73.1.if.then50.1_crit_edge ], [ 6, %for.cond.if.then50.1_crit_edge ]
  %i.0173.1 = phi i32 [ %add75.1, %if.end73.1.if.then50.1_crit_edge ], [ 0, %for.cond.if.then50.1_crit_edge ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add43.1 = add i32 %i.0173.1, 4
  %add.ptr45.1 = getelementptr i8, ptr %14, i32 %add43.1
  %15 = ptrtoint ptr %add.ptr45.1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr45.1, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  %add39.1 = add i32 %i.0173.1, 2
  %add.ptr41.1 = getelementptr i8, ptr %14, i32 %add39.1
  %18 = ptrtoint ptr %add.ptr41.1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr41.1, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  %add.ptr.1 = getelementptr i8, ptr %14, i32 %i.0173.1
  %21 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr.1, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  %add.ptr52.1 = getelementptr i8, ptr %14, i32 %add175.1
  %conv53.1 = zext i16 %17 to i32
  %24 = call ptr @memcpy(ptr %call1.i.i, ptr %add.ptr52.1, i32 %conv53.1)
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %udev, align 8
  %shl.i.1 = shl i32 %26, 8
  %or.1 = or i32 %shl.i.1, -2147483648
  %call55.1 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.1, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext %23, i16 noundef zeroext %20, ptr noundef nonnull %call1.i.i, i16 noundef zeroext %17, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call55.1, i32 %conv53.1)
  %cmp57.not.1 = icmp eq i32 %call55.1, %conv53.1
  br i1 %cmp57.not.1, label %if.end73.1, label %do.body60

if.end73.1:                                       ; preds = %if.then50.1
  tail call void @msleep(i32 noundef 3) #10
  %add75.1 = add i32 %add175.1, %conv53.1
  %add.1 = add i32 %add75.1, 6
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw, align 4
  %cmp35.1 = icmp ult i32 %add.1, %28
  br i1 %cmp35.1, label %if.end73.1.if.then50.1_crit_edge, label %if.end73.1.for.end.1_crit_edge

if.end73.1.for.end.1_crit_edge:                   ; preds = %if.end73.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.1

if.end73.1.if.then50.1_crit_edge:                 ; preds = %if.end73.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50.1

for.end.1:                                        ; preds = %if.end73.1.for.end.1_crit_edge, %for.cond.for.end.1_crit_edge
  %i.0.lcssa.1 = phi i32 [ 0, %for.cond.for.end.1_crit_edge ], [ %add75.1, %if.end73.1.for.end.1_crit_edge ]
  %ret.1.lcssa.1 = phi i32 [ 0, %for.cond.for.end.1_crit_edge ], [ %conv53.1, %if.end73.1.for.end.1_crit_edge ]
  %.lcssa.1 = phi i32 [ %12, %for.cond.for.end.1_crit_edge ], [ %28, %if.end73.1.for.end.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.1, i32 %.lcssa.1)
  %cmp77.not.1 = icmp eq i32 %i.0.lcssa.1, %.lcssa.1
  br i1 %cmp77.not.1, label %for.cond.1, label %for.end.1.do.body80_crit_edge

for.end.1.do.body80_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

for.cond.1:                                       ; preds = %for.end.1
  tail call void @msleep(i32 noundef 36) #10
  %29 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udev, align 8
  %shl.i.i162 = shl i32 %30, 8
  %or.i = or i32 %shl.i.i162, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -151, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  %31 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and96 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %for.cond.1.done_crit_edge, label %do.end101

for.cond.1.done_crit_edge:                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.body37.lr.ph:                                 ; preds = %do.end30
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw, align 4
  br label %if.end73

do.body60:                                        ; preds = %if.then50.1
  %36 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and61 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.done_crit_edge, label %do.end66

do.body60.done_crit_edge:                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %done

if.end73:                                         ; preds = %if.end73.if.end73_crit_edge, %for.body37.lr.ph
  %add175 = phi i32 [ 6, %for.body37.lr.ph ], [ %add, %if.end73.if.end73_crit_edge ]
  %i.0173 = phi i32 [ 0, %for.body37.lr.ph ], [ %add75, %if.end73.if.end73_crit_edge ]
  %add43 = add i32 %i.0173, 4
  %add.ptr45 = getelementptr i8, ptr %33, i32 %add43
  %37 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr45, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #10
  %.pre185 = zext i16 %39 to i32
  %add75 = add i32 %add175, %.pre185
  %add = add i32 %add75, 6
  %cmp35 = icmp ult i32 %add, %35
  br i1 %cmp35, label %if.end73.if.end73_crit_edge, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end73.if.end73_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

for.end:                                          ; preds = %if.end73.for.end_crit_edge, %do.end30.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end30.for.end_crit_edge ], [ %add75, %if.end73.for.end_crit_edge ]
  %.lcssa = phi i32 [ %10, %do.end30.for.end_crit_edge ], [ %35, %if.end73.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %.lcssa)
  %cmp77.not = icmp eq i32 %i.0.lcssa, %.lcssa
  br i1 %cmp77.not, label %for.cond, label %for.end.do.body80_crit_edge

for.end.do.body80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.body80:                                        ; preds = %for.end.do.body80_crit_edge, %for.end.1.do.body80_crit_edge
  %40 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and81 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.done_crit_edge, label %do.end86

do.body80.done_crit_edge:                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.end86:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %done

do.end101:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %done

done:                                             ; preds = %do.end101, %do.end86, %do.body80.done_crit_edge, %do.end66, %do.body60.done_crit_edge, %for.cond.1.done_crit_edge, %do.end12.i159, %do.body8.i157.done_crit_edge, %do.end.i152, %do.end12.i, %do.body8.i.done_crit_edge, %do.end.i
  %ret.3 = phi i32 [ %ret.1.lcssa.1, %do.end101 ], [ %ret.1.lcssa.1, %for.cond.1.done_crit_edge ], [ -5, %do.end66 ], [ -5, %do.body60.done_crit_edge ], [ -22, %do.end86 ], [ -22, %do.body80.done_crit_edge ], [ -5, %do.body8.i.done_crit_edge ], [ -5, %do.end12.i ], [ %call2.i, %do.end.i ], [ -5, %do.body8.i157.done_crit_edge ], [ -5, %do.end12.i159 ], [ %call2.i149, %do.end.i152 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %done, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.3, %done ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_pid_filter_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp ne i32 %onoff, 0
  %cond = zext i1 %tobool.not to i32
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.m920x_state, ptr %3, i32 0, i32 1, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @m920x_update_filters(ptr noundef %adap)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 %pid
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx2 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 %index
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %arrayidx2, align 2
  %call = tail call fastcc i32 @m920x_update_filters(ptr noundef %adap)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_mt352_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.31) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond30 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 8
  %call9 = tail call ptr %cond30(ptr noundef nonnull @m920x_mt352_config, ptr noundef %i2c_adap) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.30) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp21 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp21, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_qt1010_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.38) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.39) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.38) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond26 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %1 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fe_adap, align 8
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call9 = tail call ptr %cond26(ptr noundef %2, ptr noundef %i2c_adap, ptr noundef nonnull @m920x_qt1010_config) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.38) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %cmp18 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp18, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_identify_state(ptr noundef %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %udev, i32 noundef 0) #10
  %call1 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call, i32 noundef 1) #10
  %cmp = icmp eq ptr %call1, null
  %cond = zext i1 %cmp to i32
  %0 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %cold, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_rc_query(ptr nocapture noundef readonly %d, ptr nocapture noundef writeonly %event, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or1.i, i8 noundef zeroext 34, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -175, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i) #13
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp5.not.i, label %if.end3, label %do.body8.i

do.body8.i:                                       ; preds = %if.end.i
  %5 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body8.i.out_crit_edge, label %do.end12.i

do.body8.i.out_crit_edge:                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %out

if.end3:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %add.ptr = getelementptr i8, ptr %call7.i, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i61 = shl i32 %9, 8
  %or1.i62 = or i32 %shl.i.i61, -2147483520
  %call2.i63 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or1.i62, i8 noundef zeroext 34, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -174, ptr noundef %add.ptr, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %cmp.i64 = icmp slt i32 %call2.i63, 0
  br i1 %cmp.i64, label %do.end.i66, label %if.end.i68

do.end.i66:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i63) #13
  br label %out

if.end.i68:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i63)
  %cmp5.not.i67 = icmp eq i32 %call2.i63, 1
  br i1 %cmp5.not.i67, label %if.end8, label %do.body8.i71

do.body8.i71:                                     ; preds = %if.end.i68
  %10 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i69 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %do.body8.i71.out_crit_edge, label %do.end12.i73

do.body8.i71.out_crit_edge:                       ; preds = %do.body8.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12.i73:                                     ; preds = %do.body8.i71
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %out

if.end8:                                          ; preds = %if.end.i68
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i, align 8
  tail call fastcc void @m920x_parse_rc_state(ptr noundef %d, i8 noundef zeroext %12, ptr noundef %state)
  %rc_map_size = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 1
  %13 = ptrtoint ptr %rc_map_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rc_map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp981 = icmp sgt i32 %14, 0
  br i1 %cmp981, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %legacy, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.rc_map_table, ptr %16, i32 %i.082
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx13, align 8
  %conv.i = trunc i64 %20 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %conv.i)
  %cmp17 = icmp eq i8 %18, %conv.i
  br i1 %cmp17, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %keycode = getelementptr %struct.rc_map_table, ptr %16, i32 %i.082, i32 1
  %21 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keycode, align 8
  %23 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %event, align 4
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr, align 1
  %conv27 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp28.not = icmp eq i8 %25, 0
  br i1 %cmp28.not, label %for.end.if.end40_crit_edge, label %do.body

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.body:                                          ; preds = %for.end
  %26 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body.if.end40_crit_edge, label %do.end

do.body.if.end40_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv27) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end, %do.body.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end40, %if.then19, %do.end12.i73, %do.body8.i71.out_crit_edge, %do.end.i66, %do.end12.i, %do.body8.i.out_crit_edge, %do.end.i
  %ret.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end40 ], [ -5, %do.body8.i.out_crit_edge ], [ -5, %do.end12.i ], [ %call2.i, %do.end.i ], [ -5, %do.body8.i71.out_crit_edge ], [ -5, %do.end12.i73 ], [ %call2.i63, %do.end.i66 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m920x_update_filters(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.m920x_state, ptr %3, i32 0, i32 1, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %endpoint = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 3, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %endpoint, align 4
  %arrayidx5 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %11)
  %cmp6 = icmp eq i16 %11, 8192
  %arrayidx5.1 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %13)
  %cmp6.1 = icmp eq i16 %13, 8192
  %arrayidx5.2 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 2
  %14 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %15)
  %cmp6.2 = icmp eq i16 %15, 8192
  %arrayidx5.3 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 3
  %16 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %17)
  %cmp6.3 = icmp eq i16 %17, 8192
  %arrayidx5.4 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 4
  %18 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %19)
  %cmp6.4 = icmp eq i16 %19, 8192
  %arrayidx5.5 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 5
  %20 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx5.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %21)
  %cmp6.5 = icmp eq i16 %21, 8192
  %arrayidx5.6 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 6
  %22 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx5.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %23)
  %cmp6.6 = icmp eq i16 %23, 8192
  %arrayidx5.7 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom, i32 7
  %24 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx5.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %25)
  %cmp6.7 = icmp eq i16 %25, 8192
  %26 = select i1 %cmp6.7, i1 true, i1 %cmp6.6
  %27 = select i1 %26, i1 true, i1 %cmp6.5
  %28 = select i1 %27, i1 true, i1 %cmp6.4
  %29 = select i1 %28, i1 true, i1 %cmp6.3
  %30 = select i1 %29, i1 true, i1 %cmp6.2
  %31 = select i1 %30, i1 true, i1 %cmp6.1
  %32 = select i1 %31, i1 true, i1 %cmp6
  %spec.select.7 = select i1 %32, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %spec.select.7)
  %cmp.i = icmp sgt i32 %spec.select.7, 32767
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev.i, align 4
  %35 = trunc i32 %spec.select.7 to i16
  %conv.i = or i16 %35, -32768
  %.tr = trunc i32 %9 to i16
  %36 = shl i16 %.tr, 8
  %conv2.i = or i16 %36, 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i.i.i = shl i32 %38, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp3.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp3.not.i, label %m920x_set_filter.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

m920x_set_filter.exit:                            ; preds = %if.end.i
  %39 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i24.i = shl i32 %42, 8
  %or.i25.i = or i32 %shl.i.i24.i, -2147483648
  %call1.i26.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i25.i, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %cmp9.not = icmp eq i32 %call1.i26.i, 0
  br i1 %cmp9.not, label %for.cond13.preheader, label %m920x_set_filter.exit.cleanup_crit_edge

m920x_set_filter.exit.cleanup_crit_edge:          ; preds = %m920x_set_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond13.preheader:                             ; preds = %m920x_set_filter.exit
  %shl.i92 = shl i32 %9, 8
  br label %for.body16

for.cond13:                                       ; preds = %m920x_set_filter.exit105
  %inc24 = add nuw nsw i32 %i.1134, 1
  %exitcond.not = icmp eq i32 %inc24, 8
  br i1 %exitcond.not, label %for.end25, label %for.cond13.for.body16_crit_edge

for.cond13.for.body16_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.body16:                                       ; preds = %for.cond13.for.body16_crit_edge, %for.cond13.preheader
  %i.1134 = phi i32 [ 0, %for.cond13.preheader ], [ %inc24, %for.cond13.for.body16_crit_edge ]
  %43 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap, align 8
  %udev.i91 = getelementptr inbounds %struct.dvb_usb_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %udev.i91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev.i91, align 4
  %add = shl i32 %i.1134, 2
  %mul.i = add nuw nsw i32 %add, 8
  %or1.i93 = or i32 %mul.i, %shl.i92
  %conv2.i94 = trunc i32 %or1.i93 to i16
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i.i95 = shl i32 %48, 8
  %or.i.i96 = or i32 %shl.i.i.i95, -2147483648
  %call1.i.i97 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i.i96, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext -32768, i16 noundef zeroext %conv2.i94, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i97)
  %cmp3.not.i98 = icmp eq i32 %call1.i.i97, 0
  br i1 %cmp3.not.i98, label %m920x_set_filter.exit105, label %for.body16.cleanup_crit_edge

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

m920x_set_filter.exit105:                         ; preds = %for.body16
  %49 = ptrtoint ptr %udev.i91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev.i91, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i24.i100 = shl i32 %52, 8
  %or.i25.i101 = or i32 %shl.i.i24.i100, -2147483648
  %call1.i26.i102 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i25.i101, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i94, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i102)
  %cmp19.not = icmp eq i32 %call1.i26.i102, 0
  br i1 %cmp19.not, label %for.cond13, label %m920x_set_filter.exit105.cleanup_crit_edge

m920x_set_filter.exit105.cleanup_crit_edge:       ; preds = %m920x_set_filter.exit105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end25:                                        ; preds = %for.cond13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.7)
  %tobool.not = icmp eq i32 %spec.select.7, 0
  br i1 %tobool.not, label %for.end25.cleanup_crit_edge, label %for.end25.for.body30_crit_edge

for.end25.for.body30_crit_edge:                   ; preds = %for.end25
  br label %for.body30

for.end25.cleanup_crit_edge:                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body30:                                       ; preds = %for.inc55.for.body30_crit_edge, %for.end25.for.body30_crit_edge
  %filter.0136 = phi i32 [ %filter.1, %for.inc55.for.body30_crit_edge ], [ 0, %for.end25.for.body30_crit_edge ]
  %i.2135 = phi i32 [ %inc56, %for.inc55.for.body30_crit_edge ], [ 0, %for.end25.for.body30_crit_edge ]
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %id, align 4
  %idxprom33 = zext i8 %54 to i32
  %arrayidx35 = getelementptr [4 x [8 x i16]], ptr %3, i32 0, i32 %idxprom33, i32 %i.2135
  %55 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp37 = icmp eq i16 %56, 0
  br i1 %cmp37, label %for.body30.for.inc55_crit_edge, label %if.end40

for.body30.for.inc55_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

if.end40:                                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.i106 = icmp slt i16 %56, 0
  br i1 %cmp.i106, label %if.end40.cleanup_crit_edge, label %if.end.i117

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i117:                                      ; preds = %if.end40
  %57 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adap, align 8
  %udev.i107 = getelementptr inbounds %struct.dvb_usb_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %udev.i107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev.i107, align 4
  %conv.i108 = or i16 %56, -32768
  %add42 = shl i32 %filter.0136, 2
  %mul.i110 = add i32 %add42, 8
  %or1.i111 = or i32 %mul.i110, %shl.i92
  %conv2.i112 = trunc i32 %or1.i111 to i16
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i.i113 = shl i32 %62, 8
  %or.i.i114 = or i32 %shl.i.i.i113, -2147483648
  %call1.i.i115 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i.i114, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext %conv.i108, i16 noundef zeroext %conv2.i112, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i115)
  %cmp3.not.i116 = icmp eq i32 %call1.i.i115, 0
  br i1 %cmp3.not.i116, label %m920x_set_filter.exit123, label %if.end.i117.cleanup_crit_edge

if.end.i117.cleanup_crit_edge:                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

m920x_set_filter.exit123:                         ; preds = %if.end.i117
  %63 = ptrtoint ptr %udev.i107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev.i107, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i24.i118 = shl i32 %66, 8
  %or.i25.i119 = or i32 %shl.i.i24.i118, -2147483648
  %call1.i26.i120 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i25.i119, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i112, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i120)
  %cmp50.not = icmp eq i32 %call1.i26.i120, 0
  br i1 %cmp50.not, label %if.end53, label %m920x_set_filter.exit123.cleanup_crit_edge

m920x_set_filter.exit123.cleanup_crit_edge:       ; preds = %m920x_set_filter.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %m920x_set_filter.exit123
  call void @__sanitizer_cov_trace_pc() #12
  %inc54 = add i32 %filter.0136, 1
  br label %for.inc55

for.inc55:                                        ; preds = %if.end53, %for.body30.for.inc55_crit_edge
  %filter.1 = phi i32 [ %filter.0136, %for.body30.for.inc55_crit_edge ], [ %inc54, %if.end53 ]
  %inc56 = add nuw nsw i32 %i.2135, 1
  %exitcond139.not = icmp eq i32 %inc56, 8
  br i1 %exitcond139.not, label %for.inc55.cleanup_crit_edge, label %for.inc55.for.body30_crit_edge

for.inc55.for.body30_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.inc55.cleanup_crit_edge:                      ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc55.cleanup_crit_edge, %m920x_set_filter.exit123.cleanup_crit_edge, %if.end.i117.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.end25.cleanup_crit_edge, %m920x_set_filter.exit105.cleanup_crit_edge, %for.body16.cleanup_crit_edge, %m920x_set_filter.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i26.i, %m920x_set_filter.exit.cleanup_crit_edge ], [ 0, %for.end25.cleanup_crit_edge ], [ %call1.i.i, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ %call1.i.i115, %if.end.i117.cleanup_crit_edge ], [ 0, %for.inc55.cleanup_crit_edge ], [ %call1.i26.i120, %m920x_set_filter.exit123.cleanup_crit_edge ], [ %call1.i.i97, %for.body16.cleanup_crit_edge ], [ %call1.i26.i102, %m920x_set_filter.exit105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_mt352_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  %config = alloca [2 x i8], align 2
  %clock = alloca [2 x i8], align 2
  %reset = alloca [2 x i8], align 2
  %adc_ctl = alloca [2 x i8], align 2
  %agc = alloca [3 x i8], align 1
  %sec_agc = alloca [9 x i8], align 1
  %unk1 = alloca [2 x i8], align 2
  %unk2 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config) #10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -30147, ptr %config, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clock) #10
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -30416, ptr %clock, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reset) #10
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 20608, ptr %reset, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_ctl) #10
  %3 = ptrtoint ptr %adc_ctl to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -29120, ptr %adc_ctl, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %agc) #10
  %4 = call ptr @memcpy(ptr %agc, ptr @__const.m920x_mt352_demod_init.agc, i32 3)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %sec_agc) #10
  %5 = call ptr @memcpy(ptr %sec_agc, ptr @__const.m920x_mt352_demod_init.sec_agc, i32 9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %unk1) #10
  %6 = ptrtoint ptr %unk1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -27878, ptr %unk1, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %unk2) #10
  %7 = ptrtoint ptr %unk2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -19078, ptr %unk2, align 2
  %8 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end3.cleanup_crit_edge, label %mt352_write.exit

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit:                                 ; preds = %do.end3
  %call.i = call i32 %10(ptr noundef %fe, ptr noundef nonnull %config, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end6, label %mt352_write.exit.cleanup_crit_edge

mt352_write.exit.cleanup_crit_edge:               ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %mt352_write.exit
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i65 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i65, label %if.end6.cleanup_crit_edge, label %mt352_write.exit69

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit69:                               ; preds = %if.end6
  %call.i66 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %clock, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp9.not = icmp eq i32 %call.i66, 0
  br i1 %cmp9.not, label %if.end11, label %mt352_write.exit69.cleanup_crit_edge

mt352_write.exit69.cleanup_crit_edge:             ; preds = %mt352_write.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %mt352_write.exit69
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr127 = load ptr, ptr %write.i, align 4
  %tobool.not.i71 = icmp eq ptr %.pr127, null
  br i1 %tobool.not.i71, label %if.end11.cleanup_crit_edge, label %mt352_write.exit75

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit75:                               ; preds = %if.end11
  %call.i72 = call i32 %.pr127(ptr noundef %fe, ptr noundef nonnull %reset, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp14.not = icmp eq i32 %call.i72, 0
  br i1 %cmp14.not, label %if.end16, label %mt352_write.exit75.cleanup_crit_edge

mt352_write.exit75.cleanup_crit_edge:             ; preds = %mt352_write.exit75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %mt352_write.exit75
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr113 = load ptr, ptr %write.i, align 4
  %tobool.not.i77 = icmp eq ptr %.pr113, null
  br i1 %tobool.not.i77, label %if.end16.cleanup_crit_edge, label %mt352_write.exit81

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit81:                               ; preds = %if.end16
  %call.i78 = call i32 %.pr113(ptr noundef %fe, ptr noundef nonnull %adc_ctl, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp19.not = icmp eq i32 %call.i78, 0
  br i1 %cmp19.not, label %if.end21, label %mt352_write.exit81.cleanup_crit_edge

mt352_write.exit81.cleanup_crit_edge:             ; preds = %mt352_write.exit81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %mt352_write.exit81
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr129.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i83 = icmp eq ptr %.pr129.pr, null
  br i1 %tobool.not.i83, label %if.end21.cleanup_crit_edge, label %mt352_write.exit87

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit87:                               ; preds = %if.end21
  %call.i84 = call i32 %.pr129.pr(ptr noundef %fe, ptr noundef nonnull %agc, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp24.not = icmp eq i32 %call.i84, 0
  br i1 %cmp24.not, label %if.end26, label %mt352_write.exit87.cleanup_crit_edge

mt352_write.exit87.cleanup_crit_edge:             ; preds = %mt352_write.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %mt352_write.exit87
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr119 = load ptr, ptr %write.i, align 4
  %tobool.not.i89 = icmp eq ptr %.pr119, null
  br i1 %tobool.not.i89, label %if.end26.cleanup_crit_edge, label %mt352_write.exit93

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit93:                               ; preds = %if.end26
  %call.i90 = call i32 %.pr119(ptr noundef %fe, ptr noundef nonnull %sec_agc, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp29.not = icmp eq i32 %call.i90, 0
  br i1 %cmp29.not, label %if.end31, label %mt352_write.exit93.cleanup_crit_edge

mt352_write.exit93.cleanup_crit_edge:             ; preds = %mt352_write.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %mt352_write.exit93
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr131.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i95 = icmp eq ptr %.pr131.pr, null
  br i1 %tobool.not.i95, label %if.end31.cleanup_crit_edge, label %mt352_write.exit99

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mt352_write.exit99:                               ; preds = %if.end31
  %call.i96 = call i32 %.pr131.pr(ptr noundef %fe, ptr noundef nonnull %unk1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp34.not = icmp eq i32 %call.i96, 0
  br i1 %cmp34.not, label %if.end36, label %mt352_write.exit99.cleanup_crit_edge

mt352_write.exit99.cleanup_crit_edge:             ; preds = %mt352_write.exit99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %mt352_write.exit99
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr125 = load ptr, ptr %write.i, align 4
  %tobool.not.i101 = icmp eq ptr %.pr125, null
  br i1 %tobool.not.i101, label %if.end36.cleanup_crit_edge, label %if.then.i103

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i103:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call.i102 = call i32 %.pr125(ptr noundef %fe, ptr noundef nonnull %unk2, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i103, %if.end36.cleanup_crit_edge, %mt352_write.exit99.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %mt352_write.exit93.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %mt352_write.exit87.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %mt352_write.exit81.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %mt352_write.exit75.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %mt352_write.exit69.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %mt352_write.exit.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mt352_write.exit.cleanup_crit_edge ], [ %call.i66, %mt352_write.exit69.cleanup_crit_edge ], [ %call.i72, %mt352_write.exit75.cleanup_crit_edge ], [ %call.i78, %mt352_write.exit81.cleanup_crit_edge ], [ %call.i84, %mt352_write.exit87.cleanup_crit_edge ], [ %call.i90, %mt352_write.exit93.cleanup_crit_edge ], [ %call.i96, %mt352_write.exit99.cleanup_crit_edge ], [ %call.i102, %if.then.i103 ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %do.end3.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %unk2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %unk1) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %sec_agc) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %agc) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_ctl) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reset) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clock) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m920x_parse_rc_state(ptr nocapture noundef readonly %d, i8 noundef zeroext %rc_state, ptr nocapture noundef writeonly %state) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i8 %rc_state to i32
  %2 = zext i8 %rc_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rc_state, label %do.body [
    i8 -128, label %sw.bb
    i8 -120, label %entry.sw.bb1_crit_edge
    i8 -103, label %entry.sw.bb1_crit_edge21
    i8 -64, label %entry.sw.bb1_crit_edge22
    i8 -40, label %entry.sw.bb1_crit_edge23
    i8 -109, label %entry.sw.bb2_crit_edge
    i8 -110, label %entry.sw.bb2_crit_edge24
    i8 -125, label %entry.sw.bb2_crit_edge25
    i8 -126, label %entry.sw.bb2_crit_edge26
    i8 -111, label %entry.sw.bb4_crit_edge
    i8 -127, label %entry.sw.bb4_crit_edge27
  ]

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %rep_count = getelementptr inbounds %struct.m920x_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rep_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rep_count, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge24, %entry.sw.bb2_crit_edge25, %entry.sw.bb2_crit_edge26
  %rep_count3 = getelementptr inbounds %struct.m920x_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rep_count3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rep_count3, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge27
  %rep_count5 = getelementptr inbounds %struct.m920x_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rep_count5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rep_count5, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rep_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp sgt i32 %inc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %12 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv) #13
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %if.else, %if.then, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup111_crit_edge, label %for.cond.preheader

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2182 = icmp sgt i32 %num, 0
  br i1 %cmp2182, label %for.body.lr.ph, label %for.cond.preheader.unlock_crit_edge

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc107.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc108.pre-phi, %for.inc107.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0183
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0183, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 6160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.unlock_crit_edge

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false:                                    ; preds = %for.body
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0183, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp5 = icmp eq i16 %5, 0
  br i1 %cmp5, label %lor.lhs.false.unlock_crit_edge, label %if.end8

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end8:                                          ; preds = %lor.lhs.false
  %and12 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end8.if.end28_crit_edge

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then14:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  %shl = shl i16 %9, 1
  %and20 = and i16 %3, 1
  %or = or i16 %shl, %and20
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %or, i16 noundef zeroext 128, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp24.not = icmp eq i32 %call1.i, 0
  br i1 %cmp24.not, label %if.then14.if.end28_crit_edge, label %if.then14.unlock_crit_edge

if.then14.unlock_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then14.if.end28_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then14.if.end28_crit_edge, %if.end8.if.end28_crit_edge
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool33.not = icmp eq i16 %14, 0
  br i1 %tobool33.not, label %for.cond69.preheader, label %if.then34

for.cond69.preheader:                             ; preds = %if.end28
  %add77 = add nuw nsw i32 %i.0183, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add77, i32 %num)
  %cmp78 = icmp eq i32 %add77, %num
  %buf91 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0183, i32 3
  br label %for.cond69

if.then34:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 1) #15
  %tobool36.not = icmp eq ptr %call7.i, null
  br i1 %tobool36.not, label %if.then37, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.then34
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp43179.not = icmp eq i16 %17, 0
  br i1 %cmp43179.not, label %for.cond39.preheader.cleanup66_crit_edge, label %for.body45.lr.ph

for.cond39.preheader.cleanup66_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %.pre192 = add nuw nsw i32 %i.0183, 1
  br label %cleanup66

for.body45.lr.ph:                                 ; preds = %for.cond39.preheader
  %conv42178 = zext i16 %17 to i32
  %add = add nuw nsw i32 %i.0183, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp46 = icmp eq i32 %add, %num
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0183, i32 3
  br label %for.body45

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef null) #10
  br label %unlock

for.body45:                                       ; preds = %for.inc.for.body45_crit_edge, %for.body45.lr.ph
  %conv42181 = phi i32 [ %conv42178, %for.body45.lr.ph ], [ %conv42, %for.inc.for.body45_crit_edge ]
  %j.0180 = phi i32 [ 0, %for.body45.lr.ph ], [ %add48, %for.inc.for.body45_crit_edge ]
  %add48 = add nuw nsw i32 %j.0180, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %conv42181)
  %cmp52 = icmp eq i32 %add48, %conv42181
  %18 = select i1 %cmp46, i1 %cmp52, i1 false
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %conv57 = select i1 %18, i16 96, i16 33
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i162 = shl i32 %22, 8
  %or1.i = or i32 %shl.i.i162, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or1.i, i8 noundef zeroext 35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv57, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i) #13
  br label %unlock

if.end.i:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp5.not.i, label %for.inc, label %do.body8.i

do.body8.i:                                       ; preds = %if.end.i
  %23 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body8.i.unlock_crit_edge, label %do.end12.i

do.body8.i.unlock_crit_edge:                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %unlock

for.inc:                                          ; preds = %if.end.i
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i, align 8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %arrayidx65 = getelementptr i8, ptr %27, i32 %j.0180
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx65, align 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len, align 4
  %conv42 = zext i16 %30 to i32
  %cmp43 = icmp ult i32 %add48, %conv42
  br i1 %cmp43, label %for.inc.for.body45_crit_edge, label %for.inc.cleanup66_crit_edge

for.inc.cleanup66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

for.inc.for.body45_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

cleanup66:                                        ; preds = %for.inc.cleanup66_crit_edge, %for.cond39.preheader.cleanup66_crit_edge
  %.pre.pre-phi = phi i32 [ %.pre192, %for.cond39.preheader.cleanup66_crit_edge ], [ %add, %for.inc.cleanup66_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %for.inc107

for.cond69:                                       ; preds = %for.body75.for.cond69_crit_edge, %for.cond69.preheader
  %j.1 = phi i32 [ %add81, %for.body75.for.cond69_crit_edge ], [ 0, %for.cond69.preheader ]
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len, align 4
  %conv72 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %conv72)
  %cmp73 = icmp ult i32 %j.1, %conv72
  br i1 %cmp73, label %for.body75, label %for.cond69.for.inc107_crit_edge

for.cond69.for.inc107_crit_edge:                  ; preds = %for.cond69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc107

for.body75:                                       ; preds = %for.cond69
  %add81 = add nuw nsw i32 %j.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %conv72)
  %cmp85 = icmp eq i32 %add81, %conv72
  %33 = select i1 %cmp78, i1 %cmp85, i1 false
  %34 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev, align 4
  %36 = ptrtoint ptr %buf91 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf91, align 4
  %arrayidx92 = getelementptr i8, ptr %37, i32 %j.1
  %38 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %39 to i16
  %conv94 = select i1 %33, i16 64, i16 0
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %35, align 8
  %shl.i.i163 = shl i32 %41, 8
  %or.i164 = or i32 %shl.i.i163, -2147483648
  %call1.i165 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i164, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %conv93, i16 noundef zeroext %conv94, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  %cmp96.not = icmp eq i32 %call1.i165, 0
  br i1 %cmp96.not, label %for.body75.for.cond69_crit_edge, label %for.body75.unlock_crit_edge

for.body75.unlock_crit_edge:                      ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body75.for.cond69_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond69

for.inc107:                                       ; preds = %for.cond69.for.inc107_crit_edge, %cleanup66
  %inc108.pre-phi = phi i32 [ %.pre.pre-phi, %cleanup66 ], [ %add77, %for.cond69.for.inc107_crit_edge ]
  %exitcond.not = icmp eq i32 %inc108.pre-phi, %num
  br i1 %exitcond.not, label %for.inc107.unlock_crit_edge, label %for.inc107.for.body_crit_edge

for.inc107.for.body_crit_edge:                    ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc107.unlock_crit_edge:                      ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock:                                           ; preds = %for.inc107.unlock_crit_edge, %for.body75.unlock_crit_edge, %do.end12.i, %do.body8.i.unlock_crit_edge, %do.end.i, %if.then37, %if.then14.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %for.body.unlock_crit_edge, %for.cond.preheader.unlock_crit_edge
  %ret.6 = phi i32 [ %call2.i, %do.end.i ], [ -5, %do.end12.i ], [ -5, %do.body8.i.unlock_crit_edge ], [ -12, %if.then37 ], [ %num, %for.cond.preheader.unlock_crit_edge ], [ %call1.i165, %for.body75.unlock_crit_edge ], [ %call1.i, %if.then14.unlock_crit_edge ], [ -524, %lor.lhs.false.unlock_crit_edge ], [ -524, %for.body.unlock_crit_edge ], [ %num, %for.inc107.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #10
  br label %cleanup111

cleanup111:                                       ; preds = %unlock, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ %ret.6, %unlock ], [ -11, %entry.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m920x_i2c_func(ptr nocapture noundef readnone %adapter) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_tda10046_08_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.50) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond30 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 8
  %call9 = tail call ptr %cond30(ptr noundef nonnull @m920x_tda10046_08_config, ptr noundef %i2c_adap) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp21 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp21, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_tda8275_60_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.56) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.58) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond26 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %1 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fe_adap, align 8
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call9 = tail call ptr %cond26(ptr noundef %2, i32 noundef 96, ptr noundef %i2c_adap, ptr noundef null) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.57) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %cmp18 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp18, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_tda10046_0b_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.65) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond30 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 8
  %call9 = tail call ptr %cond30(ptr noundef nonnull @m920x_tda10046_0b_config, ptr noundef %i2c_adap) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %__r.0, ptr %fe_adap, align 8
  %cmp21 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp21, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_tda8275_61_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.68) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.58) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond26 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %1 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fe_adap, align 8
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call9 = tail call ptr %cond26(ptr noundef %2, i32 noundef 97, ptr noundef %i2c_adap, ptr noundef null) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.57) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %cmp18 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp18, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_fmd1216me_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.77) #10
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond14 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call4 = tail call ptr %cond14(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 97, i32 noundef 63) #10
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.76) #10
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_mt352_frontend_attach_vp7049(ptr nocapture noundef %adap) #2 align 64 {
entry:
  %vp7049_fe_init_seq = alloca [12 x %struct.m920x_inits], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vp7049_fe_init_seq) #10
  %0 = call ptr @memcpy(ptr %vp7049_fe_init_seq, ptr @__const.m920x_mt352_frontend_attach_vp7049.vp7049_fe_init_seq, i32 48)
  %1 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.84) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.end3
  %seq.addr.0.i = phi ptr [ %vp7049_fe_init_seq, %do.end3 ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.m920x_inits, ptr %seq.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %seq.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq.addr.0.i, align 2
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i.i, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.body6

if.end.i:                                         ; preds = %do.body.i
  %incdec.ptr.i = getelementptr %struct.m920x_inits, ptr %seq.addr.0.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %incdec.ptr.i, align 2
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.end18, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body6:                                         ; preds = %do.body.i
  %14 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and7 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %do.end12

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @m920x_mt352_frontend_attach(ptr noundef %adap)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end12, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %call1.i.i, %do.end12 ], [ %call1.i.i, %do.body6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vp7049_fe_init_seq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_mt2060_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.88) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %do.end2.if.then8_crit_edge

do.end2.if.then8_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

cond.end:                                         ; preds = %do.end2
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #10
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end13, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %do.end2.if.then8_crit_edge
  %cond26 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call3, %do.end2.if.then8_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %1 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fe_adap, align 8
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call9 = tail call ptr %cond26(ptr noundef %2, ptr noundef %i2c_adap, ptr noundef nonnull @m920x_mt2060_config, i16 noundef zeroext 1220) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__symbol_put(ptr noundef nonnull @.str.89) #10
  br label %if.end16

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then10, %if.then8.if.end16_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call9, %if.then8.if.end16_crit_edge ], [ null, %do.end13 ]
  %cmp18 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp18, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m920x_rc_core_query(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 2) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or1.i, i8 noundef zeroext 34, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -175, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i) #13
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp5.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp5.not.i, label %if.end3, label %do.body8.i

do.body8.i:                                       ; preds = %if.end.i
  %6 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body8.i.out_crit_edge, label %do.end12.i

do.body8.i.out_crit_edge:                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %out

if.end3:                                          ; preds = %if.end.i
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i48 = shl i32 %10, 8
  %or1.i49 = or i32 %shl.i.i48, -2147483520
  %call2.i50 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or1.i49, i8 noundef zeroext 34, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -174, ptr noundef %arrayidx5, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i50)
  %cmp.i51 = icmp slt i32 %call2.i50, 0
  br i1 %cmp.i51, label %do.end.i53, label %if.end.i55

do.end.i53:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call2.i50) #13
  br label %out

if.end.i55:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i50)
  %cmp5.not.i54 = icmp eq i32 %call2.i50, 1
  %11 = load i32, ptr @dvb_usb_m920x_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %cmp5.not.i54, label %do.body, label %do.body8.i58

do.body8.i58:                                     ; preds = %if.end.i55
  br i1 %tobool10.not, label %do.body8.i58.out_crit_edge, label %do.end12.i60

do.body8.i58.out_crit_edge:                       ; preds = %do.body8.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12.i60:                                     ; preds = %do.body8.i58
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %out

do.body:                                          ; preds = %if.end.i55
  br i1 %tobool10.not, label %do.body.do.end19_crit_edge, label %do.end

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5, align 1
  %conv15 = zext i8 %15 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv, i32 noundef %conv15) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i, align 8
  call fastcc void @m920x_parse_rc_state(ptr noundef %d, i8 noundef zeroext %17, ptr noundef nonnull %state)
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %19, label %if.else28 [
    i32 0, label %if.then23
    i32 2, label %if.then26
  ]

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %21 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rc_dev, align 8
  tail call void @rc_keyup(ptr noundef %22) #10
  br label %out

if.then26:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rc_dev27 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %23 = ptrtoint ptr %rc_dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rc_dev27, align 8
  tail call void @rc_repeat(ptr noundef %24) #10
  br label %out

if.else28:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %rc_dev29 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %25 = ptrtoint ptr %rc_dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc_dev29, align 8
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5, align 1
  %conv31 = zext i8 %28 to i64
  tail call void @rc_keydown(ptr noundef %26, i32 noundef 0, i64 noundef %conv31, i8 noundef zeroext 0) #10
  br label %out

out:                                              ; preds = %if.else28, %if.then26, %if.then23, %do.end12.i60, %do.body8.i58.out_crit_edge, %do.end.i53, %do.end12.i, %do.body8.i.out_crit_edge, %do.end.i
  %ret.0 = phi i32 [ 0, %if.then23 ], [ 0, %if.then26 ], [ 0, %if.else28 ], [ -5, %do.body8.i.out_crit_edge ], [ -5, %do.end12.i ], [ %call2.i, %do.end.i ], [ -5, %do.body8.i58.out_crit_edge ], [ -5, %do.end12.i60 ], [ %call2.i50, %do.end.i53 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !134, !135, !136, !137, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !153, !155, !157, !158, !159, !161, !162, !164, !166, !167, !168, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !191, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !222, !224, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 25, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !6, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr391, !6, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_m920x__392_1266_m920x_driver_init6, !10, !"__initcall__kmod_dvb_usb_m920x__392_1266_m920x_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1266, i32 1}
!11 = !{ptr @__exitcall_m920x_driver_exit, !10, !"__exitcall_m920x_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author393, !13, !"__UNIQUE_ID_author393", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1268, i32 1}
!14 = !{ptr @__UNIQUE_ID_description394, !15, !"__UNIQUE_ID_description394", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1269, i32 1}
!16 = !{ptr @__UNIQUE_ID_version395, !17, !"__UNIQUE_ID_version395", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1270, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file396, !23, !"__UNIQUE_ID_file396", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1271, i32 1}
!24 = !{ptr @__UNIQUE_ID_license397, !23, !"__UNIQUE_ID_license397", i1 false, i1 false}
!25 = !{ptr @dvb_usb_m920x_debug, !26, !"dvb_usb_m920x_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 23, i32 12}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @m920x_driver, !32, !"m920x_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1259, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 830, i32 2}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @m920x_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @m920x_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 920, i32 14}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 964, i32 7}
!43 = !{ptr @megasky_properties, !44, !"megasky_properties", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 916, i32 41}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 416, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @m920x_firmware_download._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @m920x_firmware_download._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 420, i32 2}
!52 = !{ptr @m920x_firmware_download._entry.11, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @m920x_firmware_download._entry_ptr.13, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 442, i32 6}
!56 = !{ptr @m920x_firmware_download._entry.14, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @m920x_firmware_download._entry_ptr.16, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 451, i32 4}
!60 = !{ptr @m920x_firmware_download._entry.17, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @m920x_firmware_download._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 461, i32 2}
!64 = !{ptr @m920x_firmware_download._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @m920x_firmware_download._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 40, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @m920x_read._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @m920x_read._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 45, i32 3}
!73 = !{ptr @m920x_read._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @m920x_read._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 563, i32 2}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @m920x_mt352_frontend_attach._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @m920x_mt352_frontend_attach._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 565, i32 24}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @m920x_mt352_frontend_attach._entry.32, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @m920x_mt352_frontend_attach._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @m920x_mt352_config, !87, !"m920x_mt352_config", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 519, i32 28}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 497, i32 2}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @m920x_mt352_demod_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @m920x_mt352_demod_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 633, i32 2}
!95 = !{ptr @m920x_qt1010_tuner_attach._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @m920x_qt1010_tuner_attach._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 635, i32 6}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @m920x_qt1010_tuner_attach._entry.40, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @m920x_qt1010_tuner_attach._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @m920x_qt1010_config, !104, !"m920x_qt1010_config", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 550, i32 29}
!105 = !{ptr @rc_map_megasky_table, !106, !"rc_map_megasky_table", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 719, i32 28}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 207, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @m920x_rc_query._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @m920x_rc_query._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 173, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @m920x_parse_rc_state._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @m920x_parse_rc_state._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @m920x_i2c_algo, !118, !"m920x_i2c_algo", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 321, i32 29}
!119 = !{ptr @megasky_rc_init, !120, !"megasky_rc_init", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 682, i32 27}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 975, i32 14}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1012, i32 7}
!125 = !{ptr @digivox_mini_ii_properties, !126, !"digivox_mini_ii_properties", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 971, i32 41}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 607, i32 2}
!129 = !{ptr @m920x_tda10046_08_frontend_attach._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @m920x_tda10046_08_frontend_attach._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 609, i32 24}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @m920x_tda10046_08_frontend_attach._entry.53, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @m920x_tda10046_08_frontend_attach._entry_ptr.55, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @m920x_tda10046_08_config, !138, !"m920x_tda10046_08_config", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 525, i32 31}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 643, i32 2}
!141 = !{ptr @m920x_tda8275_60_tuner_attach._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @m920x_tda8275_60_tuner_attach._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 645, i32 6}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @m920x_tda8275_60_tuner_attach._entry.59, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @m920x_tda8275_60_tuner_attach._entry_ptr.61, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1031, i32 14}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1099, i32 15}
!153 = !{ptr @tvwalkertwin_properties, !154, !"tvwalkertwin_properties", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1027, i32 41}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 620, i32 2}
!157 = !{ptr @m920x_tda10046_0b_frontend_attach._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @m920x_tda10046_0b_frontend_attach._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @m920x_tda10046_0b_frontend_attach._entry.66, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 622, i32 24}
!161 = !{ptr @m920x_tda10046_0b_frontend_attach._entry_ptr.67, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @m920x_tda10046_0b_config, !163, !"m920x_tda10046_0b_config", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 537, i32 31}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 653, i32 2}
!166 = !{ptr @m920x_tda8275_61_tuner_attach._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @m920x_tda8275_61_tuner_attach._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @m920x_tda8275_61_tuner_attach._entry.69, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 655, i32 6}
!170 = !{ptr @m920x_tda8275_61_tuner_attach._entry_ptr.70, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @rc_map_tvwalkertwin_table, !172, !"rc_map_tvwalkertwin_table", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 738, i32 28}
!173 = !{ptr @tvwalkertwin_rc_init, !174, !"tvwalkertwin_rc_init", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 688, i32 27}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1110, i32 14}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1141, i32 16}
!179 = !{ptr @dposh_properties, !180, !"dposh_properties", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1106, i32 41}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1197, i32 7}
!183 = !{ptr @pinnacle_pctv310e_properties, !184, !"pinnacle_pctv310e_properties", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1148, i32 41}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 663, i32 2}
!187 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @m920x_fmd1216me_tuner_attach._entry, !186, !"_entry", i1 false, i1 false}
!191 = !{ptr @m920x_fmd1216me_tuner_attach._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @rc_map_pinnacle310e_table, !193, !"rc_map_pinnacle310e_table", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 758, i32 28}
!194 = !{ptr @pinnacle310e_init, !195, !"pinnacle310e_init", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 697, i32 27}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1208, i32 14}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1213, i32 21}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1252, i32 7}
!202 = !{ptr @vp7049_properties, !203, !"vp7049_properties", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 1204, i32 41}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 594, i32 2}
!206 = !{ptr @m920x_mt352_frontend_attach_vp7049._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @m920x_mt352_frontend_attach_vp7049._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 598, i32 3}
!210 = !{ptr @m920x_mt352_frontend_attach_vp7049._entry.85, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @m920x_mt352_frontend_attach_vp7049._entry_ptr.87, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.88, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 671, i32 2}
!214 = !{ptr @m920x_mt2060_tuner_attach._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @m920x_mt2060_tuner_attach._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 673, i32 6}
!218 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @m920x_mt2060_tuner_attach._entry.91, !217, !"_entry", i1 false, i1 false}
!221 = !{ptr @m920x_mt2060_tuner_attach._entry_ptr.93, !217, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @m920x_mt2060_config, !223, !"m920x_mt2060_config", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 554, i32 29}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 232, i32 2}
!226 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @m920x_rc_core_query._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @m920x_rc_core_query._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @vp7049_rc_init, !230, !"vp7049_rc_init", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 709, i32 27}
!231 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 129, i32 3}
!233 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @m920x_init_ep._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @m920x_init_ep._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 82, i32 3}
!238 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @m920x_init._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @m920x_init._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 85, i32 4}
!243 = !{ptr @m920x_init._entry.100, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @m920x_init._entry_ptr.102, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 89, i32 3}
!247 = !{ptr @m920x_init._entry.103, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @m920x_init._entry_ptr.105, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 101, i32 5}
!251 = !{ptr @m920x_init._entry.106, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @m920x_init._entry_ptr.108, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @m920x_table, !254, !"m920x_table", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb/m920x.c", i32 900, i32 29}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{!"auto-init"}
